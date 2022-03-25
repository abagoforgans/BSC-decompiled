contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a3d1df84(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function swap(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ext_call.return_data[0]
    require 1 < ext_call.return_data[0]
    mem[160 len 1024] = Array(len=address(arg2), data=mem[192 len 960])
    return 32, 32, mem[160 len 1024]
}



}
