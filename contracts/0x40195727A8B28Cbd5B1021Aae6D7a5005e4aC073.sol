contract main {




// =====================  Runtime code  =====================


mapping of struct balanceOf;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;

function balanceOf(address arg1) {
    require msg.sender == stor4
    return balanceOf[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function doTransfer(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == stor4
    if arg2 != stor1:
        require balanceOf[address(arg2)].field_256 == stor5
    if balanceOf[address(arg3)].field_0:
        if balanceOf[address(arg3)].field_256 != stor5:
            require uint256(balanceOf.field_0) + balanceOf[address(arg3)].field_0 >= uint256(balanceOf.field_0)
            uint256(balanceOf.field_0) += balanceOf[address(arg3)].field_0
            balanceOf[address(arg3)].field_0 = 0
    if arg2 != stor2:
        balanceOf[address(arg3)].field_256 = stor5
    else:
        require stor5 + 1 >= stor5
        balanceOf[stor2].field_256 = stor5 + 1
        balanceOf[stor3].field_256 = stor5 + 1
        balanceOf[address(arg3)].field_256 = stor5 + 1
        stor5++
    if arg1 != stor3:
        require arg4 <= balanceOf[address(arg2)].field_0
        balanceOf[address(arg2)].field_0 -= arg4
    else:
        if arg2 != stor1:
            require arg4 <= balanceOf[address(arg2)].field_0
            balanceOf[address(arg2)].field_0 -= arg4
        else:
            if arg3 != stor2:
                require arg4 <= balanceOf[address(arg2)].field_0
                balanceOf[address(arg2)].field_0 -= arg4
    require balanceOf[address(arg3)].field_0 + arg4 >= balanceOf[address(arg3)].field_0
    balanceOf[address(arg3)].field_0 += arg4
    return 1
}



}
