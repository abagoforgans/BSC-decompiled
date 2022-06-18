contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address stor0; offset 16
uint256 stor0; offset 8
address sub_1c6d46e9Address;
array of struct sub_e1cb12c5;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
address owner;
address stor8;
address stor9;

function sub_1c6d46e9(?) payable {
    return sub_1c6d46e9Address
}

function sub_299340df(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_299340df[arg1].field_256:
        revert with 'NH{q', 50
    return stor[(2 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_299340df', 3)))].field_0, 
           stor[(2 * arg2) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_299340df', 3)))].field_256
}

function sub_78a6a05f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_e1cb12c5.length:
        revert with 'NH{q', 50
    return sub_e1cb12c5[arg1].field_1792, sub_e1cb12c5[arg1].field_768
}

function owner() payable {
    return owner
}

function sub_d3186d49(?) payable {
    return bool(uint8(stor0.field_0))
}

function sub_e1cb12c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_e1cb12c5.length:
        revert with 0, 'Chest Validation: Chest Not Found'
    return sub_e1cb12c5[arg1].field_0, 
           sub_e1cb12c5[arg1].field_256,
           sub_e1cb12c5[arg1].field_512,
           sub_e1cb12c5[arg1].field_768,
           sub_e1cb12c5[arg1].field_1024,
           sub_e1cb12c5[arg1].field_1280,
           sub_e1cb12c5[arg1].field_1536,
           sub_e1cb12c5[arg1].field_1792
}

function _fallback() payable {
    revert
}

function setWhitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    sub_1c6d46e9Address = arg1
}

function sub_af2b4b2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    uint8(stor0.field_0) = uint8(bool(arg1))
}

function sub_72bb5b18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    address(stor0.field_16) = address(arg1)
}

function sub_c9b2da0a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    if arg1 >= sub_e1cb12c5.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Chest Validation: Chest Not Found'
    sub_e1cb12c5[arg1].field_512 = arg3
    sub_e1cb12c5[arg1].field_256 = arg2
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_ed61ff2c(?) payable {
    mem[64] = (32 * sub_e1cb12c5.length) + 128
    mem[96] = sub_e1cb12c5.length
    s = 128
    idx = 0
    while idx < sub_e1cb12c5.length:
        mem[0] = 2
        _17 = mem[64]
        mem[64] = mem[64] + 256
        mem[_17] = sub_e1cb12c5[idx].field_0
        mem[_17 + 32] = sub_e1cb12c5[idx].field_256
        mem[_17 + 64] = sub_e1cb12c5[idx].field_512
        mem[_17 + 96] = sub_e1cb12c5[idx].field_768
        mem[_17 + 128] = sub_e1cb12c5[idx].field_1024
        mem[_17 + 160] = sub_e1cb12c5[idx].field_1280
        mem[_17 + 192] = sub_e1cb12c5[idx].field_1536
        mem[_17 + 224] = sub_e1cb12c5[idx].field_1792
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    _19 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _19:
        _30 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_30 + 32]
        mem[t + 64] = mem[_30 + 64]
        mem[t + 96] = mem[_30 + 96]
        mem[t + 128] = mem[_30 + 128]
        mem[t + 160] = mem[_30 + 160]
        mem[t + 192] = mem[_30 + 192]
        mem[t + 224] = mem[_30 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _18 + (256 * _19) + -mem[64] + 64
}

function sub_ac08a536(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 > test266151307():
        revert with 'NH{q', 65
    if stor4:
        mem[128 len 32 * stor4] = call.data[calldata.size len 32 * stor4]
    if stor4 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor4) + 128] = stor4
    if stor4:
        mem[(32 * stor4) + 160 len 32 * stor4] = call.data[calldata.size len 32 * stor4]
    idx = 0
    while idx < stor4:
        if idx >= sub_299340df[arg1].field_256:
            revert with 'NH{q', 50
        if idx >= stor4:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_299340df', 3)))].field_256
        mem[32] = 3
        if idx >= sub_299340df[arg1].field_256:
            revert with 'NH{q', 50
        mem[0] = sha3(arg1, 3) + 1
        if idx >= mem[(32 * stor4) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor4) + 160] = stor[(2 * idx) + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_299340df', 3)))].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(64 * stor4) + 160] = 64
    mem[(64 * stor4) + 224] = stor4
    mem[(64 * stor4) + 256 len 32 * stor4] = mem[128 len 32 * stor4]
    mem[(64 * stor4) + 192] = (32 * stor4) + 96
    mem[(98 * stor4) + 256] = mem[(32 * stor4) + 128]
    mem[(98 * stor4) + 288 len 32 * mem[(32 * stor4) + 128]] = mem[(32 * stor4) + 160 len 32 * mem[(32 * stor4) + 128]]
    return memory
      from (64 * stor4) + 160
       len (161 * stor4) + (32 * mem[(32 * stor4) + 128]) + 128
}

function sub_af2184b1(?) payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    if uint8(stor0.field_8):
        revert with 0, 'Already Used'
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, 100, 7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(248, 0, stor0.field_8) = 1
}

function sub_04dfd485(?) payable {
    if stor4 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor4
    mem[64] = (32 * stor4) + 128
    if not stor4:
        idx = 0
        while idx < stor4:
            mem[0] = idx
            mem[32] = 3
            _36 = mem[64]
            mem[64] = mem[64] + 64
            mem[_36] = sub_299340df[idx].field_0
            _37 = mem[64]
            mem[64] = mem[64] + (32 * sub_299340df[idx].field_256) + 32
            mem[_37] = sub_299340df[idx].field_256
            s = _37 + 32
            t = 0
            while t < sub_299340df[idx].field_256:
                mem[0] = sha3(idx, 3) + 1
                _72 = mem[64]
                mem[64] = mem[64] + 64
                mem[_72] = stor[(2 * t) + ('array', 1, ('map', ('var', 0), ('name', 'sub_299340df', 3)))].field_0
                mem[_72 + 32] = stor[(2 * t) + ('array', 1, ('map', ('var', 0), ('name', 'sub_299340df', 3)))].field_256
                mem[s] = _72
                s = s + 32
                t = t + 1
                continue 
            mem[_36 + 32] = _37
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _36
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _39 = mem[64]
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _43:
            mem[u] = t + -_39 - 64
            _69 = mem[s]
            mem[t] = mem[mem[s]]
            _79 = mem[_69 + 32]
            mem[t + 32] = 64
            _83 = mem[_79]
            mem[t + 64] = mem[_79]
            v = 0
            w = _79 + 32
            x = t + 96
            while v < _83:
                _96 = mem[w]
                mem[x] = mem[mem[w]]
                mem[x + 32] = mem[_96 + 32]
                v = v + 1
                w = w + 32
                x = x + 64
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (64 * _83) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor4) + 192
        mem[(32 * stor4) + 128] = 0
        mem[(32 * stor4) + 160] = 96
        mem[var8001] = (32 * stor4) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor4) + 128] = 0
            mem[(32 * stor4) + 160] = 96
            mem[s + 32] = (32 * stor4) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor4:
            mem[0] = idx
            mem[32] = 3
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = sub_299340df[idx].field_0
            _99 = mem[64]
            mem[64] = mem[64] + (32 * sub_299340df[idx].field_256) + 32
            mem[_99] = sub_299340df[idx].field_256
            s = _99 + 32
            t = 0
            while t < sub_299340df[idx].field_256:
                mem[0] = sha3(idx, 3) + 1
                _118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_118] = stor[(2 * t) + ('array', 1, ('map', ('var', 0), ('name', 'sub_299340df', 3)))].field_0
                mem[_118 + 32] = stor[(2 * t) + ('array', 1, ('map', ('var', 0), ('name', 'sub_299340df', 3)))].field_256
                mem[s] = _118
                s = s + 32
                t = t + 1
                continue 
            mem[_98 + 32] = _99
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _98
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _100 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _105:
            mem[u] = t + -_100 - 64
            _115 = mem[s]
            mem[t] = mem[mem[s]]
            _121 = mem[_115 + 32]
            mem[t + 32] = 64
            _122 = mem[_121]
            mem[t + 64] = mem[_121]
            v = 0
            w = _121 + 32
            x = t + 96
            while v < _122:
                _126 = mem[w]
                mem[x] = mem[mem[w]]
                mem[x + 32] = mem[_126 + 32]
                v = v + 1
                w = w + 32
                x = x + 64
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (64 * _122) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_7686ffe9(?) payable {
    if sub_e1cb12c5.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_e1cb12c5.length
    mem[64] = (32 * sub_e1cb12c5.length) + 128
    if not sub_e1cb12c5.length:
        idx = 0
        while idx < sub_e1cb12c5.length:
            _55 = mem[64]
            mem[64] = mem[64] + 160
            mem[0] = 2
            mem[_55] = sub_e1cb12c5[idx].field_0
            mem[0] = 2
            _60 = mem[64]
            mem[64] = mem[64] + 256
            mem[_60] = sub_e1cb12c5[idx].field_0
            mem[_60 + 32] = sub_e1cb12c5[idx].field_256
            mem[_60 + 64] = sub_e1cb12c5[idx].field_512
            mem[_60 + 96] = sub_e1cb12c5[idx].field_768
            mem[_60 + 128] = sub_e1cb12c5[idx].field_1024
            mem[_60 + 160] = sub_e1cb12c5[idx].field_1280
            mem[_60 + 192] = sub_e1cb12c5[idx].field_1536
            mem[_60 + 224] = sub_e1cb12c5[idx].field_1792
            mem[32] = 6
            if sub_e1cb12c5[idx].field_1280 <= stor6[stor2[idx].field_768]:
                mem[_55 + 32] = sub_e1cb12c5[idx].field_512
            else:
                mem[_55 + 32] = sub_e1cb12c5[idx].field_256
            if idx >= sub_e1cb12c5.length:
                revert with 'NH{q', 50
            mem[_55 + 64] = sub_e1cb12c5[idx].field_768
            mem[_55 + 96] = sub_e1cb12c5[idx].field_1792
            mem[0] = idx
            mem[32] = 6
            mem[_55 + 128] = stor6[idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _55
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _57 = mem[64]
        mem[mem[64]] = 32
        _64 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _64:
            _109 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_109 + 32]
            mem[t + 64] = mem[_109 + 64]
            mem[t + 96] = mem[_109 + 96]
            mem[t + 128] = mem[_109 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _57 + (160 * _64) + -mem[64] + 64
    mem[64] = (32 * sub_e1cb12c5.length) + 288
    mem[(32 * sub_e1cb12c5.length) + 128] = 0
    mem[(32 * sub_e1cb12c5.length) + 160] = 0
    mem[(32 * sub_e1cb12c5.length) + 192] = 0
    mem[(32 * sub_e1cb12c5.length) + 224] = 0
    mem[(32 * sub_e1cb12c5.length) + 256] = 0
    mem[var8001] = (32 * sub_e1cb12c5.length) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * sub_e1cb12c5.length) + 128] = 0
        mem[(32 * sub_e1cb12c5.length) + 160] = 0
        mem[(32 * sub_e1cb12c5.length) + 192] = 0
        mem[(32 * sub_e1cb12c5.length) + 224] = 0
        mem[(32 * sub_e1cb12c5.length) + 256] = 0
        mem[s + 32] = (32 * sub_e1cb12c5.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_e1cb12c5.length:
        _142 = mem[64]
        mem[64] = mem[64] + 160
        mem[0] = 2
        mem[_142] = sub_e1cb12c5[idx].field_0
        mem[0] = 2
        _146 = mem[64]
        mem[64] = mem[64] + 256
        mem[_146] = sub_e1cb12c5[idx].field_0
        mem[_146 + 32] = sub_e1cb12c5[idx].field_256
        mem[_146 + 64] = sub_e1cb12c5[idx].field_512
        mem[_146 + 96] = sub_e1cb12c5[idx].field_768
        mem[_146 + 128] = sub_e1cb12c5[idx].field_1024
        mem[_146 + 160] = sub_e1cb12c5[idx].field_1280
        mem[_146 + 192] = sub_e1cb12c5[idx].field_1536
        mem[_146 + 224] = sub_e1cb12c5[idx].field_1792
        mem[32] = 6
        if sub_e1cb12c5[idx].field_1280 <= stor6[stor2[idx].field_768]:
            mem[_142 + 32] = sub_e1cb12c5[idx].field_512
        else:
            mem[_142 + 32] = sub_e1cb12c5[idx].field_256
        if idx >= sub_e1cb12c5.length:
            revert with 'NH{q', 50
        mem[_142 + 64] = sub_e1cb12c5[idx].field_768
        mem[_142 + 96] = sub_e1cb12c5[idx].field_1792
        mem[0] = idx
        mem[32] = 6
        mem[_142 + 128] = stor6[idx]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _142
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _143 = mem[64]
    mem[mem[64]] = 32
    _150 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _150:
        _168 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_168 + 32]
        mem[t + 64] = mem[_168 + 64]
        mem[t + 96] = mem[_168 + 96]
        mem[t + 128] = mem[_168 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _143 + (160 * _150) + -mem[64] + 64
}

function buyChest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_0):
        revert with 0, 'Clash Fantasy Buy Chest Paused'
    if arg2 >= sub_e1cb12c5.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Chest Validation: Chest Not Found'
    if sub_1c6d46e9Address:
        require ext_code.size(sub_1c6d46e9Address)
        call sub_1c6d46e9Address.0xcd878d1e with:
             gas gas_remaining wei
            args msg.sender, arg1, stor5[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if arg2 >= sub_e1cb12c5.length:
        revert with 'NH{q', 50
    if sub_e1cb12c5[arg2].field_1280 <= stor6[stor2[arg2].field_768]:
        if sub_e1cb12c5[arg2].field_512 and arg1 > -1 / sub_e1cb12c5[arg2].field_512:
            revert with 'NH{q', 17
        if sub_e1cb12c5[arg2].field_512 * arg1 and 10^18 > -1 / sub_e1cb12c5[arg2].field_512 * arg1:
            revert with 'NH{q', 17
        require ext_code.size(stor9)
        staticcall stor9.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 10^18 * sub_e1cb12c5[arg2].field_512 * arg1:
            revert with 0, 'Check the token balance'
        require ext_code.size(stor9)
        staticcall stor9.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] != 10^18 * sub_e1cb12c5[arg2].field_512 * arg1:
            revert with 0, 'Check the token allowance'
        if 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100 and 95 > -1 / 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100:
            revert with 'NH{q', 17
        if 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100 and 5 > -1 / 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, 95 * 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor0.field_0), 5 * 10^18 * sub_e1cb12c5[arg2].field_512 * arg1 / 100
    else:
        if sub_e1cb12c5[arg2].field_256 and arg1 > -1 / sub_e1cb12c5[arg2].field_256:
            revert with 'NH{q', 17
        if sub_e1cb12c5[arg2].field_256 * arg1 and 10^18 > -1 / sub_e1cb12c5[arg2].field_256 * arg1:
            revert with 'NH{q', 17
        require ext_code.size(stor9)
        staticcall stor9.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 10^18 * sub_e1cb12c5[arg2].field_256 * arg1:
            revert with 0, 'Check the token balance'
        require ext_code.size(stor9)
        staticcall stor9.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] != 10^18 * sub_e1cb12c5[arg2].field_256 * arg1:
            revert with 0, 'Check the token allowance'
        if 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100 and 95 > -1 / 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100:
            revert with 'NH{q', 17
        if 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100 and 5 > -1 / 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, owner, 95 * 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor0.field_0), 5 * 10^18 * sub_e1cb12c5[arg2].field_256 * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor5[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stor5[address(msg.sender)] += arg1
    require ext_code.size(stor8)
    call stor8.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor6[arg2] > -arg1 - 1:
        revert with 'NH{q', 17
    stor6[arg2] += arg1
}



}
