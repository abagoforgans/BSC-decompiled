contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ddb265a(?)
#  - _fallback()
#
address _owner;
address stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 stor6;
uint256 totalFees;
array of struct stor8;
array of struct stor9;
uint256 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _destroyFee;
address sub_c41d28c5Address;
uint256 _devFee;
address sub_6af65929Address;
address uniswapV2PairAddress;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function sub_6af65929(?) {
    return sub_6af65929Address
}

function _liquidityFee() {
    return _liquidityFee
}

function owner() {
    return _owner
}

function _destroyFee() {
    return _destroyFee
}

function _devFee() {
    return _devFee
}

function _owner() {
    return _owner
}

function sub_c41d28c5(?) {
    return sub_c41d28c5Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function sub_d1242e06(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c41d28c5Address = address(arg1)
    sub_6af65929Address = address(arg2)
    _taxFee = arg3
    _devFee = arg5
    _destroyFee = arg4
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor6 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor6 / totalSupply)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_f6b303d8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        if arg2 and stor6 / totalSupply > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        stor2[address(arg1)] = arg2 * stor6 / totalSupply
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8.length):
                if 31 < uint255(stor8.length) * 0.5:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor8.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(uint255(stor8.length) * 0.5) + 192 len ceil32(uint255(stor8.length) * 0.5)] = mem[128 len ceil32(uint255(stor8.length) * 0.5)]
        if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
            mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length), data=mem[128 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8.length):
            if 31 < uint255(stor8.length) * 0.5:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while (uint255(stor8.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if stor4[address(msg.sender)]:
        if not arg2:
            if 0 > stor2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(msg.sender)] < 0:
                revert with 0, 17
            if stor2[address(arg1)] > -1:
                revert with 0, 17
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg2 and stor6 / totalSupply > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                revert with 0, 17
            stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
            if not arg2 * stor6 / totalSupply / 100:
                if stor2[address(arg1)] > -1:
                    revert with 0, 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                    revert with 0, 17
                if not arg2 * stor6 / totalSupply / 100:
                    revert with 0, 18
                if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                    revert with 0, 17
                if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
        if not arg2 / 100:
            emit Transfer(0, msg.sender, arg1);
        else:
            if arg2 / 100 and 100 > -1 / arg2 / 100:
                revert with 0, 17
            if not arg2 / 100:
                revert with 0, 18
            if 100 * arg2 / 100 / arg2 / 100 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            emit Transfer((100 * arg2 / 100), msg.sender, arg1);
    else:
        if stor4[address(arg1)]:
            if not arg2:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor2[address(arg1)] > -1:
                    revert with 0, 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 * stor6 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 0, 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                        revert with 0, 17
                    if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
            if not arg2 / 100:
                emit Transfer(0, msg.sender, arg1);
            else:
                if arg2 / 100 and 100 > -1 / arg2 / 100:
                    revert with 0, 17
                if not arg2 / 100:
                    revert with 0, 18
                if 100 * arg2 / 100 / arg2 / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer((100 * arg2 / 100), msg.sender, arg1);
        else:
            if not arg2:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if not arg2 / 100:
                    if stor2[stor14] > -1:
                        revert with 0, 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_c41d28c5Address);
                else:
                    if arg2 / 100 and _destroyFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _destroyFee / arg2 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 0, 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg2 / 100 * _destroyFee:
                            revert with 0, 17
                        if not arg2 / 100 * _destroyFee:
                            revert with 0, 18
                        if arg2 / 100 * _destroyFee * stor6 / totalSupply / arg2 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > !(arg2 / 100 * _destroyFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor14] + (arg2 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg2 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                if not arg2 / 100:
                    if stor2[stor16] > -1:
                        revert with 0, 17
                    if stor2[stor16] < stor2[stor16]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_6af65929Address);
                else:
                    if arg2 / 100 and _devFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _devFee / arg2 / 100 != _devFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _devFee:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _devFee and stor6 / totalSupply > -1 / arg2 / 100 * _devFee:
                            revert with 0, 17
                        if not arg2 / 100 * _devFee:
                            revert with 0, 18
                        if arg2 / 100 * _devFee * stor6 / totalSupply / arg2 / 100 * _devFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor16] > !(arg2 / 100 * _devFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor16] + (arg2 / 100 * _devFee * stor6 / totalSupply) < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor16] += arg2 / 100 * _devFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _devFee), msg.sender, sub_6af65929Address);
                if not arg2 / 100:
                    if stor2[stor17] > -1:
                        revert with 0, 17
                    if stor2[stor17] < stor2[stor17]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                else:
                    if arg2 / 100 and _liquidityFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _liquidityFee / arg2 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _liquidityFee:
                        if stor2[stor17] > -1:
                            revert with 0, 17
                        if stor2[stor17] < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg2 / 100 * _liquidityFee:
                            revert with 0, 17
                        if not arg2 / 100 * _liquidityFee:
                            revert with 0, 18
                        if arg2 / 100 * _liquidityFee * stor6 / totalSupply / arg2 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor17] > !(arg2 / 100 * _liquidityFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor17] + (arg2 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor17] += arg2 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                if not arg2 / 100:
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 0, 17
                    if totalFees > -1:
                        revert with 0, 17
                    if totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 0, 17
                    if totalFees > !(arg2 / 100 * _taxFee):
                        revert with 0, 17
                    if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg2 / 100 * _taxFee
                if _taxFee > !_liquidityFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee > !_destroyFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee + _destroyFee > !_devFee:
                    revert with 0, 17
                if 100 < _taxFee + _liquidityFee + _destroyFee + _devFee:
                    revert with 0, 17
                if stor2[address(arg1)] > -1:
                    revert with 0, 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 / 100:
                    if stor2[stor14] > -1:
                        revert with 0, 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_c41d28c5Address);
                else:
                    if arg2 / 100 and _destroyFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _destroyFee / arg2 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 0, 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg2 / 100 * _destroyFee:
                            revert with 0, 17
                        if not arg2 / 100 * _destroyFee:
                            revert with 0, 18
                        if arg2 / 100 * _destroyFee * stor6 / totalSupply / arg2 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > !(arg2 / 100 * _destroyFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor14] + (arg2 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg2 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                if not arg2 / 100:
                    if stor2[stor16] > -1:
                        revert with 0, 17
                    if stor2[stor16] < stor2[stor16]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_6af65929Address);
                else:
                    if arg2 / 100 and _devFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _devFee / arg2 / 100 != _devFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _devFee:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _devFee and stor6 / totalSupply > -1 / arg2 / 100 * _devFee:
                            revert with 0, 17
                        if not arg2 / 100 * _devFee:
                            revert with 0, 18
                        if arg2 / 100 * _devFee * stor6 / totalSupply / arg2 / 100 * _devFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor16] > !(arg2 / 100 * _devFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor16] + (arg2 / 100 * _devFee * stor6 / totalSupply) < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor16] += arg2 / 100 * _devFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _devFee), msg.sender, sub_6af65929Address);
                if not arg2 / 100:
                    if stor2[stor17] > -1:
                        revert with 0, 17
                    if stor2[stor17] < stor2[stor17]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                else:
                    if arg2 / 100 and _liquidityFee > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if arg2 / 100 * _liquidityFee / arg2 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _liquidityFee:
                        if stor2[stor17] > -1:
                            revert with 0, 17
                        if stor2[stor17] < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg2 / 100 * _liquidityFee:
                            revert with 0, 17
                        if not arg2 / 100 * _liquidityFee:
                            revert with 0, 18
                        if arg2 / 100 * _liquidityFee * stor6 / totalSupply / arg2 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor17] > !(arg2 / 100 * _liquidityFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor17] + (arg2 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor17] += arg2 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                if not arg2 * stor6 / totalSupply / 100:
                    if not arg2 / 100:
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 0, 17
                        if totalFees > -1:
                            revert with 0, 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 0, 17
                        if totalFees > !(arg2 / 100 * _taxFee):
                            revert with 0, 17
                        if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg2 / 100 * _taxFee
                else:
                    if arg2 * stor6 / totalSupply / 100 and _taxFee > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if arg2 * stor6 / totalSupply / 100 * _taxFee / arg2 * stor6 / totalSupply / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100:
                        if arg2 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg2 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 0, 17
                        stor6 += -1 * arg2 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > -1:
                            revert with 0, 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg2 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 0, 17
                        stor6 += -1 * arg2 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > !(arg2 / 100 * _taxFee):
                            revert with 0, 17
                        if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg2 / 100 * _taxFee
                if _taxFee > !_liquidityFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee > !_destroyFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee + _destroyFee > !_devFee:
                    revert with 0, 17
                if 100 < _taxFee + _liquidityFee + _destroyFee + _devFee:
                    revert with 0, 17
                if not arg2 * stor6 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 0, 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) - (_devFee * arg2 * stor6 / totalSupply / 100) / arg2 * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > !((100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) - (_devFee * arg2 * stor6 / totalSupply / 100)):
                        revert with 0, 17
                    if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) - (_devFee * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] = stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) - (_devFee * arg2 * stor6 / totalSupply / 100)
            if not arg2 / 100:
                emit Transfer(0, msg.sender, arg1);
            else:
                if arg2 / 100 and -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100 > -1 / arg2 / 100:
                    revert with 0, 17
                if not arg2 / 100:
                    revert with 0, 18
                if (100 * arg2 / 100) - (_taxFee * arg2 / 100) - (_liquidityFee * arg2 / 100) - (_destroyFee * arg2 / 100) - (_devFee * arg2 / 100) / arg2 / 100 != -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer(((100 * arg2 / 100) - (_taxFee * arg2 / 100) - (_liquidityFee * arg2 / 100) - (_destroyFee * arg2 / 100) - (_devFee * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if stor4[address(arg1)]:
        if not arg3:
            if 0 > stor2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(arg1)] < 0:
                revert with 0, 17
            if stor2[address(arg2)] > -1:
                revert with 0, 17
            if stor2[address(arg2)] < stor2[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg3 and stor6 / totalSupply > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * stor6 / totalSupply > stor2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(arg1)] < arg3 * stor6 / totalSupply:
                revert with 0, 17
            stor2[address(arg1)] += -1 * arg3 * stor6 / totalSupply
            if not arg3 * stor6 / totalSupply / 100:
                if stor2[address(arg2)] > -1:
                    revert with 0, 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 * stor6 / totalSupply / 100 and 100 > -1 / arg3 * stor6 / totalSupply / 100:
                    revert with 0, 17
                if not arg3 * stor6 / totalSupply / 100:
                    revert with 0, 18
                if 100 * arg3 * stor6 / totalSupply / 100 / arg3 * stor6 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg2)] > !(100 * arg3 * stor6 / totalSupply / 100):
                    revert with 0, 17
                if stor2[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg2)] += 100 * arg3 * stor6 / totalSupply / 100
        if not arg3 / 100:
            emit Transfer(0, arg1, arg2);
        else:
            if arg3 / 100 and 100 > -1 / arg3 / 100:
                revert with 0, 17
            if not arg3 / 100:
                revert with 0, 18
            if 100 * arg3 / 100 / arg3 / 100 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            emit Transfer((100 * arg3 / 100), arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
    else:
        if stor4[address(arg2)]:
            if not arg3:
                if 0 > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < 0:
                    revert with 0, 17
                if stor2[address(arg2)] > -1:
                    revert with 0, 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 and stor6 / totalSupply > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * stor6 / totalSupply > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < arg3 * stor6 / totalSupply:
                    revert with 0, 17
                stor2[address(arg1)] += -1 * arg3 * stor6 / totalSupply
                if not arg3 * stor6 / totalSupply / 100:
                    if stor2[address(arg2)] > -1:
                        revert with 0, 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 * stor6 / totalSupply / 100 and 100 > -1 / arg3 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg3 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg3 * stor6 / totalSupply / 100 / arg3 * stor6 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg2)] > !(100 * arg3 * stor6 / totalSupply / 100):
                        revert with 0, 17
                    if stor2[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg2)] += 100 * arg3 * stor6 / totalSupply / 100
            if not arg3 / 100:
                emit Transfer(0, arg1, arg2);
            else:
                if arg3 / 100 and 100 > -1 / arg3 / 100:
                    revert with 0, 17
                if not arg3 / 100:
                    revert with 0, 18
                if 100 * arg3 / 100 / arg3 / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer((100 * arg3 / 100), arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
        else:
            if not arg3:
                if 0 > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < 0:
                    revert with 0, 17
                if not arg3 / 100:
                    if stor2[stor14] > -1:
                        revert with 0, 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, sub_c41d28c5Address);
                else:
                    if arg3 / 100 and _destroyFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _destroyFee / arg3 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 0, 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg3 / 100 * _destroyFee:
                            revert with 0, 17
                        if not arg3 / 100 * _destroyFee:
                            revert with 0, 18
                        if arg3 / 100 * _destroyFee * stor6 / totalSupply / arg3 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > !(arg3 / 100 * _destroyFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor14] + (arg3 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg3 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _destroyFee), arg1, sub_c41d28c5Address);
                if not arg3 / 100:
                    if stor2[stor16] > -1:
                        revert with 0, 17
                    if stor2[stor16] < stor2[stor16]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, sub_6af65929Address);
                else:
                    if arg3 / 100 and _devFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _devFee / arg3 / 100 != _devFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _devFee:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _devFee and stor6 / totalSupply > -1 / arg3 / 100 * _devFee:
                            revert with 0, 17
                        if not arg3 / 100 * _devFee:
                            revert with 0, 18
                        if arg3 / 100 * _devFee * stor6 / totalSupply / arg3 / 100 * _devFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor16] > !(arg3 / 100 * _devFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor16] + (arg3 / 100 * _devFee * stor6 / totalSupply) < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor16] += arg3 / 100 * _devFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _devFee), arg1, sub_6af65929Address);
                if not arg3 / 100:
                    if stor2[stor17] > -1:
                        revert with 0, 17
                    if stor2[stor17] < stor2[stor17]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, uniswapV2PairAddress);
                else:
                    if arg3 / 100 and _liquidityFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _liquidityFee / arg3 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _liquidityFee:
                        if stor2[stor17] > -1:
                            revert with 0, 17
                        if stor2[stor17] < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg3 / 100 * _liquidityFee:
                            revert with 0, 17
                        if not arg3 / 100 * _liquidityFee:
                            revert with 0, 18
                        if arg3 / 100 * _liquidityFee * stor6 / totalSupply / arg3 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor17] > !(arg3 / 100 * _liquidityFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor17] + (arg3 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor17] += arg3 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _liquidityFee), arg1, uniswapV2PairAddress);
                if not arg3 / 100:
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 0, 17
                    if totalFees > -1:
                        revert with 0, 17
                    if totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 / 100 and _taxFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _taxFee / arg3 / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 0, 17
                    if totalFees > !(arg3 / 100 * _taxFee):
                        revert with 0, 17
                    if totalFees + (arg3 / 100 * _taxFee) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg3 / 100 * _taxFee
                if _taxFee > !_liquidityFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee > !_destroyFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee + _destroyFee > !_devFee:
                    revert with 0, 17
                if 100 < _taxFee + _liquidityFee + _destroyFee + _devFee:
                    revert with 0, 17
                if stor2[address(arg2)] > -1:
                    revert with 0, 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 and stor6 / totalSupply > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * stor6 / totalSupply > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < arg3 * stor6 / totalSupply:
                    revert with 0, 17
                stor2[address(arg1)] += -1 * arg3 * stor6 / totalSupply
                if not arg3 / 100:
                    if stor2[stor14] > -1:
                        revert with 0, 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, sub_c41d28c5Address);
                else:
                    if arg3 / 100 and _destroyFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _destroyFee / arg3 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 0, 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg3 / 100 * _destroyFee:
                            revert with 0, 17
                        if not arg3 / 100 * _destroyFee:
                            revert with 0, 18
                        if arg3 / 100 * _destroyFee * stor6 / totalSupply / arg3 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > !(arg3 / 100 * _destroyFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor14] + (arg3 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg3 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _destroyFee), arg1, sub_c41d28c5Address);
                if not arg3 / 100:
                    if stor2[stor16] > -1:
                        revert with 0, 17
                    if stor2[stor16] < stor2[stor16]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, sub_6af65929Address);
                else:
                    if arg3 / 100 and _devFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _devFee / arg3 / 100 != _devFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _devFee:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _devFee and stor6 / totalSupply > -1 / arg3 / 100 * _devFee:
                            revert with 0, 17
                        if not arg3 / 100 * _devFee:
                            revert with 0, 18
                        if arg3 / 100 * _devFee * stor6 / totalSupply / arg3 / 100 * _devFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor16] > !(arg3 / 100 * _devFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor16] + (arg3 / 100 * _devFee * stor6 / totalSupply) < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor16] += arg3 / 100 * _devFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _devFee), arg1, sub_6af65929Address);
                if not arg3 / 100:
                    if stor2[stor17] > -1:
                        revert with 0, 17
                    if stor2[stor17] < stor2[stor17]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, uniswapV2PairAddress);
                else:
                    if arg3 / 100 and _liquidityFee > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if arg3 / 100 * _liquidityFee / arg3 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100 * _liquidityFee:
                        if stor2[stor17] > -1:
                            revert with 0, 17
                        if stor2[stor17] < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg3 / 100 * _liquidityFee:
                            revert with 0, 17
                        if not arg3 / 100 * _liquidityFee:
                            revert with 0, 18
                        if arg3 / 100 * _liquidityFee * stor6 / totalSupply / arg3 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor17] > !(arg3 / 100 * _liquidityFee * stor6 / totalSupply):
                            revert with 0, 17
                        if stor2[stor17] + (arg3 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor17] += arg3 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg3 / 100 * _liquidityFee), arg1, uniswapV2PairAddress);
                if not arg3 * stor6 / totalSupply / 100:
                    if not arg3 / 100:
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 0, 17
                        if totalFees > -1:
                            revert with 0, 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 and _taxFee > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if arg3 / 100 * _taxFee / arg3 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 0, 17
                        if totalFees > !(arg3 / 100 * _taxFee):
                            revert with 0, 17
                        if totalFees + (arg3 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg3 / 100 * _taxFee
                else:
                    if arg3 * stor6 / totalSupply / 100 and _taxFee > -1 / arg3 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg3 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if arg3 * stor6 / totalSupply / 100 * _taxFee / arg3 * stor6 / totalSupply / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg3 / 100:
                        if arg3 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg3 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 0, 17
                        stor6 += -1 * arg3 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > -1:
                            revert with 0, 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 / 100 and _taxFee > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if arg3 / 100 * _taxFee / arg3 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg3 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 0, 17
                        stor6 += -1 * arg3 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > !(arg3 / 100 * _taxFee):
                            revert with 0, 17
                        if totalFees + (arg3 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg3 / 100 * _taxFee
                if _taxFee > !_liquidityFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee > !_destroyFee:
                    revert with 0, 17
                if _taxFee + _liquidityFee + _destroyFee > !_devFee:
                    revert with 0, 17
                if 100 < _taxFee + _liquidityFee + _destroyFee + _devFee:
                    revert with 0, 17
                if not arg3 * stor6 / totalSupply / 100:
                    if stor2[address(arg2)] > -1:
                        revert with 0, 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100 > -1 / arg3 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg3 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if (100 * arg3 * stor6 / totalSupply / 100) - (_taxFee * arg3 * stor6 / totalSupply / 100) - (_liquidityFee * arg3 * stor6 / totalSupply / 100) - (_destroyFee * arg3 * stor6 / totalSupply / 100) - (_devFee * arg3 * stor6 / totalSupply / 100) / arg3 * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg2)] > !((100 * arg3 * stor6 / totalSupply / 100) - (_taxFee * arg3 * stor6 / totalSupply / 100) - (_liquidityFee * arg3 * stor6 / totalSupply / 100) - (_destroyFee * arg3 * stor6 / totalSupply / 100) - (_devFee * arg3 * stor6 / totalSupply / 100)):
                        revert with 0, 17
                    if stor2[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) - (_taxFee * arg3 * stor6 / totalSupply / 100) - (_liquidityFee * arg3 * stor6 / totalSupply / 100) - (_destroyFee * arg3 * stor6 / totalSupply / 100) - (_devFee * arg3 * stor6 / totalSupply / 100) < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg2)] = stor2[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) - (_taxFee * arg3 * stor6 / totalSupply / 100) - (_liquidityFee * arg3 * stor6 / totalSupply / 100) - (_destroyFee * arg3 * stor6 / totalSupply / 100) - (_devFee * arg3 * stor6 / totalSupply / 100)
            if not arg3 / 100:
                emit Transfer(0, arg1, arg2);
            else:
                if arg3 / 100 and -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100 > -1 / arg3 / 100:
                    revert with 0, 17
                if not arg3 / 100:
                    revert with 0, 18
                if (100 * arg3 / 100) - (_taxFee * arg3 / 100) - (_liquidityFee * arg3 / 100) - (_destroyFee * arg3 / 100) - (_devFee * arg3 / 100) / arg3 / 100 != -_taxFee + -_liquidityFee + -_destroyFee + -_devFee + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer(((100 * arg3 / 100) - (_taxFee * arg3 / 100) - (_liquidityFee * arg3 / 100) - (_destroyFee * arg3 / 100) - (_devFee * arg3 / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[872 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 3)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
