contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function create(address arg1, uint256 arg2, uint256 arg3, string arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[6528 len 37], mem[201 len 27]
    mem[ceil32(arg4.length) + 5985] = arg5.length
    mem[ceil32(arg4.length) + 6017 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 6017] = 0
    create contract with 0 wei
                    code: code.data[863 len 5665], address(arg1), arg2, arg3, msg.sender, 192, ceil32(arg4.length) + 224, arg4.length, arg4[all], 0, mem[arg4.length + 6017 len ceil32(arg4.length) + ceil32(arg5.length) - arg4.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(block.timestamp, arg1, address(create.new_address));
    return address(create.new_address)
}



}
