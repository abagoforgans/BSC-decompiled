contract main {




// =====================  Runtime code  =====================


address _owner;
address sub_7024f609Address;

function sub_7024f609(?) payable {
    return sub_7024f609Address
}

function _owner() payable {
    return _owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function sub_36901239(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    sub_7024f609Address = arg1
}

function sub_3b537c56(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if _owner == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_26)
            mem[(32 * arg3.length) + 196] = 1
            mem[(32 * arg3.length) + 228] = 2
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_26), 1, 2
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_31)
            mem[(32 * arg3.length) + 196] = 1
            mem[(32 * arg3.length) + 228] = 2
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_31), 1, 2
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}

function sub_7c0c7ebf(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if _owner == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_26)
            mem[(32 * arg3.length) + 196] = 2
            mem[(32 * arg3.length) + 228] = 3
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_26), 2, 3
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_31)
            mem[(32 * arg3.length) + 196] = 2
            mem[(32 * arg3.length) + 228] = 3
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_31), 2, 3
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}

function sub_e6c46df6(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if _owner == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_26)
            mem[(32 * arg3.length) + 196] = 3
            mem[(32 * arg3.length) + 228] = 4
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_26), 3, 4
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_31)
            mem[(32 * arg3.length) + 196] = 3
            mem[(32 * arg3.length) + 228] = 4
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_31), 3, 4
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}

function sub_f8954ea1(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if _owner == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_26)
            mem[(32 * arg3.length) + 196] = 4
            mem[(32 * arg3.length) + 228] = 8
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_26), 4, 8
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _31 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = arg2
            mem[(32 * arg3.length) + 164] = address(_31)
            mem[(32 * arg3.length) + 196] = 4
            mem[(32 * arg3.length) + 228] = 8
            require ext_code.size(arg1)
            call arg1.0x9a7a0eca with:
                 gas gas_remaining wei
                args address(arg2), address(_31), 4, 8
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}



}
