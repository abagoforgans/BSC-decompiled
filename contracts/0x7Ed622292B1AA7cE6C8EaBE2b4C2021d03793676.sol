contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address sub_af3bfd40Address;
address stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_af3bfd40(?) {
    if stor2 != msg.sender:
        revert with 0, 'BEP20: not owner'
    return sub_af3bfd40Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setServiceAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'BEP20: not owner'
    sub_af3bfd40Address = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if msg.sender == stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: The address has been locked'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(msg.sender)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BEP20: The transaction amount must be less than the total amount'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if not arg2:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor7] < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, sub_af3bfd40Address);
            emit Transfer(0, msg.sender, stor7);
        else:
            require arg2
            if 4 * arg2 / arg2 != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 4 * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] + arg2 - (4 * arg2 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (4 * arg2 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor7] + (4 * arg2 / 100) < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7] += 4 * arg2 / 100
            emit Transfer((arg2 - (4 * arg2 / 100)), msg.sender, arg1);
            emit Transfer(0, msg.sender, sub_af3bfd40Address);
            emit Transfer((4 * arg2 / 100), msg.sender, stor7);
    else:
        require arg2
        if 15 * arg2 / arg2 != 15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            if 15 * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg2 - (15 * arg2 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] + arg2 - (15 * arg2 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (15 * arg2 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] + (15 * arg2 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 15 * arg2 / 100
            if balanceOf[stor7] < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer((arg2 - (15 * arg2 / 100)), msg.sender, arg1);
            emit Transfer((15 * arg2 / 100), msg.sender, sub_af3bfd40Address);
            emit Transfer(0, msg.sender, stor7);
        else:
            require arg2
            if 4 * arg2 / arg2 != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 15 * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 4 * arg2 / 100 > arg2 - (15 * arg2 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] + arg2 - (15 * arg2 / 100) - (4 * arg2 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (15 * arg2 / 100) - (4 * arg2 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] + (15 * arg2 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 15 * arg2 / 100
            if balanceOf[stor7] + (4 * arg2 / 100) < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7] += 4 * arg2 / 100
            emit Transfer((arg2 - (15 * arg2 / 100) - (4 * arg2 / 100)), msg.sender, arg1);
            emit Transfer((15 * arg2 / 100), msg.sender, sub_af3bfd40Address);
            emit Transfer((4 * arg2 / 100), msg.sender, stor7);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if arg1 == stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: The address has been locked'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if balanceOf[address(arg1)] <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BEP20: The transaction amount must be less than the total amount'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if not arg3:
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor7] < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, sub_af3bfd40Address);
            emit Transfer(0, arg1, stor7);
        else:
            require arg3
            if 4 * arg3 / arg3 != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 4 * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg2)] + arg3 - (4 * arg3 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (4 * arg3 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor7] + (4 * arg3 / 100) < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7] += 4 * arg3 / 100
            emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
            emit Transfer(0, arg1, sub_af3bfd40Address);
            emit Transfer((4 * arg3 / 100), arg1, stor7);
    else:
        require arg3
        if 15 * arg3 / arg3 != 15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg3:
            if 15 * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg3 - (15 * arg3 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] + (15 * arg3 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 15 * arg3 / 100
            if balanceOf[stor7] < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer((arg3 - (15 * arg3 / 100)), arg1, arg2);
            emit Transfer((15 * arg3 / 100), arg1, sub_af3bfd40Address);
            emit Transfer(0, arg1, stor7);
        else:
            require arg3
            if 4 * arg3 / arg3 != 4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 15 * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 4 * arg3 / 100 > arg3 - (15 * arg3 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) - (4 * arg3 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (15 * arg3 / 100) - (4 * arg3 / 100)
            if not sub_af3bfd40Address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if not stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if balanceOf[stor6] + (15 * arg3 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 15 * arg3 / 100
            if balanceOf[stor7] + (4 * arg3 / 100) < balanceOf[stor7]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor7] += 4 * arg3 / 100
            emit Transfer((arg3 - (15 * arg3 / 100) - (4 * arg3 / 100)), arg1, arg2);
            emit Transfer((15 * arg3 / 100), arg1, sub_af3bfd40Address);
            emit Transfer((4 * arg3 / 100), arg1, stor7);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
