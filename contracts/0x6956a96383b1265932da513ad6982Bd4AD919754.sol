contract main {




// =====================  Runtime code  =====================


#
#  - sub_a010e1fd(?)
#
const sub_bc2a3da9(?) = ext_call.return_data[0]


address stor0;

function _fallback() payable {
    revert
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6a21db67(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg1:
        revert with 0, 'ttn . neb'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 0
}

function sub_ee892476(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= arg1:
        revert with 0, 'ttn . neb'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    staticcall address(arg3).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 <= 0:
        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg2) != address(ext_call.return_data[0]):
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if arg1 and 9975 > -1 / arg1:
            revert with 'NH{q', 17
        if 9975 * arg1 and ext_call.return_data[18 len 14] > -1 / 9975 * arg1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg1) - 1:
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg1):
            revert with 'NH{q', 18
        require ext_code.size(address(arg3))
        call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 9975 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * arg1), 0, address(arg4), 128, 0
    else:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if arg1 and 9975 > -1 / arg1:
            revert with 'NH{q', 17
        if 9975 * arg1 and ext_call.return_data[50 len 14] > -1 / 9975 * arg1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg1) - 1:
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg1):
            revert with 'NH{q', 18
        require ext_code.size(address(arg3))
        call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 9975 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * arg1), address(arg4), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
