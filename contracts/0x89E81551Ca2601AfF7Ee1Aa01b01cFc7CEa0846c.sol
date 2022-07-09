contract main {




// =====================  Runtime code  =====================


#
#  - sub_9f8c978b(?)
#
const wethBalance = ext_call.return_data[0]

const ethBalance = eth.balance(this.address)

const sub_a7846b9b(?) = eth.balance(this.address)


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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

function sub_74e4f5b2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].0x3b124fe7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = 1
            else:
                _74 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_74] == mem[_74]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_74]
            if idx > -2:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _78 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _78] = mem[floor32(('cd', 4).length) + 129 len 32 * _78]
        return 32, mem[mem[64] + 32 len (32 * _78) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 140 len 20].0x3b124fe7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = 1
        else:
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_75] == mem[_75]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_75]
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _79 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _79] = mem[floor32(('cd', 4).length) + 129 len 32 * _79]
    return 32, mem[mem[64] + 32 len (32 * _79) + 32]
}

function sub_dbb4f396(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].0x6bc87c3a with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = 1
            else:
                _74 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_74] == mem[_74]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_74]
            if idx > -2:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _78 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _78] = mem[floor32(('cd', 4).length) + 129 len 32 * _78]
        return 32, mem[mem[64] + 32 len (32 * _78) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 140 len 20].0x6bc87c3a with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = 1
        else:
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_75] == mem[_75]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_75]
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _79 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _79] = mem[floor32(('cd', 4).length) + 129 len 32 * _79]
    return 32, mem[mem[64] + 32 len (32 * _79) + 32]
}

function sub_4b2d9c5a(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint8(cd[68])
    require cd[100] == uint8(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length and 2 > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if (2 * ('cd', 36).length) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = (2 * ('cd', 36).length) + 1
    mem[64] = floor32(('cd', 36).length) + (32 * (2 * ('cd', 36).length) + 1) + 129
    if not (2 * ('cd', 36).length) + 1:
        idx = 0
        s = cd[4]
        t = 128
        u = floor32(('cd', 36).length) + 129
        while idx < cd[100]:
            mem[floor32(('cd', 36).length) + (32 * (2 * ('cd', 36).length) + 1) + 129] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall mem[t + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (32 * (2 * ('cd', 36).length) + 1) + 129 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[t]
            if not Mask(4, 252, mem[t]) == 1:
                mem[u] = ext_call.return_data[0]
                mem[u + 32] = ext_call.return_data[32]
                idx = idx + 1
                s = ext_call.return_data[32] * s * Mask(16, 236, _84) / (s * Mask(16, 236, _84)) + (10000 * ext_call.return_data[0])
                t = t + 32
                u = u + 64
                continue 
            mem[u] = ext_call.return_data[32]
            mem[u + 32] = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] * s * Mask(16, 236, _84) / (s * Mask(16, 236, _84)) + (10000 * ext_call.return_data[32])
            t = t + 32
            u = u + 64
            continue 
        if cd[68] != 1:
            mem[u] = s
            mem[mem[64]] = 32
            _104 = mem[floor32(('cd', 36).length) + 97]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
            mem[mem[64] + 64 len 32 * _104] = mem[floor32(('cd', 36).length) + 129 len 32 * _104]
            return 32, mem[mem[64] + 32 len (32 * _104) + 32]
        if s < cd[4]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x164d696e2072657475726e206e6f742072656163686564
        mem[u] = s
        mem[mem[64]] = 32
        _106 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _106] = mem[floor32(('cd', 36).length) + 129 len 32 * _106]
        return 32, mem[mem[64] + 32 len (32 * _106) + 32]
    mem[floor32(('cd', 36).length) + 129 len 32 * (2 * ('cd', 36).length) + 1] = call.data[calldata.size len 32 * (2 * ('cd', 36).length) + 1]
    idx = 0
    s = cd[4]
    t = 128
    u = floor32(('cd', 36).length) + 129
    while idx < cd[100]:
        mem[floor32(('cd', 36).length) + (32 * (2 * ('cd', 36).length) + 1) + 129] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        staticcall mem[t + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + (32 * (2 * ('cd', 36).length) + 1) + 129 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _88 = mem[t]
        if not Mask(4, 252, mem[t]) == 1:
            mem[u] = ext_call.return_data[0]
            mem[u + 32] = ext_call.return_data[32]
            idx = idx + 1
            s = ext_call.return_data[32] * s * Mask(16, 236, _88) / (s * Mask(16, 236, _88)) + (10000 * ext_call.return_data[0])
            t = t + 32
            u = u + 64
            continue 
        mem[u] = ext_call.return_data[32]
        mem[u + 32] = ext_call.return_data[0]
        idx = idx + 1
        s = ext_call.return_data[0] * s * Mask(16, 236, _88) / (s * Mask(16, 236, _88)) + (10000 * ext_call.return_data[32])
        t = t + 32
        u = u + 64
        continue 
    if cd[68] != 1:
        mem[u] = s
        mem[mem[64]] = 32
        _105 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _105] = mem[floor32(('cd', 36).length) + 129 len 32 * _105]
        return 32, mem[mem[64] + 32 len (32 * _105) + 32]
    if s < cd[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x164d696e2072657475726e206e6f742072656163686564
    mem[u] = s
    mem[mem[64]] = 32
    _107 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _107] = mem[floor32(('cd', 36).length) + 129 len 32 * _107]
    return 32, mem[mem[64] + 32 len (32 * _107) + 32]
}



}
