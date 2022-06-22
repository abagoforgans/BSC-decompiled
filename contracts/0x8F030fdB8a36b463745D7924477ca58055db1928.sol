contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const maxFees = 15


address owner;
array of struct stor1;
array of struct stor2;
uint8 decimals;
uint256 totalSupply;
address stor5;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor11;
uint256 liquidityFee;
uint256 developmentFee;
uint256 maxBalance;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 liquifyThreshhold;
uint8 stor21;
uint8 stor21; offset 8
uint256 stor21; offset 8

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function liquifyThreshhold() {
    return liquifyThreshhold
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBalance() {
    return maxBalance
}

function owner() {
    return owner
}

function sub_8f125afe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function developmentFee() {
    return developmentFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function getLimits() {
    return stor15, stor16, stor17
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_67243ea8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
}

function includeInFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function excludeFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function includeInMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 0
}

function setLiquifyThreshhold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquifyThreshhold = arg1
}

function excludeFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
}

function sub_62b9668b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(bool(arg2))
}

function sub_9485d227(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
}

function setMaxBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and 5 > -1 / totalSupply:
        revert with 'NH{q', 17
    require arg1 >= 5 * totalSupply / 1000
    maxBalance = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(this.address)] and arg1 > -1 / balanceOf[address(this.address)]:
        revert with 'NH{q', 17
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(this.address)] * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d61fe6cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor21.field_0):
        revert with 0, 'inSwapAndLiquify'
    if not uint8(stor21.field_8):
        Mask(248, 0, stor21.field_8) = 1
    else:
        if liquidityFee > -arg1 - 1:
            revert with 'NH{q', 17
        if liquidityFee + arg1 > 15:
            revert with 0, 'Exceed max fees allowed.'
    developmentFee = arg1
    if liquidityFee > -developmentFee - 1:
        revert with 'NH{q', 17
    stor11 = liquidityFee + developmentFee
    emit 0x6d030382: developmentFee
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor21.field_0):
        revert with 0, 'inSwapAndLiquify'
    if not uint8(stor21.field_8):
        Mask(248, 0, stor21.field_8) = 1
    else:
        if arg1 > -developmentFee - 1:
            revert with 'NH{q', 17
        if arg1 + developmentFee > 15:
            revert with 0, 'Exceed max fees allowed.'
    liquidityFee = arg1
    if liquidityFee > -developmentFee - 1:
        revert with 'NH{q', 17
    stor11 = liquidityFee + developmentFee
    emit SetLiquidityFee(liquidityFee);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function changeRouterVersion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '_router address cannot be 0'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
    emit 0x66fc0187: arg1
    return address(ext_call.return_data[0])
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if stor10[address(arg1)]:
        revert with 0, 'Address is blacklisted'
    if stor10[address(arg2)]:
        revert with 0, 'Address is blacklisted'
    if arg1 == owner:
        if arg2 != uniswapV2PairAddress:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if uint8(stor21.field_0):
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if balanceOf[address(this.address)] < liquifyThreshhold:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if stor11 <= 0:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if arg1 == owner:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if arg2 == owner:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        uint8(stor21.field_0) = 1
        if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
            revert with 'NH{q', 17
        if not stor11:
            revert with 'NH{q', 18
        if balanceOf[address(this.address)] and developmentFee > -1 / balanceOf[address(this.address)]:
            revert with 'NH{q', 17
        if not stor11:
            revert with 'NH{q', 18
        if balanceOf[address(this.address)] * liquidityFee / stor11 < balanceOf[address(this.address)] * liquidityFee / stor11 / 2:
            revert with 'NH{q', 17
        mem[96] = 2
        mem[128] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
        allowance[address(this.address)][stor18].field_255 = 0
        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor11 / 2), this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor11), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor18].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)
        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)), this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292] = 0
        mem[ceil32(return_data.size) + 324] = owner
        mem[ceil32(return_data.size) + 356] = block.timestamp
        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2), 0, 0, owner, block.timestamp
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        mem[0] = uniswapV2RouterAddress
        mem[32] = sha3(address(this.address), 7)
        allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * developmentFee / stor11
        emit Approval((balanceOf[address(this.address)] * developmentFee / stor11), this.address, uniswapV2RouterAddress);
        mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)] * developmentFee / stor11
        mem[(4 * ceil32(return_data.size)) + 324] = 0
        mem[(4 * ceil32(return_data.size)) + 356] = 160
        mem[(4 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = (4 * ceil32(return_data.size)) + 484
        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 388] = this.address
        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call stor5 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor21.field_0) = 0
        mem[0] = arg1
        mem[32] = 8
        if stor8[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            _4709 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4709] = 38
            mem[_4709 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 38
                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4709 + 70 len 26]
                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            mem[0] = arg2
            mem[32] = 6
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            _4897 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4897] = 40
            mem[_4897 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4897 + 72 len 24]
        else:
            mem[0] = arg2
            mem[32] = 8
            if stor8[address(arg2)]:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                _4725 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4725] = 38
                mem[_4725 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4725 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 6
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                _4905 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4905] = 40
                mem[_4905 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4905 + 72 len 24]
            else:
                if stor11 <= 0:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _4742 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4742] = 38
                    mem[_4742 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4742 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 6
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    _4914 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4914] = 40
                    mem[_4914 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4914 + 72 len 24]
                else:
                    if arg3 and stor11 > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * stor11 / 100:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _4951 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4951] = 38
                    mem[_4951 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4951 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] -= arg3 * stor11 / 100
                    if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = this.address
                    mem[32] = 6
                    balanceOf[address(this.address)] += arg3 * stor11 / 100
                    emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _5181 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5181] = 38
                    mem[_5181 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5181 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 6
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                    emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                    _5241 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5241] = 40
                    mem[_5241 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_5241 + 72 len 24]
    else:
        if arg2 != owner:
            if not stor9[address(arg2)]:
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + arg3 > maxBalance:
                    revert with 0, 'Max Balance is reached.'
            if arg2 != uniswapV2PairAddress:
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            if uint8(stor21.field_0):
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            if balanceOf[address(this.address)] < liquifyThreshhold:
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            if stor11 <= 0:
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            if arg1 == owner:
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            if arg2 == owner:
                if stor8[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor8[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if stor11 <= 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and stor11 > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * stor11 / 100:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * stor11 / 100
                            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * stor11 / 100
                            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            uint8(stor21.field_0) = 1
            if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                revert with 'NH{q', 17
            if not stor11:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] and developmentFee > -1 / balanceOf[address(this.address)]:
                revert with 'NH{q', 17
            if not stor11:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] * liquidityFee / stor11 < balanceOf[address(this.address)] * liquidityFee / stor11 / 2:
                revert with 'NH{q', 17
            mem[96] = 2
            mem[128] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
            allowance[address(this.address)][stor18].field_255 = 0
            emit Approval((balanceOf[address(this.address)] * liquidityFee / stor11 / 2), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor11), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor18].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)
            emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 260] = 0
            mem[ceil32(return_data.size) + 292] = 0
            mem[ceil32(return_data.size) + 324] = owner
            mem[ceil32(return_data.size) + 356] = block.timestamp
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2), 0, 0, owner, block.timestamp
            mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            mem[(2 * ceil32(return_data.size)) + 192] = 2
            mem[(2 * ceil32(return_data.size)) + 224] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 7)
            allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * developmentFee / stor11
            emit Approval((balanceOf[address(this.address)] * developmentFee / stor11), this.address, uniswapV2RouterAddress);
            mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)] * developmentFee / stor11
            mem[(4 * ceil32(return_data.size)) + 324] = 0
            mem[(4 * ceil32(return_data.size)) + 356] = 160
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = (4 * ceil32(return_data.size)) + 484
            while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 388] = this.address
            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[address(this.address)] * developmentFee / stor11, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            call stor5 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor21.field_0) = 0
            if stor8[address(arg1)]:
                if not arg1:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 37
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'dress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if not arg2:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 35
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'ess'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if arg3 > balanceOf[address(arg1)]:
                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                    mem[(4 * ceil32(return_data.size)) + 420] = 38
                    mem[(4 * ceil32(return_data.size)) + 452 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                    mem[(4 * ceil32(return_data.size)) + 490] = 0
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 384
                       len (5 * ceil32(return_data.size)) + 132
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 484] = 32
                    mem[(4 * ceil32(return_data.size)) + 516] = 40
                    mem[(4 * ceil32(return_data.size)) + 548 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 456 len 24]
                    mem[(4 * ceil32(return_data.size)) + 588] = 0
                else:
                    if not arg1:
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 36
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ress'
                    else:
                        if msg.sender:
                            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                            return 1
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 34
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve to the zero addre'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ss'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 480
                   len (5 * ceil32(return_data.size)) + 132
            if stor8[address(arg2)]:
                if not arg1:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 37
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'dress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if not arg2:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 35
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'ess'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if arg3 > balanceOf[address(arg1)]:
                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                    mem[(4 * ceil32(return_data.size)) + 420] = 38
                    mem[(4 * ceil32(return_data.size)) + 452 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                    mem[(4 * ceil32(return_data.size)) + 490] = 0
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 384
                       len (5 * ceil32(return_data.size)) + 132
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 484] = 32
                    mem[(4 * ceil32(return_data.size)) + 516] = 40
                    mem[(4 * ceil32(return_data.size)) + 548 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 456 len 24]
                    mem[(4 * ceil32(return_data.size)) + 588] = 0
                else:
                    if not arg1:
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 36
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ress'
                    else:
                        if msg.sender:
                            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                            return 1
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 34
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve to the zero addre'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ss'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 480
                   len (5 * ceil32(return_data.size)) + 132
            if stor11 <= 0:
                if not arg1:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 37
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'dress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if not arg2:
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                    mem[(4 * ceil32(return_data.size)) + 324] = 35
                    mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                    mem[(4 * ceil32(return_data.size)) + 388] = 'ess'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 288
                       len (5 * ceil32(return_data.size)) + 132
                if arg3 > balanceOf[address(arg1)]:
                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                    mem[(4 * ceil32(return_data.size)) + 420] = 38
                    mem[(4 * ceil32(return_data.size)) + 452 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                    mem[(4 * ceil32(return_data.size)) + 490] = 0
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 384
                       len (5 * ceil32(return_data.size)) + 132
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 484] = 32
                    mem[(4 * ceil32(return_data.size)) + 516] = 40
                    mem[(4 * ceil32(return_data.size)) + 548 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 456 len 24]
                    mem[(4 * ceil32(return_data.size)) + 588] = 0
                else:
                    if not arg1:
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 36
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ress'
                    else:
                        if msg.sender:
                            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                            return 1
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 484] = 32
                        mem[(4 * ceil32(return_data.size)) + 516] = 34
                        mem[(4 * ceil32(return_data.size)) + 548] = 'ERC20: approve to the zero addre'
                        mem[(4 * ceil32(return_data.size)) + 580] = 'ss'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 480
                   len (5 * ceil32(return_data.size)) + 132
            if arg3 and stor11 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 < arg3 * stor11 / 100:
                revert with 'NH{q', 17
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 37
                mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + 388] = 'dress'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (5 * ceil32(return_data.size)) + 132
            if not this.address:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 35
                mem[(4 * ceil32(return_data.size)) + 356] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + 388] = 'ess'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 288
                   len (5 * ceil32(return_data.size)) + 132
            if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 388] = 32
                mem[(4 * ceil32(return_data.size)) + 420] = 38
                mem[(4 * ceil32(return_data.size)) + 452 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0
                mem[(4 * ceil32(return_data.size)) + 490] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + 384
                   len (5 * ceil32(return_data.size)) + 132
            balanceOf[address(arg1)] -= arg3 * stor11 / 100
            if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg3 * stor11 / 100
            emit Transfer((arg3 * stor11 / 100), arg1, this.address);
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 388] = 32
                mem[(4 * ceil32(return_data.size)) + 420] = 37
                mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: transfer from the zero ad'
                mem[(4 * ceil32(return_data.size)) + 484] = 'dress'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 384
                   len (5 * ceil32(return_data.size)) + 132
            if not arg2:
                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 388] = 32
                mem[(4 * ceil32(return_data.size)) + 420] = 35
                mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: transfer to the zero addr'
                mem[(4 * ceil32(return_data.size)) + 484] = 'ess'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 384
                   len (5 * ceil32(return_data.size)) + 132
            if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                mem[(4 * ceil32(return_data.size)) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 484] = 32
                mem[(4 * ceil32(return_data.size)) + 516] = 38
                mem[(4 * ceil32(return_data.size)) + 548 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 454 len 26]
                mem[(4 * ceil32(return_data.size)) + 586] = 0
                revert with memory
                  from (4 * ceil32(return_data.size)) + 480
                   len (5 * ceil32(return_data.size)) + 132
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
            if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
            emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 580] = 32
                mem[(4 * ceil32(return_data.size)) + 612] = 40
                mem[(4 * ceil32(return_data.size)) + 644 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 552 len 24]
                mem[(4 * ceil32(return_data.size)) + 684] = 0
            else:
                if not arg1:
                    mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 580] = 32
                    mem[(4 * ceil32(return_data.size)) + 612] = 36
                    mem[(4 * ceil32(return_data.size)) + 644] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 676] = 'ress'
                else:
                    if msg.sender:
                        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[(4 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 580] = 32
                    mem[(4 * ceil32(return_data.size)) + 612] = 34
                    mem[(4 * ceil32(return_data.size)) + 644] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 676] = 'ss'
            revert with memory
              from (4 * ceil32(return_data.size)) + 576
               len (5 * ceil32(return_data.size)) + 132
        if arg2 != uniswapV2PairAddress:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if uint8(stor21.field_0):
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if balanceOf[address(this.address)] < liquifyThreshhold:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if stor11 <= 0:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if arg1 == owner:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        if arg2 == owner:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor8[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if stor11 <= 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and stor11 > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 < arg3 * stor11 / 100:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * stor11 / 100
                        if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 * stor11 / 100
                        emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                        emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 7))))))
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
            return 1
        uint8(stor21.field_0) = 1
        if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
            revert with 'NH{q', 17
        if not stor11:
            revert with 'NH{q', 18
        if balanceOf[address(this.address)] and developmentFee > -1 / balanceOf[address(this.address)]:
            revert with 'NH{q', 17
        if not stor11:
            revert with 'NH{q', 18
        if balanceOf[address(this.address)] * liquidityFee / stor11 < balanceOf[address(this.address)] * liquidityFee / stor11 / 2:
            revert with 'NH{q', 17
        mem[96] = 2
        mem[128] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
        allowance[address(this.address)][stor18].field_255 = 0
        emit Approval((balanceOf[address(this.address)] * liquidityFee / stor11 / 2), this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] * liquidityFee / stor11 / 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / stor11), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor18].field_0 = (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)
        emit Approval(((balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2)), this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292] = 0
        mem[ceil32(return_data.size) + 324] = owner
        mem[ceil32(return_data.size) + 356] = block.timestamp
        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(this.address), (balanceOf[address(this.address)] * liquidityFee / stor11) - (balanceOf[address(this.address)] * liquidityFee / stor11 / 2), 0, 0, owner, block.timestamp
        mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        mem[(2 * ceil32(return_data.size)) + 192] = 2
        mem[(2 * ceil32(return_data.size)) + 224] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        mem[0] = uniswapV2RouterAddress
        mem[32] = sha3(address(this.address), 7)
        allowance[address(this.address)][stor18].field_0 = balanceOf[address(this.address)] * developmentFee / stor11
        emit Approval((balanceOf[address(this.address)] * developmentFee / stor11), this.address, uniswapV2RouterAddress);
        mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)] * developmentFee / stor11
        mem[(4 * ceil32(return_data.size)) + 324] = 0
        mem[(4 * ceil32(return_data.size)) + 356] = 160
        mem[(4 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = (4 * ceil32(return_data.size)) + 484
        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 388] = this.address
        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call stor5 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor21.field_0) = 0
        mem[0] = arg1
        mem[32] = 8
        if stor8[address(arg1)]:
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            _4713 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4713] = 38
            mem[_4713 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg3 > balanceOf[address(arg1)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 38
                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4713 + 70 len 26]
                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            mem[0] = arg2
            mem[32] = 6
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            _4899 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4899] = 40
            mem[_4899 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
            if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                return 1
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 40
            mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4899 + 72 len 24]
        else:
            mem[0] = arg2
            mem[32] = 8
            if stor8[address(arg2)]:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                _4729 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4729] = 38
                mem[_4729 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg3 > balanceOf[address(arg1)]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4729 + 70 len 26]
                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 6
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                _4907 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4907] = 40
                mem[_4907 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                    return 1
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 40
                mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4907 + 72 len 24]
            else:
                if stor11 <= 0:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _4746 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4746] = 38
                    mem[_4746 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4746 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 6
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    _4917 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4917] = 40
                    mem[_4917 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_4917 + 72 len 24]
                else:
                    if arg3 and stor11 > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 < arg3 * stor11 / 100:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _4956 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_4956] = 38
                    mem[_4956 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 * stor11 / 100 > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_4956 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] -= arg3 * stor11 / 100
                    if balanceOf[address(this.address)] > -(arg3 * stor11 / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = this.address
                    mem[32] = 6
                    balanceOf[address(this.address)] += arg3 * stor11 / 100
                    emit Transfer((arg3 * stor11 / 100), arg1, this.address);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    _5184 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5184] = 38
                    mem[_5184 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 - (arg3 * stor11 / 100) > balanceOf[address(arg1)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 38
                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_5184 + 70 len 26]
                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor11 / 100)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * stor11 / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 6
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor11 / 100)
                    emit Transfer((arg3 - (arg3 * stor11 / 100)), arg1, arg2);
                    _5243 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5243] = 40
                    mem[_5243 + 32 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)].field_0:
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 40
                    mem[mem[64] + 68 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[_5243 + 72 len 24]
    revert with 0, 32, 40, mem[mem[64] + 68 len 40], 0
}



}
