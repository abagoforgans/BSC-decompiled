contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0eb81ebe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 0
    staticcall address(arg1).mem[96 len 4] with:
            gas gas_remaining wei
           args mem[100 len arg2.length - 4]
    if not return_data.size:
        return 0, 64, 0
    return 0, 
           64,
           return_data.size,
           ext_call.return_data[0 len return_data.size],
           Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 0) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
}



}
