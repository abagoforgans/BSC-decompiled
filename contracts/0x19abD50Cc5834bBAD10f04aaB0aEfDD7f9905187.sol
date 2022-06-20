contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    owner = arg1
}

function sub_3e35f3c8(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    mem[96] = 2
    mem[64] = 192
    mem[128] = arg1
    mem[160] = arg2
    require arg5
    idx = 0
    while idx < arg5:
        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 68] = arg4
        mem[mem[64] + 100] = block.timestamp
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[mem[64] + s + 164] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / arg5 wei
             gas gas_remaining wei
            args arg3, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _31 = mem[_30]
        require mem[_30] <= 4294967296
        require mem[_30] + 32 <= return_data.size
        require mem[mem[_30] + _30] <= 4294967296 and mem[_30] + (32 * mem[mem[_30] + _30]) + 32 <= return_data.size
        mem[_30 + ceil32(return_data.size)] = mem[mem[_30] + _30]
        _34 = mem[_31 + _30]
        s = 0
        while s < 32 * _34:
            mem[_30 + ceil32(return_data.size) + s + 32] = mem[_31 + _30 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _34) + _30 + ceil32(return_data.size) + 32
        idx = idx + 1
        continue 
}



}
