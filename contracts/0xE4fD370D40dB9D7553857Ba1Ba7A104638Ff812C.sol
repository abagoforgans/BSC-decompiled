contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address _owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 stor6;
uint256 totalFees;
array of struct stor8;
array of struct stor9;
uint256 decimals;
address stor11;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address sub_8230af5aAddress;
uint256 startTime;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function startTime() {
    return startTime
}

function sub_8230af5a(?) {
    return sub_8230af5aAddress
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function claimTokens() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
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
    if stor1[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / stor6 / totalSupply)
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
    if stor4[address(msg.sender)]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg2:
            if 0 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < 0:
                revert with 0, 17
            if stor1[address(arg1)] > -1:
                revert with 0, 17
            if stor1[address(arg1)] < stor1[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg2 and stor6 / totalSupply > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                revert with 0, 17
            stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
            if not arg2 * stor6 / totalSupply / 100:
                if stor1[address(arg1)] > -1:
                    revert with 0, 17
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                    revert with 0, 17
                if not arg2 * stor6 / totalSupply / 100:
                    revert with 0, 18
                if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor1[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                    revert with 0, 17
                if stor1[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
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
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg2:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor1[address(arg1)] > -1:
                    revert with 0, 17
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 0, 17
                stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 * stor6 / totalSupply / 100:
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor1[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                        revert with 0, 17
                    if stor1[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
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
            if startTime > -16:
                revert with 0, 17
            if startTime + 15 < startTime:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if startTime + 15 >= block.timestamp:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor1[stor11] > -1:
                    revert with 0, 17
                if stor1[stor11] < stor1[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, stor11);
                if stor1[stor14] > -1:
                    revert with 0, 17
                if stor1[stor14] < stor1[stor14]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, sub_8230af5aAddress);
                if stor1[stor13] > -1:
                    revert with 0, 17
                if stor1[stor13] < stor1[stor13]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, uniswapV2PairAddress);
                if stor1[address(arg1)] > -1:
                    revert with 0, 17
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, arg1);
            else:
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if not arg2 / 100:
                        if stor1[stor11] > -1:
                            revert with 0, 17
                        if stor1[stor11] < stor1[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and stor6 / totalSupply > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if arg2 / 100 * stor6 / totalSupply / arg2 / 100 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[stor11] > !(arg2 / 100 * stor6 / totalSupply):
                            revert with 0, 17
                        if stor1[stor11] + (arg2 / 100 * stor6 / totalSupply) < stor1[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[stor11] += arg2 / 100 * stor6 / totalSupply
                    emit Transfer((arg2 / 100), msg.sender, stor11);
                    if not arg2 / 50:
                        if stor1[stor14] > -1:
                            revert with 0, 17
                        if stor1[stor14] < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 50 and stor6 / totalSupply > -1 / arg2 / 50:
                            revert with 0, 17
                        if not arg2 / 50:
                            revert with 0, 18
                        if arg2 / 50 * stor6 / totalSupply / arg2 / 50 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[stor14] > !(arg2 / 50 * stor6 / totalSupply):
                            revert with 0, 17
                        if stor1[stor14] + (arg2 / 50 * stor6 / totalSupply) < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[stor14] += arg2 / 50 * stor6 / totalSupply
                    emit Transfer((arg2 / 50), msg.sender, sub_8230af5aAddress);
                    if not arg2 / 50:
                        if stor1[stor13] > -1:
                            revert with 0, 17
                        if stor1[stor13] < stor1[stor13]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, uniswapV2PairAddress);
                    else:
                        if arg2 / 50 and 3 > -1 / arg2 / 50:
                            revert with 0, 17
                        if not arg2 / 50:
                            revert with 0, 18
                        if 3 * arg2 / 50 / arg2 / 50 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg2 / 50:
                            if stor1[stor13] > -1:
                                revert with 0, 17
                            if stor1[stor13] < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg2 / 50 and stor6 / totalSupply > -1 / 3 * arg2 / 50:
                                revert with 0, 17
                            if not 3 * arg2 / 50:
                                revert with 0, 18
                            if 3 * arg2 / 50 * stor6 / totalSupply / 3 * arg2 / 50 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor13] > !(3 * arg2 / 50 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor13] + (3 * arg2 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor13] += 3 * arg2 / 50 * stor6 / totalSupply
                        emit Transfer((3 * arg2 / 50), msg.sender, uniswapV2PairAddress);
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor6 / totalSupply > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                    if not arg2 / 100:
                        if stor1[stor11] > -1:
                            revert with 0, 17
                        if stor1[stor11] < stor1[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 100 and stor6 / totalSupply > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if arg2 / 100 * stor6 / totalSupply / arg2 / 100 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[stor11] > !(arg2 / 100 * stor6 / totalSupply):
                            revert with 0, 17
                        if stor1[stor11] + (arg2 / 100 * stor6 / totalSupply) < stor1[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[stor11] += arg2 / 100 * stor6 / totalSupply
                    emit Transfer((arg2 / 100), msg.sender, stor11);
                    if not arg2 / 50:
                        if stor1[stor14] > -1:
                            revert with 0, 17
                        if stor1[stor14] < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 / 50 and stor6 / totalSupply > -1 / arg2 / 50:
                            revert with 0, 17
                        if not arg2 / 50:
                            revert with 0, 18
                        if arg2 / 50 * stor6 / totalSupply / arg2 / 50 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[stor14] > !(arg2 / 50 * stor6 / totalSupply):
                            revert with 0, 17
                        if stor1[stor14] + (arg2 / 50 * stor6 / totalSupply) < stor1[stor14]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[stor14] += arg2 / 50 * stor6 / totalSupply
                    emit Transfer((arg2 / 50), msg.sender, sub_8230af5aAddress);
                    if not arg2 / 50:
                        if stor1[stor13] > -1:
                            revert with 0, 17
                        if stor1[stor13] < stor1[stor13]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, uniswapV2PairAddress);
                    else:
                        if arg2 / 50 and 3 > -1 / arg2 / 50:
                            revert with 0, 17
                        if not arg2 / 50:
                            revert with 0, 18
                        if 3 * arg2 / 50 / arg2 / 50 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg2 / 50:
                            if stor1[stor13] > -1:
                                revert with 0, 17
                            if stor1[stor13] < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg2 / 50 and stor6 / totalSupply > -1 / 3 * arg2 / 50:
                                revert with 0, 17
                            if not 3 * arg2 / 50:
                                revert with 0, 18
                            if 3 * arg2 / 50 * stor6 / totalSupply / 3 * arg2 / 50 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor13] > !(3 * arg2 / 50 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor13] + (3 * arg2 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor13] += 3 * arg2 / 50 * stor6 / totalSupply
                        emit Transfer((3 * arg2 / 50), msg.sender, uniswapV2PairAddress);
                    if not arg2 * stor6 / totalSupply / 100:
                        if stor1[address(arg1)] > -1:
                            revert with 0, 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor6 / totalSupply / 100 and 91 > -1 / arg2 * stor6 / totalSupply / 100:
                            revert with 0, 17
                        if not arg2 * stor6 / totalSupply / 100:
                            revert with 0, 18
                        if 91 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 91:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[address(arg1)] > !(91 * arg2 * stor6 / totalSupply / 100):
                            revert with 0, 17
                        if stor1[address(arg1)] + (91 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += 91 * arg2 * stor6 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 / 100 and 91 > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if 91 * arg2 / 100 / arg2 / 100 != 91:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((91 * arg2 / 100), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return uniswapV2PairAddress
            if unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor4[address(arg1)])
            if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                if unknown_0x78e97925(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return startTime
                if unknown_0x8230af5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_8230af5aAddress
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _owner
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1[address(arg1)] > stor6:
                revert with 0, 'Amount must be less than total reflections'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor6 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            return (stor1[address(arg1)] / stor6 / totalSupply)
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                    require unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _owner = address(arg1)
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if arg2 > allowance[msg.sender][address(arg1)]:
                    revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                if allowance[msg.sender][address(arg1)] < arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                return 1
            require not msg.value
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9.length):
                        if 31 < uint255(stor9.length) * 0.5:
                            mem[160] = uint256(stor9.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)])
                        mem[160] = 256 * stor9.length.field_8
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if stor9.length.field_1:
                        if 31 < stor9.length.field_1:
                            mem[160] = uint256(stor9.field_0)
                            idx = 160
                            s = 0
                            while stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)])
                        mem[160] = 256 * stor9.length.field_8
                mem[ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor9.length) * 0.5)] = mem[160 len ceil32(uint255(stor9.length) * 0.5)]
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor9.length), data=mem[160 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor9.length):
                    if 31 < uint255(stor9.length) * 0.5:
                        mem[160] = uint256(stor9.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor9.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)])
                    mem[160] = 256 * stor9.length.field_8
            else:
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if stor9.length.field_1:
                    if 31 < stor9.length.field_1:
                        mem[160] = uint256(stor9.field_0)
                        idx = 160
                        s = 0
                        while stor9.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)])
                    mem[160] = 256 * stor9.length.field_8
            mem[ceil32(stor9.length.field_1) + 224 len ceil32(stor9.length.field_1)] = mem[160 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = 0
            return Array(len=stor9.length % 128, data=mem[160 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 224 len 2 * ceil32(stor9.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _owner
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            require unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if _owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            stor4[address(arg1)] = 0
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(arg1):
            revert with 0, 'ERC20: transfer to the zero address'
        if arg2 <= 0:
            revert with 0, 'Transfer amount must be greater than zero'
        if stor4[address(msg.sender)]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg2:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor1[address(arg1)] > -1:
                    revert with 0, 17
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 and stor6 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                    revert with 0, 17
                stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                if not arg2 * stor6 / totalSupply / 100:
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor6 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor1[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                        revert with 0, 17
                    if stor1[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
            if not arg2 / 100:
                emit Transfer(0, msg.sender, address(arg1));
            else:
                if arg2 / 100 and 100 > -1 / arg2 / 100:
                    revert with 0, 17
                if not arg2 / 100:
                    revert with 0, 18
                if 100 * arg2 / 100 / arg2 / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer((100 * arg2 / 100), msg.sender, address(arg1));
        else:
            if stor4[address(arg1)]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor6 / totalSupply > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                    if not arg2 * stor6 / totalSupply / 100:
                        if stor1[address(arg1)] > -1:
                            revert with 0, 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor6 / totalSupply / 100 and 100 > -1 / arg2 * stor6 / totalSupply / 100:
                            revert with 0, 17
                        if not arg2 * stor6 / totalSupply / 100:
                            revert with 0, 18
                        if 100 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[address(arg1)] > !(100 * arg2 * stor6 / totalSupply / 100):
                            revert with 0, 17
                        if stor1[address(arg1)] + (100 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += 100 * arg2 * stor6 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, address(arg1));
                else:
                    if arg2 / 100 and 100 > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if 100 * arg2 / 100 / arg2 / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((100 * arg2 / 100), msg.sender, address(arg1));
            else:
                if startTime > -16:
                    revert with 0, 17
                if startTime + 15 < startTime:
                    revert with 0, 'SafeMath: addition overflow'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if startTime + 15 >= block.timestamp:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if stor1[stor11] > -1:
                        revert with 0, 17
                    if stor1[stor11] < stor1[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, stor11);
                    if stor1[stor14] > -1:
                        revert with 0, 17
                    if stor1[stor14] < stor1[stor14]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, sub_8230af5aAddress);
                    if stor1[stor13] > -1:
                        revert with 0, 17
                    if stor1[stor13] < stor1[stor13]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, uniswapV2PairAddress);
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, address(arg1));
                else:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        if not arg2 / 100:
                            if stor1[stor11] > -1:
                                revert with 0, 17
                            if stor1[stor11] < stor1[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 / 100 and stor6 / totalSupply > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if arg2 / 100 * stor6 / totalSupply / arg2 / 100 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor11] > !(arg2 / 100 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor11] + (arg2 / 100 * stor6 / totalSupply) < stor1[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor11] += arg2 / 100 * stor6 / totalSupply
                        emit Transfer((arg2 / 100), msg.sender, stor11);
                        if not arg2 / 50:
                            if stor1[stor14] > -1:
                                revert with 0, 17
                            if stor1[stor14] < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 / 50 and stor6 / totalSupply > -1 / arg2 / 50:
                                revert with 0, 17
                            if not arg2 / 50:
                                revert with 0, 18
                            if arg2 / 50 * stor6 / totalSupply / arg2 / 50 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor14] > !(arg2 / 50 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor14] + (arg2 / 50 * stor6 / totalSupply) < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor14] += arg2 / 50 * stor6 / totalSupply
                        emit Transfer((arg2 / 50), msg.sender, sub_8230af5aAddress);
                        if not arg2 / 50:
                            if stor1[stor13] > -1:
                                revert with 0, 17
                            if stor1[stor13] < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, uniswapV2PairAddress);
                        else:
                            if arg2 / 50 and 3 > -1 / arg2 / 50:
                                revert with 0, 17
                            if not arg2 / 50:
                                revert with 0, 18
                            if 3 * arg2 / 50 / arg2 / 50 != 3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 3 * arg2 / 50:
                                if stor1[stor13] > -1:
                                    revert with 0, 17
                                if stor1[stor13] < stor1[stor13]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 3 * arg2 / 50 and stor6 / totalSupply > -1 / 3 * arg2 / 50:
                                    revert with 0, 17
                                if not 3 * arg2 / 50:
                                    revert with 0, 18
                                if 3 * arg2 / 50 * stor6 / totalSupply / 3 * arg2 / 50 != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor13] > !(3 * arg2 / 50 * stor6 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor13] + (3 * arg2 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor13] += 3 * arg2 / 50 * stor6 / totalSupply
                            emit Transfer((3 * arg2 / 50), msg.sender, uniswapV2PairAddress);
                        if stor1[address(arg1)] > -1:
                            revert with 0, 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor6 / totalSupply > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * stor6 / totalSupply / arg2 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor6 / totalSupply > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor6 / totalSupply:
                            revert with 0, 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor6 / totalSupply
                        if not arg2 / 100:
                            if stor1[stor11] > -1:
                                revert with 0, 17
                            if stor1[stor11] < stor1[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 / 100 and stor6 / totalSupply > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if arg2 / 100 * stor6 / totalSupply / arg2 / 100 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor11] > !(arg2 / 100 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor11] + (arg2 / 100 * stor6 / totalSupply) < stor1[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor11] += arg2 / 100 * stor6 / totalSupply
                        emit Transfer((arg2 / 100), msg.sender, stor11);
                        if not arg2 / 50:
                            if stor1[stor14] > -1:
                                revert with 0, 17
                            if stor1[stor14] < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 / 50 and stor6 / totalSupply > -1 / arg2 / 50:
                                revert with 0, 17
                            if not arg2 / 50:
                                revert with 0, 18
                            if arg2 / 50 * stor6 / totalSupply / arg2 / 50 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor14] > !(arg2 / 50 * stor6 / totalSupply):
                                revert with 0, 17
                            if stor1[stor14] + (arg2 / 50 * stor6 / totalSupply) < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor14] += arg2 / 50 * stor6 / totalSupply
                        emit Transfer((arg2 / 50), msg.sender, sub_8230af5aAddress);
                        if not arg2 / 50:
                            if stor1[stor13] > -1:
                                revert with 0, 17
                            if stor1[stor13] < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, uniswapV2PairAddress);
                        else:
                            if arg2 / 50 and 3 > -1 / arg2 / 50:
                                revert with 0, 17
                            if not arg2 / 50:
                                revert with 0, 18
                            if 3 * arg2 / 50 / arg2 / 50 != 3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 3 * arg2 / 50:
                                if stor1[stor13] > -1:
                                    revert with 0, 17
                                if stor1[stor13] < stor1[stor13]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 3 * arg2 / 50 and stor6 / totalSupply > -1 / 3 * arg2 / 50:
                                    revert with 0, 17
                                if not 3 * arg2 / 50:
                                    revert with 0, 18
                                if 3 * arg2 / 50 * stor6 / totalSupply / 3 * arg2 / 50 != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor13] > !(3 * arg2 / 50 * stor6 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor13] + (3 * arg2 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor13] += 3 * arg2 / 50 * stor6 / totalSupply
                            emit Transfer((3 * arg2 / 50), msg.sender, uniswapV2PairAddress);
                        if not arg2 * stor6 / totalSupply / 100:
                            if stor1[address(arg1)] > -1:
                                revert with 0, 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * stor6 / totalSupply / 100 and 91 > -1 / arg2 * stor6 / totalSupply / 100:
                                revert with 0, 17
                            if not arg2 * stor6 / totalSupply / 100:
                                revert with 0, 18
                            if 91 * arg2 * stor6 / totalSupply / 100 / arg2 * stor6 / totalSupply / 100 != 91:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[address(arg1)] > !(91 * arg2 * stor6 / totalSupply / 100):
                                revert with 0, 17
                            if stor1[address(arg1)] + (91 * arg2 * stor6 / totalSupply / 100) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += 91 * arg2 * stor6 / totalSupply / 100
                    if not arg2 / 100:
                        emit Transfer(0, msg.sender, address(arg1));
                    else:
                        if arg2 / 100 and 91 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if 91 * arg2 / 100 / arg2 / 100 != 91:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer((91 * arg2 / 100), msg.sender, address(arg1));
    else:
        if unknown_0x2d838119(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x2d838119(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if arg1 > stor6:
                    revert with 0, 'Amount must be less than total reflections'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor6 / totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                return (arg1 / stor6 / totalSupply)
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if unknown_0x340ac20f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uniswapV2PairAddress = address(arg1)
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                if unknown_0x437823ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor4[address(arg1)] = 1
                else:
                    require unknown_0x48c54b9d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call _owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor8.length):
                        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor8.length):
                            if 31 < uint255(stor8.length) * 0.5:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor8.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    else:
                        if bool(stor8.length) == stor8.length.field_1 < 32:
                            revert with 0, 34
                        if stor8.length.field_1:
                            if 31 < stor8.length.field_1:
                                mem[160] = uint256(stor8.field_0)
                                idx = 160
                                s = 0
                                while stor8.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor8[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)])
                            mem[160] = 256 * stor8.length.field_8
                    mem[ceil32(uint255(stor8.length) * 0.5) + 224 len ceil32(uint255(stor8.length) * 0.5)] = mem[160 len ceil32(uint255(stor8.length) * 0.5)]
                    if ceil32(uint255(stor8.length) * 0.5) > uint255(stor8.length) * 0.5:
                        mem[ceil32(uint255(stor8.length) * 0.5) + (uint255(stor8.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor8.length), data=mem[160 len ceil32(uint255(stor8.length) * 0.5)], mem[(2 * ceil32(uint255(stor8.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor8.length) * 0.5)]), 
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor8.length):
                    if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor8.length):
                        if 31 < uint255(stor8.length) * 0.5:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor8.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                else:
                    if bool(stor8.length) == stor8.length.field_1 < 32:
                        revert with 0, 34
                    if stor8.length.field_1:
                        if 31 < stor8.length.field_1:
                            mem[160] = uint256(stor8.field_0)
                            idx = 160
                            s = 0
                            while stor8.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor8[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)])
                        mem[160] = 256 * stor8.length.field_8
                mem[ceil32(stor8.length.field_1) + 224 len ceil32(stor8.length.field_1)] = mem[160 len ceil32(stor8.length.field_1)]
                if ceil32(stor8.length.field_1) > stor8.length.field_1:
                    mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 224] = 0
                return Array(len=stor8.length % 128, data=mem[160 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 224 len 2 * ceil32(stor8.length.field_1)]), 
            if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
            else:
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFees
                if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2RouterAddress
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if 0 == startTime:
                    if uniswapV2PairAddress == address(arg2):
                        startTime = block.timestamp
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 <= 0:
                    revert with 0, 'Transfer amount must be greater than zero'
                if stor4[address(arg1)]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if stor1[address(arg2)] > -1:
                            revert with 0, 17
                        if stor1[address(arg2)] < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 and stor6 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor6 / totalSupply > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * stor6 / totalSupply:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * stor6 / totalSupply
                        if not arg3 * stor6 / totalSupply / 100:
                            if stor1[address(arg2)] > -1:
                                revert with 0, 17
                            if stor1[address(arg2)] < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 * stor6 / totalSupply / 100 and 100 > -1 / arg3 * stor6 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor6 / totalSupply / 100:
                                revert with 0, 18
                            if 100 * arg3 * stor6 / totalSupply / 100 / arg3 * stor6 / totalSupply / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[address(arg2)] > !(100 * arg3 * stor6 / totalSupply / 100):
                                revert with 0, 17
                            if stor1[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg2)] += 100 * arg3 * stor6 / totalSupply / 100
                    if not arg3 / 100:
                        emit Transfer(0, address(arg1), address(arg2));
                    else:
                        if arg3 / 100 and 100 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if 100 * arg3 / 100 / arg3 / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer((100 * arg3 / 100), address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                else:
                    if stor4[address(arg2)]:
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg3:
                            if 0 > stor1[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(arg1)] < 0:
                                revert with 0, 17
                            if stor1[address(arg2)] > -1:
                                revert with 0, 17
                            if stor1[address(arg2)] < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 and stor6 / totalSupply > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * stor6 / totalSupply > stor1[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(arg1)] < arg3 * stor6 / totalSupply:
                                revert with 0, 17
                            stor1[address(arg1)] += -1 * arg3 * stor6 / totalSupply
                            if not arg3 * stor6 / totalSupply / 100:
                                if stor1[address(arg2)] > -1:
                                    revert with 0, 17
                                if stor1[address(arg2)] < stor1[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 * stor6 / totalSupply / 100 and 100 > -1 / arg3 * stor6 / totalSupply / 100:
                                    revert with 0, 17
                                if not arg3 * stor6 / totalSupply / 100:
                                    revert with 0, 18
                                if 100 * arg3 * stor6 / totalSupply / 100 / arg3 * stor6 / totalSupply / 100 != 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[address(arg2)] > !(100 * arg3 * stor6 / totalSupply / 100):
                                    revert with 0, 17
                                if stor1[address(arg2)] + (100 * arg3 * stor6 / totalSupply / 100) < stor1[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[address(arg2)] += 100 * arg3 * stor6 / totalSupply / 100
                        if not arg3 / 100:
                            emit Transfer(0, address(arg1), address(arg2));
                        else:
                            if arg3 / 100 and 100 > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if 100 * arg3 / 100 / arg3 / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            emit Transfer((100 * arg3 / 100), address(arg1), address(arg2));
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                    else:
                        if startTime > -16:
                            revert with 0, 17
                        if startTime + 15 < startTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if startTime + 15 >= block.timestamp:
                            if 0 > stor1[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(arg1)] < 0:
                                revert with 0, 17
                            if stor1[stor11] > -1:
                                revert with 0, 17
                            if stor1[stor11] < stor1[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, address(arg1), stor11);
                            if stor1[stor14] > -1:
                                revert with 0, 17
                            if stor1[stor14] < stor1[stor14]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, address(arg1), sub_8230af5aAddress);
                            if stor1[stor13] > -1:
                                revert with 0, 17
                            if stor1[stor13] < stor1[stor13]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, address(arg1), uniswapV2PairAddress);
                            if stor1[address(arg2)] > -1:
                                revert with 0, 17
                            if stor1[address(arg2)] < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, address(arg1), address(arg2));
                        else:
                            if not arg3:
                                if 0 > stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor1[address(arg1)] < 0:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    if stor1[stor11] > -1:
                                        revert with 0, 17
                                    if stor1[stor11] < stor1[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 100 and stor6 / totalSupply > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * stor6 / totalSupply / arg3 / 100 != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor1[stor11] > !(arg3 / 100 * stor6 / totalSupply):
                                        revert with 0, 17
                                    if stor1[stor11] + (arg3 / 100 * stor6 / totalSupply) < stor1[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[stor11] += arg3 / 100 * stor6 / totalSupply
                                emit Transfer((arg3 / 100), address(arg1), stor11);
                                if not arg3 / 50:
                                    if stor1[stor14] > -1:
                                        revert with 0, 17
                                    if stor1[stor14] < stor1[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 50 and stor6 / totalSupply > -1 / arg3 / 50:
                                        revert with 0, 17
                                    if not arg3 / 50:
                                        revert with 0, 18
                                    if arg3 / 50 * stor6 / totalSupply / arg3 / 50 != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor1[stor14] > !(arg3 / 50 * stor6 / totalSupply):
                                        revert with 0, 17
                                    if stor1[stor14] + (arg3 / 50 * stor6 / totalSupply) < stor1[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[stor14] += arg3 / 50 * stor6 / totalSupply
                                emit Transfer((arg3 / 50), address(arg1), sub_8230af5aAddress);
                                if not arg3 / 50:
                                    if stor1[stor13] > -1:
                                        revert with 0, 17
                                    if stor1[stor13] < stor1[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), uniswapV2PairAddress);
                                else:
                                    if arg3 / 50 and 3 > -1 / arg3 / 50:
                                        revert with 0, 17
                                    if not arg3 / 50:
                                        revert with 0, 18
                                    if 3 * arg3 / 50 / arg3 / 50 != 3:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 3 * arg3 / 50:
                                        if stor1[stor13] > -1:
                                            revert with 0, 17
                                        if stor1[stor13] < stor1[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if 3 * arg3 / 50 and stor6 / totalSupply > -1 / 3 * arg3 / 50:
                                            revert with 0, 17
                                        if not 3 * arg3 / 50:
                                            revert with 0, 18
                                        if 3 * arg3 / 50 * stor6 / totalSupply / 3 * arg3 / 50 != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor1[stor13] > !(3 * arg3 / 50 * stor6 / totalSupply):
                                            revert with 0, 17
                                        if stor1[stor13] + (3 * arg3 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor1[stor13] += 3 * arg3 / 50 * stor6 / totalSupply
                                    emit Transfer((3 * arg3 / 50), address(arg1), uniswapV2PairAddress);
                                if stor1[address(arg2)] > -1:
                                    revert with 0, 17
                                if stor1[address(arg2)] < stor1[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 and stor6 / totalSupply > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * stor6 / totalSupply / arg3 != stor6 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg3 * stor6 / totalSupply > stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor1[address(arg1)] < arg3 * stor6 / totalSupply:
                                    revert with 0, 17
                                stor1[address(arg1)] += -1 * arg3 * stor6 / totalSupply
                                if not arg3 / 100:
                                    if stor1[stor11] > -1:
                                        revert with 0, 17
                                    if stor1[stor11] < stor1[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 100 and stor6 / totalSupply > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * stor6 / totalSupply / arg3 / 100 != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor1[stor11] > !(arg3 / 100 * stor6 / totalSupply):
                                        revert with 0, 17
                                    if stor1[stor11] + (arg3 / 100 * stor6 / totalSupply) < stor1[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[stor11] += arg3 / 100 * stor6 / totalSupply
                                emit Transfer((arg3 / 100), address(arg1), stor11);
                                if not arg3 / 50:
                                    if stor1[stor14] > -1:
                                        revert with 0, 17
                                    if stor1[stor14] < stor1[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 50 and stor6 / totalSupply > -1 / arg3 / 50:
                                        revert with 0, 17
                                    if not arg3 / 50:
                                        revert with 0, 18
                                    if arg3 / 50 * stor6 / totalSupply / arg3 / 50 != stor6 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor1[stor14] > !(arg3 / 50 * stor6 / totalSupply):
                                        revert with 0, 17
                                    if stor1[stor14] + (arg3 / 50 * stor6 / totalSupply) < stor1[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[stor14] += arg3 / 50 * stor6 / totalSupply
                                emit Transfer((arg3 / 50), address(arg1), sub_8230af5aAddress);
                                if not arg3 / 50:
                                    if stor1[stor13] > -1:
                                        revert with 0, 17
                                    if stor1[stor13] < stor1[stor13]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), uniswapV2PairAddress);
                                else:
                                    if arg3 / 50 and 3 > -1 / arg3 / 50:
                                        revert with 0, 17
                                    if not arg3 / 50:
                                        revert with 0, 18
                                    if 3 * arg3 / 50 / arg3 / 50 != 3:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not 3 * arg3 / 50:
                                        if stor1[stor13] > -1:
                                            revert with 0, 17
                                        if stor1[stor13] < stor1[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if 3 * arg3 / 50 and stor6 / totalSupply > -1 / 3 * arg3 / 50:
                                            revert with 0, 17
                                        if not 3 * arg3 / 50:
                                            revert with 0, 18
                                        if 3 * arg3 / 50 * stor6 / totalSupply / 3 * arg3 / 50 != stor6 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor1[stor13] > !(3 * arg3 / 50 * stor6 / totalSupply):
                                            revert with 0, 17
                                        if stor1[stor13] + (3 * arg3 / 50 * stor6 / totalSupply) < stor1[stor13]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor1[stor13] += 3 * arg3 / 50 * stor6 / totalSupply
                                    emit Transfer((3 * arg3 / 50), address(arg1), uniswapV2PairAddress);
                                if not arg3 * stor6 / totalSupply / 100:
                                    if stor1[address(arg2)] > -1:
                                        revert with 0, 17
                                    if stor1[address(arg2)] < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 * stor6 / totalSupply / 100 and 91 > -1 / arg3 * stor6 / totalSupply / 100:
                                        revert with 0, 17
                                    if not arg3 * stor6 / totalSupply / 100:
                                        revert with 0, 18
                                    if 91 * arg3 * stor6 / totalSupply / 100 / arg3 * stor6 / totalSupply / 100 != 91:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor1[address(arg2)] > !(91 * arg3 * stor6 / totalSupply / 100):
                                        revert with 0, 17
                                    if stor1[address(arg2)] + (91 * arg3 * stor6 / totalSupply / 100) < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[address(arg2)] += 91 * arg3 * stor6 / totalSupply / 100
                            if not arg3 / 100:
                                emit Transfer(0, address(arg1), address(arg2));
                            else:
                                if arg3 / 100 and 91 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if 91 * arg3 / 100 / arg3 / 100 != 91:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit Transfer((91 * arg3 / 100), address(arg1), address(arg2));
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[712 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 3)))))
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
