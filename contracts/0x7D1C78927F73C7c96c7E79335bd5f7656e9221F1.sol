contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address _owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 stor7;
uint256 totalFees;
array of struct stor9;
array of struct stor10;
uint256 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _destroyFee;
address stor15;
address uniswapV2PairAddress;
address sub_42aa7898Address;

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

function sub_42aa7898(?) {
    return sub_42aa7898Address
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
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
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
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
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor7 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / stor7 / totalSupply)
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

function symbol() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
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
    if stor5[address(msg.sender)]:
        if not arg2:
            if 0 > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < 0:
                revert with 0, 17
            if stor1[arg1] > -1:
                revert with 0, 17
            if stor1[arg1] < stor1[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg1)] = stor1[arg1]
        else:
            if arg2 and stor7 / totalSupply > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor7 / totalSupply / arg2 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * stor7 / totalSupply > stor1[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(msg.sender)] < arg2 * stor7 / totalSupply:
                revert with 0, 17
            stor1[address(msg.sender)] += -1 * arg2 * stor7 / totalSupply
            if stor1[arg1] > !(arg2 * stor7 / totalSupply):
                revert with 0, 17
            if stor1[arg1] + (arg2 * stor7 / totalSupply) < stor1[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg1)] = stor1[arg1] + (arg2 * stor7 / totalSupply)
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor5[address(arg1)]:
            if not arg2:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor1[arg1] > -1:
                    revert with 0, 17
                if stor1[arg1] < stor1[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] = stor1[arg1]
            else:
                if arg2 and stor7 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor7 / totalSupply / arg2 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg2 * stor7 / totalSupply:
                    revert with 0, 17
                stor1[address(msg.sender)] += -1 * arg2 * stor7 / totalSupply
                if stor1[arg1] > !(arg2 * stor7 / totalSupply):
                    revert with 0, 17
                if stor1[arg1] + (arg2 * stor7 / totalSupply) < stor1[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] = stor1[arg1] + (arg2 * stor7 / totalSupply)
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if uniswapV2PairAddress == msg.sender:
                if not arg2:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if not arg2 / 100:
                        if stor1[stor17] > -1:
                            revert with 0, 17
                        if stor1[stor17] < stor1[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, sub_42aa7898Address);
                    else:
                        if arg2 / 100 and 10 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if 10 * arg2 / 100 / arg2 / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * arg2 / 100:
                            if stor1[stor17] > -1:
                                revert with 0, 17
                            if stor1[stor17] < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10 * arg2 / 100 and stor7 / totalSupply > -1 / 10 * arg2 / 100:
                                revert with 0, 17
                            if not 10 * arg2 / 100:
                                revert with 0, 18
                            if 10 * arg2 / 100 * stor7 / totalSupply / 10 * arg2 / 100 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor17] > !(10 * arg2 / 100 * stor7 / totalSupply):
                                revert with 0, 17
                            if stor1[stor17] + (10 * arg2 / 100 * stor7 / totalSupply) < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor17] += 10 * arg2 / 100 * stor7 / totalSupply
                        emit Transfer((10 * arg2 / 100), msg.sender, sub_42aa7898Address);
                    if stor1[address(arg1)] > -1:
                        revert with 0, 17
                    if stor1[address(arg1)] < stor1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 and stor7 / totalSupply > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * stor7 / totalSupply / arg2 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg2 * stor7 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg2 * stor7 / totalSupply
                    if not arg2 / 100:
                        if stor1[stor17] > -1:
                            revert with 0, 17
                        if stor1[stor17] < stor1[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, sub_42aa7898Address);
                    else:
                        if arg2 / 100 and 10 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if 10 * arg2 / 100 / arg2 / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * arg2 / 100:
                            if stor1[stor17] > -1:
                                revert with 0, 17
                            if stor1[stor17] < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10 * arg2 / 100 and stor7 / totalSupply > -1 / 10 * arg2 / 100:
                                revert with 0, 17
                            if not 10 * arg2 / 100:
                                revert with 0, 18
                            if 10 * arg2 / 100 * stor7 / totalSupply / 10 * arg2 / 100 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor17] > !(10 * arg2 / 100 * stor7 / totalSupply):
                                revert with 0, 17
                            if stor1[stor17] + (10 * arg2 / 100 * stor7 / totalSupply) < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor17] += 10 * arg2 / 100 * stor7 / totalSupply
                        emit Transfer((10 * arg2 / 100), msg.sender, sub_42aa7898Address);
                    if not arg2 * stor7 / totalSupply / 100:
                        if stor1[address(arg1)] > -1:
                            revert with 0, 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor7 / totalSupply / 100 and 90 > -1 / arg2 * stor7 / totalSupply / 100:
                            revert with 0, 17
                        if not arg2 * stor7 / totalSupply / 100:
                            revert with 0, 18
                        if 90 * arg2 * stor7 / totalSupply / 100 / arg2 * stor7 / totalSupply / 100 != 90:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[address(arg1)] > !(90 * arg2 * stor7 / totalSupply / 100):
                            revert with 0, 17
                        if stor1[address(arg1)] + (90 * arg2 * stor7 / totalSupply / 100) < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] += 90 * arg2 * stor7 / totalSupply / 100
                if not arg2 / 100:
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 / 100 and 90 > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if 90 * arg2 / 100 / arg2 / 100 != 90:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            else:
                if uniswapV2PairAddress != arg1:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        if stor1[arg1] > -1:
                            revert with 0, 17
                        if stor1[arg1] < stor1[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] = stor1[arg1]
                    else:
                        if arg2 and stor7 / totalSupply > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * stor7 / totalSupply / arg2 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor7 / totalSupply:
                            revert with 0, 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor7 / totalSupply
                        if stor1[arg1] > !(arg2 * stor7 / totalSupply):
                            revert with 0, 17
                        if stor1[arg1] + (arg2 * stor7 / totalSupply) < stor1[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg1)] = stor1[arg1] + (arg2 * stor7 / totalSupply)
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not arg2:
                        if 0 > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        if not arg2 / 100:
                            if stor1[stor15] > -1:
                                revert with 0, 17
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor15);
                        else:
                            if arg2 / 100 and 15 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if 15 * arg2 / 100 / arg2 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 15 * arg2 / 100:
                                if stor1[stor15] > -1:
                                    revert with 0, 17
                                if stor1[stor15] < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 15 * arg2 / 100 and stor7 / totalSupply > -1 / 15 * arg2 / 100:
                                    revert with 0, 17
                                if not 15 * arg2 / 100:
                                    revert with 0, 18
                                if 15 * arg2 / 100 * stor7 / totalSupply / 15 * arg2 / 100 != stor7 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor15] > !(15 * arg2 / 100 * stor7 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor15] + (15 * arg2 / 100 * stor7 / totalSupply) < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor15] += 15 * arg2 / 100 * stor7 / totalSupply
                            emit Transfer((15 * arg2 / 100), msg.sender, stor15);
                        if not arg2 / 100:
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if totalFees > -1:
                                revert with 0, 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 / 100 and 15 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if 15 * arg2 / 100 / arg2 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if totalFees > !(15 * arg2 / 100):
                                revert with 0, 17
                            if totalFees + (15 * arg2 / 100) < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += 15 * arg2 / 100
                        if stor1[address(arg1)] > -1:
                            revert with 0, 17
                        if stor1[address(arg1)] < stor1[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor7 / totalSupply > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * stor7 / totalSupply / arg2 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(msg.sender)] < arg2 * stor7 / totalSupply:
                            revert with 0, 17
                        stor1[address(msg.sender)] += -1 * arg2 * stor7 / totalSupply
                        if not arg2 / 100:
                            if stor1[stor15] > -1:
                                revert with 0, 17
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor15);
                        else:
                            if arg2 / 100 and 15 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if 15 * arg2 / 100 / arg2 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 15 * arg2 / 100:
                                if stor1[stor15] > -1:
                                    revert with 0, 17
                                if stor1[stor15] < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 15 * arg2 / 100 and stor7 / totalSupply > -1 / 15 * arg2 / 100:
                                    revert with 0, 17
                                if not 15 * arg2 / 100:
                                    revert with 0, 18
                                if 15 * arg2 / 100 * stor7 / totalSupply / 15 * arg2 / 100 != stor7 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor15] > !(15 * arg2 / 100 * stor7 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor15] + (15 * arg2 / 100 * stor7 / totalSupply) < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor15] += 15 * arg2 / 100 * stor7 / totalSupply
                            emit Transfer((15 * arg2 / 100), msg.sender, stor15);
                        if not arg2 * stor7 / totalSupply / 100:
                            if not arg2 / 100:
                                if 0 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 0:
                                    revert with 0, 17
                                if totalFees > -1:
                                    revert with 0, 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 / 100 and 15 > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if 15 * arg2 / 100 / arg2 / 100 != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 0:
                                    revert with 0, 17
                                if totalFees > !(15 * arg2 / 100):
                                    revert with 0, 17
                                if totalFees + (15 * arg2 / 100) < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += 15 * arg2 / 100
                        else:
                            if arg2 * stor7 / totalSupply / 100 and 15 > -1 / arg2 * stor7 / totalSupply / 100:
                                revert with 0, 17
                            if not arg2 * stor7 / totalSupply / 100:
                                revert with 0, 18
                            if 15 * arg2 * stor7 / totalSupply / 100 / arg2 * stor7 / totalSupply / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg2 / 100:
                                if 15 * arg2 * stor7 / totalSupply / 100 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 15 * arg2 * stor7 / totalSupply / 100:
                                    revert with 0, 17
                                stor7 += -15 * arg2 * stor7 / totalSupply / 100
                                if totalFees > -1:
                                    revert with 0, 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 / 100 and 15 > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if 15 * arg2 / 100 / arg2 / 100 != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 15 * arg2 * stor7 / totalSupply / 100 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 15 * arg2 * stor7 / totalSupply / 100:
                                    revert with 0, 17
                                stor7 += -15 * arg2 * stor7 / totalSupply / 100
                                if totalFees > !(15 * arg2 / 100):
                                    revert with 0, 17
                                if totalFees + (15 * arg2 / 100) < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += 15 * arg2 / 100
                        if not arg2 * stor7 / totalSupply / 100:
                            if stor1[address(arg1)] > -1:
                                revert with 0, 17
                            if stor1[address(arg1)] < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * stor7 / totalSupply / 100 and 70 > -1 / arg2 * stor7 / totalSupply / 100:
                                revert with 0, 17
                            if not arg2 * stor7 / totalSupply / 100:
                                revert with 0, 18
                            if 70 * arg2 * stor7 / totalSupply / 100 / arg2 * stor7 / totalSupply / 100 != 70:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[address(arg1)] > !(70 * arg2 * stor7 / totalSupply / 100):
                                revert with 0, 17
                            if stor1[address(arg1)] + (70 * arg2 * stor7 / totalSupply / 100) < stor1[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg1)] += 70 * arg2 * stor7 / totalSupply / 100
                    if not arg2 / 100:
                        emit Transfer(0, msg.sender, arg1);
                    else:
                        if arg2 / 100 and 70 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if 70 * arg2 / 100 / arg2 / 100 != 70:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer((70 * arg2 / 100), msg.sender, arg1);
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
    if stor5[address(arg1)]:
        if not arg3:
            if 0 > stor1[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(arg1)] < 0:
                revert with 0, 17
            if stor1[arg2] > -1:
                revert with 0, 17
            if stor1[arg2] < stor1[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg2)] = stor1[arg2]
        else:
            if arg3 and stor7 / totalSupply > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(arg1)] < arg3 * stor7 / totalSupply:
                revert with 0, 17
            stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
            if stor1[arg2] > !(arg3 * stor7 / totalSupply):
                revert with 0, 17
            if stor1[arg2] + (arg3 * stor7 / totalSupply) < stor1[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg2)] = stor1[arg2] + (arg3 * stor7 / totalSupply)
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
    else:
        if stor5[address(arg2)]:
            if not arg3:
                if 0 > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(arg1)] < 0:
                    revert with 0, 17
                if stor1[arg2] > -1:
                    revert with 0, 17
                if stor1[arg2] < stor1[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] = stor1[arg2]
            else:
                if arg3 and stor7 / totalSupply > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(arg1)] < arg3 * stor7 / totalSupply:
                    revert with 0, 17
                stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                if stor1[arg2] > !(arg3 * stor7 / totalSupply):
                    revert with 0, 17
                if stor1[arg2] + (arg3 * stor7 / totalSupply) < stor1[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] = stor1[arg2] + (arg3 * stor7 / totalSupply)
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
        else:
            if uniswapV2PairAddress == arg1:
                if not arg3:
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(arg1)] < 0:
                        revert with 0, 17
                    if not arg3 / 100:
                        if stor1[stor17] > -1:
                            revert with 0, 17
                        if stor1[stor17] < stor1[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, sub_42aa7898Address);
                    else:
                        if arg3 / 100 and 10 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if 10 * arg3 / 100 / arg3 / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * arg3 / 100:
                            if stor1[stor17] > -1:
                                revert with 0, 17
                            if stor1[stor17] < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10 * arg3 / 100 and stor7 / totalSupply > -1 / 10 * arg3 / 100:
                                revert with 0, 17
                            if not 10 * arg3 / 100:
                                revert with 0, 18
                            if 10 * arg3 / 100 * stor7 / totalSupply / 10 * arg3 / 100 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor17] > !(10 * arg3 / 100 * stor7 / totalSupply):
                                revert with 0, 17
                            if stor1[stor17] + (10 * arg3 / 100 * stor7 / totalSupply) < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor17] += 10 * arg3 / 100 * stor7 / totalSupply
                        emit Transfer((10 * arg3 / 100), arg1, sub_42aa7898Address);
                    if stor1[address(arg2)] > -1:
                        revert with 0, 17
                    if stor1[address(arg2)] < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 and stor7 / totalSupply > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(arg1)] < arg3 * stor7 / totalSupply:
                        revert with 0, 17
                    stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                    if not arg3 / 100:
                        if stor1[stor17] > -1:
                            revert with 0, 17
                        if stor1[stor17] < stor1[stor17]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, sub_42aa7898Address);
                    else:
                        if arg3 / 100 and 10 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if 10 * arg3 / 100 / arg3 / 100 != 10:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10 * arg3 / 100:
                            if stor1[stor17] > -1:
                                revert with 0, 17
                            if stor1[stor17] < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10 * arg3 / 100 and stor7 / totalSupply > -1 / 10 * arg3 / 100:
                                revert with 0, 17
                            if not 10 * arg3 / 100:
                                revert with 0, 18
                            if 10 * arg3 / 100 * stor7 / totalSupply / 10 * arg3 / 100 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[stor17] > !(10 * arg3 / 100 * stor7 / totalSupply):
                                revert with 0, 17
                            if stor1[stor17] + (10 * arg3 / 100 * stor7 / totalSupply) < stor1[stor17]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[stor17] += 10 * arg3 / 100 * stor7 / totalSupply
                        emit Transfer((10 * arg3 / 100), arg1, sub_42aa7898Address);
                    if not arg3 * stor7 / totalSupply / 100:
                        if stor1[address(arg2)] > -1:
                            revert with 0, 17
                        if stor1[address(arg2)] < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 * stor7 / totalSupply / 100 and 90 > -1 / arg3 * stor7 / totalSupply / 100:
                            revert with 0, 17
                        if not arg3 * stor7 / totalSupply / 100:
                            revert with 0, 18
                        if 90 * arg3 * stor7 / totalSupply / 100 / arg3 * stor7 / totalSupply / 100 != 90:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[address(arg2)] > !(90 * arg3 * stor7 / totalSupply / 100):
                            revert with 0, 17
                        if stor1[address(arg2)] + (90 * arg3 * stor7 / totalSupply / 100) < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] += 90 * arg3 * stor7 / totalSupply / 100
                if not arg3 / 100:
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 / 100 and 90 > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if 90 * arg3 / 100 / arg3 / 100 != 90:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
            else:
                if uniswapV2PairAddress != arg2:
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if stor1[arg2] > -1:
                            revert with 0, 17
                        if stor1[arg2] < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2]
                    else:
                        if arg3 and stor7 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * stor7 / totalSupply:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                        if stor1[arg2] > !(arg3 * stor7 / totalSupply):
                            revert with 0, 17
                        if stor1[arg2] + (arg3 * stor7 / totalSupply) < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2] + (arg3 * stor7 / totalSupply)
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                else:
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if not arg3 / 100:
                            if stor1[stor15] > -1:
                                revert with 0, 17
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor15);
                        else:
                            if arg3 / 100 and 15 > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if 15 * arg3 / 100 / arg3 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 15 * arg3 / 100:
                                if stor1[stor15] > -1:
                                    revert with 0, 17
                                if stor1[stor15] < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 15 * arg3 / 100 and stor7 / totalSupply > -1 / 15 * arg3 / 100:
                                    revert with 0, 17
                                if not 15 * arg3 / 100:
                                    revert with 0, 18
                                if 15 * arg3 / 100 * stor7 / totalSupply / 15 * arg3 / 100 != stor7 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor15] > !(15 * arg3 / 100 * stor7 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor15] + (15 * arg3 / 100 * stor7 / totalSupply) < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor15] += 15 * arg3 / 100 * stor7 / totalSupply
                            emit Transfer((15 * arg3 / 100), arg1, stor15);
                        if not arg3 / 100:
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if totalFees > -1:
                                revert with 0, 17
                            if totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 / 100 and 15 > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if 15 * arg3 / 100 / arg3 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if totalFees > !(15 * arg3 / 100):
                                revert with 0, 17
                            if totalFees + (15 * arg3 / 100) < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += 15 * arg3 / 100
                        if stor1[address(arg2)] > -1:
                            revert with 0, 17
                        if stor1[address(arg2)] < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 and stor7 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * stor7 / totalSupply:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                        if not arg3 / 100:
                            if stor1[stor15] > -1:
                                revert with 0, 17
                            if stor1[stor15] < stor1[stor15]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor15);
                        else:
                            if arg3 / 100 and 15 > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if 15 * arg3 / 100 / arg3 / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 15 * arg3 / 100:
                                if stor1[stor15] > -1:
                                    revert with 0, 17
                                if stor1[stor15] < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if 15 * arg3 / 100 and stor7 / totalSupply > -1 / 15 * arg3 / 100:
                                    revert with 0, 17
                                if not 15 * arg3 / 100:
                                    revert with 0, 18
                                if 15 * arg3 / 100 * stor7 / totalSupply / 15 * arg3 / 100 != stor7 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor1[stor15] > !(15 * arg3 / 100 * stor7 / totalSupply):
                                    revert with 0, 17
                                if stor1[stor15] + (15 * arg3 / 100 * stor7 / totalSupply) < stor1[stor15]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[stor15] += 15 * arg3 / 100 * stor7 / totalSupply
                            emit Transfer((15 * arg3 / 100), arg1, stor15);
                        if not arg3 * stor7 / totalSupply / 100:
                            if not arg3 / 100:
                                if 0 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 0:
                                    revert with 0, 17
                                if totalFees > -1:
                                    revert with 0, 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 and 15 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if 15 * arg3 / 100 / arg3 / 100 != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 0:
                                    revert with 0, 17
                                if totalFees > !(15 * arg3 / 100):
                                    revert with 0, 17
                                if totalFees + (15 * arg3 / 100) < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += 15 * arg3 / 100
                        else:
                            if arg3 * stor7 / totalSupply / 100 and 15 > -1 / arg3 * stor7 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor7 / totalSupply / 100:
                                revert with 0, 18
                            if 15 * arg3 * stor7 / totalSupply / 100 / arg3 * stor7 / totalSupply / 100 != 15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg3 / 100:
                                if 15 * arg3 * stor7 / totalSupply / 100 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 15 * arg3 * stor7 / totalSupply / 100:
                                    revert with 0, 17
                                stor7 += -15 * arg3 * stor7 / totalSupply / 100
                                if totalFees > -1:
                                    revert with 0, 17
                                if totalFees < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 and 15 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if 15 * arg3 / 100 / arg3 / 100 != 15:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 15 * arg3 * stor7 / totalSupply / 100 > stor7:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor7 < 15 * arg3 * stor7 / totalSupply / 100:
                                    revert with 0, 17
                                stor7 += -15 * arg3 * stor7 / totalSupply / 100
                                if totalFees > !(15 * arg3 / 100):
                                    revert with 0, 17
                                if totalFees + (15 * arg3 / 100) < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += 15 * arg3 / 100
                        if not arg3 * stor7 / totalSupply / 100:
                            if stor1[address(arg2)] > -1:
                                revert with 0, 17
                            if stor1[address(arg2)] < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 * stor7 / totalSupply / 100 and 70 > -1 / arg3 * stor7 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor7 / totalSupply / 100:
                                revert with 0, 18
                            if 70 * arg3 * stor7 / totalSupply / 100 / arg3 * stor7 / totalSupply / 100 != 70:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor1[address(arg2)] > !(70 * arg3 * stor7 / totalSupply / 100):
                                revert with 0, 17
                            if stor1[address(arg2)] + (70 * arg3 * stor7 / totalSupply / 100) < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg2)] += 70 * arg3 * stor7 / totalSupply / 100
                    if not arg3 / 100:
                        emit Transfer(0, arg1, arg2);
                    else:
                        if arg3 / 100 and 70 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if 70 * arg3 / 100 / arg3 / 100 != 70:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer((70 * arg3 / 100), arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[744 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 4)))))
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
