contract main {




// =====================  Runtime code  =====================


const DEAD = 57005


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address investTokenAddress;
address sub_11f1388eAddress;
uint256 sub_b060f704;
uint256 totalSupply;
uint256 lastRewardBlock;
uint256 sub_7a16f35a;
uint256 sub_3ebe9f2a;
array of struct userDeposits;
mapping of uint256 userReward;

function userReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReward[arg1]
}

function userDeposits(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userDeposits[arg1].field_0
    return userDeposits[arg1][arg2].field_0, userDeposits[arg1][arg2].field_256, userDeposits[arg1][arg2].field_512
}

function sub_11f1388e(?) payable {
    return sub_11f1388eAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_3ebe9f2a(?) payable {
    return sub_3ebe9f2a
}

function sub_7a16f35a(?) payable {
    return sub_7a16f35a
}

function owner() payable {
    return owner
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_b060f704(?) payable {
    return sub_b060f704
}

function investToken() payable {
    return investTokenAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return investTokenAddress, lastRewardBlock, sub_7a16f35a
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_53aabe5a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b060f704 = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function userAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userDeposits[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 108)
        if userDeposits[address(arg1)][idx].field_0 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = userDeposits[address(arg1)][idx].field_0 + s
        continue 
    return (stor[(3 * stor108[address(arg1)].field_0) + _9] * userDeposits[address(arg1)].field_0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        investTokenAddress = arg1
        sub_11f1388eAddress = arg2
        sub_b060f704 = arg3
        sub_3ebe9f2a = arg4
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            investTokenAddress = arg1
            sub_11f1388eAddress = arg2
            sub_b060f704 = arg3
            sub_3ebe9f2a = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                investTokenAddress = arg1
                sub_11f1388eAddress = arg2
                sub_b060f704 = arg3
                sub_3ebe9f2a = arg4
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    investTokenAddress = arg1
                    sub_11f1388eAddress = arg2
                    sub_b060f704 = arg3
                    sub_3ebe9f2a = arg4
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        investTokenAddress = arg1
                        sub_11f1388eAddress = arg2
                        sub_b060f704 = arg3
                        sub_3ebe9f2a = arg4
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        investTokenAddress = arg1
                        sub_11f1388eAddress = arg2
                        sub_b060f704 = arg3
                        sub_3ebe9f2a = arg4
                        uint8(stor0.field_8) = 0
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, 'cannot call from contract'
    if block.number <= lastRewardBlock:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(investTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
    else:
        if not totalSupply:
            lastRewardBlock = block.number
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(investTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - lastRewardBlock:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                    revert with 0, 'SafeMath: addition overflow'
                sub_7a16f35a += 0 / totalSupply
                lastRewardBlock = block.number
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(investTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
            else:
                if (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) / block.number - lastRewardBlock != sub_b060f704:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704):
                    if (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7a16f35a += (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply
                    lastRewardBlock = block.number
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(investTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                else:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7a16f35a += 0 / totalSupply
                    lastRewardBlock = block.number
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(investTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, 57005, Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
    call investTokenAddress.0xdead with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, 57005, arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not arg1:
            userDeposits[msg.sender].field_0++
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_0 = arg1
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_256 = 0
        else:
            if sub_7a16f35a * arg1 / arg1 != sub_7a16f35a:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            userDeposits[msg.sender].field_0++
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_0 = arg1
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_256 = sub_7a16f35a * arg1 / 10^12
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not arg1:
            userDeposits[msg.sender].field_0++
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_0 = arg1
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_256 = 0
        else:
            if sub_7a16f35a * arg1 / arg1 != sub_7a16f35a:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            userDeposits[msg.sender].field_0++
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_0 = arg1
            userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_256 = sub_7a16f35a * arg1 / 10^12
    userDeposits[msg.sender][userDeposits[msg.sender].field_0].field_512 = 0
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    emit UserDeposit(arg1, msg.sender);
}

function withdrawReward() payable {
    if block.number > lastRewardBlock:
        if totalSupply:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - lastRewardBlock:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                    revert with 0, 'SafeMath: addition overflow'
                sub_7a16f35a += 0 / totalSupply
            else:
                if (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) / block.number - lastRewardBlock != sub_b060f704:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7a16f35a += 0 / totalSupply
                else:
                    if (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_7a16f35a += (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply
        lastRewardBlock = block.number
    idx = 0
    s = 0
    while idx < userDeposits[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 108)
        if not userDeposits[msg.sender][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        if not userDeposits[msg.sender][idx].field_0:
            if userDeposits[msg.sender][idx].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userDeposits[msg.sender][idx].field_0:
                if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 <= 0:
                    if not userDeposits[msg.sender][idx].field_0:
                        userDeposits[msg.sender][idx].field_256 = 0
                    else:
                        if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
                    if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userDeposits[msg.sender][idx].field_512 -= userDeposits[msg.sender][idx].field_256
                    if -userDeposits[msg.sender][idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -userDeposits[msg.sender][idx].field_256 + s
                    continue 
            else:
                if sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_3ebe9f2a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 <= sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100:
                    if not userDeposits[msg.sender][idx].field_0:
                        userDeposits[msg.sender][idx].field_256 = 0
                    else:
                        if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
                    if -userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userDeposits[msg.sender][idx].field_512 -= userDeposits[msg.sender][idx].field_256
                    if -userDeposits[msg.sender][idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -userDeposits[msg.sender][idx].field_256 + s
                    continue 
        else:
            if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userDeposits[msg.sender][idx].field_256 > sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userDeposits[msg.sender][idx].field_0:
                if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 <= 0:
                    if not userDeposits[msg.sender][idx].field_0:
                        userDeposits[msg.sender][idx].field_256 = 0
                    else:
                        if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
                    if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userDeposits[msg.sender][idx].field_512 = (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512
                    if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + s
                    continue 
            else:
                if sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_3ebe9f2a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 <= sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100:
                    if not userDeposits[msg.sender][idx].field_0:
                        userDeposits[msg.sender][idx].field_256 = 0
                    else:
                        if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
                    if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512 < userDeposits[msg.sender][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    userDeposits[msg.sender][idx].field_512 = (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + userDeposits[msg.sender][idx].field_512
                    if (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12) - userDeposits[msg.sender][idx].field_256 + s
                    continue 
        if not userDeposits[msg.sender][idx].field_0:
            if userDeposits[msg.sender][idx].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userDeposits[msg.sender][idx].field_0:
                userDeposits[msg.sender][idx].field_256 = 0
            else:
                if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
            userDeposits[msg.sender][idx].field_0 = 0
            if userDeposits[msg.sender][idx].field_0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= userDeposits[msg.sender][idx].field_0
            if 0 < userDeposits[msg.sender][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            userDeposits[msg.sender][idx].field_512 = 0
            if -userDeposits[msg.sender][idx].field_512 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = -userDeposits[msg.sender][idx].field_512 + s
            continue 
        if sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_3ebe9f2a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userDeposits[msg.sender][idx].field_512 > sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userDeposits[msg.sender][idx].field_0:
            userDeposits[msg.sender][idx].field_256 = 0
        else:
            if sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / userDeposits[msg.sender][idx].field_0 != sub_7a16f35a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userDeposits[msg.sender][idx].field_256 = sub_7a16f35a * userDeposits[msg.sender][idx].field_0 / 10^12
        userDeposits[msg.sender][idx].field_0 = 0
        if userDeposits[msg.sender][idx].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= userDeposits[msg.sender][idx].field_0
        if sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100 < userDeposits[msg.sender][idx].field_512:
            revert with 0, 'SafeMath: addition overflow'
        userDeposits[msg.sender][idx].field_512 = sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100
        if (sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100) - userDeposits[msg.sender][idx].field_512 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = (sub_3ebe9f2a * userDeposits[msg.sender][idx].field_0 / 100) - userDeposits[msg.sender][idx].field_512 + s
        continue 
    require ext_code.size(sub_11f1388eAddress)
    call sub_11f1388eAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    userReward[msg.sender] += s
    emit WithdrawReward(s, msg.sender);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        idx = 0
        s = 0
        while idx < userDeposits[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 108)
            if not userDeposits[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
            if not userDeposits[address(arg1)][idx].field_0:
                if userDeposits[address(arg1)][idx].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userDeposits[address(arg1)][idx].field_0:
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                        if -userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_256 + s
                        continue 
                else:
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        if -userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_7a16f35a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userDeposits[address(arg1)][idx].field_256 > sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userDeposits[address(arg1)][idx].field_0:
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                        continue 
                else:
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                        continue 
            if not userDeposits[address(arg1)][idx].field_0:
                if userDeposits[address(arg1)][idx].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userDeposits[address(arg1)][idx].field_512 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = -userDeposits[address(arg1)][idx].field_512 + s
                continue 
            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
            continue 
    else:
        if not totalSupply:
            idx = 0
            s = 0
            while idx < userDeposits[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 108)
                if not userDeposits[address(arg1)][idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                if not userDeposits[address(arg1)][idx].field_0:
                    if userDeposits[address(arg1)][idx].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userDeposits[address(arg1)][idx].field_0:
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                            if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                    else:
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                else:
                    if sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_7a16f35a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userDeposits[address(arg1)][idx].field_256 > sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userDeposits[address(arg1)][idx].field_0:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                            if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                    else:
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                if not userDeposits[address(arg1)][idx].field_0:
                    if userDeposits[address(arg1)][idx].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userDeposits[address(arg1)][idx].field_512 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -userDeposits[address(arg1)][idx].field_512 + s
                    continue 
                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                continue 
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - lastRewardBlock:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                s = 0
                while idx < userDeposits[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 108)
                    if not userDeposits[address(arg1)][idx].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    if not userDeposits[address(arg1)][idx].field_0:
                        if userDeposits[address(arg1)][idx].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userDeposits[address(arg1)][idx].field_0:
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                        else:
                            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                    else:
                        if (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != (0 / totalSupply) + sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_256 > (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userDeposits[address(arg1)][idx].field_0:
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                        else:
                            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                    if not userDeposits[address(arg1)][idx].field_0:
                        if userDeposits[address(arg1)][idx].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_512 + s
                        continue 
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                    continue 
            else:
                if (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) / block.number - lastRewardBlock != sub_b060f704:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    s = 0
                    while idx < userDeposits[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 108)
                        if not userDeposits[address(arg1)][idx].field_0:
                            idx = idx + 1
                            s = s
                            continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        else:
                            if (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != (0 / totalSupply) + sub_7a16f35a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDeposits[address(arg1)][idx].field_256 > (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userDeposits[address(arg1)][idx].field_512 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_512 + s
                            continue 
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                        continue 
                else:
                    if (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    s = 0
                    while idx < userDeposits[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 108)
                        if not userDeposits[address(arg1)][idx].field_0:
                            idx = idx + 1
                            s = s
                            continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        else:
                            if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDeposits[address(arg1)][idx].field_256 > ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userDeposits[address(arg1)][idx].field_512 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_512 + s
                            continue 
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                        continue 
    return s
}

function totalReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        idx = 0
        s = 0
        while idx < userDeposits[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 108)
            if not userDeposits[address(arg1)][idx].field_0:
                idx = idx + 1
                s = s
                continue 
            if not userDeposits[address(arg1)][idx].field_0:
                if userDeposits[address(arg1)][idx].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userDeposits[address(arg1)][idx].field_0:
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                        if -userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_256 + s
                        continue 
                else:
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        if -userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_7a16f35a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userDeposits[address(arg1)][idx].field_256 > sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userDeposits[address(arg1)][idx].field_0:
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                        continue 
                else:
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                        continue 
            if not userDeposits[address(arg1)][idx].field_0:
                if userDeposits[address(arg1)][idx].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userDeposits[address(arg1)][idx].field_512 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = -userDeposits[address(arg1)][idx].field_512 + s
                continue 
            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
            continue 
    else:
        if not totalSupply:
            idx = 0
            s = 0
            while idx < userDeposits[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 108)
                if not userDeposits[address(arg1)][idx].field_0:
                    idx = idx + 1
                    s = s
                    continue 
                if not userDeposits[address(arg1)][idx].field_0:
                    if userDeposits[address(arg1)][idx].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userDeposits[address(arg1)][idx].field_0:
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                            if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                    else:
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                else:
                    if sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_7a16f35a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userDeposits[address(arg1)][idx].field_256 > sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userDeposits[address(arg1)][idx].field_0:
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                            if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                    else:
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            if (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0 / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                            continue 
                if not userDeposits[address(arg1)][idx].field_0:
                    if userDeposits[address(arg1)][idx].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userDeposits[address(arg1)][idx].field_512 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -userDeposits[address(arg1)][idx].field_512 + s
                    continue 
                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                continue 
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - lastRewardBlock:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                s = 0
                while idx < userDeposits[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 108)
                    if not userDeposits[address(arg1)][idx].field_0:
                        idx = idx + 1
                        s = s
                        continue 
                    if not userDeposits[address(arg1)][idx].field_0:
                        if userDeposits[address(arg1)][idx].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userDeposits[address(arg1)][idx].field_0:
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                        else:
                            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                    else:
                        if (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != (0 / totalSupply) + sub_7a16f35a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_256 > (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userDeposits[address(arg1)][idx].field_0:
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                        else:
                            if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                continue 
                    if not userDeposits[address(arg1)][idx].field_0:
                        if userDeposits[address(arg1)][idx].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -userDeposits[address(arg1)][idx].field_512 + s
                        continue 
                    if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                    continue 
            else:
                if (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) / block.number - lastRewardBlock != sub_b060f704:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    s = 0
                    while idx < userDeposits[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 108)
                        if not userDeposits[address(arg1)][idx].field_0:
                            idx = idx + 1
                            s = s
                            continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        else:
                            if (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != (0 / totalSupply) + sub_7a16f35a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDeposits[address(arg1)][idx].field_256 > (0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = ((0 / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userDeposits[address(arg1)][idx].field_512 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_512 + s
                            continue 
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                        continue 
                else:
                    if (10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / (block.number * sub_b060f704) - (lastRewardBlock * sub_b060f704) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a < sub_7a16f35a:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = 0
                    s = 0
                    while idx < userDeposits[address(arg1)].field_0:
                        mem[0] = sha3(address(arg1), 108)
                        if not userDeposits[address(arg1)][idx].field_0:
                            idx = idx + 1
                            s = s
                            continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if -userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if -userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        else:
                            if ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / userDeposits[address(arg1)][idx].field_0 != ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply) + sub_7a16f35a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDeposits[address(arg1)][idx].field_256 > ((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userDeposits[address(arg1)][idx].field_0:
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= 0:
                                    if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                            else:
                                if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 < userDeposits[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + userDeposits[address(arg1)][idx].field_512 <= sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                                    if (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s < s:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = (((10^12 * block.number * sub_b060f704) - (10^12 * lastRewardBlock * sub_b060f704) / totalSupply * userDeposits[address(arg1)][idx].field_0) + (sub_7a16f35a * userDeposits[address(arg1)][idx].field_0) / 10^12) - userDeposits[address(arg1)][idx].field_256 + s
                                    continue 
                        if not userDeposits[address(arg1)][idx].field_0:
                            if userDeposits[address(arg1)][idx].field_512 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userDeposits[address(arg1)][idx].field_512 + s < s:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -userDeposits[address(arg1)][idx].field_512 + s
                            continue 
                        if sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / userDeposits[address(arg1)][idx].field_0 != sub_3ebe9f2a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userDeposits[address(arg1)][idx].field_512 > sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (sub_3ebe9f2a * userDeposits[address(arg1)][idx].field_0 / 100) - userDeposits[address(arg1)][idx].field_512 + s
                        continue 
    if s + userReward[address(arg1)] < userReward[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (s + userReward[address(arg1)])
}



}
