contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_fac9e0ae(?) {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_ebc8b19d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[96] = 10^18
    mem[ceil32(arg2.length) + 224] = arg3.length
    mem[ceil32(arg2.length) + 256 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 256] = 0
    emit Locked(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                10^18,
                96,
                ceil32(arg2.length) + 128,
                arg2.length,
                arg2[all],
                0,
                mem[arg2.length + 256 len ceil32(arg2.length) - arg2.length],
                arg3[all],
                mem[ceil32(arg2.length) + arg3.length + 256 len ceil32(arg3.length) - arg3.length],
                0,
                msg.sender,
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 0
    call stor0 with:
       value msg.value wei
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        revert with 0, 'sdsd'
    if not return_data.size:
        mem[ceil32(arg2.length) + 224] = arg3.length
        mem[ceil32(arg2.length) + 256 len arg3.length] = arg3[all]
        mem[ceil32(arg2.length) + arg3.length + 256] = 0
        emit Locked(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    10^18,
                    96,
                    ceil32(arg2.length) + 128,
                    arg2.length,
                    arg2[all],
                    0,
                    mem[arg2.length + 256 len ceil32(arg2.length) - arg2.length],
                    arg3[all],
                    mem[ceil32(arg2.length) + arg3.length + 256 len ceil32(arg3.length) - arg3.length],
                    0,
                    msg.sender,
    else:
        mem[ceil32(return_data.size) + ceil32(arg2.length) + 225] = arg3.length
        mem[ceil32(return_data.size) + ceil32(arg2.length) + 257 len arg3.length] = arg3[all]
        mem[ceil32(return_data.size) + ceil32(arg2.length) + arg3.length + 257] = 0
        emit Locked(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    10^18,
                    96,
                    ceil32(arg2.length) + 128,
                    arg2.length,
                    arg2[all],
                    0,
                    mem[ceil32(return_data.size) + arg2.length + 257 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length],
                    0,
                    msg.sender,
}



}
