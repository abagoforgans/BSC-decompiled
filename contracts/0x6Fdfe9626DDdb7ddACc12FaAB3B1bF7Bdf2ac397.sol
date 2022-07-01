contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function getMsgData(address arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function setfirelevel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1 = arg1
    return 1
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit onOwnershipTransferred(owner, arg1);
    owner = arg1
}

function distrubutionlevel10(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == sha3(msg.sender):
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_45a1da16(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Multireceivers(arg2, arg3, arg4, arg5, arg1);
    emit Multisended(arg2, arg3, arg4, arg5, msg.sender);
}

function sub_84abcc59(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not arg1.length:
        require not msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + 132], arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            _40 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Airdropped(arg2, address(_40));
            idx = idx + 1
            continue 
    else:
        require arg2 * arg1.length / arg1.length == arg2
        require msg.value == arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = arg2
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + 132], arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            _37 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Airdropped(arg2, address(_37));
            idx = idx + 1
            continue 
}

function sub_42b49a0e(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < mem[(32 * arg1.length) + 128]
        _29 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
        require idx < mem[96]
        _31 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _33 = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_31)
        mem[mem[64] + 68] = _33
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_31), _33
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        _38 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        mem[mem[64]] = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[mem[64] + 32] = arg3
        mem[mem[64] + 64] = arg4
        mem[mem[64] + 96] = arg5
        emit Multireceivers(mem[mem[64]], arg3, arg4, arg5, address(_38));
        idx = idx + 1
        s = s - _29
        continue 
    emit Multisended(msg.value, arg3, arg4, arg5, msg.sender);
}



}
