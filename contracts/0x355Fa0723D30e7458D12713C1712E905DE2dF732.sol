contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_593887b5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require ext_code.size(stor0)
    staticcall stor0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor1)
    if address(ext_call.return_data[0]) == stor2:
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 1
        if Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) > -arg1 - 1:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) + arg1 < Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 1
        require ext_code.size(stor1)
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg2, Mask(112, 0, ext_call.return_data[0]) + arg1, Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0]:
            revert with 'NH{q', 1
        if Mask(112, 0, ext_call.return_data[32]) - ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) + arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if arg2 < 0:
            revert with 'NH{q', 1
        require ext_code.size(stor1)
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(112, 0, ext_call.return_data[32]) - (2 * ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[0]) + arg1 + arg2
    else:
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 1
        if Mask(112, 0, ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) > -arg1 - 1:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) + arg1 < Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 1
        require ext_code.size(stor1)
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg2, Mask(112, 0, ext_call.return_data[32]) + arg1, -Mask(144, 112, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -Mask(144, 112, ext_call.return_data[0]):
            revert with 'NH{q', 1
        if -Mask(144, 112, ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) + arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if arg2 < 0:
            revert with 'NH{q', 1
        require ext_code.size(stor1)
        staticcall stor1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], -Mask(144, 112, ext_call.return_data[0]) - ext_call.return_data[0], Mask(112, 0, ext_call.return_data[32]) + arg1 + arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg1:
        return 0, ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg1 <= 15 * 10^15:
        return 0, ext_call.return_data[0]
    return 1, ext_call.return_data[0]
}



}
