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

function withdraw() payable {
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4aefa8f4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 300:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 159 len 1]
        mem[(32 * arg2.length) + 164] = idx
        require ext_code.size(arg1)
        call arg1.0x507a17e4 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], idx
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_32c4a19f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 300
    while idx < 600:
        require idx - 300 < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx - 300) + 159 len 1]
        mem[(32 * arg2.length) + 164] = idx
        require ext_code.size(arg1)
        call arg1.0x507a17e4 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], idx
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_f3f53525(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 600
    while idx < 900:
        require idx - 600 < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx - 600) + 159 len 1]
        mem[(32 * arg2.length) + 164] = idx
        require ext_code.size(arg1)
        call arg1.0x507a17e4 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], idx
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_d69f8017(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 900
    while idx < 1200:
        require idx - 900 < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx - 900) + 159 len 1]
        mem[(32 * arg2.length) + 164] = idx
        require ext_code.size(arg1)
        call arg1.0x507a17e4 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], idx
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_0e02d6c9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner != msg.sender:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 1200
    while idx < 1389:
        require idx - 1200 < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx - 1200) + 159 len 1]
        mem[(32 * arg2.length) + 164] = idx
        require ext_code.size(arg1)
        call arg1.0x507a17e4 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], idx
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_7996525e(?) payable {
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
    if _owner == msg.sender:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg3.length
            _37 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 159 len 1]
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _37
            require ext_code.size(arg1)
            call arg1.0x507a17e4 with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _37
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg3.length
            _40 = mem[(32 * idx) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 159 len 1]
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _40
            require ext_code.size(arg1)
            call arg1.0x507a17e4 with:
                 gas gas_remaining wei
                args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _40
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    return 1
}

function sub_480610fe(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if _owner == msg.sender:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _30 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0xbb2f970d00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = address(_30)
            mem[(32 * arg2.length) + 164] = 3
            require ext_code.size(arg1)
            call arg1.0xbb2f970d with:
                 gas gas_remaining wei
                args address(_30), 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _40 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0xe639912f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = address(_40)
            mem[(32 * arg2.length) + 164] = 2
            require ext_code.size(arg1)
            call arg1.0xe639912f with:
                 gas gas_remaining wei
                args address(_40), 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if sub_7024f609Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _35 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0xbb2f970d00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = address(_35)
            mem[(32 * arg2.length) + 164] = 3
            require ext_code.size(arg1)
            call arg1.0xbb2f970d with:
                 gas gas_remaining wei
                args address(_35), 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < arg2.length
            _43 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0xe639912f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = address(_43)
            mem[(32 * arg2.length) + 164] = 2
            require ext_code.size(arg1)
            call arg1.0xe639912f with:
                 gas gas_remaining wei
                args address(_43), 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    return 1
}



}
