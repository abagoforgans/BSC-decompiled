contract main {




// =====================  Runtime code  =====================


address owner;
address poolAddress;
uint8 stor2; offset 160
address executorAddress;

function stop() {
    return bool(stor2)
}

function poolAddress() {
    return poolAddress
}

function owner() {
    return owner
}

function executor() {
    return executorAddress
}

function _fallback() payable {
  stop
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'OnlyOwner'
    owner = arg1
}

function updatePool(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'OnlyOwner'
    poolAddress = arg1
}

function updateExecutor(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'OnlyOwner'
    executorAddress = arg1
}

function sub_75debd2a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if executorAddress != msg.sender:
        revert with 0, 'OnlyExecutor'
    require arg1.length > 0
    require arg2.length > 0
    require arg2.length == arg1.length
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        require uint32(idx) < arg2.length
        call mem[(32 * uint32(idx)) + 140 len 20] with:
           value mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if executorAddress != msg.sender:
        revert with 0, 'OnlyExecutor'
    require arg2.length > 0
    require arg3.length > 0
    require arg3.length == arg2.length
    idx = 0
    while uint32(idx) < arg2.length:
        require uint32(idx) < arg2.length
        require uint32(idx) < arg3.length
        _26 = mem[(32 * uint32(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * uint32(idx)) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _26
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _26
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if executorAddress != msg.sender:
        revert with 0, 'OnlyExecutor'
    require arg2.length > 0
    require arg3.length > 0
    require arg3.length == arg2.length
    idx = 0
    while uint32(idx) < arg2.length:
        require uint32(idx) < arg2.length
        _24 = mem[(32 * uint32(idx)) + 128]
        require uint32(idx) < arg3.length
        _26 = mem[(32 * uint32(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_24)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _26
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_24), _26
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
