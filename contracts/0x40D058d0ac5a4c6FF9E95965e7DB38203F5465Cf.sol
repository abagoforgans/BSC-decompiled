contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
array of struct pools;
mapping of uint256 bearsTotal;
mapping of uint256 bullsTotal;
mapping of uint256 taken;
mapping of uint8 stor105;
mapping of uint256 fees;
array of struct funds;
mapping of address feeds;

function bullsTotal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bullsTotal[arg1]
}

function results(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor105[arg1])
}

function feeds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return feeds[arg1]
}

function owner() {
    return owner
}

function taken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return taken[arg1]
}

function fees(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return fees[arg1][arg2]
}

function bearsTotal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bearsTotal[arg1]
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1].field_0, 
           pools[arg1].field_256,
           pools[arg1].field_512,
           pools[arg1].field_768,
           pools[arg1].field_1024,
           pools[arg1].field_1280,
           pools[arg1].field_1536,
           pools[arg1].field_1792
}

function funds(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < 2
    return funds[arg1][arg2][arg3].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(feeds[arg1])
    staticcall feeds[arg1].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Price exists in the feed'
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createPool(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    if block.number >= arg5:
        revert with 0, 'Given periods are correct'
    if arg7 <= arg5 + arg6:
        revert with 0, 'Given periods are correct'
    pools.length++
    pools[pools.length].field_0 = msg.sender
    pools[pools.length].field_256 = arg1
    pools[pools.length].field_512 = arg3
    pools[pools.length].field_768 = arg4
    pools[pools.length].field_1024 = arg5
    pools[pools.length].field_1280 = arg6
    pools[pools.length].field_1536 = arg7
    pools[pools.length].field_1792 = arg8
    feeds[stor101.length] = arg2
    emit NewPool(pools.length, msg.sender, address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8);
}

function trigger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    if block.number < pools[arg1].field_1536:
        revert with 0, 'Price settlement period'
    require arg1 < pools.length
    if pools[arg1].field_1536 + pools[arg1].field_1792 < pools[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > pools[arg1].field_1536 + pools[arg1].field_1792:
        revert with 0, 'Price settlement period'
    require ext_code.size(feeds[arg1])
    staticcall feeds[arg1].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Price exists in the feed'
    require arg1 < pools.length
    if ext_call.return_data[0] > pools[arg1].field_512:
        stor105[arg1] = 1
    emit Trigger(arg1, ext_call.return_data[0]);
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    if fees[address(msg.sender)][address(arg1)] <= 0:
        revert with 0, 'Accumulated fees are not zero'
    fees[address(msg.sender)][address(arg1)] = 0
    if not arg1:
        if msg.sender != this.address:
            call msg.sender with:
               value fees[address(msg.sender)][address(arg1)] wei
                 gas gas_remaining wei
    else:
        require ext_code.size(arg1)
        if this.address != this.address:
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, fees[address(msg.sender)][address(arg1)]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, fees[address(msg.sender)][address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Claim(msg.sender, address(arg1), fees[address(msg.sender)][address(arg1)]);
}

function claimNotTaken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < pools.length
    if pools[arg1].field_1536 + pools[arg1].field_1792 < pools[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < pools[arg1].field_1536 + pools[arg1].field_1792 + 60000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7354696d6520746f20636f6c6c6563742066756e64732066726f6d2074686520706f6f6c20657870697265,
                    mem[207 len 21]
    if bullsTotal[arg1] + bearsTotal[arg1] < bullsTotal[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < pools.length
    if taken[arg1] > bullsTotal[arg1] + bearsTotal[arg1]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not pools[arg1].field_256:
        if msg.sender != this.address:
            call msg.sender with:
               value bullsTotal[arg1] + bearsTotal[arg1] - taken[arg1] wei
                 gas gas_remaining wei
    else:
        require ext_code.size(pools[arg1].field_256)
        if this.address != this.address:
            call pools[arg1].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, bullsTotal[arg1] + bearsTotal[arg1] - taken[arg1]
        else:
            call pools[arg1].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, bullsTotal[arg1] + bearsTotal[arg1] - taken[arg1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Taken(arg1);
}

function initialize() {
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_168):
            Mask(88, 0, stor0.field_168) = 1
            Mask(96, 0, stor0.field_160) = 1
            if ext_code.size(this.address):
                if uint8(stor0.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_168):
                Mask(88, 0, stor0.field_168) = 1
                Mask(96, 0, stor0.field_160) = 1
                if ext_code.size(this.address):
                    if uint8(stor0.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_168):
                    Mask(88, 0, stor0.field_168) = 1
                    Mask(96, 0, stor0.field_160) = 1
                    Mask(88, 0, stor0.field_168) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_160):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_168):
                        Mask(88, 0, stor0.field_168) = 1
                        Mask(96, 0, stor0.field_160) = 1
                        Mask(88, 0, stor0.field_168) = 0
                        Mask(88, 0, stor0.field_168) = 0
                        Mask(88, 0, stor0.field_168) = 0
}

function bet(uint256 arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 < pools.length
    if arg2 != pools[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x7453656e742061737365742069732073616d6520617320617373657420696e20776869636820776520636f6c6c65637420626574,
                    mem[216 len 12]
    if not arg2:
        if arg3 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x7353656e742076616c75652073686f756c6420626520657175616c20746f2074686520616d6f756e,
                        mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64416d6f756e742073686f756c64206265206174206c6561737420746865206d696e696d616c206265,
                    mem[205 len 23]
    require arg1 < pools.length
    if arg3 < pools[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64416d6f756e742073686f756c64206265206174206c6561737420746865206d696e696d616c206265,
                    mem[205 len 23]
    require arg1 < pools.length
    if block.number < pools[arg1].field_1024:
        revert with 0, 'Acceptance period'
    require arg1 < pools.length
    if pools[arg1].field_1024 + pools[arg1].field_1280 < pools[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > pools[arg1].field_1024 + pools[arg1].field_1280:
        revert with 0, 'Acceptance period'
    if arg3 / 500 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg4:
        if bearsTotal[arg1] + arg3 - (arg3 / 500) < bearsTotal[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        bearsTotal[arg1] = bearsTotal[arg1] + arg3 - (arg3 / 500)
        if funds[arg1][address(msg.sender)].field_0:
            revert with 0, 'Didn't place bet on bulls'
        if funds[arg1][address(msg.sender)].field_256 + arg3 - (arg3 / 500) < funds[arg1][address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        funds[arg1][address(msg.sender)].field_256 = funds[arg1][address(msg.sender)].field_256 + arg3 - (arg3 / 500)
    else:
        if bullsTotal[arg1] + arg3 - (arg3 / 500) < bullsTotal[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        bullsTotal[arg1] = bullsTotal[arg1] + arg3 - (arg3 / 500)
        if funds[arg1][address(msg.sender)].field_256:
            revert with 0, 'Didn't place bet on bears'
        if funds[arg1][address(msg.sender)].field_0 + arg3 - (arg3 / 500) < funds[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        funds[arg1][address(msg.sender)].field_0 = funds[arg1][address(msg.sender)].field_0 + arg3 - (arg3 / 500)
    if fees[address(stor0.field_0)][address(arg2)] + (arg3 / 500) < fees[address(stor0.field_0)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    fees[address(stor0.field_0)][address(arg2)] += arg3 / 500
    if not arg2:
        if this.address != this.address:
            call this.address with:
               value arg3 wei
                 gas gas_remaining wei
    else:
        require ext_code.size(arg2)
        if this.address != msg.sender:
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
        else:
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Bet(arg1, msg.sender, address(arg2), arg3, arg4);
}

function collect(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    if pools[arg1].field_1536 + pools[arg1].field_1792 < pools[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= pools[arg1].field_1536 + pools[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe416674657220707269636520736574746c656d656e7420706572696f6420616e64206e6f74206c61746572207468616e203220646179,
                    mem[219 len 9]
    if block.number >= pools[arg1].field_1536 + pools[arg1].field_1792 + 60000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe416674657220707269636520736574746c656d656e7420706572696f6420616e64206e6f74206c61746572207468616e203220646179,
                    mem[219 len 9]
    require arg1 < pools.length
    if not stor105[arg1]:
        if funds[arg1][address(msg.sender)].field_256 <= 0:
            revert with 0, 'Has earnings'
        if not bullsTotal[arg1]:
            if bearsTotal[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require bearsTotal[arg1]
            if 0 / bearsTotal[arg1] / 20 > 0 / bearsTotal[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) - (0 / bearsTotal[arg1] / 20) < funds[arg1][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            funds[arg1][address(msg.sender)].field_256 = 0
            if 0 < -0 / bearsTotal[arg1] / 20:
                revert with 0, 'SafeMath: addition overflow'
            if taken[arg1] + funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) < taken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            taken[arg1] = taken[arg1] + funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1])
            if fees[address(stor0.field_0)][stor101[arg1].field_256] + (0 / bearsTotal[arg1] / 20) < fees[address(stor0.field_0)][stor101[arg1].field_256]:
                revert with 0, 'SafeMath: addition overflow'
            fees[address(stor0.field_0)][stor101[arg1].field_256] += 0 / bearsTotal[arg1] / 20
            if not pools[arg1].field_256:
                if msg.sender != this.address:
                    call msg.sender with:
                       value funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) - (0 / bearsTotal[arg1] / 20) wei
                         gas gas_remaining wei
            else:
                require ext_code.size(pools[arg1].field_256)
                if this.address != this.address:
                    call pools[arg1].field_256.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) - (0 / bearsTotal[arg1] / 20)
                else:
                    call pools[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) - (0 / bearsTotal[arg1] / 20)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit Collect(arg1, msg.sender, funds[arg1][address(msg.sender)].field_256 + (0 / bearsTotal[arg1]) - (0 / bearsTotal[arg1] / 20));
        else:
            require bullsTotal[arg1]
            if bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bullsTotal[arg1] != funds[arg1][address(msg.sender)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if bearsTotal[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require bearsTotal[arg1]
            if bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20 > bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) - (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20) < funds[arg1][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            funds[arg1][address(msg.sender)].field_256 = 0
            if 0 < -bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20:
                revert with 0, 'SafeMath: addition overflow'
            if taken[arg1] + funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) < taken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            taken[arg1] = taken[arg1] + funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1])
            if fees[address(stor0.field_0)][stor101[arg1].field_256] + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20) < fees[address(stor0.field_0)][stor101[arg1].field_256]:
                revert with 0, 'SafeMath: addition overflow'
            fees[address(stor0.field_0)][stor101[arg1].field_256] += bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20
            if not pools[arg1].field_256:
                if msg.sender != this.address:
                    call msg.sender with:
                       value funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) - (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20) wei
                         gas gas_remaining wei
            else:
                require ext_code.size(pools[arg1].field_256)
                if this.address != this.address:
                    call pools[arg1].field_256.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) - (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20)
                else:
                    call pools[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) - (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit Collect(arg1, msg.sender, funds[arg1][address(msg.sender)].field_256 + (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1]) - (bullsTotal[arg1] * funds[arg1][address(msg.sender)].field_256 / bearsTotal[arg1] / 20));
    else:
        if funds[arg1][address(msg.sender)].field_0 <= 0:
            revert with 0, 'Has earnings'
        if not bearsTotal[arg1]:
            if bullsTotal[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require bullsTotal[arg1]
            if 0 / bullsTotal[arg1] / 20 > 0 / bullsTotal[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) - (0 / bullsTotal[arg1] / 20) < funds[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            funds[arg1][address(msg.sender)].field_0 = 0
            if 0 < -0 / bullsTotal[arg1] / 20:
                revert with 0, 'SafeMath: addition overflow'
            if taken[arg1] + funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) < taken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            taken[arg1] = taken[arg1] + funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1])
            if fees[address(stor0.field_0)][stor101[arg1].field_256] + (0 / bullsTotal[arg1] / 20) < fees[address(stor0.field_0)][stor101[arg1].field_256]:
                revert with 0, 'SafeMath: addition overflow'
            fees[address(stor0.field_0)][stor101[arg1].field_256] += 0 / bullsTotal[arg1] / 20
            if not pools[arg1].field_256:
                if msg.sender != this.address:
                    call msg.sender with:
                       value funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) - (0 / bullsTotal[arg1] / 20) wei
                         gas gas_remaining wei
            else:
                require ext_code.size(pools[arg1].field_256)
                if this.address != this.address:
                    call pools[arg1].field_256.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) - (0 / bullsTotal[arg1] / 20)
                else:
                    call pools[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) - (0 / bullsTotal[arg1] / 20)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit Collect(arg1, msg.sender, funds[arg1][address(msg.sender)].field_0 + (0 / bullsTotal[arg1]) - (0 / bullsTotal[arg1] / 20));
        else:
            require bearsTotal[arg1]
            if bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bearsTotal[arg1] != funds[arg1][address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if bullsTotal[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require bullsTotal[arg1]
            if bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20 > bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            if funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) - (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20) < funds[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            funds[arg1][address(msg.sender)].field_0 = 0
            if 0 < -bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20:
                revert with 0, 'SafeMath: addition overflow'
            if taken[arg1] + funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) < taken[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            taken[arg1] = taken[arg1] + funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1])
            if fees[address(stor0.field_0)][stor101[arg1].field_256] + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20) < fees[address(stor0.field_0)][stor101[arg1].field_256]:
                revert with 0, 'SafeMath: addition overflow'
            fees[address(stor0.field_0)][stor101[arg1].field_256] += bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20
            if not pools[arg1].field_256:
                if msg.sender != this.address:
                    call msg.sender with:
                       value funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) - (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20) wei
                         gas gas_remaining wei
            else:
                require ext_code.size(pools[arg1].field_256)
                if this.address != this.address:
                    call pools[arg1].field_256.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) - (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20)
                else:
                    call pools[arg1].field_256.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) - (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            emit Collect(arg1, msg.sender, funds[arg1][address(msg.sender)].field_0 + (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1]) - (bearsTotal[arg1] * funds[arg1][address(msg.sender)].field_0 / bullsTotal[arg1] / 20));
}



}
