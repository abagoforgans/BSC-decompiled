contract main {




// =====================  Runtime code  =====================


#
#  - sub_a4832711(?)
#
address _owner;
address stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor10;
uint256 totalFees;
array of struct stor12;
array of struct stor13;
uint256 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _destroyFee;
address stor18;
uint256 sub_a41a08fb;
uint256 sub_b53c1220;
uint256 sub_efe57f81;
mapping of address inviter;
mapping of uint256 lastSellTime;
address sub_7dd35e1aAddress;
address uniswapV2PairAddress;
address fundAddress;
address charityAddress;

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
    return bool(stor6[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function sub_7dd35e1a(?) {
    return sub_7dd35e1aAddress
}

function owner() {
    return _owner
}

function _destroyFee() {
    return _destroyFee
}

function sub_a41a08fb(?) {
    return sub_a41a08fb
}

function charityAddress() {
    return charityAddress
}

function _owner() {
    return _owner
}

function lastSellTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastSellTime[arg1]
}

function sub_b53c1220(?) {
    return sub_b53c1220
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function fundAddress() {
    return fundAddress
}

function inviter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviter[arg1]
}

function sub_efe57f81(?) {
    return sub_efe57f81
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function claimTokens() {
    if _owner != msg.sender:
        if stor1 != msg.sender:
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
    if arg1 > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor10 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor10 / totalSupply)
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

function name() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function symbol() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
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
    if stor2[stor18] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor6[address(msg.sender)]:
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
            if arg2 and stor10 / totalSupply > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * stor10 / totalSupply / arg2 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * stor10 / totalSupply > stor2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(msg.sender)] < arg2 * stor10 / totalSupply:
                revert with 'NH{q', 17
            stor2[address(msg.sender)] += -1 * arg2 * stor10 / totalSupply
            if not arg2 * stor10 / totalSupply / 100:
                if stor2[address(arg1)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg2 * stor10 / totalSupply / 100 and 100 > -1 / arg2 * stor10 / totalSupply / 100:
                    revert with 'NH{q', 17
                if not arg2 * stor10 / totalSupply / 100:
                    revert with 'NH{q', 18
                if 100 * arg2 * stor10 / totalSupply / 100 / arg2 * stor10 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg1)] > (-100 * arg2 * stor10 / totalSupply / 100) - 1:
                    revert with 'NH{q', 17
                if stor2[address(arg1)] + (100 * arg2 * stor10 / totalSupply / 100) < stor2[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg1)] += 100 * arg2 * stor10 / totalSupply / 100
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
        if stor6[address(arg1)]:
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
                if arg2 and stor10 / totalSupply > -1 / arg2:
                    revert with 'NH{q', 17
                if not arg2:
                    revert with 'NH{q', 18
                if arg2 * stor10 / totalSupply / arg2 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor10 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor10 / totalSupply:
                    revert with 'NH{q', 17
                stor2[address(msg.sender)] += -1 * arg2 * stor10 / totalSupply
                if not arg2 * stor10 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor10 / totalSupply / 100 and 100 > -1 / arg2 * stor10 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not arg2 * stor10 / totalSupply / 100:
                        revert with 'NH{q', 18
                    if 100 * arg2 * stor10 / totalSupply / 100 / arg2 * stor10 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > (-100 * arg2 * stor10 / totalSupply / 100) - 1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] + (100 * arg2 * stor10 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] += 100 * arg2 * stor10 / totalSupply / 100
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
            if stor2[stor18] / stor10 / totalSupply >= 88 * 10^17:
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
                    if arg2 and stor10 / totalSupply > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor10 / totalSupply / arg2 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor10 / totalSupply > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2 * stor10 / totalSupply:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] += -1 * arg2 * stor10 / totalSupply
                    if not arg2 * stor10 / totalSupply / 100:
                        if stor2[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor10 / totalSupply / 100 and 100 > -1 / arg2 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not arg2 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 100 * arg2 * stor10 / totalSupply / 100 / arg2 * stor10 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg1)] > (-100 * arg2 * stor10 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + (100 * arg2 * stor10 / totalSupply / 100) < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += 100 * arg2 * stor10 / totalSupply / 100
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
                        if stor2[stor26] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor26] < stor2[stor26]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, fundAddress);
                    else:
                        if arg2 / 100 and 3 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg2 / 100:
                            if stor2[stor26] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor26] < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg2 / 100 and stor10 / totalSupply > -1 / 3 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 3 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 3 * arg2 / 100 * stor10 / totalSupply / 3 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor26] > (-3 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor26] + (3 * arg2 / 100 * stor10 / totalSupply) < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor26] += 3 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((3 * arg2 / 100), msg.sender, fundAddress);
                    if not arg2 / 100:
                        if stor2[stor27] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor27] < stor2[stor27]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, charityAddress);
                    else:
                        if arg2 / 100 and 2 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 2 * arg2 / 100 / arg2 / 100 != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not uint255(arg2 / 100):
                            if stor2[stor27] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor27] < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint255(arg2 / 100) and stor10 / totalSupply > -1 / 2 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 2 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 2 * arg2 / 100 * stor10 / totalSupply / 2 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor27] > (-1 * 2 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor27] + (2 * arg2 / 100 * stor10 / totalSupply) < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor27] += 2 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((2 * arg2 / 100), msg.sender, charityAddress);
                    if not arg2 / 100:
                        if stor2[stor18] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor18] < stor2[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, stor18);
                    else:
                        if arg2 / 100 and 5 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 5 * arg2 / 100 / arg2 / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 5 * arg2 / 100:
                            if stor2[stor18] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor18] < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 5 * arg2 / 100 and stor10 / totalSupply > -1 / 5 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 5 * arg2 / 100 * stor10 / totalSupply / 5 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor18] > (-5 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor18] + (5 * arg2 / 100 * stor10 / totalSupply) < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor18] += 5 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((5 * arg2 / 100), msg.sender, stor18);
                    if stor2[address(arg1)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor10 / totalSupply > -1 / arg2:
                        revert with 'NH{q', 17
                    if not arg2:
                        revert with 'NH{q', 18
                    if arg2 * stor10 / totalSupply / arg2 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor10 / totalSupply > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2 * stor10 / totalSupply:
                        revert with 'NH{q', 17
                    stor2[address(msg.sender)] += -1 * arg2 * stor10 / totalSupply
                    if not arg2 / 100:
                        if stor2[stor26] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor26] < stor2[stor26]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, fundAddress);
                    else:
                        if arg2 / 100 and 3 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg2 / 100:
                            if stor2[stor26] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor26] < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg2 / 100 and stor10 / totalSupply > -1 / 3 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 3 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 3 * arg2 / 100 * stor10 / totalSupply / 3 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor26] > (-3 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor26] + (3 * arg2 / 100 * stor10 / totalSupply) < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor26] += 3 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((3 * arg2 / 100), msg.sender, fundAddress);
                    if not arg2 / 100:
                        if stor2[stor27] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor27] < stor2[stor27]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, charityAddress);
                    else:
                        if arg2 / 100 and 2 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 2 * arg2 / 100 / arg2 / 100 != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not uint255(arg2 / 100):
                            if stor2[stor27] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor27] < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint255(arg2 / 100) and stor10 / totalSupply > -1 / 2 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 2 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 2 * arg2 / 100 * stor10 / totalSupply / 2 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor27] > (-1 * 2 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor27] + (2 * arg2 / 100 * stor10 / totalSupply) < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor27] += 2 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((2 * arg2 / 100), msg.sender, charityAddress);
                    if not arg2 / 100:
                        if stor2[stor18] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor18] < stor2[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, stor18);
                    else:
                        if arg2 / 100 and 5 > -1 / arg2 / 100:
                            revert with 'NH{q', 17
                        if not arg2 / 100:
                            revert with 'NH{q', 18
                        if 5 * arg2 / 100 / arg2 / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 5 * arg2 / 100:
                            if stor2[stor18] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor18] < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 5 * arg2 / 100 and stor10 / totalSupply > -1 / 5 * arg2 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg2 / 100:
                                revert with 'NH{q', 18
                            if 5 * arg2 / 100 * stor10 / totalSupply / 5 * arg2 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor18] > (-5 * arg2 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor18] + (5 * arg2 / 100 * stor10 / totalSupply) < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor18] += 5 * arg2 / 100 * stor10 / totalSupply
                        emit Transfer((5 * arg2 / 100), msg.sender, stor18);
                    if not arg2 * stor10 / totalSupply / 100:
                        if stor2[address(arg1)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor10 / totalSupply / 100 and 90 > -1 / arg2 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not arg2 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 90 * arg2 * stor10 / totalSupply / 100 / arg2 * stor10 / totalSupply / 100 != 90:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg1)] > (-90 * arg2 * stor10 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg1)] + (90 * arg2 * stor10 / totalSupply / 100) < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += 90 * arg2 * stor10 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 / 100 and 90 > -1 / arg2 / 100:
                        revert with 'NH{q', 17
                    if not arg2 / 100:
                        revert with 'NH{q', 18
                    if 90 * arg2 / 100 / arg2 / 100 != 90:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
    return 1
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
    if stor2[stor18] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor6[address(arg1)]:
        if not arg3:
            if 0 > stor2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(arg1)] < 0:
                revert with 'NH{q', 17
            if stor2[address(arg2)] > -1:
                revert with 'NH{q', 17
            if stor2[address(arg2)] < stor2[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg3 and stor10 / totalSupply > -1 / arg3:
                revert with 'NH{q', 17
            if not arg3:
                revert with 'NH{q', 18
            if arg3 * stor10 / totalSupply / arg3 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * stor10 / totalSupply > stor2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(arg1)] < arg3 * stor10 / totalSupply:
                revert with 'NH{q', 17
            stor2[address(arg1)] += -1 * arg3 * stor10 / totalSupply
            if not arg3 * stor10 / totalSupply / 100:
                if stor2[address(arg2)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 * stor10 / totalSupply / 100 and 100 > -1 / arg3 * stor10 / totalSupply / 100:
                    revert with 'NH{q', 17
                if not arg3 * stor10 / totalSupply / 100:
                    revert with 'NH{q', 18
                if 100 * arg3 * stor10 / totalSupply / 100 / arg3 * stor10 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg2)] > (-100 * arg3 * stor10 / totalSupply / 100) - 1:
                    revert with 'NH{q', 17
                if stor2[address(arg2)] + (100 * arg3 * stor10 / totalSupply / 100) < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg2)] += 100 * arg3 * stor10 / totalSupply / 100
        if not arg3 / 100:
            emit Transfer(0, arg1, arg2);
        else:
            if arg3 / 100 and 100 > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if not arg3 / 100:
                revert with 'NH{q', 18
            if 100 * arg3 / 100 / arg3 / 100 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            emit Transfer((100 * arg3 / 100), arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[680 len 24] >> 64, 0
    else:
        if stor6[address(arg2)]:
            if not arg3:
                if 0 > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < 0:
                    revert with 'NH{q', 17
                if stor2[address(arg2)] > -1:
                    revert with 'NH{q', 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 and stor10 / totalSupply > -1 / arg3:
                    revert with 'NH{q', 17
                if not arg3:
                    revert with 'NH{q', 18
                if arg3 * stor10 / totalSupply / arg3 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * stor10 / totalSupply > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < arg3 * stor10 / totalSupply:
                    revert with 'NH{q', 17
                stor2[address(arg1)] += -1 * arg3 * stor10 / totalSupply
                if not arg3 * stor10 / totalSupply / 100:
                    if stor2[address(arg2)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 * stor10 / totalSupply / 100 and 100 > -1 / arg3 * stor10 / totalSupply / 100:
                        revert with 'NH{q', 17
                    if not arg3 * stor10 / totalSupply / 100:
                        revert with 'NH{q', 18
                    if 100 * arg3 * stor10 / totalSupply / 100 / arg3 * stor10 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg2)] > (-100 * arg3 * stor10 / totalSupply / 100) - 1:
                        revert with 'NH{q', 17
                    if stor2[address(arg2)] + (100 * arg3 * stor10 / totalSupply / 100) < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg2)] += 100 * arg3 * stor10 / totalSupply / 100
            if not arg3 / 100:
                emit Transfer(0, arg1, arg2);
            else:
                if arg3 / 100 and 100 > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                if not arg3 / 100:
                    revert with 'NH{q', 18
                if 100 * arg3 / 100 / arg3 / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                emit Transfer((100 * arg3 / 100), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[680 len 24] >> 64, 0
        else:
            if stor2[stor18] / stor10 / totalSupply >= 88 * 10^17:
                if not arg3:
                    if 0 > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < 0:
                        revert with 'NH{q', 17
                    if stor2[address(arg2)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 and stor10 / totalSupply > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    if arg3 * stor10 / totalSupply / arg3 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * stor10 / totalSupply > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < arg3 * stor10 / totalSupply:
                        revert with 'NH{q', 17
                    stor2[address(arg1)] += -1 * arg3 * stor10 / totalSupply
                    if not arg3 * stor10 / totalSupply / 100:
                        if stor2[address(arg2)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(arg2)] < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 * stor10 / totalSupply / 100 and 100 > -1 / arg3 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not arg3 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 100 * arg3 * stor10 / totalSupply / 100 / arg3 * stor10 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg2)] > (-100 * arg3 * stor10 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg2)] + (100 * arg3 * stor10 / totalSupply / 100) < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg2)] += 100 * arg3 * stor10 / totalSupply / 100
                if not arg3 / 100:
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 / 100 and 100 > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if not arg3 / 100:
                        revert with 'NH{q', 18
                    if 100 * arg3 / 100 / arg3 / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((100 * arg3 / 100), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[680 len 24] >> 64, 0
            else:
                if not arg3:
                    if 0 > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < 0:
                        revert with 'NH{q', 17
                    if not arg3 / 100:
                        if stor2[stor26] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor26] < stor2[stor26]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, fundAddress);
                    else:
                        if arg3 / 100 and 3 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 3 * arg3 / 100 / arg3 / 100 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg3 / 100:
                            if stor2[stor26] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor26] < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg3 / 100 and stor10 / totalSupply > -1 / 3 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 3 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 3 * arg3 / 100 * stor10 / totalSupply / 3 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor26] > (-3 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor26] + (3 * arg3 / 100 * stor10 / totalSupply) < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor26] += 3 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((3 * arg3 / 100), arg1, fundAddress);
                    if not arg3 / 100:
                        if stor2[stor27] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor27] < stor2[stor27]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, charityAddress);
                    else:
                        if arg3 / 100 and 2 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 2 * arg3 / 100 / arg3 / 100 != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not uint255(arg3 / 100):
                            if stor2[stor27] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor27] < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint255(arg3 / 100) and stor10 / totalSupply > -1 / 2 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 2 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 2 * arg3 / 100 * stor10 / totalSupply / 2 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor27] > (-1 * 2 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor27] + (2 * arg3 / 100 * stor10 / totalSupply) < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor27] += 2 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((2 * arg3 / 100), arg1, charityAddress);
                    if not arg3 / 100:
                        if stor2[stor18] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor18] < stor2[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, stor18);
                    else:
                        if arg3 / 100 and 5 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 5 * arg3 / 100 / arg3 / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 5 * arg3 / 100:
                            if stor2[stor18] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor18] < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 5 * arg3 / 100 and stor10 / totalSupply > -1 / 5 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 5 * arg3 / 100 * stor10 / totalSupply / 5 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor18] > (-5 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor18] + (5 * arg3 / 100 * stor10 / totalSupply) < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor18] += 5 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((5 * arg3 / 100), arg1, stor18);
                    if stor2[address(arg2)] > -1:
                        revert with 'NH{q', 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 and stor10 / totalSupply > -1 / arg3:
                        revert with 'NH{q', 17
                    if not arg3:
                        revert with 'NH{q', 18
                    if arg3 * stor10 / totalSupply / arg3 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * stor10 / totalSupply > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < arg3 * stor10 / totalSupply:
                        revert with 'NH{q', 17
                    stor2[address(arg1)] += -1 * arg3 * stor10 / totalSupply
                    if not arg3 / 100:
                        if stor2[stor26] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor26] < stor2[stor26]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, fundAddress);
                    else:
                        if arg3 / 100 and 3 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 3 * arg3 / 100 / arg3 / 100 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 3 * arg3 / 100:
                            if stor2[stor26] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor26] < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 3 * arg3 / 100 and stor10 / totalSupply > -1 / 3 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 3 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 3 * arg3 / 100 * stor10 / totalSupply / 3 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor26] > (-3 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor26] + (3 * arg3 / 100 * stor10 / totalSupply) < stor2[stor26]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor26] += 3 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((3 * arg3 / 100), arg1, fundAddress);
                    if not arg3 / 100:
                        if stor2[stor27] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor27] < stor2[stor27]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, charityAddress);
                    else:
                        if arg3 / 100 and 2 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 2 * arg3 / 100 / arg3 / 100 != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not uint255(arg3 / 100):
                            if stor2[stor27] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor27] < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if uint255(arg3 / 100) and stor10 / totalSupply > -1 / 2 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 2 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 2 * arg3 / 100 * stor10 / totalSupply / 2 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor27] > (-1 * 2 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor27] + (2 * arg3 / 100 * stor10 / totalSupply) < stor2[stor27]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor27] += 2 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((2 * arg3 / 100), arg1, charityAddress);
                    if not arg3 / 100:
                        if stor2[stor18] > -1:
                            revert with 'NH{q', 17
                        if stor2[stor18] < stor2[stor18]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, stor18);
                    else:
                        if arg3 / 100 and 5 > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if not arg3 / 100:
                            revert with 'NH{q', 18
                        if 5 * arg3 / 100 / arg3 / 100 != 5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 5 * arg3 / 100:
                            if stor2[stor18] > -1:
                                revert with 'NH{q', 17
                            if stor2[stor18] < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 5 * arg3 / 100 and stor10 / totalSupply > -1 / 5 * arg3 / 100:
                                revert with 'NH{q', 17
                            if not 5 * arg3 / 100:
                                revert with 'NH{q', 18
                            if 5 * arg3 / 100 * stor10 / totalSupply / 5 * arg3 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor18] > (-5 * arg3 / 100 * stor10 / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if stor2[stor18] + (5 * arg3 / 100 * stor10 / totalSupply) < stor2[stor18]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor18] += 5 * arg3 / 100 * stor10 / totalSupply
                        emit Transfer((5 * arg3 / 100), arg1, stor18);
                    if not arg3 * stor10 / totalSupply / 100:
                        if stor2[address(arg2)] > -1:
                            revert with 'NH{q', 17
                        if stor2[address(arg2)] < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 * stor10 / totalSupply / 100 and 90 > -1 / arg3 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 17
                        if not arg3 * stor10 / totalSupply / 100:
                            revert with 'NH{q', 18
                        if 90 * arg3 * stor10 / totalSupply / 100 / arg3 * stor10 / totalSupply / 100 != 90:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg2)] > (-90 * arg3 * stor10 / totalSupply / 100) - 1:
                            revert with 'NH{q', 17
                        if stor2[address(arg2)] + (90 * arg3 * stor10 / totalSupply / 100) < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg2)] += 90 * arg3 * stor10 / totalSupply / 100
                if not arg3 / 100:
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 / 100 and 90 > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if not arg3 / 100:
                        revert with 'NH{q', 18
                    if 90 * arg3 / 100 / arg3 / 100 != 90:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[872 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 5)))))
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
