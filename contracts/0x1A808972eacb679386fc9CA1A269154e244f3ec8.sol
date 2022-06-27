contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
address _owner;
address stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor8;
uint256 totalFees;
array of struct stor10;
array of struct stor11;
uint256 decimals;
uint256 sub_e5faf26f;
uint256 sub_13ab800b;
uint256 sub_439e1c86;
address stor16;
array of address stor17;
mapping of uint8 stor18;
address uniswapV2PairAddress;

function totalFees() {
    return totalFees
}

function sub_13ab800b(?) {
    return sub_13ab800b
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_439e1c86(?) {
    return sub_439e1c86
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function sub_84db3f22(?) {
    return stor17.length
}

function owner() {
    return _owner
}

function sub_910a8747(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
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

function sub_e5faf26f(?) {
    return sub_e5faf26f
}

function isBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function sub_c31bfa18(?) {
    if not stor17.length:
        revert with 0, 'SafeMath: modulo by zero'
    return (block.timestamp % stor17.length)
}

function sub_0d184d14(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    sub_13ab800b = arg1
}

function sub_0d42b762(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    sub_e5faf26f = arg1
}

function sub_d05b38eb(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    sub_439e1c86 = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function sub_5544baab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function sub_f5b1e8a0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
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
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor8 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor8 / totalSupply)
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

function symbol() {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11.length):
                if 31 < uint255(stor11.length) * 0.5:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor11.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(uint255(stor11.length) * 0.5) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11.length):
            if 31 < uint255(stor11.length) * 0.5:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while (uint255(stor11.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
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
    require not stor6[address(arg1)]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if stor5[address(arg1)]:
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
            if arg3 and stor8 / totalSupply > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                revert with 0, 17
            stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
            if not arg3 * stor8 / totalSupply / 100:
                if stor2[address(arg2)] > -1:
                    revert with 0, 17
                if stor2[address(arg2)] < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                    revert with 0, 17
                if not arg3 * stor8 / totalSupply / 100:
                    revert with 0, 18
                if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                    revert with 0, 17
                if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
        if not stor18[address(arg2)]:
            stor18[address(arg2)] = 1
            stor17.length++
            stor17[stor17.length] = arg2
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
    else:
        if stor5[address(arg2)]:
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
                if arg3 and stor8 / totalSupply > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                    revert with 0, 17
                stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                if not arg3 * stor8 / totalSupply / 100:
                    if stor2[address(arg2)] > -1:
                        revert with 0, 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                        revert with 0, 17
                    if not arg3 * stor8 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                        revert with 0, 17
                    if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
            if not stor18[address(arg2)]:
                stor18[address(arg2)] = 1
                stor17.length++
                stor17[stor17.length] = arg2
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
        else:
            if uniswapV2PairAddress == arg1:
                if not arg3:
                    if 0 > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < 0:
                        revert with 0, 17
                    if not arg3 / 100:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, stor16);
                    else:
                        if arg3 / 100 and sub_439e1c86 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if arg3 / 100 * sub_439e1c86 / arg3 / 100 != sub_439e1c86:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg3 / 100 * sub_439e1c86:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg3 / 100 * sub_439e1c86:
                                revert with 0, 17
                            if not arg3 / 100 * sub_439e1c86:
                                revert with 0, 18
                            if arg3 / 100 * sub_439e1c86 * stor8 / totalSupply / arg3 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor16] > !(arg3 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                revert with 0, 17
                            if stor2[stor16] + (arg3 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor16] += arg3 / 100 * sub_439e1c86 * stor8 / totalSupply
                        emit Transfer((arg3 / 100 * sub_439e1c86), arg1, stor16);
                    if 100 < sub_439e1c86:
                        revert with 0, 17
                    if stor2[address(arg2)] > -1:
                        revert with 0, 17
                    if stor2[address(arg2)] < stor2[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg3 and stor8 / totalSupply > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                        revert with 0, 17
                    stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                    if not arg3 / 100:
                        if stor2[stor16] > -1:
                            revert with 0, 17
                        if stor2[stor16] < stor2[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, stor16);
                    else:
                        if arg3 / 100 and sub_439e1c86 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if arg3 / 100 * sub_439e1c86 / arg3 / 100 != sub_439e1c86:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg3 / 100 * sub_439e1c86:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg3 / 100 * sub_439e1c86:
                                revert with 0, 17
                            if not arg3 / 100 * sub_439e1c86:
                                revert with 0, 18
                            if arg3 / 100 * sub_439e1c86 * stor8 / totalSupply / arg3 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[stor16] > !(arg3 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                revert with 0, 17
                            if stor2[stor16] + (arg3 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[stor16] += arg3 / 100 * sub_439e1c86 * stor8 / totalSupply
                        emit Transfer((arg3 / 100 * sub_439e1c86), arg1, stor16);
                    if 100 < sub_439e1c86:
                        revert with 0, 17
                    if not arg3 * stor8 / totalSupply / 100:
                        if stor2[address(arg2)] > -1:
                            revert with 0, 17
                        if stor2[address(arg2)] < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 * stor8 / totalSupply / 100 and -sub_439e1c86 + 100 > -1 / arg3 * stor8 / totalSupply / 100:
                            revert with 0, 17
                        if not arg3 * stor8 / totalSupply / 100:
                            revert with 0, 18
                        if (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100) / arg3 * stor8 / totalSupply / 100 != -sub_439e1c86 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg2)] > !((100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100)):
                            revert with 0, 17
                        if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg2)] = stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100)
                if not arg3 / 100:
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 / 100 and -sub_439e1c86 + 100 > -1 / arg3 / 100:
                        revert with 0, 17
                    if not arg3 / 100:
                        revert with 0, 18
                    if (100 * arg3 / 100) - (sub_439e1c86 * arg3 / 100) / arg3 / 100 != -sub_439e1c86 + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    emit Transfer(((100 * arg3 / 100) - (sub_439e1c86 * arg3 / 100)), arg1, arg2);
                if not stor18[address(arg2)]:
                    stor18[address(arg2)] = 1
                    stor17.length++
                    stor17[stor17.length] = arg2
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
            else:
                if uniswapV2PairAddress != arg2:
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
                        if arg3 and stor8 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                        if not arg3 * stor8 / totalSupply / 100:
                            if stor2[address(arg2)] > -1:
                                revert with 0, 17
                            if stor2[address(arg2)] < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor8 / totalSupply / 100:
                                revert with 0, 18
                            if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                                revert with 0, 17
                            if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
                    if not stor18[address(arg2)]:
                        stor18[address(arg2)] = 1
                        stor17.length++
                        stor17[stor17.length] = arg2
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                else:
                    if not arg3:
                        if 0 > stor2[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(arg1)] < 0:
                            revert with 0, 17
                        if not arg3 / 100:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor16);
                        else:
                            if arg3 / 100 and sub_13ab800b > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if arg3 / 100 * sub_13ab800b / arg3 / 100 != sub_13ab800b:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg3 / 100 * sub_13ab800b:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg3 / 100 * sub_13ab800b:
                                    revert with 0, 17
                                if not arg3 / 100 * sub_13ab800b:
                                    revert with 0, 18
                                if arg3 / 100 * sub_13ab800b * stor8 / totalSupply / arg3 / 100 * sub_13ab800b != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor16] > !(arg3 / 100 * sub_13ab800b * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor16] + (arg3 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor16] += arg3 / 100 * sub_13ab800b * stor8 / totalSupply
                            emit Transfer((arg3 / 100 * sub_13ab800b), arg1, stor16);
                        if not stor17.length:
                            revert with 0, 'SafeMath: modulo by zero'
                        if block.timestamp % stor17.length >= stor17.length:
                            revert with 0, 50
                        if not arg3 / 100:
                            if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                revert with 0, 17
                            if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor17[block.timestamp % stor17.length]);
                        else:
                            if arg3 / 100 and sub_e5faf26f > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if arg3 / 100 * sub_e5faf26f / arg3 / 100 != sub_e5faf26f:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg3 / 100 * sub_e5faf26f:
                                if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg3 / 100 * sub_e5faf26f:
                                    revert with 0, 17
                                if not arg3 / 100 * sub_e5faf26f:
                                    revert with 0, 18
                                if arg3 / 100 * sub_e5faf26f * stor8 / totalSupply / arg3 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor17[block.timestamp % stor17.length]] > !(arg3 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] + (arg3 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor17[block.timestamp % stor17.length]] += arg3 / 100 * sub_e5faf26f * stor8 / totalSupply
                            emit Transfer((arg3 / 100 * sub_e5faf26f), arg1, stor17[block.timestamp % stor17.length]);
                        if sub_13ab800b > !sub_e5faf26f:
                            revert with 0, 17
                        if 100 < sub_13ab800b + sub_e5faf26f:
                            revert with 0, 17
                        if stor2[address(arg2)] > -1:
                            revert with 0, 17
                        if stor2[address(arg2)] < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 and stor8 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                        if not arg3 / 100:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor16);
                        else:
                            if arg3 / 100 and sub_13ab800b > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if arg3 / 100 * sub_13ab800b / arg3 / 100 != sub_13ab800b:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg3 / 100 * sub_13ab800b:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg3 / 100 * sub_13ab800b:
                                    revert with 0, 17
                                if not arg3 / 100 * sub_13ab800b:
                                    revert with 0, 18
                                if arg3 / 100 * sub_13ab800b * stor8 / totalSupply / arg3 / 100 * sub_13ab800b != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor16] > !(arg3 / 100 * sub_13ab800b * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor16] + (arg3 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor16] += arg3 / 100 * sub_13ab800b * stor8 / totalSupply
                            emit Transfer((arg3 / 100 * sub_13ab800b), arg1, stor16);
                        if not stor17.length:
                            revert with 0, 'SafeMath: modulo by zero'
                        if block.timestamp % stor17.length >= stor17.length:
                            revert with 0, 50
                        if not arg3 / 100:
                            if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                revert with 0, 17
                            if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, stor17[block.timestamp % stor17.length]);
                        else:
                            if arg3 / 100 and sub_e5faf26f > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if arg3 / 100 * sub_e5faf26f / arg3 / 100 != sub_e5faf26f:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg3 / 100 * sub_e5faf26f:
                                if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg3 / 100 * sub_e5faf26f:
                                    revert with 0, 17
                                if not arg3 / 100 * sub_e5faf26f:
                                    revert with 0, 18
                                if arg3 / 100 * sub_e5faf26f * stor8 / totalSupply / arg3 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor17[block.timestamp % stor17.length]] > !(arg3 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] + (arg3 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor17[block.timestamp % stor17.length]] += arg3 / 100 * sub_e5faf26f * stor8 / totalSupply
                            emit Transfer((arg3 / 100 * sub_e5faf26f), arg1, stor17[block.timestamp % stor17.length]);
                        if sub_13ab800b > !sub_e5faf26f:
                            revert with 0, 17
                        if 100 < sub_13ab800b + sub_e5faf26f:
                            revert with 0, 17
                        if not arg3 * stor8 / totalSupply / 100:
                            if stor2[address(arg2)] > -1:
                                revert with 0, 17
                            if stor2[address(arg2)] < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 * stor8 / totalSupply / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor8 / totalSupply / 100:
                                revert with 0, 18
                            if (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100) / arg3 * stor8 / totalSupply / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(arg2)] > !((100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100)):
                                revert with 0, 17
                            if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg2)] = stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100)
                    if not arg3 / 100:
                        emit Transfer(0, arg1, arg2);
                    else:
                        if arg3 / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg3 / 100:
                            revert with 0, 17
                        if not arg3 / 100:
                            revert with 0, 18
                        if (100 * arg3 / 100) - (sub_13ab800b * arg3 / 100) - (sub_e5faf26f * arg3 / 100) / arg3 / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer(((100 * arg3 / 100) - (sub_13ab800b * arg3 / 100) - (sub_e5faf26f * arg3 / 100)), arg1, arg2);
                    if not stor18[address(arg2)]:
                        stor18[address(arg2)] = 1
                        stor17.length++
                        stor17[stor17.length] = arg2
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[616 len 24] >> 64, 0
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x5544baab(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x910a8747(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x5544baab(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor6[address(arg1)] = 1
                if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                    if unknown_0x84db3f22(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return stor17.length
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return _owner
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor2[address(arg1)] > stor8:
                    revert with 0, 'Amount must be less than total reflections'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor8 / totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                return (stor2[address(arg1)] / stor8 / totalSupply)
            if unknown_0x910a8747(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor18[arg1])
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                    require unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        if stor1 != msg.sender:
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
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11.length):
                        if 31 < uint255(stor11.length) * 0.5:
                            mem[160] = uint256(stor11.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor11.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)])
                        mem[160] = 256 * stor11.length.field_8
                else:
                    if bool(stor11.length) == stor11.length.field_1 < 32:
                        revert with 0, 34
                    if stor11.length.field_1:
                        if 31 < stor11.length.field_1:
                            mem[160] = uint256(stor11.field_0)
                            idx = 160
                            s = 0
                            while stor11.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)])
                        mem[160] = 256 * stor11.length.field_8
                mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[160 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor11.length):
                    if 31 < uint255(stor11.length) * 0.5:
                        mem[160] = uint256(stor11.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor11.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)])
                    mem[160] = 256 * stor11.length.field_8
            else:
                if bool(stor11.length) == stor11.length.field_1 < 32:
                    revert with 0, 34
                if stor11.length.field_1:
                    if 31 < stor11.length.field_1:
                        mem[160] = uint256(stor11.field_0)
                        idx = 160
                        s = 0
                        while stor11.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor11[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)])
                    mem[160] = 256 * stor11.length.field_8
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[160 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) > stor11.length.field_1:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0
            return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 224 len 2 * ceil32(stor11.length.field_1)]), 
        if unknown_0xdd62ed3e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            if unknown_0xe5faf26f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_e5faf26f
            if unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    if stor1 != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                stor5[address(arg1)] = 0
            else:
                if unknown_0xee97dec2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor18[address(arg1)])
                require unknown_0xf5b1e8a0(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    if stor1 != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                stor6[address(arg1)] = 0
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _owner
            if unknown_0xc31bfa18(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not stor17.length:
                    revert with 0, 'SafeMath: modulo by zero'
                return (block.timestamp % stor17.length)
            require unknown_0xd05b38eb(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if _owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            sub_439e1c86 = arg1
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(arg1):
            revert with 0, 'ERC20: transfer to the zero address'
        if arg2 <= 0:
            revert with 0, 'Transfer amount must be greater than zero'
        require not stor6[address(msg.sender)]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if stor5[address(msg.sender)]:
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
                if arg2 and stor8 / totalSupply > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor8 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg2 * stor8 / totalSupply:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                if not arg2 * stor8 / totalSupply / 100:
                    if stor2[address(arg1)] > -1:
                        revert with 0, 17
                    if stor2[address(arg1)] < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * stor8 / totalSupply / 100 and 100 > -1 / arg2 * stor8 / totalSupply / 100:
                        revert with 0, 17
                    if not arg2 * stor8 / totalSupply / 100:
                        revert with 0, 18
                    if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if stor2[address(arg1)] > !(100 * arg2 * stor8 / totalSupply / 100):
                        revert with 0, 17
                    if stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor2[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
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
            if stor5[address(arg1)]:
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
                    if arg2 and stor8 / totalSupply > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 * stor8 / totalSupply > stor2[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(msg.sender)] < arg2 * stor8 / totalSupply:
                        revert with 0, 17
                    stor2[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                    if not arg2 * stor8 / totalSupply / 100:
                        if stor2[address(arg1)] > -1:
                            revert with 0, 17
                        if stor2[address(arg1)] < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * stor8 / totalSupply / 100 and 100 > -1 / arg2 * stor8 / totalSupply / 100:
                            revert with 0, 17
                        if not arg2 * stor8 / totalSupply / 100:
                            revert with 0, 18
                        if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg1)] > !(100 * arg2 * stor8 / totalSupply / 100):
                            revert with 0, 17
                        if stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
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
                if uniswapV2PairAddress == msg.sender:
                    if not arg2:
                        if 0 > stor2[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        if not arg2 / 100:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor16);
                        else:
                            if arg2 / 100 and sub_439e1c86 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if arg2 / 100 * sub_439e1c86 / arg2 / 100 != sub_439e1c86:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg2 / 100 * sub_439e1c86:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg2 / 100 * sub_439e1c86:
                                    revert with 0, 17
                                if not arg2 / 100 * sub_439e1c86:
                                    revert with 0, 18
                                if arg2 / 100 * sub_439e1c86 * stor8 / totalSupply / arg2 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor16] > !(arg2 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor16] + (arg2 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor16] += arg2 / 100 * sub_439e1c86 * stor8 / totalSupply
                            emit Transfer((arg2 / 100 * sub_439e1c86), msg.sender, stor16);
                        if 100 < sub_439e1c86:
                            revert with 0, 17
                        if stor2[address(arg1)] > -1:
                            revert with 0, 17
                        if stor2[address(arg1)] < stor2[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 and stor8 / totalSupply > -1 / arg2:
                            revert with 0, 17
                        if not arg2:
                            revert with 0, 18
                        if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 * stor8 / totalSupply > stor2[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(msg.sender)] < arg2 * stor8 / totalSupply:
                            revert with 0, 17
                        stor2[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                        if not arg2 / 100:
                            if stor2[stor16] > -1:
                                revert with 0, 17
                            if stor2[stor16] < stor2[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, stor16);
                        else:
                            if arg2 / 100 and sub_439e1c86 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if arg2 / 100 * sub_439e1c86 / arg2 / 100 != sub_439e1c86:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg2 / 100 * sub_439e1c86:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg2 / 100 * sub_439e1c86:
                                    revert with 0, 17
                                if not arg2 / 100 * sub_439e1c86:
                                    revert with 0, 18
                                if arg2 / 100 * sub_439e1c86 * stor8 / totalSupply / arg2 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[stor16] > !(arg2 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                    revert with 0, 17
                                if stor2[stor16] + (arg2 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[stor16] += arg2 / 100 * sub_439e1c86 * stor8 / totalSupply
                            emit Transfer((arg2 / 100 * sub_439e1c86), msg.sender, stor16);
                        if 100 < sub_439e1c86:
                            revert with 0, 17
                        if not arg2 * stor8 / totalSupply / 100:
                            if stor2[address(arg1)] > -1:
                                revert with 0, 17
                            if stor2[address(arg1)] < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * stor8 / totalSupply / 100 and -sub_439e1c86 + 100 > -1 / arg2 * stor8 / totalSupply / 100:
                                revert with 0, 17
                            if not arg2 * stor8 / totalSupply / 100:
                                revert with 0, 18
                            if (100 * arg2 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg2 * stor8 / totalSupply / 100) / arg2 * stor8 / totalSupply / 100 != -sub_439e1c86 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(arg1)] > !((100 * arg2 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg2 * stor8 / totalSupply / 100)):
                                revert with 0, 17
                            if stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg2 * stor8 / totalSupply / 100) < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg1)] = stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg2 * stor8 / totalSupply / 100)
                    if not arg2 / 100:
                        emit Transfer(0, msg.sender, address(arg1));
                    else:
                        if arg2 / 100 and -sub_439e1c86 + 100 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if (100 * arg2 / 100) - (sub_439e1c86 * arg2 / 100) / arg2 / 100 != -sub_439e1c86 + 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        emit Transfer(((100 * arg2 / 100) - (sub_439e1c86 * arg2 / 100)), msg.sender, address(arg1));
                else:
                    if uniswapV2PairAddress != address(arg1):
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
                            if arg2 and stor8 / totalSupply > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * stor8 / totalSupply > stor2[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor2[address(msg.sender)] < arg2 * stor8 / totalSupply:
                                revert with 0, 17
                            stor2[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                            if not arg2 * stor8 / totalSupply / 100:
                                if stor2[address(arg1)] > -1:
                                    revert with 0, 17
                                if stor2[address(arg1)] < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 * stor8 / totalSupply / 100 and 100 > -1 / arg2 * stor8 / totalSupply / 100:
                                    revert with 0, 17
                                if not arg2 * stor8 / totalSupply / 100:
                                    revert with 0, 18
                                if 100 * arg2 * stor8 / totalSupply / 100 / arg2 * stor8 / totalSupply / 100 != 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[address(arg1)] > !(100 * arg2 * stor8 / totalSupply / 100):
                                    revert with 0, 17
                                if stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] += 100 * arg2 * stor8 / totalSupply / 100
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
                        if not arg2:
                            if 0 > stor2[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor2[address(msg.sender)] < 0:
                                revert with 0, 17
                            if not arg2 / 100:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, stor16);
                            else:
                                if arg2 / 100 and sub_13ab800b > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if arg2 / 100 * sub_13ab800b / arg2 / 100 != sub_13ab800b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2 / 100 * sub_13ab800b:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg2 / 100 * sub_13ab800b:
                                        revert with 0, 17
                                    if not arg2 / 100 * sub_13ab800b:
                                        revert with 0, 18
                                    if arg2 / 100 * sub_13ab800b * stor8 / totalSupply / arg2 / 100 * sub_13ab800b != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor16] > !(arg2 / 100 * sub_13ab800b * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor16] + (arg2 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor16] += arg2 / 100 * sub_13ab800b * stor8 / totalSupply
                                emit Transfer((arg2 / 100 * sub_13ab800b), msg.sender, stor16);
                            if not stor17.length:
                                revert with 0, 'SafeMath: modulo by zero'
                            if block.timestamp % stor17.length >= stor17.length:
                                revert with 0, 50
                            if not arg2 / 100:
                                if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, stor17[block.timestamp % stor17.length]);
                            else:
                                if arg2 / 100 and sub_e5faf26f > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if arg2 / 100 * sub_e5faf26f / arg2 / 100 != sub_e5faf26f:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2 / 100 * sub_e5faf26f:
                                    if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg2 / 100 * sub_e5faf26f:
                                        revert with 0, 17
                                    if not arg2 / 100 * sub_e5faf26f:
                                        revert with 0, 18
                                    if arg2 / 100 * sub_e5faf26f * stor8 / totalSupply / arg2 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor17[block.timestamp % stor17.length]] > !(arg2 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] + (arg2 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor17[block.timestamp % stor17.length]] += arg2 / 100 * sub_e5faf26f * stor8 / totalSupply
                                emit Transfer((arg2 / 100 * sub_e5faf26f), msg.sender, stor17[block.timestamp % stor17.length]);
                            if sub_13ab800b > !sub_e5faf26f:
                                revert with 0, 17
                            if 100 < sub_13ab800b + sub_e5faf26f:
                                revert with 0, 17
                            if stor2[address(arg1)] > -1:
                                revert with 0, 17
                            if stor2[address(arg1)] < stor2[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 and stor8 / totalSupply > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if arg2 * stor8 / totalSupply / arg2 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg2 * stor8 / totalSupply > stor2[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor2[address(msg.sender)] < arg2 * stor8 / totalSupply:
                                revert with 0, 17
                            stor2[address(msg.sender)] += -1 * arg2 * stor8 / totalSupply
                            if not arg2 / 100:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, stor16);
                            else:
                                if arg2 / 100 and sub_13ab800b > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if arg2 / 100 * sub_13ab800b / arg2 / 100 != sub_13ab800b:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2 / 100 * sub_13ab800b:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg2 / 100 * sub_13ab800b:
                                        revert with 0, 17
                                    if not arg2 / 100 * sub_13ab800b:
                                        revert with 0, 18
                                    if arg2 / 100 * sub_13ab800b * stor8 / totalSupply / arg2 / 100 * sub_13ab800b != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor16] > !(arg2 / 100 * sub_13ab800b * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor16] + (arg2 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor16] += arg2 / 100 * sub_13ab800b * stor8 / totalSupply
                                emit Transfer((arg2 / 100 * sub_13ab800b), msg.sender, stor16);
                            if not stor17.length:
                                revert with 0, 'SafeMath: modulo by zero'
                            if block.timestamp % stor17.length >= stor17.length:
                                revert with 0, 50
                            if not arg2 / 100:
                                if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                    revert with 0, 17
                                if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, stor17[block.timestamp % stor17.length]);
                            else:
                                if arg2 / 100 and sub_e5faf26f > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if arg2 / 100 * sub_e5faf26f / arg2 / 100 != sub_e5faf26f:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2 / 100 * sub_e5faf26f:
                                    if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg2 / 100 * sub_e5faf26f:
                                        revert with 0, 17
                                    if not arg2 / 100 * sub_e5faf26f:
                                        revert with 0, 18
                                    if arg2 / 100 * sub_e5faf26f * stor8 / totalSupply / arg2 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor17[block.timestamp % stor17.length]] > !(arg2 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] + (arg2 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor17[block.timestamp % stor17.length]] += arg2 / 100 * sub_e5faf26f * stor8 / totalSupply
                                emit Transfer((arg2 / 100 * sub_e5faf26f), msg.sender, stor17[block.timestamp % stor17.length]);
                            if sub_13ab800b > !sub_e5faf26f:
                                revert with 0, 17
                            if 100 < sub_13ab800b + sub_e5faf26f:
                                revert with 0, 17
                            if not arg2 * stor8 / totalSupply / 100:
                                if stor2[address(arg1)] > -1:
                                    revert with 0, 17
                                if stor2[address(arg1)] < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 * stor8 / totalSupply / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg2 * stor8 / totalSupply / 100:
                                    revert with 0, 17
                                if not arg2 * stor8 / totalSupply / 100:
                                    revert with 0, 18
                                if (100 * arg2 * stor8 / totalSupply / 100) - (sub_13ab800b * arg2 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg2 * stor8 / totalSupply / 100) / arg2 * stor8 / totalSupply / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[address(arg1)] > !((100 * arg2 * stor8 / totalSupply / 100) - (sub_13ab800b * arg2 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg2 * stor8 / totalSupply / 100)):
                                    revert with 0, 17
                                if stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) - (sub_13ab800b * arg2 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg2 * stor8 / totalSupply / 100) < stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg1)] = stor2[address(arg1)] + (100 * arg2 * stor8 / totalSupply / 100) - (sub_13ab800b * arg2 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg2 * stor8 / totalSupply / 100)
                        if not arg2 / 100:
                            emit Transfer(0, msg.sender, address(arg1));
                        else:
                            if arg2 / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if (100 * arg2 / 100) - (sub_13ab800b * arg2 / 100) - (sub_e5faf26f * arg2 / 100) / arg2 / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            emit Transfer(((100 * arg2 / 100) - (sub_13ab800b * arg2 / 100) - (sub_e5faf26f * arg2 / 100)), msg.sender, address(arg1));
        if not stor18[address(arg1)]:
            stor18[address(arg1)] = 1
            stor17.length++
            stor17[stor17.length] = address(arg1)
    else:
        if unknown_0x2d838119(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x437823ec(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x437823ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor5[address(arg1)] = 1
                if unknown_0x439e1c86(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_439e1c86
                if unknown_0x48c54b9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if _owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    call _owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                require unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor5[address(arg1)])
            if unknown_0x2d838119(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if arg1 > stor8:
                    revert with 0, 'Amount must be less than total reflections'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor8 / totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                return (arg1 / stor8 / totalSupply)
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if unknown_0x340ac20f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    if stor1 != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                uniswapV2PairAddress = address(arg1)
            require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
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
            if unknown_0x13114a9d(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
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
                        return 1
                    if unknown_0x0d184d14(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if _owner != msg.sender:
                            if stor1 != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        sub_13ab800b = arg1
                    else:
                        require unknown_0x0d42b762(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if _owner != msg.sender:
                            if stor1 != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        sub_e5faf26f = arg1
                require not msg.value
                if bool(stor10.length):
                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor10.length):
                        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor10.length):
                            if 31 < uint255(stor10.length) * 0.5:
                                mem[160] = uint256(stor10.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor10.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                            mem[160] = 256 * stor10.length.field_8
                    else:
                        if bool(stor10.length) == stor10.length.field_1 < 32:
                            revert with 0, 34
                        if stor10.length.field_1:
                            if 31 < stor10.length.field_1:
                                mem[160] = uint256(stor10.field_0)
                                idx = 160
                                s = 0
                                while stor10.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                            mem[160] = 256 * stor10.length.field_8
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
                if bool(stor10.length) == stor10.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor10.length):
                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor10.length):
                        if 31 < uint255(stor10.length) * 0.5:
                            mem[160] = uint256(stor10.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor10.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)])
                        mem[160] = 256 * stor10.length.field_8
                else:
                    if bool(stor10.length) == stor10.length.field_1 < 32:
                        revert with 0, 34
                    if stor10.length.field_1:
                        if 31 < stor10.length.field_1:
                            mem[160] = uint256(stor10.field_0)
                            idx = 160
                            s = 0
                            while stor10.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)])
                        mem[160] = 256 * stor10.length.field_8
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0
                return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 224 len 2 * ceil32(stor10.length.field_1)]), 
            if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalFees
            if unknown_0x13ab800b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_13ab800b
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not address(arg1):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg2):
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            require not stor6[address(arg1)]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if stor5[address(arg1)]:
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
                    if arg3 and stor8 / totalSupply > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                        revert with 0, 17
                    stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                    if not arg3 * stor8 / totalSupply / 100:
                        if stor2[address(arg2)] > -1:
                            revert with 0, 17
                        if stor2[address(arg2)] < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                            revert with 0, 17
                        if not arg3 * stor8 / totalSupply / 100:
                            revert with 0, 18
                        if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                            revert with 0, 17
                        if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
                if not stor18[address(arg2)]:
                    stor18[address(arg2)] = 1
                    stor17.length++
                    stor17[stor17.length] = address(arg2)
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
            else:
                if stor5[address(arg2)]:
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
                        if arg3 and stor8 / totalSupply > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                        if not arg3 * stor8 / totalSupply / 100:
                            if stor2[address(arg2)] > -1:
                                revert with 0, 17
                            if stor2[address(arg2)] < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                revert with 0, 17
                            if not arg3 * stor8 / totalSupply / 100:
                                revert with 0, 18
                            if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                                revert with 0, 17
                            if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
                    if not stor18[address(arg2)]:
                        stor18[address(arg2)] = 1
                        stor17.length++
                        stor17[stor17.length] = address(arg2)
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                else:
                    if uniswapV2PairAddress == address(arg1):
                        if not arg3:
                            if 0 > stor2[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor2[address(arg1)] < 0:
                                revert with 0, 17
                            if not arg3 / 100:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, address(arg1), stor16);
                            else:
                                if arg3 / 100 and sub_439e1c86 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if arg3 / 100 * sub_439e1c86 / arg3 / 100 != sub_439e1c86:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg3 / 100 * sub_439e1c86:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg3 / 100 * sub_439e1c86:
                                        revert with 0, 17
                                    if not arg3 / 100 * sub_439e1c86:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_439e1c86 * stor8 / totalSupply / arg3 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor16] > !(arg3 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor16] + (arg3 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor16] += arg3 / 100 * sub_439e1c86 * stor8 / totalSupply
                                emit Transfer((arg3 / 100 * sub_439e1c86), address(arg1), stor16);
                            if 100 < sub_439e1c86:
                                revert with 0, 17
                            if stor2[address(arg2)] > -1:
                                revert with 0, 17
                            if stor2[address(arg2)] < stor2[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg3 and stor8 / totalSupply > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                            if not arg3 / 100:
                                if stor2[stor16] > -1:
                                    revert with 0, 17
                                if stor2[stor16] < stor2[stor16]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, address(arg1), stor16);
                            else:
                                if arg3 / 100 and sub_439e1c86 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if arg3 / 100 * sub_439e1c86 / arg3 / 100 != sub_439e1c86:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg3 / 100 * sub_439e1c86:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 / 100 * sub_439e1c86 and stor8 / totalSupply > -1 / arg3 / 100 * sub_439e1c86:
                                        revert with 0, 17
                                    if not arg3 / 100 * sub_439e1c86:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_439e1c86 * stor8 / totalSupply / arg3 / 100 * sub_439e1c86 != stor8 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[stor16] > !(arg3 / 100 * sub_439e1c86 * stor8 / totalSupply):
                                        revert with 0, 17
                                    if stor2[stor16] + (arg3 / 100 * sub_439e1c86 * stor8 / totalSupply) < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[stor16] += arg3 / 100 * sub_439e1c86 * stor8 / totalSupply
                                emit Transfer((arg3 / 100 * sub_439e1c86), address(arg1), stor16);
                            if 100 < sub_439e1c86:
                                revert with 0, 17
                            if not arg3 * stor8 / totalSupply / 100:
                                if stor2[address(arg2)] > -1:
                                    revert with 0, 17
                                if stor2[address(arg2)] < stor2[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 * stor8 / totalSupply / 100 and -sub_439e1c86 + 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                    revert with 0, 17
                                if not arg3 * stor8 / totalSupply / 100:
                                    revert with 0, 18
                                if (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100) / arg3 * stor8 / totalSupply / 100 != -sub_439e1c86 + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if stor2[address(arg2)] > !((100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100)):
                                    revert with 0, 17
                                if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor2[address(arg2)] = stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_439e1c86 * arg3 * stor8 / totalSupply / 100)
                        if not arg3 / 100:
                            emit Transfer(0, address(arg1), address(arg2));
                        else:
                            if arg3 / 100 and -sub_439e1c86 + 100 > -1 / arg3 / 100:
                                revert with 0, 17
                            if not arg3 / 100:
                                revert with 0, 18
                            if (100 * arg3 / 100) - (sub_439e1c86 * arg3 / 100) / arg3 / 100 != -sub_439e1c86 + 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            emit Transfer(((100 * arg3 / 100) - (sub_439e1c86 * arg3 / 100)), address(arg1), address(arg2));
                        if not stor18[address(arg2)]:
                            stor18[address(arg2)] = 1
                            stor17.length++
                            stor17[stor17.length] = address(arg2)
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                    else:
                        if uniswapV2PairAddress != address(arg2):
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
                                if arg3 and stor8 / totalSupply > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                                    revert with 0, 17
                                stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                                if not arg3 * stor8 / totalSupply / 100:
                                    if stor2[address(arg2)] > -1:
                                        revert with 0, 17
                                    if stor2[address(arg2)] < stor2[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 * stor8 / totalSupply / 100 and 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                        revert with 0, 17
                                    if not arg3 * stor8 / totalSupply / 100:
                                        revert with 0, 18
                                    if 100 * arg3 * stor8 / totalSupply / 100 / arg3 * stor8 / totalSupply / 100 != 100:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[address(arg2)] > !(100 * arg3 * stor8 / totalSupply / 100):
                                        revert with 0, 17
                                    if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(arg2)] += 100 * arg3 * stor8 / totalSupply / 100
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
                            if not stor18[address(arg2)]:
                                stor18[address(arg2)] = 1
                                stor17.length++
                                stor17[stor17.length] = address(arg2)
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                        else:
                            if not arg3:
                                if 0 > stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor2[address(arg1)] < 0:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), stor16);
                                else:
                                    if arg3 / 100 and sub_13ab800b > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_13ab800b / arg3 / 100 != sub_13ab800b:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not arg3 / 100 * sub_13ab800b:
                                        if stor2[stor16] > -1:
                                            revert with 0, 17
                                        if stor2[stor16] < stor2[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg3 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg3 / 100 * sub_13ab800b:
                                            revert with 0, 17
                                        if not arg3 / 100 * sub_13ab800b:
                                            revert with 0, 18
                                        if arg3 / 100 * sub_13ab800b * stor8 / totalSupply / arg3 / 100 * sub_13ab800b != stor8 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor16] > !(arg3 / 100 * sub_13ab800b * stor8 / totalSupply):
                                            revert with 0, 17
                                        if stor2[stor16] + (arg3 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[stor16] += arg3 / 100 * sub_13ab800b * stor8 / totalSupply
                                    emit Transfer((arg3 / 100 * sub_13ab800b), address(arg1), stor16);
                                if not stor17.length:
                                    revert with 0, 'SafeMath: modulo by zero'
                                if block.timestamp % stor17.length >= stor17.length:
                                    revert with 0, 50
                                if not arg3 / 100:
                                    if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), stor17[block.timestamp % stor17.length]);
                                else:
                                    if arg3 / 100 and sub_e5faf26f > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_e5faf26f / arg3 / 100 != sub_e5faf26f:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not arg3 / 100 * sub_e5faf26f:
                                        if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                            revert with 0, 17
                                        if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg3 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg3 / 100 * sub_e5faf26f:
                                            revert with 0, 17
                                        if not arg3 / 100 * sub_e5faf26f:
                                            revert with 0, 18
                                        if arg3 / 100 * sub_e5faf26f * stor8 / totalSupply / arg3 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor17[block.timestamp % stor17.length]] > !(arg3 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                            revert with 0, 17
                                        if stor2[stor17[block.timestamp % stor17.length]] + (arg3 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[stor17[block.timestamp % stor17.length]] += arg3 / 100 * sub_e5faf26f * stor8 / totalSupply
                                    emit Transfer((arg3 / 100 * sub_e5faf26f), address(arg1), stor17[block.timestamp % stor17.length]);
                                if sub_13ab800b > !sub_e5faf26f:
                                    revert with 0, 17
                                if 100 < sub_13ab800b + sub_e5faf26f:
                                    revert with 0, 17
                                if stor2[address(arg2)] > -1:
                                    revert with 0, 17
                                if stor2[address(arg2)] < stor2[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg3 and stor8 / totalSupply > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * stor8 / totalSupply / arg3 != stor8 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg3 * stor8 / totalSupply > stor2[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor2[address(arg1)] < arg3 * stor8 / totalSupply:
                                    revert with 0, 17
                                stor2[address(arg1)] += -1 * arg3 * stor8 / totalSupply
                                if not arg3 / 100:
                                    if stor2[stor16] > -1:
                                        revert with 0, 17
                                    if stor2[stor16] < stor2[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), stor16);
                                else:
                                    if arg3 / 100 and sub_13ab800b > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_13ab800b / arg3 / 100 != sub_13ab800b:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not arg3 / 100 * sub_13ab800b:
                                        if stor2[stor16] > -1:
                                            revert with 0, 17
                                        if stor2[stor16] < stor2[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg3 / 100 * sub_13ab800b and stor8 / totalSupply > -1 / arg3 / 100 * sub_13ab800b:
                                            revert with 0, 17
                                        if not arg3 / 100 * sub_13ab800b:
                                            revert with 0, 18
                                        if arg3 / 100 * sub_13ab800b * stor8 / totalSupply / arg3 / 100 * sub_13ab800b != stor8 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor16] > !(arg3 / 100 * sub_13ab800b * stor8 / totalSupply):
                                            revert with 0, 17
                                        if stor2[stor16] + (arg3 / 100 * sub_13ab800b * stor8 / totalSupply) < stor2[stor16]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[stor16] += arg3 / 100 * sub_13ab800b * stor8 / totalSupply
                                    emit Transfer((arg3 / 100 * sub_13ab800b), address(arg1), stor16);
                                if not stor17.length:
                                    revert with 0, 'SafeMath: modulo by zero'
                                if block.timestamp % stor17.length >= stor17.length:
                                    revert with 0, 50
                                if not arg3 / 100:
                                    if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                        revert with 0, 17
                                    if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(arg1), stor17[block.timestamp % stor17.length]);
                                else:
                                    if arg3 / 100 and sub_e5faf26f > -1 / arg3 / 100:
                                        revert with 0, 17
                                    if not arg3 / 100:
                                        revert with 0, 18
                                    if arg3 / 100 * sub_e5faf26f / arg3 / 100 != sub_e5faf26f:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not arg3 / 100 * sub_e5faf26f:
                                        if stor2[stor17[block.timestamp % stor17.length]] > -1:
                                            revert with 0, 17
                                        if stor2[stor17[block.timestamp % stor17.length]] < stor2[stor17[block.timestamp % stor17.length]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg3 / 100 * sub_e5faf26f and stor8 / totalSupply > -1 / arg3 / 100 * sub_e5faf26f:
                                            revert with 0, 17
                                        if not arg3 / 100 * sub_e5faf26f:
                                            revert with 0, 18
                                        if arg3 / 100 * sub_e5faf26f * stor8 / totalSupply / arg3 / 100 * sub_e5faf26f != stor8 / totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if stor2[stor17[block.timestamp % stor17.length]] > !(arg3 / 100 * sub_e5faf26f * stor8 / totalSupply):
                                            revert with 0, 17
                                        if stor2[stor17[block.timestamp % stor17.length]] + (arg3 / 100 * sub_e5faf26f * stor8 / totalSupply) < stor2[stor17[block.timestamp % stor17.length]]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        stor2[stor17[block.timestamp % stor17.length]] += arg3 / 100 * sub_e5faf26f * stor8 / totalSupply
                                    emit Transfer((arg3 / 100 * sub_e5faf26f), address(arg1), stor17[block.timestamp % stor17.length]);
                                if sub_13ab800b > !sub_e5faf26f:
                                    revert with 0, 17
                                if 100 < sub_13ab800b + sub_e5faf26f:
                                    revert with 0, 17
                                if not arg3 * stor8 / totalSupply / 100:
                                    if stor2[address(arg2)] > -1:
                                        revert with 0, 17
                                    if stor2[address(arg2)] < stor2[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg3 * stor8 / totalSupply / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg3 * stor8 / totalSupply / 100:
                                        revert with 0, 17
                                    if not arg3 * stor8 / totalSupply / 100:
                                        revert with 0, 18
                                    if (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100) / arg3 * stor8 / totalSupply / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if stor2[address(arg2)] > !((100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100)):
                                        revert with 0, 17
                                    if stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100) < stor2[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor2[address(arg2)] = stor2[address(arg2)] + (100 * arg3 * stor8 / totalSupply / 100) - (sub_13ab800b * arg3 * stor8 / totalSupply / 100) - (sub_e5faf26f * arg3 * stor8 / totalSupply / 100)
                            if not arg3 / 100:
                                emit Transfer(0, address(arg1), address(arg2));
                            else:
                                if arg3 / 100 and -sub_13ab800b + -sub_e5faf26f + 100 > -1 / arg3 / 100:
                                    revert with 0, 17
                                if not arg3 / 100:
                                    revert with 0, 18
                                if (100 * arg3 / 100) - (sub_13ab800b * arg3 / 100) - (sub_e5faf26f * arg3 / 100) / arg3 / 100 != -sub_13ab800b + -sub_e5faf26f + 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                emit Transfer(((100 * arg3 / 100) - (sub_13ab800b * arg3 / 100) - (sub_e5faf26f * arg3 / 100)), address(arg1), address(arg2));
                            if not stor18[address(arg2)]:
                                stor18[address(arg2)] = 1
                                stor17.length++
                                stor17[stor17.length] = address(arg2)
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[648 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 4)))))
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
