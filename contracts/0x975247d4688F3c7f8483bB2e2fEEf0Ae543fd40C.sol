contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address _owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor5;
array of struct stor6;
array of struct stor7;
uint256 decimals;
address uniswapV2PairAddress;
address stor12;
address stor13;
uint256 _startTime;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
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

function _startTime() {
    return _startTime
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
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

function sub_fb7d3621(?) {
    if _startTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < _startTime:
        revert with 'NH{q', 17
    if block.timestamp - _startTime / 720 * 24 * 3600 > 9:
        return 10
    if (block.timestamp - _startTime / 720 * 24 * 3600) + 1 < block.timestamp - _startTime / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    return ((block.timestamp - _startTime / 720 * 24 * 3600) + 1)
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
    if arg1 > stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor5 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor5 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor5 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor5 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor5 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor5 / totalSupply)
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

function getReleaseAmount() {
    if _startTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < _startTime:
        revert with 'NH{q', 17
    if block.timestamp - _startTime / 720 * 24 * 3600 > 9:
        if not totalSupply / 1000:
            return 0
        if totalSupply / 1000 and 5 > -1 / totalSupply / 1000:
            revert with 'NH{q', 17
        if not totalSupply / 1000:
            revert with 'NH{q', 18
        if 5 * totalSupply / 1000 / totalSupply / 1000 != 5:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 5 * totalSupply / 1000:
            return 0
        if 5 * totalSupply / 1000 and 10 > -1 / 5 * totalSupply / 1000:
            revert with 'NH{q', 17
        if not 5 * totalSupply / 1000:
            revert with 'NH{q', 18
        if 50 * totalSupply / 1000 / 5 * totalSupply / 1000 != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        return (50 * totalSupply / 1000)
    if (block.timestamp - _startTime / 720 * 24 * 3600) + 1 < block.timestamp - _startTime / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupply / 1000:
        return 0
    if totalSupply / 1000 and 5 > -1 / totalSupply / 1000:
        revert with 'NH{q', 17
    if not totalSupply / 1000:
        revert with 'NH{q', 18
    if 5 * totalSupply / 1000 / totalSupply / 1000 != 5:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 5 * totalSupply / 1000:
        return 0
    if 5 * totalSupply / 1000 and (block.timestamp - _startTime / 720 * 24 * 3600) + 1 > -1 / 5 * totalSupply / 1000:
        revert with 'NH{q', 17
    if not 5 * totalSupply / 1000:
        revert with 'NH{q', 18
    if (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000) / 5 * totalSupply / 1000 != (block.timestamp - _startTime / 720 * 24 * 3600) + 1:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000))
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
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
    if msg.sender == stor12:
        if _startTime > -31536001:
            revert with 'NH{q', 17
        if _startTime + (8760 * 24 * 3600) < _startTime:
            revert with 0, 'SafeMath: addition overflow'
        if _startTime + (8760 * 24 * 3600) < block.timestamp:
            if not totalSupply / 1000:
                if stor1[stor12] > stor5:
                    revert with 0, 'Amount must be less than total reflections'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if stor5 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor5 / totalSupply:
                    revert with 'NH{q', 18
                if arg2 > stor1[stor12] / stor5 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[stor12] / stor5 / totalSupply < arg2:
                    revert with 'NH{q', 17
                require (stor1[stor12] / stor5 / totalSupply) - arg2 >= 0
            else:
                if totalSupply / 1000 and 15 > -1 / totalSupply / 1000:
                    revert with 'NH{q', 17
                if not totalSupply / 1000:
                    revert with 'NH{q', 18
                if 15 * totalSupply / 1000 / totalSupply / 1000 != 15:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor1[stor12] > stor5:
                    revert with 0, 'Amount must be less than total reflections'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if stor5 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor5 / totalSupply:
                    revert with 'NH{q', 18
                if arg2 > stor1[stor12] / stor5 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[stor12] / stor5 / totalSupply < arg2:
                    revert with 'NH{q', 17
                require (stor1[stor12] / stor5 / totalSupply) - arg2 >= 15 * totalSupply / 1000
    if msg.sender == stor13:
        if _startTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < _startTime:
            revert with 'NH{q', 17
        if block.timestamp - _startTime / 720 * 24 * 3600 > 9:
            if not totalSupply / 1000:
                if not totalSupply / 100:
                    if stor1[stor13] > stor5:
                        revert with 0, 'Amount must be less than total reflections'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if stor5 / totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor5 / totalSupply:
                        revert with 'NH{q', 18
                    if arg2 > stor1[stor13] / stor5 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[stor13] / stor5 / totalSupply < arg2:
                        revert with 'NH{q', 17
                    require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 0
                else:
                    if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not totalSupply / 100:
                        revert with 'NH{q', 18
                    if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > 5 * totalSupply / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 5 * totalSupply / 100 < 0:
                        revert with 'NH{q', 17
                    if stor1[stor13] > stor5:
                        revert with 0, 'Amount must be less than total reflections'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if stor5 / totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor5 / totalSupply:
                        revert with 'NH{q', 18
                    if arg2 > stor1[stor13] / stor5 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[stor13] / stor5 / totalSupply < arg2:
                        revert with 'NH{q', 17
                    require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 5 * totalSupply / 100
            else:
                if totalSupply / 1000 and 5 > -1 / totalSupply / 1000:
                    revert with 'NH{q', 17
                if not totalSupply / 1000:
                    revert with 'NH{q', 18
                if 5 * totalSupply / 1000 / totalSupply / 1000 != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * totalSupply / 1000:
                    if not totalSupply / 100:
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 0
                    else:
                        if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not totalSupply / 100:
                            revert with 'NH{q', 18
                        if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > 5 * totalSupply / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 5 * totalSupply / 100 < 0:
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 5 * totalSupply / 100
                else:
                    if 5 * totalSupply / 1000 and 10 > -1 / 5 * totalSupply / 1000:
                        revert with 'NH{q', 17
                    if not 5 * totalSupply / 1000:
                        revert with 'NH{q', 18
                    if 50 * totalSupply / 1000 / 5 * totalSupply / 1000 != 10:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalSupply / 100:
                        if 50 * totalSupply / 1000 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 50 * totalSupply / 1000:
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= -50 * totalSupply / 1000
                    else:
                        if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not totalSupply / 100:
                            revert with 'NH{q', 18
                        if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * totalSupply / 1000 > 5 * totalSupply / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 5 * totalSupply / 100 < 50 * totalSupply / 1000:
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= (5 * totalSupply / 100) - (50 * totalSupply / 1000)
        else:
            if (block.timestamp - _startTime / 720 * 24 * 3600) + 1 < block.timestamp - _startTime / 720 * 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
            if not totalSupply / 1000:
                if not totalSupply / 100:
                    if stor1[stor13] > stor5:
                        revert with 0, 'Amount must be less than total reflections'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if stor5 / totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor5 / totalSupply:
                        revert with 'NH{q', 18
                    if arg2 > stor1[stor13] / stor5 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[stor13] / stor5 / totalSupply < arg2:
                        revert with 'NH{q', 17
                    require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 0
                else:
                    if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not totalSupply / 100:
                        revert with 'NH{q', 18
                    if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > 5 * totalSupply / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 5 * totalSupply / 100 < 0:
                        revert with 'NH{q', 17
                    if stor1[stor13] > stor5:
                        revert with 0, 'Amount must be less than total reflections'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if stor5 / totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor5 / totalSupply:
                        revert with 'NH{q', 18
                    if arg2 > stor1[stor13] / stor5 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[stor13] / stor5 / totalSupply < arg2:
                        revert with 'NH{q', 17
                    require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 5 * totalSupply / 100
            else:
                if totalSupply / 1000 and 5 > -1 / totalSupply / 1000:
                    revert with 'NH{q', 17
                if not totalSupply / 1000:
                    revert with 'NH{q', 18
                if 5 * totalSupply / 1000 / totalSupply / 1000 != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 5 * totalSupply / 1000:
                    if not totalSupply / 100:
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 0
                    else:
                        if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not totalSupply / 100:
                            revert with 'NH{q', 18
                        if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > 5 * totalSupply / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 5 * totalSupply / 100 < 0:
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= 5 * totalSupply / 100
                else:
                    if 5 * totalSupply / 1000 and (block.timestamp - _startTime / 720 * 24 * 3600) + 1 > -1 / 5 * totalSupply / 1000:
                        revert with 'NH{q', 17
                    if not 5 * totalSupply / 1000:
                        revert with 'NH{q', 18
                    if (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000) / 5 * totalSupply / 1000 != (block.timestamp - _startTime / 720 * 24 * 3600) + 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalSupply / 100:
                        if (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000) > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000):
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= (-5 * totalSupply / 1000) - (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000)
                    else:
                        if totalSupply / 100 and 5 > -1 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not totalSupply / 100:
                            revert with 'NH{q', 18
                        if 5 * totalSupply / 100 / totalSupply / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000) > 5 * totalSupply / 100:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 5 * totalSupply / 100 < (5 * totalSupply / 1000) + (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000):
                            revert with 'NH{q', 17
                        if stor1[stor13] > stor5:
                            revert with 0, 'Amount must be less than total reflections'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if stor5 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not stor5 / totalSupply:
                            revert with 'NH{q', 18
                        if arg2 > stor1[stor13] / stor5 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[stor13] / stor5 / totalSupply < arg2:
                            revert with 'NH{q', 17
                        require (stor1[stor13] / stor5 / totalSupply) - arg2 >= (5 * totalSupply / 100) - (5 * totalSupply / 1000) - (5 * block.timestamp - _startTime / 720 * 24 * 3600 * totalSupply / 1000)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if not arg2:
        if 0 > stor1[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(msg.sender)] < 0:
            revert with 'NH{q', 17
        if stor1[address(arg1)] > -1:
            revert with 'NH{q', 17
        if stor1[address(arg1)] < stor1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if arg2 and stor5 / totalSupply > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * stor5 / totalSupply / arg2 != stor5 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 * stor5 / totalSupply > stor1[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(msg.sender)] < arg2 * stor5 / totalSupply:
            revert with 'NH{q', 17
        stor1[address(msg.sender)] += -1 * arg2 * stor5 / totalSupply
        if stor1[address(arg1)] > (-1 * arg2 * stor5 / totalSupply) - 1:
            revert with 'NH{q', 17
        if stor1[address(arg1)] + (arg2 * stor5 / totalSupply) < stor1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor1[address(arg1)] += arg2 * stor5 / totalSupply
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
