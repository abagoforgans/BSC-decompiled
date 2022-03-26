contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1bb4a268(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if bool(Mask(256, -uint8(arg2), uint8(arg1)) << -uint8(arg2)) == 1:
        return 1
    else:
        return 0
}

function check(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 160
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14]
    return cd[(arg1 + 132)] <= 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]
}

function run(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 160
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require (997 * cd[(arg1 + 100)]) + (1000 * ext_call.return_data[18 len 14])
    require ext_code.size(address(cd[(arg1 + 36)]))
    if address(cd[(arg1 + 164)]):
        call address(cd[(arg1 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 997 * cd[(arg1 + 100)] * Mask(112, 0, ext_call.return_data[32]) / (997 * cd[(arg1 + 100)]) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(cd[(arg1 + 164)]), 128, 0
    else:
        call address(cd[(arg1 + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 997 * cd[(arg1 + 100)] * Mask(112, 0, ext_call.return_data[32]) / (997 * cd[(arg1 + 100)]) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
