contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_9400ff12(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function claimStuckTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_acf69d8d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, 128, tx.origin, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7323a9d6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = address(arg1)
    idx = 0
    while uint8(idx) < uint8(arg4):
        if block.timestamp > -301:
            revert with 'NH{q', 17
        _19 = mem[64]
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 128
        _20 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < _20:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_19 + 68] = tx.origin
        mem[_19 + 100] = block.timestamp + 300
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _19 + (32 * _20) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _31 = mem[_30]
        require mem[_30] <= test266151307()
        require _30 + mem[_30] + 31 < _30 + return_data.size
        _32 = mem[_30 + mem[_30]]
        if mem[_30 + mem[_30]] > test266151307():
            revert with 'NH{q', 65
        if _30 + ceil32(return_data.size) + floor32(mem[_30 + mem[_30]]) + 1 > test266151307() or floor32(mem[_30 + mem[_30]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _30 + ceil32(return_data.size) + floor32(mem[_30 + mem[_30]]) + 1
        mem[_30 + ceil32(return_data.size)] = _32
        require _31 + (32 * _32) + 32 <= return_data.size
        s = _30 + _31 + 32
        t = _30 + ceil32(return_data.size) + 32
        while s < _30 + _31 + (32 * _32) + 32:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}



}
