contract main {




// =====================  Runtime code  =====================


mapping of struct sub_4399bff6;

function sub_4399bff6(?) payable {
    require calldata.size - 4 >= 32
    return sub_4399bff6[arg1].field_0
}

function _fallback() payable {
    revert
}

function unlock(address arg1, address arg2, address arg3, uint32 arg4) payable {
    require calldata.size - 4 >= 128
    if 3600 * arg4 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x4f4c6f636b53656e643a204e4f545f4152524956494e475f554e4c4f434b54494d455f5945,
                    mem[201 len 27]
    if not sub_4399bff6[arg1][arg2][arg3][arg4].field_0:
        revert with 0, 32, 41, 0x294c6f636b53656e643a20554e4c4f434b5f414d4f554e545f53484f554c445f42455f4e4f4e5a4552, mem[301 len 23]
    sub_4399bff6[arg1][arg2][arg3][arg4].field_0 = 0
    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, sub_4399bff6[arg1][arg2][arg3][arg4].field_32
    call arg3 with:
         gas gas_remaining wei
        args sub_4399bff6[arg1][arg2][arg3][arg4].field_0, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'LockSend: TRANSFER_FAILED'
        if not arg1, Mask(96, 64, arg2) >> 64:
            revert with 0, 'LockSend: TRANSFER_FAILED'
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'LockSend: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 'LockSend: TRANSFER_FAILED'
    emit Unlock(address(arg3), sub_4399bff6[arg1][arg2][arg3][arg4].field_0, arg4, arg1, arg2);
}

function lockSend(address arg1, uint256 arg2, address arg3, uint32 arg4) payable {
    require calldata.size - 4 >= 128
    if 3600 * arg4 <= block.timestamp:
        revert with 0, 'LockSend: ALREADY_UNLOCKED'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x544c6f636b53656e643a204c4f434b45445f414d4f554e545f53484f554c445f42455f4e4f4e5a4552,
                    mem[205 len 23]
    mem[420 len 96] = Mask(32, 224, sha3(0xfe7472616e7366657246726f6d28616464726573732c616464726573732c75696e74323536)) >> 224, msg.sender, this.address, Mask(224, 32, arg2) >> 32
    call arg3 with:
       funct uint32(this.address)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[516 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'LockSend: TRANSFER_TO_ME_FAILED'
        if not msg.sender, Mask(96, 64, arg1) >> 64:
            revert with 0, 'LockSend: TRANSFER_TO_ME_FAILED'
    else:
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'LockSend: TRANSFER_TO_ME_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[452]:
                revert with 0, 'LockSend: TRANSFER_TO_ME_FAILED'
    if arg2 + sub_4399bff6[msg.sender][arg1][arg3][arg4].field_0 < sub_4399bff6[msg.sender][arg1][arg3][arg4].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_4399bff6[msg.sender][arg1][arg3][arg4].field_0 += arg2
    emit Locksend(address(arg3), arg2, arg4, msg.sender, arg1);
}



}
