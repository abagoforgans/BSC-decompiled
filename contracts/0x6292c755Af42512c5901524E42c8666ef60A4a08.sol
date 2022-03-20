contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_84d0ece6(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg2 <= 0:
        revert with 0, 'ERC20Factory: INVALID_PARAMTERS'
    mem[ceil32(arg3.length) + 2940] = arg4.length
    mem[ceil32(arg3.length) + 2972 len arg4.length] = arg4[all]
    mem[arg4.length + ceil32(arg3.length) + 2972] = 0
    create contract with 0 wei
                    code: code.data[630 len 2652], msg.sender, arg1, arg2 << 248, 160, ceil32(arg3.length) + 192, arg3.length, arg3[all], 0, mem[arg3.length + 2972 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
