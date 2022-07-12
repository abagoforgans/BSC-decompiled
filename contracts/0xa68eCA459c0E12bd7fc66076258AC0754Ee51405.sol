contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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

function _liquidityFee() {
    return _liquidityFee
}

function owner() {
    return _owner
}

function _destroyFee() {
    return _destroyFee
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

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
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

function sub_17906aa0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c41d28c5Address = address(arg1)
    _taxFee = arg2
    _destroyFee = arg3
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor6 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor6 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor6 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / totalSupply:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor6 / totalSupply)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_0512e486(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        if arg2 and stor6 / totalSupply > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        stor2[address(arg1)] = arg2 * stor6 / totalSupply
}

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
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
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor4[address(msg.sender)]:
        if not arg2:
            if 0 > stor2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(msg.sender)] < 0:
                revert with 'NH{q', 17
            if stor2[address(arg1)] > -1:
                revert with 'NH{q', 17
            if stor2[address(arg1)] < stor2[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg2 and stor6 / totalSupply > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                revert with 'NH{q', 17
            stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
            if not arg2 * stor6 / totalSupply / 100:
                if stor2[address(arg1)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                    revert with 'NH{q', 17
                if not arg2 * stor6 / totalSupply / 100:
                    revert with 'NH{q', 18
                if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg1)] > (-100 * arg2 * stor6 / totalSupply / 100) - 1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
        if not arg2 / 100:
            emit Transfer(0, msg.sender, arg1);
        else:
            if arg2 / 100 and 100 > -1 / arg2 / 100:
                revert with 'NH{q', 17
            if not arg2 / 100:
                revert with 'NH{q', 18
            if 100 * arg2 / 100 / arg2 / 100 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            emit Transfer((100 * arg2 / 100), msg.sender, arg1);
    else:
        if stor4[address(arg1)]:
            if not arg2:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 'NH{q', 17
                if not arg2:
                    revert with 'NH{q', 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 'NH{q', 17
                stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 * stor6 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 18
                    if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > (-100 * arg2 * stor6 / totalSupply / 100) - 1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
            if not arg2 / 100:
                emit Transfer(0, msg.sender, arg1);
            else:
                if arg2 / 100 and 100 > -1 / arg2 / 100:
                    revert with 'NH{q', 17
                if not arg2 / 100:
                    revert with 'NH{q', 18
                if 100 * arg2 / 100 / arg2 / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer((100 * arg2 / 100), msg.sender, arg1);
        else:
            if not arg2:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 'NH{q', 17
                if not arg2 / 100:
                    if stor2[stor14] > -1:
                        revert with 'NH{q', 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_c41d28c5Address);
                else:
                    if arg2 / 100 and _destroyFee > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if arg2 / 100 * _destroyFee / arg2 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg2 / 100 * _destroyFee:
                            revert with 'NH{q', 17
                        if not arg2 / 100 * _destroyFee:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _destroyFee * stor6 / totalSupply / arg2 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > (-1 * arg2 / 100 * _destroyFee * stor6 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if stor2[stor14] + (arg2 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg2 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                if not arg2 / 100:
                    if stor2[stor15] > -1:
                        revert with 'NH{q', 17
                    if stor2[stor15] < stor2[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                else:
                    if arg2 / 100 and _liquidityFee > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if arg2 / 100 * _liquidityFee / arg2 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _liquidityFee:
                        if stor2[stor15] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor15] < stor2[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg2 / 100 * _liquidityFee:
                            revert with 'NH{q', 17
                        if not arg2 / 100 * _liquidityFee:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _liquidityFee * stor6 / totalSupply / arg2 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor15] > (-1 * arg2 / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if stor2[stor15] + (arg2 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor15] += arg2 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                if not arg2 / 100:
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > -1:
                        revert with 'NH{q', 17
                    if totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > stor6:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6 < 0:
                        revert with 'NH{q', 17
                    if totalFees > (-1 * arg2 / 100 * _taxFee) - 1:
                        revert with 'NH{q', 17
                    if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg2 / 100 * _taxFee
                if _taxFee > -_liquidityFee - 1:
                    revert with 'NH{q', 17
                if _taxFee + _liquidityFee > -_destroyFee - 1:
                    revert with 'NH{q', 17
                if 100 < _taxFee + _liquidityFee + _destroyFee:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 'NH{q', 17
                if not arg2:
                    revert with 'NH{q', 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 'NH{q', 17
                stor2[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 / 100:
                    if stor2[stor14] > -1:
                        revert with 'NH{q', 17
                    if stor2[stor14] < stor2[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_c41d28c5Address);
                else:
                    if arg2 / 100 and _destroyFee > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if arg2 / 100 * _destroyFee / arg2 / 100 != _destroyFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _destroyFee:
                        if stor2[stor14] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor14] < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _destroyFee and stor6 / totalSupply > -1 / arg2 / 100 * _destroyFee:
                            revert with 'NH{q', 17
                        if not arg2 / 100 * _destroyFee:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _destroyFee * stor6 / totalSupply / arg2 / 100 * _destroyFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor14] > (-1 * arg2 / 100 * _destroyFee * stor6 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if stor2[stor14] + (arg2 / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor14] += arg2 / 100 * _destroyFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                if not arg2 / 100:
                    if stor2[stor15] > -1:
                        revert with 'NH{q', 17
                    if stor2[stor15] < stor2[stor15]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                else:
                    if arg2 / 100 and _liquidityFee > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if arg2 / 100 * _liquidityFee / arg2 / 100 != _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100 * _liquidityFee:
                        if stor2[stor15] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor15] < stor2[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 * _liquidityFee and stor6 / totalSupply > -1 / arg2 / 100 * _liquidityFee:
                            revert with 'NH{q', 17
                        if not arg2 / 100 * _liquidityFee:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _liquidityFee * stor6 / totalSupply / arg2 / 100 * _liquidityFee != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[stor15] > (-1 * arg2 / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if stor2[stor15] + (arg2 / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[stor15] += arg2 / 100 * _liquidityFee * stor6 / totalSupply
                    emit Transfer((arg2 / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                if not arg2 * stor6 / totalSupply / 100:
                    if not arg2 / 100:
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -1:
                            revert with 'NH{q', 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < 0:
                            revert with 'NH{q', 17
                        if totalFees > (-1 * arg2 / 100 * _taxFee) - 1:
                            revert with 'NH{q', 17
                        if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg2 / 100 * _taxFee
                else:
                    if arg2 * stor6 / totalSupply / 100 and _taxFee > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 18
                    if arg2 * stor6 / totalSupply / 100 * _taxFee / arg2 * stor6 / totalSupply / 100 != _taxFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 100:
                        if arg2 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg2 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 'NH{q', 17
                        stor6 += -1 * arg2 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > -1:
                            revert with 'NH{q', 17
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and _taxFee > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if arg2 / 100 * _taxFee / arg2 / 100 != _taxFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor6 / totalSupply / 100 * _taxFee > stor6:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor6 < arg2 * stor6 / totalSupply / 100 * _taxFee:
                            revert with 'NH{q', 17
                        stor6 += -1 * arg2 * stor6 / totalSupply / 100 * _taxFee
                        if totalFees > (-1 * arg2 / 100 * _taxFee) - 1:
                            revert with 'NH{q', 17
                        if totalFees + (arg2 / 100 * _taxFee) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg2 / 100 * _taxFee
                if _taxFee > -_liquidityFee - 1:
                    revert with 'NH{q', 17
                if _taxFee + _liquidityFee > -_destroyFee - 1:
                    revert with 'NH{q', 17
                if 100 < _taxFee + _liquidityFee + _destroyFee:
                    revert with 'NH{q', 17
                if not arg2 * stor6 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 'NH{q', 18
                    if (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) / arg2 * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > (-100 * arg2 * stor6 / totalSupply / 100) + (_taxFee * arg2 * stor6 / totalSupply / 100) + (_liquidityFee * arg2 * stor6 / totalSupply / 100) + (_destroyFee * arg2 * stor6 / totalSupply / 100) - 1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] = stor2[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) - (_taxFee * arg2 * stor6 / totalSupply / 100) - (_liquidityFee * arg2 * stor6 / totalSupply / 100) - (_destroyFee * arg2 * stor6 / totalSupply / 100)
            if not arg2 / 100:
                emit Transfer(0, msg.sender, arg1);
            else:
                if arg2 / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / arg2 / 100:
                    revert with 'NH{q', 17
                if not arg2 / 100:
                    revert with 'NH{q', 18
                if (100 * arg2 / 100) - (_taxFee * arg2 / 100) - (_liquidityFee * arg2 / 100) - (_destroyFee * arg2 / 100) / arg2 / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer(((100 * arg2 / 100) - (_taxFee * arg2 / 100) - (_liquidityFee * arg2 / 100) - (_destroyFee * arg2 / 100)), msg.sender, arg1);
    return 1
}

function sub_d30b2036(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1346 = mem[(32 * idx) + 128]
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: transfer to the zero address'
        if cd[36] <= 0:
            revert with 0, 'Transfer amount must be greater than zero'
        mem[0] = msg.sender
        mem[32] = 4
        if stor4[address(msg.sender)]:
            _1353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1353] = 26
            mem[_1353 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1358 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1358 + idx + 68] = mem[_1353 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1358 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1358 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if stor6 >= stor6 / totalSupply:
                _1367 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1367] = 26
                mem[_1367 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1373 + idx + 68] = mem[_1367 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1373 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1373 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not cd[36]:
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1401] = 30
                    mem[_1401 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1419 + idx + 68] = mem[_1401 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1419 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1419 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1485] = 26
                    mem[_1485 + 32] = 'SafeMath: division by zero'
                    if stor2[address(_1346)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(_1346)] < stor2[address(_1346)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_1346)
                    mem[32] = 2
                    _1549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1549] = 26
                    mem[_1549 + 32] = 'SafeMath: division by zero'
                else:
                    if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                        revert with 'NH{q', 17
                    if not cd[36]:
                        revert with 'NH{q', 18
                    if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1457] = 30
                    mem[_1457 + 32] = 'SafeMath: subtraction overflow'
                    if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                        _1465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1465 + idx + 68] = mem[_1457 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1465 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1465 + -mem[64] + 100
                    if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                    _1527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1527] = 26
                    mem[_1527 + 32] = 'SafeMath: division by zero'
                    if not cd[36] * stor6 / totalSupply / 100:
                        if stor2[address(_1346)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        _1595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1595] = 26
                        mem[_1595 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] * stor6 / totalSupply / 100 and 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not cd[36] * stor6 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 100 * cd[36] * stor6 / totalSupply / 100 / cd[36] * stor6 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        stor2[address(_1346)] += 100 * cd[36] * stor6 / totalSupply / 100
                        _1671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1671] = 26
                        mem[_1671 + 32] = 'SafeMath: division by zero'
            else:
                _1368 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1368] = 26
                mem[_1368 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1374 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1374 + idx + 68] = mem[_1368 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1374 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1374 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not cd[36]:
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1403] = 30
                    mem[_1403 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1420 + idx + 68] = mem[_1403 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1420 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1420 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1488] = 26
                    mem[_1488 + 32] = 'SafeMath: division by zero'
                    if stor2[address(_1346)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(_1346)] < stor2[address(_1346)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = address(_1346)
                    mem[32] = 2
                    _1550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1550] = 26
                    mem[_1550 + 32] = 'SafeMath: division by zero'
                else:
                    if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                        revert with 'NH{q', 17
                    if not cd[36]:
                        revert with 'NH{q', 18
                    if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1458] = 30
                    mem[_1458 + 32] = 'SafeMath: subtraction overflow'
                    if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                        _1467 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1467 + idx + 68] = mem[_1458 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1467 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1467 + -mem[64] + 100
                    if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                    _1529 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1529] = 26
                    mem[_1529 + 32] = 'SafeMath: division by zero'
                    if not cd[36] * stor6 / totalSupply / 100:
                        if stor2[address(_1346)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        _1597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1597] = 26
                        mem[_1597 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] * stor6 / totalSupply / 100 and 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not cd[36] * stor6 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 100 * cd[36] * stor6 / totalSupply / 100 / cd[36] * stor6 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        stor2[address(_1346)] += 100 * cd[36] * stor6 / totalSupply / 100
                        _1674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1674] = 26
                        mem[_1674 + 32] = 'SafeMath: division by zero'
            if not cd[36] / 100:
                mem[mem[64]] = 0
                emit Transfer(0, msg.sender, address(_1346));
            else:
                if cd[36] / 100 and 100 > -1 / cd[36] / 100:
                    revert with 'NH{q', 17
                if not cd[36] / 100:
                    revert with 'NH{q', 18
                if 100 * cd[36] / 100 / cd[36] / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[mem[64]] = 100 * cd[36] / 100
                emit Transfer((100 * cd[36] / 100), msg.sender, address(_1346));
        else:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if stor4[address(mem[(32 * idx) + 128])]:
                _1356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1356] = 26
                mem[_1356 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1360 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1360 + idx + 68] = mem[_1356 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1360 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1360 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if stor6 >= stor6 / totalSupply:
                    _1371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1371] = 26
                    mem[_1371 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1381 + idx + 68] = mem[_1371 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1381 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1381 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not cd[36]:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1415 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1415] = 30
                        mem[_1415 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1425 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1425 + idx + 68] = mem[_1415 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1425 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1425 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1495] = 26
                        mem[_1495 + 32] = 'SafeMath: division by zero'
                        if stor2[address(_1346)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        _1553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1553] = 26
                        mem[_1553 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1463 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1463] = 30
                        mem[_1463 + 32] = 'SafeMath: subtraction overflow'
                        if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                            _1477 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1477 + idx + 68] = mem[_1463 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1477 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1477 + -mem[64] + 100
                        if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                        _1531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1531] = 26
                        mem[_1531 + 32] = 'SafeMath: division by zero'
                        if not cd[36] * stor6 / totalSupply / 100:
                            if stor2[address(_1346)] > -1:
                                revert with 'NH{q', 17
                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_1346)
                            mem[32] = 2
                            _1603 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1603] = 26
                            mem[_1603 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] * stor6 / totalSupply / 100 and 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                revert with 'NH{q', 17
                            if not cd[36] * stor6 / totalSupply / 100:
                                revert with 'NH{q', 18
                            if 100 * cd[36] * stor6 / totalSupply / 100 / cd[36] * stor6 / totalSupply / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) - 1:
                                revert with 'NH{q', 17
                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_1346)
                            mem[32] = 2
                            stor2[address(_1346)] += 100 * cd[36] * stor6 / totalSupply / 100
                            _1681 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1681] = 26
                            mem[_1681 + 32] = 'SafeMath: division by zero'
                else:
                    _1372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1372] = 26
                    mem[_1372 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1382 + idx + 68] = mem[_1372 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1382 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1382 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not cd[36]:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1417] = 30
                        mem[_1417 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1426 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1426 + idx + 68] = mem[_1417 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1426 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1426 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1498 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1498] = 26
                        mem[_1498 + 32] = 'SafeMath: division by zero'
                        if stor2[address(_1346)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(_1346)] < stor2[address(_1346)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = address(_1346)
                        mem[32] = 2
                        _1554 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1554] = 26
                        mem[_1554 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1464] = 30
                        mem[_1464 + 32] = 'SafeMath: subtraction overflow'
                        if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                            _1479 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1479 + idx + 68] = mem[_1464 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1479 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1479 + -mem[64] + 100
                        if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                        _1533 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1533] = 26
                        mem[_1533 + 32] = 'SafeMath: division by zero'
                        if not cd[36] * stor6 / totalSupply / 100:
                            if stor2[address(_1346)] > -1:
                                revert with 'NH{q', 17
                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_1346)
                            mem[32] = 2
                            _1605 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1605] = 26
                            mem[_1605 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] * stor6 / totalSupply / 100 and 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                revert with 'NH{q', 17
                            if not cd[36] * stor6 / totalSupply / 100:
                                revert with 'NH{q', 18
                            if 100 * cd[36] * stor6 / totalSupply / 100 / cd[36] * stor6 / totalSupply / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) - 1:
                                revert with 'NH{q', 17
                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = address(_1346)
                            mem[32] = 2
                            stor2[address(_1346)] += 100 * cd[36] * stor6 / totalSupply / 100
                            _1684 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1684] = 26
                            mem[_1684 + 32] = 'SafeMath: division by zero'
                if not cd[36] / 100:
                    mem[mem[64]] = 0
                    emit Transfer(0, msg.sender, address(_1346));
                else:
                    if cd[36] / 100 and 100 > -1 / cd[36] / 100:
                        revert with 'NH{q', 17
                    if not cd[36] / 100:
                        revert with 'NH{q', 18
                    if 100 * cd[36] / 100 / cd[36] / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = 100 * cd[36] / 100
                    emit Transfer((100 * cd[36] / 100), msg.sender, address(_1346));
            else:
                _1354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1354] = 26
                mem[_1354 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1359 + idx + 68] = mem[_1354 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1359 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1359 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if stor6 >= stor6 / totalSupply:
                    _1369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1369] = 26
                    mem[_1369 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1376 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1376 + idx + 68] = mem[_1369 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1376 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1376 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not cd[36]:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1405] = 30
                        mem[_1405 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1421 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1421 + idx + 68] = mem[_1405 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1421 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1421 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1449] = 26
                        mem[_1449 + 32] = 'SafeMath: division by zero'
                        if not cd[36] / 100:
                            if stor2[stor14] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor14] < stor2[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_c41d28c5Address
                            mem[32] = 2
                            emit Transfer(0, msg.sender, sub_c41d28c5Address);
                            _1567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1567] = 26
                            mem[_1567 + 32] = 'SafeMath: division by zero'
                            if not cd[36] / 100:
                                if stor2[stor15] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor15] < stor2[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = uniswapV2PairAddress
                                mem[32] = 2
                                emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                _1747 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1747] = 26
                                mem[_1747 + 32] = 'SafeMath: division by zero'
                                _1835 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1835] = 26
                                mem[_1835 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    _1943 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1943] = 30
                                    mem[_1943 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor6:
                                        _1948 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1948 + idx + 68] = mem[_1943 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1948 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1948 + -mem[64] + 100
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _taxFee > -_liquidityFee - 1:
                                        revert with 'NH{q', 17
                                    if _taxFee + _liquidityFee > -_destroyFee - 1:
                                        revert with 'NH{q', 17
                                    if 100 < _taxFee + _liquidityFee + _destroyFee:
                                        revert with 'NH{q', 17
                                    _2411 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2411] = 26
                                    mem[_2411 + 32] = 'SafeMath: division by zero'
                                    if stor2[address(_1346)] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_1346)
                                    mem[32] = 2
                                    _2827 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2827] = 26
                                    mem[_2827 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2048] = 30
                                    mem[_2048 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor6:
                                        _2058 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_2058 + idx + 68] = mem[_2048 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2058 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2058 + -mem[64] + 100
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += cd[36] / 100 * _taxFee
                                    if _taxFee > -_liquidityFee - 1:
                                        revert with 'NH{q', 17
                                    if _taxFee + _liquidityFee > -_destroyFee - 1:
                                        revert with 'NH{q', 17
                                    if 100 < _taxFee + _liquidityFee + _destroyFee:
                                        revert with 'NH{q', 17
                                    _2634 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2634] = 26
                                    mem[_2634 + 32] = 'SafeMath: division by zero'
                                    if stor2[address(_1346)] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_1346)
                                    mem[32] = 2
                                    _3081 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3081] = 26
                                    mem[_3081 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not cd[36] / 100 * _liquidityFee:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1831 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1831] = 26
                                    mem[_1831 + 32] = 'SafeMath: division by zero'
                                    _1937 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1937] = 26
                                    mem[_1937 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2047 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2047] = 30
                                        mem[_2047 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2057 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2057 + idx + 68] = mem[_2047 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2057 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2057 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2633 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2633] = 26
                                        mem[_2633 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3080 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3080] = 26
                                        mem[_3080 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2164 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2164] = 30
                                        mem[_2164 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2185 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2185 + idx + 68] = mem[_2164 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2185 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2185 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2895 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2895] = 26
                                        mem[_2895 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3328 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3328] = 26
                                        mem[_3328 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1929 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1929] = 26
                                    mem[_1929 + 32] = 'SafeMath: division by zero'
                                    _2036 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2036] = 26
                                    mem[_2036 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2163 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2163] = 30
                                        mem[_2163 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2184 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2184 + idx + 68] = mem[_2163 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2184 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2184 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2894 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2894] = 26
                                        mem[_2894 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3327 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3327] = 26
                                        mem[_3327 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2410] = 30
                                        mem[_2410 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2445 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2445 + idx + 68] = mem[_2410 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2445 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2445 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3152 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3152] = 26
                                        mem[_3152 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3613 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3613] = 26
                                        mem[_3613 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] / 100 and _destroyFee > -1 / cd[36] / 100:
                                revert with 'NH{q', 17
                            if not cd[36] / 100:
                                revert with 'NH{q', 18
                            if cd[36] / 100 * _destroyFee / cd[36] / 100 != _destroyFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not cd[36] / 100 * _destroyFee:
                                if stor2[stor14] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1628 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1628] = 26
                                mem[_1628 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1830 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1830] = 26
                                    mem[_1830 + 32] = 'SafeMath: division by zero'
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1936] = 26
                                    mem[_1936 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2046 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2046] = 30
                                        mem[_2046 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2056 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2056 + idx + 68] = mem[_2046 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2056 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2056 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2632 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2632] = 26
                                        mem[_2632 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3079 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3079] = 26
                                        mem[_3079 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2162 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2162] = 30
                                        mem[_2162 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2182 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2182 + idx + 68] = mem[_2162 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2182 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2182 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2892 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2892] = 26
                                        mem[_2892 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3325 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3325] = 26
                                        mem[_3325 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _1928 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1928] = 26
                                        mem[_1928 + 32] = 'SafeMath: division by zero'
                                        _2035 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2035] = 26
                                        mem[_2035 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2161 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2161] = 30
                                            mem[_2161 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2181 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2181 + idx + 68] = mem[_2161 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2181 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2181 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2891 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2891] = 26
                                            mem[_2891 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3324 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3324] = 26
                                            mem[_3324 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2409 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2409] = 30
                                            mem[_2409 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2442 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2442 + idx + 68] = mem[_2409 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2442 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2442 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3149 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3149] = 26
                                            mem[_3149 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3609 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3609] = 26
                                            mem[_3609 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2025 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2025] = 26
                                        mem[_2025 + 32] = 'SafeMath: division by zero'
                                        _2145 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2145] = 26
                                        mem[_2145 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2408 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2408] = 30
                                            mem[_2408 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2441 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2441 + idx + 68] = mem[_2408 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2441 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2441 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3148 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3148] = 26
                                            mem[_3148 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3608 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3608] = 26
                                            mem[_3608 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2631 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2631] = 30
                                            mem[_2631 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2676 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2676 + idx + 68] = mem[_2631 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2676 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2676 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3405 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3405] = 26
                                            mem[_3405 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3970 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3970] = 26
                                            mem[_3970 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 * _destroyFee and stor6 / totalSupply > -1 / cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _destroyFee * stor6 / totalSupply / cd[36] / 100 * _destroyFee != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor14] > (-1 * cd[36] / 100 * _destroyFee * stor6 / totalSupply) - 1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] + (cd[36] / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                stor2[stor14] += cd[36] / 100 * _destroyFee * stor6 / totalSupply
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1702] = 26
                                mem[_1702 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1927 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1927] = 26
                                    mem[_1927 + 32] = 'SafeMath: division by zero'
                                    _2034 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2034] = 26
                                    mem[_2034 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2160 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2160] = 30
                                        mem[_2160 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2180 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2180 + idx + 68] = mem[_2160 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2180 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2180 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2890 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2890] = 26
                                        mem[_2890 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3323 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3323] = 26
                                        mem[_3323 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2407 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2407] = 30
                                        mem[_2407 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2439 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2439 + idx + 68] = mem[_2407 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2439 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2439 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3146 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3146] = 26
                                        mem[_3146 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3606 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3606] = 26
                                        mem[_3606 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2024 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2024] = 26
                                        mem[_2024 + 32] = 'SafeMath: division by zero'
                                        _2144 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2144] = 26
                                        mem[_2144 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2406 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2406] = 30
                                            mem[_2406 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2438 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2438 + idx + 68] = mem[_2406 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2438 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2438 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3145 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3145] = 26
                                            mem[_3145 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3605 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3605] = 26
                                            mem[_3605 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2630 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2630] = 30
                                            mem[_2630 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2673 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2673 + idx + 68] = mem[_2630 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2673 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2673 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3402] = 26
                                            mem[_3402 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3966 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3966] = 26
                                            mem[_3966 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2135 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2135] = 26
                                        mem[_2135 + 32] = 'SafeMath: division by zero'
                                        _2384 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2384] = 26
                                        mem[_2384 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2629 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2629] = 30
                                            mem[_2629 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2672 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2672 + idx + 68] = mem[_2629 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2672 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2672 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3401 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3401] = 26
                                            mem[_3401 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3965 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3965] = 26
                                            mem[_3965 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2889 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2889] = 30
                                            mem[_2889 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2938 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2938 + idx + 68] = mem[_2889 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2938 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2938 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3700 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3700] = 26
                                            mem[_3700 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _4388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4388] = 26
                                            mem[_4388 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1459 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1459] = 30
                        mem[_1459 + 32] = 'SafeMath: subtraction overflow'
                        if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                            _1469 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1469 + idx + 68] = mem[_1459 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1469 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1469 + -mem[64] + 100
                        if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                        _1511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1511] = 26
                        mem[_1511 + 32] = 'SafeMath: division by zero'
                        if not cd[36] / 100:
                            if stor2[stor14] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor14] < stor2[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_c41d28c5Address
                            mem[32] = 2
                            emit Transfer(0, msg.sender, sub_c41d28c5Address);
                            _1627 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1627] = 26
                            mem[_1627 + 32] = 'SafeMath: division by zero'
                            if not cd[36] / 100:
                                if stor2[stor15] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor15] < stor2[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = uniswapV2PairAddress
                                mem[32] = 2
                                emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                _1829 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1829] = 26
                                mem[_1829 + 32] = 'SafeMath: division by zero'
                                if not cd[36] * stor6 / totalSupply / 100:
                                    _1935 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1935] = 26
                                    mem[_1935 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2044 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2044] = 30
                                        mem[_2044 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2055 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2055 + idx + 68] = mem[_2044 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2055 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2055 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2628 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2628] = 26
                                        mem[_2628 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3077 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3077] = 26
                                            mem[_3077 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3321 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3321] = 26
                                            mem[_3321 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2159 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2159] = 30
                                        mem[_2159 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2178 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2178 + idx + 68] = mem[_2159 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2178 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2178 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2887 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2887] = 26
                                        mem[_2887 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3320 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3320] = 26
                                            mem[_3320 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3601 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3601] = 26
                                            mem[_3601 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2033 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2033] = 26
                                    mem[_2033 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2158 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2158] = 30
                                        mem[_2158 + 32] = 'SafeMath: subtraction overflow'
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                            _2177 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2177 + idx + 68] = mem[_2158 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2177 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2177 + -mem[64] + 100
                                        if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                            revert with 'NH{q', 17
                                        stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2886 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2886] = 26
                                        mem[_2886 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3319 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3319] = 26
                                            mem[_3319 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3599 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3599] = 26
                                            mem[_3599 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2405 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2405] = 30
                                        mem[_2405 + 32] = 'SafeMath: subtraction overflow'
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                            _2435 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2435 + idx + 68] = mem[_2405 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2435 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2435 + -mem[64] + 100
                                        if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                            revert with 'NH{q', 17
                                        stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3141 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3141] = 26
                                        mem[_3141 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3598 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3598] = 26
                                            mem[_3598 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3958 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3958] = 26
                                            mem[_3958 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not cd[36] / 100 * _liquidityFee:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1926 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1926] = 26
                                    mem[_1926 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2032 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2032] = 26
                                        mem[_2032 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2157 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2157] = 30
                                            mem[_2157 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2176 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2176 + idx + 68] = mem[_2157 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2176 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2176 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2885 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2885] = 26
                                            mem[_2885 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3318 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3318] = 26
                                                mem[_3318 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3596 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3596] = 26
                                                mem[_3596 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2404 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2404] = 30
                                            mem[_2404 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2433 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2433 + idx + 68] = mem[_2404 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2433 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2433 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3139 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3139] = 26
                                            mem[_3139 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3595 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3595] = 26
                                                mem[_3595 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3954 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3954] = 26
                                                mem[_3954 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2143 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2143] = 26
                                        mem[_2143 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2403 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2403] = 30
                                            mem[_2403 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2432 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2432 + idx + 68] = mem[_2403 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2432 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2432 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3138 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3138] = 26
                                            mem[_3138 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3594 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3594] = 26
                                                mem[_3594 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3952 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3952] = 26
                                                mem[_3952 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2627 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2627] = 30
                                            mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2668 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2668 + idx + 68] = mem[_2627 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2668 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2668 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3394 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3394] = 26
                                            mem[_3394 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3951 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3951] = 26
                                                mem[_3951 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4377 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4377] = 26
                                                mem[_4377 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _2023 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2023] = 26
                                    mem[_2023 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2142 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2142] = 26
                                        mem[_2142 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2402] = 30
                                            mem[_2402 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2431 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2431 + idx + 68] = mem[_2402 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2431 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2431 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3137 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3137] = 26
                                            mem[_3137 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3593 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3593] = 26
                                                mem[_3593 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3949 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3949] = 26
                                                mem[_3949 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2626 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2626] = 30
                                            mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2666 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2666 + idx + 68] = mem[_2626 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2666 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2666 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3392 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3392] = 26
                                            mem[_3392 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3948 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3948] = 26
                                                mem[_3948 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4373 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4373] = 26
                                                mem[_4373 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2382 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2382] = 26
                                        mem[_2382 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2625 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2625] = 30
                                            mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2665 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2665 + idx + 68] = mem[_2625 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2665 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2665 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3391 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3391] = 26
                                            mem[_3391 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3947 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3947] = 26
                                                mem[_3947 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4371 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4371] = 26
                                                mem[_4371 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2884 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2884] = 30
                                            mem[_2884 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2934 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2934 + idx + 68] = mem[_2884 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2934 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2934 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3692 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3692] = 26
                                            mem[_3692 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _4370 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4370] = 26
                                                mem[_4370 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4786 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4786] = 26
                                                mem[_4786 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] / 100 and _destroyFee > -1 / cd[36] / 100:
                                revert with 'NH{q', 17
                            if not cd[36] / 100:
                                revert with 'NH{q', 18
                            if cd[36] / 100 * _destroyFee / cd[36] / 100 != _destroyFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not cd[36] / 100 * _destroyFee:
                                if stor2[stor14] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1701] = 26
                                mem[_1701 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1925 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1925] = 26
                                    mem[_1925 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2031 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2031] = 26
                                        mem[_2031 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2156 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2156] = 30
                                            mem[_2156 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2175 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2175 + idx + 68] = mem[_2156 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2175 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2175 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2883 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2883] = 26
                                            mem[_2883 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3317 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3317] = 26
                                                mem[_3317 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3591 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3591] = 26
                                                mem[_3591 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2401 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2401] = 30
                                            mem[_2401 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2429 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2429 + idx + 68] = mem[_2401 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2429 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2429 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3135 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3135] = 26
                                            mem[_3135 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3590 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3590] = 26
                                                mem[_3590 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3943 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3943] = 26
                                                mem[_3943 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2141 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2141] = 26
                                        mem[_2141 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2400] = 30
                                            mem[_2400 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2428 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2428 + idx + 68] = mem[_2400 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2428 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2428 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3134 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3134] = 26
                                            mem[_3134 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3589 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3589] = 26
                                                mem[_3589 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3941 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3941] = 26
                                                mem[_3941 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2624 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2624] = 30
                                            mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2662 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2662 + idx + 68] = mem[_2624 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2662 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2662 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3387 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3387] = 26
                                            mem[_3387 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3940 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3940] = 26
                                                mem[_3940 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4363 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4363] = 26
                                                mem[_4363 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2022 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2022] = 26
                                        mem[_2022 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2140 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2140] = 26
                                            mem[_2140 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2399 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2399] = 30
                                                mem[_2399 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2427 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2427 + idx + 68] = mem[_2399 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2427 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2427 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3133 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3133] = 26
                                                mem[_3133 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3588 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3588] = 26
                                                    mem[_3588 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _3938 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3938] = 26
                                                    mem[_3938 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2623 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2623] = 30
                                                mem[_2623 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2660 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2660 + idx + 68] = mem[_2623 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2660 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2660 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3385 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3385] = 26
                                                mem[_3385 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3937 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3937] = 26
                                                    mem[_3937 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4359 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4359] = 26
                                                    mem[_4359 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2381 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2381] = 26
                                            mem[_2381 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2622 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2622] = 30
                                                mem[_2622 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2659 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2659 + idx + 68] = mem[_2622 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2659 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2659 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3384 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3384] = 26
                                                mem[_3384 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3936 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3936] = 26
                                                    mem[_3936 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4357 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4357] = 26
                                                    mem[_4357 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2882 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2882] = 30
                                                mem[_2882 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2930 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2930 + idx + 68] = mem[_2882 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2930 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2930 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3685 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3685] = 26
                                                mem[_3685 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4356 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4356] = 26
                                                    mem[_4356 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4775 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4775] = 26
                                                    mem[_4775 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2134 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2134] = 26
                                        mem[_2134 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2380 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2380] = 26
                                            mem[_2380 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2621 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2621] = 30
                                                mem[_2621 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2658 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2658 + idx + 68] = mem[_2621 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2658 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2658 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3383 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3383] = 26
                                                mem[_3383 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3935 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3935] = 26
                                                    mem[_3935 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4354 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4354] = 26
                                                    mem[_4354 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2881 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2881] = 30
                                                mem[_2881 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2928 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2928 + idx + 68] = mem[_2881 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2928 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2928 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3683 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3683] = 26
                                                mem[_3683 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4353 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4353] = 26
                                                    mem[_4353 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4771 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4771] = 26
                                                    mem[_4771 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2596 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2596] = 26
                                            mem[_2596 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2880 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2880] = 30
                                                mem[_2880 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2927 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2927 + idx + 68] = mem[_2880 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2927 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2927 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3682 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3682] = 26
                                                mem[_3682 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4352 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4352] = 26
                                                    mem[_4352 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4769 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4769] = 26
                                                    mem[_4769 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3132 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3132] = 30
                                                mem[_3132 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3189 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3189 + idx + 68] = mem[_3132 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3189 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3189 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4058 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4058] = 26
                                                mem[_4058 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4768 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4768] = 26
                                                    mem[_4768 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5102 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5102] = 26
                                                    mem[_5102 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 * _destroyFee and stor6 / totalSupply > -1 / cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _destroyFee * stor6 / totalSupply / cd[36] / 100 * _destroyFee != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor14] > (-1 * cd[36] / 100 * _destroyFee * stor6 / totalSupply) - 1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] + (cd[36] / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                stor2[stor14] += cd[36] / 100 * _destroyFee * stor6 / totalSupply
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1773 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1773] = 26
                                mem[_1773 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _2021 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2021] = 26
                                    mem[_2021 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2139 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2139] = 26
                                        mem[_2139 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2398 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2398] = 30
                                            mem[_2398 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2426 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2426 + idx + 68] = mem[_2398 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2426 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2426 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3131 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3131] = 26
                                            mem[_3131 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3587 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3587] = 26
                                                mem[_3587 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3933 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3933] = 26
                                                mem[_3933 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2620 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2620] = 30
                                            mem[_2620 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2656 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2656 + idx + 68] = mem[_2620 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2656 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2656 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3381 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3381] = 26
                                            mem[_3381 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3932 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3932] = 26
                                                mem[_3932 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4348 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4348] = 26
                                                mem[_4348 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2379 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2379] = 26
                                        mem[_2379 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2619 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2619] = 30
                                            mem[_2619 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2655 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2655 + idx + 68] = mem[_2619 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2655 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2655 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3380 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3380] = 26
                                            mem[_3380 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3931 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3931] = 26
                                                mem[_3931 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4346 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4346] = 26
                                                mem[_4346 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2879 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2879] = 30
                                            mem[_2879 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2924 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2924 + idx + 68] = mem[_2879 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2924 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2924 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3678 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3678] = 26
                                            mem[_3678 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _4345 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4345] = 26
                                                mem[_4345 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4761 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4761] = 26
                                                mem[_4761 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2133 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2133] = 26
                                        mem[_2133 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2378 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2378] = 26
                                            mem[_2378 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2618 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2618] = 30
                                                mem[_2618 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2654 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2654 + idx + 68] = mem[_2618 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2654 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2654 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3379 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3379] = 26
                                                mem[_3379 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3930 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3930] = 26
                                                    mem[_3930 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4343 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4343] = 26
                                                    mem[_4343 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2878 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2878] = 30
                                                mem[_2878 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2922 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2922 + idx + 68] = mem[_2878 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2922 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2922 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3676 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3676] = 26
                                                mem[_3676 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4342 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4342] = 26
                                                    mem[_4342 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4757 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4757] = 26
                                                    mem[_4757 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2595 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2595] = 26
                                            mem[_2595 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2877 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2877] = 30
                                                mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2921 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2921 + idx + 68] = mem[_2877 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2921 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2921 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3675 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3675] = 26
                                                mem[_3675 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4341 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4341] = 26
                                                    mem[_4341 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4755 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4755] = 26
                                                    mem[_4755 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3130 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3130] = 30
                                                mem[_3130 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3185 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3185 + idx + 68] = mem[_3130 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3185 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3185 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4051 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4051] = 26
                                                mem[_4051 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4754 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4754] = 26
                                                    mem[_4754 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5091 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5091] = 26
                                                    mem[_5091 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2376 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2376] = 26
                                        mem[_2376 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2594 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2594] = 26
                                            mem[_2594 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2876 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2876] = 30
                                                mem[_2876 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2920 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2920 + idx + 68] = mem[_2876 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2920 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2920 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3674 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3674] = 26
                                                mem[_3674 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4340 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4340] = 26
                                                    mem[_4340 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4752 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4752] = 26
                                                    mem[_4752 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3129 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3129] = 30
                                                mem[_3129 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _3183 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3183 + idx + 68] = mem[_3129 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3183 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3183 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4049 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4049] = 26
                                                mem[_4049 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4751 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4751] = 26
                                                    mem[_4751 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5087 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5087] = 26
                                                    mem[_5087 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2848 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2848] = 26
                                            mem[_2848 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _3128 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3128] = 30
                                                mem[_3128 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3182 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3182 + idx + 68] = mem[_3128 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3182 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3182 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4048 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4048] = 26
                                                mem[_4048 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4750 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4750] = 26
                                                    mem[_4750 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5085 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5085] = 26
                                                    mem[_5085 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3378 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3378] = 30
                                                mem[_3378 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3440 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3440 + idx + 68] = mem[_3378 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3440 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3440 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4470 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4470] = 26
                                                mem[_4470 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _5084 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5084] = 26
                                                    mem[_5084 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5300 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5300] = 26
                                                    mem[_5300 + 32] = 'SafeMath: division by zero'
                else:
                    _1370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1370] = 26
                    mem[_1370 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1377 + idx + 68] = mem[_1370 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1377 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1377 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not cd[36]:
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1407] = 30
                        mem[_1407 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1422 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1422 + idx + 68] = mem[_1407 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1422 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1422 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1450] = 26
                        mem[_1450 + 32] = 'SafeMath: division by zero'
                        if not cd[36] / 100:
                            if stor2[stor14] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor14] < stor2[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_c41d28c5Address
                            mem[32] = 2
                            emit Transfer(0, msg.sender, sub_c41d28c5Address);
                            _1568 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1568] = 26
                            mem[_1568 + 32] = 'SafeMath: division by zero'
                            if not cd[36] / 100:
                                if stor2[stor15] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor15] < stor2[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = uniswapV2PairAddress
                                mem[32] = 2
                                emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                _1748 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1748] = 26
                                mem[_1748 + 32] = 'SafeMath: division by zero'
                                _1836 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1836] = 26
                                mem[_1836 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    _1946 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1946] = 30
                                    mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor6:
                                        _1950 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_1950 + idx + 68] = mem[_1946 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1950 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _1950 + -mem[64] + 100
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -1:
                                        revert with 'NH{q', 17
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _taxFee > -_liquidityFee - 1:
                                        revert with 'NH{q', 17
                                    if _taxFee + _liquidityFee > -_destroyFee - 1:
                                        revert with 'NH{q', 17
                                    if 100 < _taxFee + _liquidityFee + _destroyFee:
                                        revert with 'NH{q', 17
                                    _2425 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2425] = 26
                                    mem[_2425 + 32] = 'SafeMath: division by zero'
                                    if stor2[address(_1346)] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_1346)
                                    mem[32] = 2
                                    _2847 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2847] = 26
                                    mem[_2847 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2054 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2054] = 30
                                    mem[_2054 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > stor6:
                                        _2063 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_2063 + idx + 68] = mem[_2054 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_2063 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _2063 + -mem[64] + 100
                                    if stor6 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += cd[36] / 100 * _taxFee
                                    if _taxFee > -_liquidityFee - 1:
                                        revert with 'NH{q', 17
                                    if _taxFee + _liquidityFee > -_destroyFee - 1:
                                        revert with 'NH{q', 17
                                    if 100 < _taxFee + _liquidityFee + _destroyFee:
                                        revert with 'NH{q', 17
                                    _2652 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2652] = 26
                                    mem[_2652 + 32] = 'SafeMath: division by zero'
                                    if stor2[address(_1346)] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = address(_1346)
                                    mem[32] = 2
                                    _3098 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3098] = 26
                                    mem[_3098 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not cd[36] / 100 * _liquidityFee:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1834 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1834] = 26
                                    mem[_1834 + 32] = 'SafeMath: division by zero'
                                    _1940 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1940] = 26
                                    mem[_1940 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2053 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2053] = 30
                                        mem[_2053 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2062 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2062 + idx + 68] = mem[_2053 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2062 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2062 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2651 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2651] = 26
                                        mem[_2651 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3097 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3097] = 26
                                        mem[_3097 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2174 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2174] = 30
                                        mem[_2174 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2198 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2198 + idx + 68] = mem[_2174 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2198 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2198 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2917 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2917] = 26
                                        mem[_2917 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3348 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3348] = 26
                                        mem[_3348 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1934 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1934] = 26
                                    mem[_1934 + 32] = 'SafeMath: division by zero'
                                    _2042 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2042] = 26
                                    mem[_2042 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2173 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2173] = 30
                                        mem[_2173 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2197 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2197 + idx + 68] = mem[_2173 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2197 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2197 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2916 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2916] = 26
                                        mem[_2916 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3347 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3347] = 26
                                        mem[_3347 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2424 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2424] = 30
                                        mem[_2424 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2467 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2467 + idx + 68] = mem[_2424 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2467 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2467 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3179 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3179] = 26
                                        mem[_3179 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3645 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3645] = 26
                                        mem[_3645 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] / 100 and _destroyFee > -1 / cd[36] / 100:
                                revert with 'NH{q', 17
                            if not cd[36] / 100:
                                revert with 'NH{q', 18
                            if cd[36] / 100 * _destroyFee / cd[36] / 100 != _destroyFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not cd[36] / 100 * _destroyFee:
                                if stor2[stor14] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1630 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1630] = 26
                                mem[_1630 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1833 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1833] = 26
                                    mem[_1833 + 32] = 'SafeMath: division by zero'
                                    _1939 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1939] = 26
                                    mem[_1939 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2052 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2052] = 30
                                        mem[_2052 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2061 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2061 + idx + 68] = mem[_2052 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2061 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2061 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2650 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2650] = 26
                                        mem[_2650 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3096 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3096] = 26
                                        mem[_3096 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2172 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2172] = 30
                                        mem[_2172 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2195 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2195 + idx + 68] = mem[_2172 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2195 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2195 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2914 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2914] = 26
                                        mem[_2914 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3345 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3345] = 26
                                        mem[_3345 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _1933 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1933] = 26
                                        mem[_1933 + 32] = 'SafeMath: division by zero'
                                        _2041 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2041] = 26
                                        mem[_2041 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2171 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2171] = 30
                                            mem[_2171 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2194 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2194 + idx + 68] = mem[_2171 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2194 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2194 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2913 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2913] = 26
                                            mem[_2913 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3344 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3344] = 26
                                            mem[_3344 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2423 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2423] = 30
                                            mem[_2423 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2464 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2464 + idx + 68] = mem[_2423 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2464 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2464 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3176 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3176] = 26
                                            mem[_3176 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3641 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3641] = 26
                                            mem[_3641 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2030 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2030] = 26
                                        mem[_2030 + 32] = 'SafeMath: division by zero'
                                        _2153 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2153] = 26
                                        mem[_2153 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2422] = 30
                                            mem[_2422 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2463 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2463 + idx + 68] = mem[_2422 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2463 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2463 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3175 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3175] = 26
                                            mem[_3175 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3640 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3640] = 26
                                            mem[_3640 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2649 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2649] = 30
                                            mem[_2649 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2702 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2702 + idx + 68] = mem[_2649 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2702 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2702 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3436 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3436] = 26
                                            mem[_3436 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _4018 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4018] = 26
                                            mem[_4018 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 * _destroyFee and stor6 / totalSupply > -1 / cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _destroyFee * stor6 / totalSupply / cd[36] / 100 * _destroyFee != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor14] > (-1 * cd[36] / 100 * _destroyFee * stor6 / totalSupply) - 1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] + (cd[36] / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                stor2[stor14] += cd[36] / 100 * _destroyFee * stor6 / totalSupply
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1706 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1706] = 26
                                mem[_1706 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1932 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1932] = 26
                                    mem[_1932 + 32] = 'SafeMath: division by zero'
                                    _2040 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2040] = 26
                                    mem[_2040 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2170 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2170] = 30
                                        mem[_2170 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2193 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2193 + idx + 68] = mem[_2170 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2193 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2193 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2912 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2912] = 26
                                        mem[_2912 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3343 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3343] = 26
                                        mem[_3343 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2421 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2421] = 30
                                        mem[_2421 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2461 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2461 + idx + 68] = mem[_2421 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2461 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2461 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3173 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3173] = 26
                                        mem[_3173 + 32] = 'SafeMath: division by zero'
                                        if stor2[address(_1346)] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[address(_1346)] < stor2[address(_1346)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = address(_1346)
                                        mem[32] = 2
                                        _3638 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3638] = 26
                                        mem[_3638 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2029 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2029] = 26
                                        mem[_2029 + 32] = 'SafeMath: division by zero'
                                        _2152 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2152] = 26
                                        mem[_2152 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2420 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2420] = 30
                                            mem[_2420 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2460 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2460 + idx + 68] = mem[_2420 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2460 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2460 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3172 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3172] = 26
                                            mem[_3172 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3637 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3637] = 26
                                            mem[_3637 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2648 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2648] = 30
                                            mem[_2648 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2699 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2699 + idx + 68] = mem[_2648 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2699 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2699 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3433 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3433] = 26
                                            mem[_3433 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _4014 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4014] = 26
                                            mem[_4014 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2138 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2138] = 26
                                        mem[_2138 + 32] = 'SafeMath: division by zero'
                                        _2394 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2394] = 26
                                        mem[_2394 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2647 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2647] = 30
                                            mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2698 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2698 + idx + 68] = mem[_2647 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2698 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2698 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3432 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3432] = 26
                                            mem[_3432 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _4013 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4013] = 26
                                            mem[_4013 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2911 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2911] = 30
                                            mem[_2911 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2961 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2961 + idx + 68] = mem[_2911 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2961 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2961 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3730 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3730] = 26
                                            mem[_3730 + 32] = 'SafeMath: division by zero'
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _4445 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4445] = 26
                                            mem[_4445 + 32] = 'SafeMath: division by zero'
                    else:
                        if cd[36] and stor6 / totalSupply > -1 / cd[36]:
                            revert with 'NH{q', 17
                        if not cd[36]:
                            revert with 'NH{q', 18
                        if cd[36] * stor6 / totalSupply / cd[36] != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1460] = 30
                        mem[_1460 + 32] = 'SafeMath: subtraction overflow'
                        if cd[36] * stor6 / totalSupply > stor2[address(msg.sender)]:
                            _1471 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1471 + idx + 68] = mem[_1460 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1471 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1471 + -mem[64] + 100
                        if stor2[address(msg.sender)] < cd[36] * stor6 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * cd[36] * stor6 / totalSupply
                        _1512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1512] = 26
                        mem[_1512 + 32] = 'SafeMath: division by zero'
                        if not cd[36] / 100:
                            if stor2[stor14] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor14] < stor2[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_c41d28c5Address
                            mem[32] = 2
                            emit Transfer(0, msg.sender, sub_c41d28c5Address);
                            _1629 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1629] = 26
                            mem[_1629 + 32] = 'SafeMath: division by zero'
                            if not cd[36] / 100:
                                if stor2[stor15] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor15] < stor2[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = uniswapV2PairAddress
                                mem[32] = 2
                                emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                _1832 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1832] = 26
                                mem[_1832 + 32] = 'SafeMath: division by zero'
                                if not cd[36] * stor6 / totalSupply / 100:
                                    _1938 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1938] = 26
                                    mem[_1938 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2050 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2050] = 30
                                        mem[_2050 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2060 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2060 + idx + 68] = mem[_2050 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2060 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2060 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2646 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2646] = 26
                                        mem[_2646 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3094 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3094] = 26
                                            mem[_3094 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3341 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3341] = 26
                                            mem[_3341 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2169 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2169] = 30
                                        mem[_2169 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > stor6:
                                            _2191 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2191 + idx + 68] = mem[_2169 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2191 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2191 + -mem[64] + 100
                                        if stor6 < 0:
                                            revert with 'NH{q', 17
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2909 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2909] = 26
                                        mem[_2909 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3340 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3340] = 26
                                            mem[_3340 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3633 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3633] = 26
                                            mem[_3633 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2039 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2039] = 26
                                    mem[_2039 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] / 100:
                                        _2168 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2168] = 30
                                        mem[_2168 + 32] = 'SafeMath: subtraction overflow'
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                            _2190 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2190 + idx + 68] = mem[_2168 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2190 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2190 + -mem[64] + 100
                                        if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                            revert with 'NH{q', 17
                                        stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                        if totalFees > -1:
                                            revert with 'NH{q', 17
                                        if totalFees < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _2908 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2908] = 26
                                        mem[_2908 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3339 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3339] = 26
                                            mem[_3339 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _3631 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3631] = 26
                                            mem[_3631 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2419 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2419] = 30
                                        mem[_2419 + 32] = 'SafeMath: subtraction overflow'
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                            _2457 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[_2457 + idx + 68] = mem[_2419 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_2457 + 98] = 0
                                            revert with memory
                                              from mem[64]
                                               len _2457 + -mem[64] + 100
                                        if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                            revert with 'NH{q', 17
                                        stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                        if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                            revert with 'NH{q', 17
                                        if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalFees += cd[36] / 100 * _taxFee
                                        if _taxFee > -_liquidityFee - 1:
                                            revert with 'NH{q', 17
                                        if _taxFee + _liquidityFee > -_destroyFee - 1:
                                            revert with 'NH{q', 17
                                        if 100 < _taxFee + _liquidityFee + _destroyFee:
                                            revert with 'NH{q', 17
                                        _3168 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3168] = 26
                                        mem[_3168 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            if stor2[address(_1346)] > -1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            _3630 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3630] = 26
                                            mem[_3630 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                revert with 'NH{q', 17
                                            if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = address(_1346)
                                            mem[32] = 2
                                            stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                            _4006 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4006] = 26
                                            mem[_4006 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not cd[36] / 100 * _liquidityFee:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _1931 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1931] = 26
                                    mem[_1931 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2038 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2038] = 26
                                        mem[_2038 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2167 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2167] = 30
                                            mem[_2167 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2189 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2189 + idx + 68] = mem[_2167 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2189 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2189 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2907 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2907] = 26
                                            mem[_2907 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3338 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3338] = 26
                                                mem[_3338 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3628 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3628] = 26
                                                mem[_3628 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2418] = 30
                                            mem[_2418 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2455 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2455 + idx + 68] = mem[_2418 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2455 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2455 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3166 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3166] = 26
                                            mem[_3166 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3627 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3627] = 26
                                                mem[_3627 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4002 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4002] = 26
                                                mem[_4002 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2151 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2151] = 26
                                        mem[_2151 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2417 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2417] = 30
                                            mem[_2417 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2454 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2454 + idx + 68] = mem[_2417 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2454 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2454 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3165 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3165] = 26
                                            mem[_3165 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3626 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3626] = 26
                                                mem[_3626 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4000 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4000] = 26
                                                mem[_4000 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2645 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2645] = 30
                                            mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2694 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2694 + idx + 68] = mem[_2645 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2694 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2694 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3425 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3425] = 26
                                            mem[_3425 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3999 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3999] = 26
                                                mem[_3999 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4434 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4434] = 26
                                                mem[_4434 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100 * _liquidityFee:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                    emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                    _2028 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2028] = 26
                                    mem[_2028 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2150 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2150] = 26
                                        mem[_2150 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2416 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2416] = 30
                                            mem[_2416 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2453 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2453 + idx + 68] = mem[_2416 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2453 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2453 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3164 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3164] = 26
                                            mem[_3164 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3625 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3625] = 26
                                                mem[_3625 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3997 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3997] = 26
                                                mem[_3997 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2644 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2644] = 30
                                            mem[_2644 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2692 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2692 + idx + 68] = mem[_2644 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2692 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2692 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3423 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3423] = 26
                                            mem[_3423 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3996 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3996] = 26
                                                mem[_3996 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4430 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4430] = 26
                                                mem[_4430 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2392 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2392] = 26
                                        mem[_2392 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2643 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2643] = 30
                                            mem[_2643 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2691 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2691 + idx + 68] = mem[_2643 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2691 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2691 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3422] = 26
                                            mem[_3422 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3995 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3995] = 26
                                                mem[_3995 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4428 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4428] = 26
                                                mem[_4428 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2906 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2906] = 30
                                            mem[_2906 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2957 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2957 + idx + 68] = mem[_2906 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2957 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2957 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3722 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3722] = 26
                                            mem[_3722 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _4427 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4427] = 26
                                                mem[_4427 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4838 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4838] = 26
                                                mem[_4838 + 32] = 'SafeMath: division by zero'
                        else:
                            if cd[36] / 100 and _destroyFee > -1 / cd[36] / 100:
                                revert with 'NH{q', 17
                            if not cd[36] / 100:
                                revert with 'NH{q', 18
                            if cd[36] / 100 * _destroyFee / cd[36] / 100 != _destroyFee:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not cd[36] / 100 * _destroyFee:
                                if stor2[stor14] > -1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1705] = 26
                                mem[_1705 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _1930 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1930] = 26
                                    mem[_1930 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2037 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2037] = 26
                                        mem[_2037 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2166 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2166] = 30
                                            mem[_2166 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2188 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2188 + idx + 68] = mem[_2166 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2188 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2188 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _2905 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2905] = 26
                                            mem[_2905 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3337 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3337] = 26
                                                mem[_3337 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3623 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3623] = 26
                                                mem[_3623 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2415 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2415] = 30
                                            mem[_2415 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2451 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2451 + idx + 68] = mem[_2415 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2451 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2451 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3162 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3162] = 26
                                            mem[_3162 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3622 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3622] = 26
                                                mem[_3622 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3991 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3991] = 26
                                                mem[_3991 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2149 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2149] = 26
                                        mem[_2149 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2414 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2414] = 30
                                            mem[_2414 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2450 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2450 + idx + 68] = mem[_2414 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2450 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2450 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3161 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3161] = 26
                                            mem[_3161 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3621 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3621] = 26
                                                mem[_3621 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3989 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3989] = 26
                                                mem[_3989 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2642 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2642] = 30
                                            mem[_2642 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2688 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2688 + idx + 68] = mem[_2642 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2688 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2688 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3418] = 26
                                            mem[_3418 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3988 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3988] = 26
                                                mem[_3988 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4420 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4420] = 26
                                                mem[_4420 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2027 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2027] = 26
                                        mem[_2027 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2148 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2148] = 26
                                            mem[_2148 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2413 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2413] = 30
                                                mem[_2413 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2449 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2449 + idx + 68] = mem[_2413 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2449 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2449 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3160 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3160] = 26
                                                mem[_3160 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3620 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3620] = 26
                                                    mem[_3620 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _3986 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3986] = 26
                                                    mem[_3986 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2641 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2641] = 30
                                                mem[_2641 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2686 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2686 + idx + 68] = mem[_2641 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2686 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2686 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3416 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3416] = 26
                                                mem[_3416 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3985 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3985] = 26
                                                    mem[_3985 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4416 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4416] = 26
                                                    mem[_4416 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2391 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2391] = 26
                                            mem[_2391 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2640 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2640] = 30
                                                mem[_2640 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2685 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2685 + idx + 68] = mem[_2640 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2685 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2685 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3415 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3415] = 26
                                                mem[_3415 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3984 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3984] = 26
                                                    mem[_3984 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4414 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4414] = 26
                                                    mem[_4414 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2904 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2904] = 30
                                                mem[_2904 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2953 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2953 + idx + 68] = mem[_2904 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2953 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2953 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3715 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3715] = 26
                                                mem[_3715 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4413 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4413] = 26
                                                    mem[_4413 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4827 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4827] = 26
                                                    mem[_4827 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2137 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2137] = 26
                                        mem[_2137 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2390 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2390] = 26
                                            mem[_2390 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2639 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2639] = 30
                                                mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2684 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2684 + idx + 68] = mem[_2639 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2684 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2684 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3414 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3414] = 26
                                                mem[_3414 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3983 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3983] = 26
                                                    mem[_3983 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4411 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4411] = 26
                                                    mem[_4411 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2903 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2903] = 30
                                                mem[_2903 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2951 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2951 + idx + 68] = mem[_2903 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2951 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2951 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3713 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3713] = 26
                                                mem[_3713 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4410 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4410] = 26
                                                    mem[_4410 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4823 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4823] = 26
                                                    mem[_4823 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2608 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2608] = 26
                                            mem[_2608 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2902 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2902] = 30
                                                mem[_2902 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2950 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2950 + idx + 68] = mem[_2902 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2950 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2950 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3712 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3712] = 26
                                                mem[_3712 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4409 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4409] = 26
                                                    mem[_4409 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4821 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4821] = 26
                                                    mem[_4821 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3159 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3159] = 30
                                                mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3207 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3207 + idx + 68] = mem[_3159 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3207 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3207 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4081 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4081] = 26
                                                mem[_4081 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4820 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4820] = 26
                                                    mem[_4820 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5138 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5138] = 26
                                                    mem[_5138 + 32] = 'SafeMath: division by zero'
                            else:
                                if cd[36] / 100 * _destroyFee and stor6 / totalSupply > -1 / cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 17
                                if not cd[36] / 100 * _destroyFee:
                                    revert with 'NH{q', 18
                                if cd[36] / 100 * _destroyFee * stor6 / totalSupply / cd[36] / 100 * _destroyFee != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor14] > (-1 * cd[36] / 100 * _destroyFee * stor6 / totalSupply) - 1:
                                    revert with 'NH{q', 17
                                if stor2[stor14] + (cd[36] / 100 * _destroyFee * stor6 / totalSupply) < stor2[stor14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_c41d28c5Address
                                mem[32] = 2
                                stor2[stor14] += cd[36] / 100 * _destroyFee * stor6 / totalSupply
                                emit Transfer((cd[36] / 100 * _destroyFee), msg.sender, sub_c41d28c5Address);
                                _1780 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1780] = 26
                                mem[_1780 + 32] = 'SafeMath: division by zero'
                                if not cd[36] / 100:
                                    if stor2[stor15] > -1:
                                        revert with 'NH{q', 17
                                    if stor2[stor15] < stor2[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = uniswapV2PairAddress
                                    mem[32] = 2
                                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                                    _2026 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2026] = 26
                                    mem[_2026 + 32] = 'SafeMath: division by zero'
                                    if not cd[36] * stor6 / totalSupply / 100:
                                        _2147 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2147] = 26
                                        mem[_2147 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2412 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2412] = 30
                                            mem[_2412 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2448 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2448 + idx + 68] = mem[_2412 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2448 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2448 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3158 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3158] = 26
                                            mem[_3158 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3619 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3619] = 26
                                                mem[_3619 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _3981 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3981] = 26
                                                mem[_3981 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2638 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2638] = 30
                                            mem[_2638 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > stor6:
                                                _2682 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2682 + idx + 68] = mem[_2638 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2682 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2682 + -mem[64] + 100
                                            if stor6 < 0:
                                                revert with 'NH{q', 17
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3412 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3412] = 26
                                            mem[_3412 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3980 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3980] = 26
                                                mem[_3980 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4405 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4405] = 26
                                                mem[_4405 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 17
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            revert with 'NH{q', 18
                                        if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _2389 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2389] = 26
                                        mem[_2389 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] / 100:
                                            _2637 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2637] = 30
                                            mem[_2637 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2681 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2681 + idx + 68] = mem[_2637 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2681 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2681 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > -1:
                                                revert with 'NH{q', 17
                                            if totalFees < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3411 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3411] = 26
                                            mem[_3411 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _3979 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3979] = 26
                                                mem[_3979 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4403 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4403] = 26
                                                mem[_4403 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2901 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2901] = 30
                                            mem[_2901 + 32] = 'SafeMath: subtraction overflow'
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                _2947 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 30
                                                idx = 0
                                                while idx < 30:
                                                    mem[_2947 + idx + 68] = mem[_2901 + idx + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_2947 + 98] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _2947 + -mem[64] + 100
                                            if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                revert with 'NH{q', 17
                                            stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                            if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                revert with 'NH{q', 17
                                            if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalFees += cd[36] / 100 * _taxFee
                                            if _taxFee > -_liquidityFee - 1:
                                                revert with 'NH{q', 17
                                            if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                revert with 'NH{q', 17
                                            if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                revert with 'NH{q', 17
                                            _3708 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3708] = 26
                                            mem[_3708 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                if stor2[address(_1346)] > -1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                _4402 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4402] = 26
                                                mem[_4402 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    revert with 'NH{q', 18
                                                if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                    revert with 'NH{q', 17
                                                if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[0] = address(_1346)
                                                mem[32] = 2
                                                stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                _4813 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4813] = 26
                                                mem[_4813 + 32] = 'SafeMath: division by zero'
                                else:
                                    if cd[36] / 100 and _liquidityFee > -1 / cd[36] / 100:
                                        revert with 'NH{q', 17
                                    if not cd[36] / 100:
                                        revert with 'NH{q', 18
                                    if cd[36] / 100 * _liquidityFee / cd[36] / 100 != _liquidityFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not cd[36] / 100 * _liquidityFee:
                                        if stor2[stor15] > -1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2136 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2136] = 26
                                        mem[_2136 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2388 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2388] = 26
                                            mem[_2388 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2636 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2636] = 30
                                                mem[_2636 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2680 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2680 + idx + 68] = mem[_2636 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2680 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2680 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3410 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3410] = 26
                                                mem[_3410 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _3978 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_3978] = 26
                                                    mem[_3978 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4400 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4400] = 26
                                                    mem[_4400 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _2900 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2900] = 30
                                                mem[_2900 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2945 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2945 + idx + 68] = mem[_2900 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2945 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2945 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3706 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3706] = 26
                                                mem[_3706 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4399 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4399] = 26
                                                    mem[_4399 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4809 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4809] = 26
                                                    mem[_4809 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2607 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2607] = 26
                                            mem[_2607 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2899 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2899] = 30
                                                mem[_2899 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _2944 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2944 + idx + 68] = mem[_2899 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2944 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2944 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3705 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3705] = 26
                                                mem[_3705 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4398 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4398] = 26
                                                    mem[_4398 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4807 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4807] = 26
                                                    mem[_4807 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3157 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3157] = 30
                                                mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3203 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3203 + idx + 68] = mem[_3157 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3203 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3203 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4074 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4074] = 26
                                                mem[_4074 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4806 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4806] = 26
                                                    mem[_4806 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5127 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5127] = 26
                                                    mem[_5127 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if cd[36] / 100 * _liquidityFee and stor6 / totalSupply > -1 / cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 17
                                        if not cd[36] / 100 * _liquidityFee:
                                            revert with 'NH{q', 18
                                        if cd[36] / 100 * _liquidityFee * stor6 / totalSupply / cd[36] / 100 * _liquidityFee != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor15] > (-1 * cd[36] / 100 * _liquidityFee * stor6 / totalSupply) - 1:
                                            revert with 'NH{q', 17
                                        if stor2[stor15] + (cd[36] / 100 * _liquidityFee * stor6 / totalSupply) < stor2[stor15]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[0] = uniswapV2PairAddress
                                        mem[32] = 2
                                        stor2[stor15] += cd[36] / 100 * _liquidityFee * stor6 / totalSupply
                                        emit Transfer((cd[36] / 100 * _liquidityFee), msg.sender, uniswapV2PairAddress);
                                        _2377 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2377] = 26
                                        mem[_2377 + 32] = 'SafeMath: division by zero'
                                        if not cd[36] * stor6 / totalSupply / 100:
                                            _2606 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2606] = 26
                                            mem[_2606 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _2898 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_2898] = 30
                                                mem[_2898 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _2943 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_2943 + idx + 68] = mem[_2898 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_2943 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _2943 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _3704 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3704] = 26
                                                mem[_3704 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4397 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4397] = 26
                                                    mem[_4397 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _4804 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4804] = 26
                                                    mem[_4804 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3156 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3156] = 30
                                                mem[_3156 + 32] = 'SafeMath: subtraction overflow'
                                                if 0 > stor6:
                                                    _3201 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3201 + idx + 68] = mem[_3156 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3201 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3201 + -mem[64] + 100
                                                if stor6 < 0:
                                                    revert with 'NH{q', 17
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4072 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4072] = 26
                                                mem[_4072 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4803 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4803] = 26
                                                    mem[_4803 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5123 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5123] = 26
                                                    mem[_5123 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if cd[36] * stor6 / totalSupply / 100 and _taxFee > -1 / cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 17
                                            if not cd[36] * stor6 / totalSupply / 100:
                                                revert with 'NH{q', 18
                                            if cd[36] * stor6 / totalSupply / 100 * _taxFee / cd[36] * stor6 / totalSupply / 100 != _taxFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _2862 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2862] = 26
                                            mem[_2862 + 32] = 'SafeMath: division by zero'
                                            if not cd[36] / 100:
                                                _3155 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3155] = 30
                                                mem[_3155 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3200 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3200 + idx + 68] = mem[_3155 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3200 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3200 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > -1:
                                                    revert with 'NH{q', 17
                                                if totalFees < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4071 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4071] = 26
                                                mem[_4071 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _4802 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_4802] = 26
                                                    mem[_4802 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5121 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5121] = 26
                                                    mem[_5121 + 32] = 'SafeMath: division by zero'
                                            else:
                                                if cd[36] / 100 and _taxFee > -1 / cd[36] / 100:
                                                    revert with 'NH{q', 17
                                                if not cd[36] / 100:
                                                    revert with 'NH{q', 18
                                                if cd[36] / 100 * _taxFee / cd[36] / 100 != _taxFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                _3409 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3409] = 30
                                                mem[_3409 + 32] = 'SafeMath: subtraction overflow'
                                                if cd[36] * stor6 / totalSupply / 100 * _taxFee > stor6:
                                                    _3461 = mem[64]
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 30
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[_3461 + idx + 68] = mem[_3409 + idx + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[_3461 + 98] = 0
                                                    revert with memory
                                                      from mem[64]
                                                       len _3461 + -mem[64] + 100
                                                if stor6 < cd[36] * stor6 / totalSupply / 100 * _taxFee:
                                                    revert with 'NH{q', 17
                                                stor6 += -1 * cd[36] * stor6 / totalSupply / 100 * _taxFee
                                                if totalFees > (-1 * cd[36] / 100 * _taxFee) - 1:
                                                    revert with 'NH{q', 17
                                                if totalFees + (cd[36] / 100 * _taxFee) < totalFees:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalFees += cd[36] / 100 * _taxFee
                                                if _taxFee > -_liquidityFee - 1:
                                                    revert with 'NH{q', 17
                                                if _taxFee + _liquidityFee > -_destroyFee - 1:
                                                    revert with 'NH{q', 17
                                                if 100 < _taxFee + _liquidityFee + _destroyFee:
                                                    revert with 'NH{q', 17
                                                _4483 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4483] = 26
                                                mem[_4483 + 32] = 'SafeMath: division by zero'
                                                if not cd[36] * stor6 / totalSupply / 100:
                                                    if stor2[address(_1346)] > -1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    _5120 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5120] = 26
                                                    mem[_5120 + 32] = 'SafeMath: division by zero'
                                                else:
                                                    if cd[36] * stor6 / totalSupply / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 17
                                                    if not cd[36] * stor6 / totalSupply / 100:
                                                        revert with 'NH{q', 18
                                                    if (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) / cd[36] * stor6 / totalSupply / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if stor2[address(_1346)] > (-100 * cd[36] * stor6 / totalSupply / 100) + (_taxFee * cd[36] * stor6 / totalSupply / 100) + (_liquidityFee * cd[36] * stor6 / totalSupply / 100) + (_destroyFee * cd[36] * stor6 / totalSupply / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    if stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100) < stor2[address(_1346)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[0] = address(_1346)
                                                    mem[32] = 2
                                                    stor2[address(_1346)] = stor2[address(_1346)] + (100 * cd[36] * stor6 / totalSupply / 100) - (_taxFee * cd[36] * stor6 / totalSupply / 100) - (_liquidityFee * cd[36] * stor6 / totalSupply / 100) - (_destroyFee * cd[36] * stor6 / totalSupply / 100)
                                                    _5318 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_5318] = 26
                                                    mem[_5318 + 32] = 'SafeMath: division by zero'
                if not cd[36] / 100:
                    mem[mem[64]] = 0
                    emit Transfer(0, msg.sender, address(_1346));
                else:
                    if cd[36] / 100 and -_taxFee + -_liquidityFee + -_destroyFee + 100 > -1 / cd[36] / 100:
                        revert with 'NH{q', 17
                    if not cd[36] / 100:
                        revert with 'NH{q', 18
                    if (100 * cd[36] / 100) - (_taxFee * cd[36] / 100) - (_liquidityFee * cd[36] / 100) - (_destroyFee * cd[36] / 100) / cd[36] / 100 != -_taxFee + -_liquidityFee + -_destroyFee + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[mem[64]] = (100 * cd[36] / 100) - (_taxFee * cd[36] / 100) - (_liquidityFee * cd[36] / 100) - (_destroyFee * cd[36] / 100)
                    emit Transfer(((100 * cd[36] / 100) - (_taxFee * cd[36] / 100) - (_liquidityFee * cd[36] / 100) - (_destroyFee * cd[36] / 100)), msg.sender, address(_1346));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
