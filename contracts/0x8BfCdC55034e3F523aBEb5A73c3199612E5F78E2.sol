contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_045ae121(?) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 8682] = arg6.length
    mem[ceil32(arg5.length) + 8714 len arg6.length] = arg6[all]
    mem[arg6.length + ceil32(arg5.length) + 8714] = 0
    create contract with 0 wei
                    code: code.data[525 len 8362], address(arg1), address(arg2), address(arg3), arg4, 192, ceil32(arg5.length) + 224, arg5.length, arg5[all], 0, mem[arg5.length + 8714 len ceil32(arg5.length) + ceil32(arg6.length) - arg5.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
