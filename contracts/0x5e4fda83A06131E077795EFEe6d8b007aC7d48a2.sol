contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_44c4a18e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d8f96a6f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x4b0484c with:
                    gas gas_remaining wei
                   args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_69]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.0x4b0484c with:
                gas gas_remaining wei
               args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_71]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _66 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _66] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _66]
    return 32, mem[mem[64] + 32 len (32 * _66) + 32]
}

function sub_13bf0dbb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0xb979334e with:
                    gas gas_remaining wei
                   args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_69]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.0xb979334e with:
                gas gas_remaining wei
               args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_71]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _66 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _66] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _66]
    return 32, mem[mem[64] + 32 len (32 * _66) + 32]
}

function sub_66cf9918(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0xcd2c1723 with:
                    gas gas_remaining wei
                   args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_69]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.0xcd2c1723 with:
                gas gas_remaining wei
               args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_71]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _66 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _66] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _66]
    return 32, mem[mem[64] + 32 len (32 * _66) + 32]
}

function sub_d1a9c9e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _138 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_138] = mem[_130]
            mem[_138 + 32] = mem[_130 + 32]
            mem[_138 + 64] = mem[_130 + 64]
            mem[_138 + 96] = mem[_130 + 96]
            mem[_138 + 128] = mem[_130 + 128]
            require mem[_130 + 160] == bool(mem[_130 + 160])
            mem[_138 + 160] = mem[_130 + 160]
            mem[_138 + 192] = mem[_130 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _138
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _119 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _119:
            _166 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_166 + 32]
            mem[t + 64] = mem[_166 + 64]
            mem[t + 96] = mem[_166 + 96]
            mem[t + 128] = mem[_166 + 128]
            mem[t + 160] = bool(mem[_166 + 160])
            mem[t + 192] = mem[_166 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _115 + (224 * _119) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _254 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_254] = mem[_247]
            mem[_254 + 32] = mem[_247 + 32]
            mem[_254 + 64] = mem[_247 + 64]
            mem[_254 + 96] = mem[_247 + 96]
            mem[_254 + 128] = mem[_247 + 128]
            require mem[_247 + 160] == bool(mem[_247 + 160])
            mem[_254 + 160] = mem[_247 + 160]
            mem[_254 + 192] = mem[_247 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _254
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _232 = mem[64]
        mem[mem[64]] = 32
        _235 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _235:
            _283 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_283 + 32]
            mem[t + 64] = mem[_283 + 64]
            mem[t + 96] = mem[_283 + 96]
            mem[t + 128] = mem[_283 + 128]
            mem[t + 160] = bool(mem[_283 + 160])
            mem[t + 192] = mem[_283 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _232 + (224 * _235) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _370 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_370] = mem[_363]
            mem[_370 + 32] = mem[_363 + 32]
            mem[_370 + 64] = mem[_363 + 64]
            mem[_370 + 96] = mem[_363 + 96]
            mem[_370 + 128] = mem[_363 + 128]
            require mem[_363 + 160] == bool(mem[_363 + 160])
            mem[_370 + 160] = mem[_363 + 160]
            mem[_370 + 192] = mem[_363 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _370
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _348 = mem[64]
        mem[mem[64]] = 32
        _351 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _351:
            _399 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_399 + 32]
            mem[t + 64] = mem[_399 + 64]
            mem[t + 96] = mem[_399 + 96]
            mem[t + 128] = mem[_399 + 128]
            mem[t + 160] = bool(mem[_399 + 160])
            mem[t + 192] = mem[_399 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _348 + (224 * _351) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _486 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_486] = mem[_479]
            mem[_486 + 32] = mem[_479 + 32]
            mem[_486 + 64] = mem[_479 + 64]
            mem[_486 + 96] = mem[_479 + 96]
            mem[_486 + 128] = mem[_479 + 128]
            require mem[_479 + 160] == bool(mem[_479 + 160])
            mem[_486 + 160] = mem[_479 + 160]
            mem[_486 + 192] = mem[_479 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _486
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _464 = mem[64]
        mem[mem[64]] = 32
        _467 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _467:
            _515 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_515 + 32]
            mem[t + 64] = mem[_515 + 64]
            mem[t + 96] = mem[_515 + 96]
            mem[t + 128] = mem[_515 + 128]
            mem[t + 160] = bool(mem[_515 + 160])
            mem[t + 192] = mem[_515 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _464 + (224 * _467) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _595 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _602 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_602] = mem[_595]
            mem[_602 + 32] = mem[_595 + 32]
            mem[_602 + 64] = mem[_595 + 64]
            mem[_602 + 96] = mem[_595 + 96]
            mem[_602 + 128] = mem[_595 + 128]
            require mem[_595 + 160] == bool(mem[_595 + 160])
            mem[_602 + 160] = mem[_595 + 160]
            mem[_602 + 192] = mem[_595 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _602
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _580 = mem[64]
        mem[mem[64]] = 32
        _583 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _583:
            _631 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_631 + 32]
            mem[t + 64] = mem[_631 + 64]
            mem[t + 96] = mem[_631 + 96]
            mem[t + 128] = mem[_631 + 128]
            mem[t + 160] = bool(mem[_631 + 160])
            mem[t + 192] = mem[_631 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _580 + (224 * _583) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _718 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_718] = mem[_711]
            mem[_718 + 32] = mem[_711 + 32]
            mem[_718 + 64] = mem[_711 + 64]
            mem[_718 + 96] = mem[_711 + 96]
            mem[_718 + 128] = mem[_711 + 128]
            require mem[_711 + 160] == bool(mem[_711 + 160])
            mem[_718 + 160] = mem[_711 + 160]
            mem[_718 + 192] = mem[_711 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _718
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _696 = mem[64]
        mem[mem[64]] = 32
        _699 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _699:
            _747 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_747 + 32]
            mem[t + 64] = mem[_747 + 64]
            mem[t + 96] = mem[_747 + 96]
            mem[t + 128] = mem[_747 + 128]
            mem[t + 160] = bool(mem[_747 + 160])
            mem[t + 192] = mem[_747 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _696 + (224 * _699) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1473
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _827 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _834 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_834] = mem[_827]
            mem[_834 + 32] = mem[_827 + 32]
            mem[_834 + 64] = mem[_827 + 64]
            mem[_834 + 96] = mem[_827 + 96]
            mem[_834 + 128] = mem[_827 + 128]
            require mem[_827 + 160] == bool(mem[_827 + 160])
            mem[_834 + 160] = mem[_827 + 160]
            mem[_834 + 192] = mem[_827 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _834
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _812 = mem[64]
        mem[mem[64]] = 32
        _815 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _815:
            _863 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_863 + 32]
            mem[t + 64] = mem[_863 + 64]
            mem[t + 96] = mem[_863 + 96]
            mem[t + 128] = mem[_863 + 128]
            mem[t + 160] = bool(mem[_863 + 160])
            mem[t + 192] = mem[_863 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _812 + (224 * _815) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1697
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1505] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1537] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1569] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1601] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1633] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1665] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _943 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _950 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_950] = mem[_943]
            mem[_950 + 32] = mem[_943 + 32]
            mem[_950 + 64] = mem[_943 + 64]
            mem[_950 + 96] = mem[_943 + 96]
            mem[_950 + 128] = mem[_943 + 128]
            require mem[_943 + 160] == bool(mem[_943 + 160])
            mem[_950 + 160] = mem[_943 + 160]
            mem[_950 + 192] = mem[_943 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _950
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _928 = mem[64]
        mem[mem[64]] = 32
        _931 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _931:
            _979 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_979 + 32]
            mem[t + 64] = mem[_979 + 64]
            mem[t + 96] = mem[_979 + 96]
            mem[t + 128] = mem[_979 + 128]
            mem[t + 160] = bool(mem[_979 + 160])
            mem[t + 192] = mem[_979 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _928 + (224 * _931) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1921
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1697] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1729] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1761] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1793] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1825] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1857] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1889] = 0
    mem[var50002] = var50001
    if var50003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0x8306354a with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1059 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            _1066 = mem[64]
            if mem[64] + 224 < mem[64] or mem[64] + 224 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 224
            mem[_1066] = mem[_1059]
            mem[_1066 + 32] = mem[_1059 + 32]
            mem[_1066 + 64] = mem[_1059 + 64]
            mem[_1066 + 96] = mem[_1059 + 96]
            mem[_1066 + 128] = mem[_1059 + 128]
            require mem[_1059 + 160] == bool(mem[_1059 + 160])
            mem[_1066 + 160] = mem[_1059 + 160]
            mem[_1066 + 192] = mem[_1059 + 192]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1066
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1044 = mem[64]
        mem[mem[64]] = 32
        _1047 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _1047:
            _1095 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1095 + 32]
            mem[t + 64] = mem[_1095 + 64]
            mem[t + 96] = mem[_1095 + 96]
            mem[t + 128] = mem[_1095 + 128]
            mem[t + 160] = bool(mem[_1095 + 160])
            mem[t + 192] = mem[_1095 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _1044 + (224 * _1047) + -mem[64] + 64
}



}
