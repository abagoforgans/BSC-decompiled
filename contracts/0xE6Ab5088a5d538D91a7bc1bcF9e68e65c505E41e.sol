contract main {




// =====================  Runtime code  =====================


#
#  - sub_3f9ab2e9(?)
#  - getReserves(uint256 arg1, uint256 arg2)
#  - sub_9f8c978b(?)
#  - sub_a634d307(?)
#  - sub_dcaf43d9(?)
#  - sub_ed27d3b6(?)
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

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            staticcall mem[(32 * idx) + 140 len 20]._taxFee() with:
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
        staticcall mem[(32 * idx) + 140 len 20]._taxFee() with:
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
            staticcall mem[(32 * idx) + 140 len 20]._liquidityFee() with:
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
        staticcall mem[(32 * idx) + 140 len 20]._liquidityFee() with:
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
            _92 = mem[t]
            mem[u] = ext_call.return_data[0]
            mem[u + 32] = ext_call.return_data[32]
            if not Mask(4, 252, mem[t]) == 1:
                idx = idx + 1
                s = ext_call.return_data[32] * s * Mask(16, 236, _92) / (s * Mask(16, 236, _92)) + (10000 * ext_call.return_data[0])
                t = t + 32
                u = u + 64
                continue 
            idx = idx + 1
            s = ext_call.return_data[0] * s * Mask(16, 236, _92) / (s * Mask(16, 236, _92)) + (10000 * ext_call.return_data[32])
            t = t + 32
            u = u + 64
            continue 
        if cd[68] != 1:
            mem[u] = s
            mem[mem[64]] = 32
            _116 = mem[floor32(('cd', 36).length) + 97]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
            mem[mem[64] + 64 len 32 * _116] = mem[floor32(('cd', 36).length) + 129 len 32 * _116]
            return 32, mem[mem[64] + 32 len (32 * _116) + 32]
        if s < cd[4]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x164d696e2072657475726e206e6f742072656163686564
        mem[u] = s
        mem[mem[64]] = 32
        _118 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _118] = mem[floor32(('cd', 36).length) + 129 len 32 * _118]
        return 32, mem[mem[64] + 32 len (32 * _118) + 32]
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
        _94 = mem[t]
        mem[u] = ext_call.return_data[0]
        mem[u + 32] = ext_call.return_data[32]
        if not Mask(4, 252, mem[t]) == 1:
            idx = idx + 1
            s = ext_call.return_data[32] * s * Mask(16, 236, _94) / (s * Mask(16, 236, _94)) + (10000 * ext_call.return_data[0])
            t = t + 32
            u = u + 64
            continue 
        idx = idx + 1
        s = ext_call.return_data[0] * s * Mask(16, 236, _94) / (s * Mask(16, 236, _94)) + (10000 * ext_call.return_data[32])
        t = t + 32
        u = u + 64
        continue 
    if cd[68] != 1:
        mem[u] = s
        mem[mem[64]] = 32
        _117 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _117] = mem[floor32(('cd', 36).length) + 129 len 32 * _117]
        return 32, mem[mem[64] + 32 len (32 * _117) + 32]
    if s < cd[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x164d696e2072657475726e206e6f742072656163686564
    mem[u] = s
    mem[mem[64]] = 32
    _119 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _119] = mem[floor32(('cd', 36).length) + 129 len 32 * _119]
    return 32, mem[mem[64] + 32 len (32 * _119) + 32]
}

function sub_fcc351b3(?) payable {
    require calldata.size - 4 >= 160
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = floor32(('cd', 36).length) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] == uint8(cd[100])
    require cd[132] == uint8(cd[132])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length and 2 > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if (2 * ('cd', 36).length) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = (2 * ('cd', 36).length) + 1
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * (2 * ('cd', 36).length) + 1) + 130
    if not (2 * ('cd', 36).length) + 1:
        idx = 0
        s = cd[4]
        t = 128
        u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
        while idx < cd[132]:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * (2 * ('cd', 36).length) + 1) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall mem[t + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * (2 * ('cd', 36).length) + 1) + 130 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[t]
            mem[u] = ext_call.return_data[0]
            mem[u + 32] = ext_call.return_data[32]
            if not Mask(4, 252, mem[t]) == 1:
                idx = idx + 1
                s = ext_call.return_data[32] * s * Mask(16, 236, _342) / (s * Mask(16, 236, _342)) + (10000 * ext_call.return_data[0])
                t = t + 32
                u = u + 64
                continue 
            idx = idx + 1
            s = ext_call.return_data[0] * s * Mask(16, 236, _342) / (s * Mask(16, 236, _342)) + (10000 * ext_call.return_data[32])
            t = t + 32
            u = u + 64
            continue 
        if cd[100] != 1:
            mem[u] = s
            _354 = mem[64]
            _355 = mem[128]
            _366 = mem[64]
            mem[64] = mem[64] + 4
            mem[_366] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _372 = mem[64]
            mem[64] = mem[64] + 32
            mem[_372] = address(_355)
            _376 = mem[64]
            mem[64] = mem[64] + 32
            mem[_376] = cd[4]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.mem[_354 len 4] with:
                 gas gas_remaining wei
                args mem[_354 + 4 len 64]
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            idx = 0
            s = address(_355)
            s = 128
            t = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
            v = cd[4]
            while idx < cd[132]:
                _446 = mem[s]
                mem[_354 + 4] = mem[s + 12 len 20]
                staticcall t.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_446)
                mem[_354] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _451 = mem[floor32(('cd', 36).length) + (32 * idx + 1) + 97]
                _452 = mem[s]
                if not Mask(4, 252, mem[s]) == 1:
                    _466 = mem[u]
                    _468 = mem[u]
                    _469 = mem[u + 32]
                    mem[_354] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_354 + 4] = 0
                    mem[_354 + 36] = (ext_call.return_data[0] * Mask(16, 236, _452) * _469) - (_466 * Mask(16, 236, _452) * _469) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_466 * Mask(16, 236, _452)) + (10000 * _468)
                    if idx != cd[132] - 1:
                        mem[_354 + 68] = mem[s + 44 len 20]
                        mem[_354 + 100] = 128
                        mem[_354 + 132] = 0
                        call address(_446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * Mask(16, 236, _452) * _469) - (_466 * Mask(16, 236, _452) * _469) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_466 * Mask(16, 236, _452)) + (10000 * _468), mem[_354 + 68], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx == cd[132] - 1 == 1:
                            mem[_354 + 68] = this.address
                            mem[_354 + 100] = 128
                            mem[_354 + 132] = 0
                            call address(_446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * Mask(16, 236, _452) * _469) - (_466 * Mask(16, 236, _452) * _469) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_466 * Mask(16, 236, _452)) + (10000 * _468), this.address, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = address(_446)
                    s = s + 32
                    t = _451
                    u = u + 64
                    v = (ext_call.return_data[0] * Mask(16, 236, _452) * _469) - (_466 * Mask(16, 236, _452) * _469) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_466 * Mask(16, 236, _452)) + (10000 * _468)
                    continue 
                _470 = mem[u + 32]
                _472 = mem[u + 32]
                _473 = mem[u]
                mem[_354] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_354 + 4] = (ext_call.return_data[0] * Mask(16, 236, _452) * _473) - (_470 * Mask(16, 236, _452) * _473) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_470 * Mask(16, 236, _452)) + (10000 * _472)
                mem[_354 + 36] = 0
                if idx != cd[132] - 1:
                    mem[_354 + 68] = mem[s + 44 len 20]
                    mem[_354 + 100] = 128
                    mem[_354 + 132] = 0
                    call address(_446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * Mask(16, 236, _452) * _473) - (_470 * Mask(16, 236, _452) * _473) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_470 * Mask(16, 236, _452)) + (10000 * _472), 0, mem[_354 + 68], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx == cd[132] - 1 == 1:
                        mem[_354 + 68] = this.address
                        mem[_354 + 100] = 128
                        mem[_354 + 132] = 0
                        call address(_446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * Mask(16, 236, _452) * _473) - (_470 * Mask(16, 236, _452) * _473) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_470 * Mask(16, 236, _452)) + (10000 * _472), 0, this.address, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = address(_446)
                s = s + 32
                t = _451
                u = u + 64
                v = (ext_call.return_data[0] * Mask(16, 236, _452) * _473) - (_470 * Mask(16, 236, _452) * _473) / (ext_call.return_data[0] * Mask(16, 236, _452)) - (_470 * Mask(16, 236, _452)) + (10000 * _472)
                continue 
        else:
            if s < cd[4]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ' ',
                            0x164d696e2072657475726e206e6f742072656163686564
            mem[u] = s
            _368 = mem[64]
            _369 = mem[128]
            _373 = mem[64]
            mem[64] = mem[64] + 4
            mem[_373] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _377 = mem[64]
            mem[64] = mem[64] + 32
            mem[_377] = address(_369)
            _380 = mem[64]
            mem[64] = mem[64] + 32
            mem[_380] = cd[4]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.mem[_368 len 4] with:
                 gas gas_remaining wei
                args mem[_368 + 4 len 64]
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            idx = 0
            s = address(_369)
            s = 128
            t = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
            v = cd[4]
            while idx < cd[132]:
                _447 = mem[s]
                mem[_368 + 4] = mem[s + 12 len 20]
                staticcall t.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_447)
                mem[_368] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[floor32(('cd', 36).length) + (32 * idx + 1) + 97]
                _456 = mem[s]
                if not Mask(4, 252, mem[s]) == 1:
                    _474 = mem[u]
                    _476 = mem[u]
                    _477 = mem[u + 32]
                    mem[_368] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_368 + 4] = 0
                    mem[_368 + 36] = (ext_call.return_data[0] * Mask(16, 236, _456) * _477) - (_474 * Mask(16, 236, _456) * _477) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_474 * Mask(16, 236, _456)) + (10000 * _476)
                    if idx != cd[132] - 1:
                        mem[_368 + 68] = mem[s + 44 len 20]
                        mem[_368 + 100] = 128
                        mem[_368 + 132] = 0
                        call address(_447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * Mask(16, 236, _456) * _477) - (_474 * Mask(16, 236, _456) * _477) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_474 * Mask(16, 236, _456)) + (10000 * _476), mem[_368 + 68], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx == cd[132] - 1 == 1:
                            mem[_368 + 68] = this.address
                            mem[_368 + 100] = 128
                            mem[_368 + 132] = 0
                            call address(_447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * Mask(16, 236, _456) * _477) - (_474 * Mask(16, 236, _456) * _477) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_474 * Mask(16, 236, _456)) + (10000 * _476), this.address, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = address(_447)
                    s = s + 32
                    t = _455
                    u = u + 64
                    v = (ext_call.return_data[0] * Mask(16, 236, _456) * _477) - (_474 * Mask(16, 236, _456) * _477) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_474 * Mask(16, 236, _456)) + (10000 * _476)
                    continue 
                _478 = mem[u + 32]
                _480 = mem[u + 32]
                _481 = mem[u]
                mem[_368] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_368 + 4] = (ext_call.return_data[0] * Mask(16, 236, _456) * _481) - (_478 * Mask(16, 236, _456) * _481) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_478 * Mask(16, 236, _456)) + (10000 * _480)
                mem[_368 + 36] = 0
                if idx != cd[132] - 1:
                    mem[_368 + 68] = mem[s + 44 len 20]
                    mem[_368 + 100] = 128
                    mem[_368 + 132] = 0
                    call address(_447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * Mask(16, 236, _456) * _481) - (_478 * Mask(16, 236, _456) * _481) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_478 * Mask(16, 236, _456)) + (10000 * _480), 0, mem[_368 + 68], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx == cd[132] - 1 == 1:
                        mem[_368 + 68] = this.address
                        mem[_368 + 100] = 128
                        mem[_368 + 132] = 0
                        call address(_447).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * Mask(16, 236, _456) * _481) - (_478 * Mask(16, 236, _456) * _481) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_478 * Mask(16, 236, _456)) + (10000 * _480), 0, this.address, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = address(_447)
                s = s + 32
                t = _455
                u = u + 64
                v = (ext_call.return_data[0] * Mask(16, 236, _456) * _481) - (_478 * Mask(16, 236, _456) * _481) / (ext_call.return_data[0] * Mask(16, 236, _456)) - (_478 * Mask(16, 236, _456)) + (10000 * _480)
                continue 
    else:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * (2 * ('cd', 36).length) + 1] = call.data[calldata.size len 32 * (2 * ('cd', 36).length) + 1]
        idx = 0
        s = cd[4]
        t = 128
        u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
        while idx < cd[132]:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * (2 * ('cd', 36).length) + 1) + 130] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            staticcall mem[t + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * (2 * ('cd', 36).length) + 1) + 130 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[t]
            mem[u] = ext_call.return_data[0]
            mem[u + 32] = ext_call.return_data[32]
            if not Mask(4, 252, mem[t]) == 1:
                idx = idx + 1
                s = ext_call.return_data[32] * s * Mask(16, 236, _344) / (s * Mask(16, 236, _344)) + (10000 * ext_call.return_data[0])
                t = t + 32
                u = u + 64
                continue 
            idx = idx + 1
            s = ext_call.return_data[0] * s * Mask(16, 236, _344) / (s * Mask(16, 236, _344)) + (10000 * ext_call.return_data[32])
            t = t + 32
            u = u + 64
            continue 
        if cd[100] != 1:
            mem[u] = s
            _360 = mem[64]
            _361 = mem[128]
            _367 = mem[64]
            mem[64] = mem[64] + 4
            mem[_367] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _374 = mem[64]
            mem[64] = mem[64] + 32
            mem[_374] = address(_361)
            _378 = mem[64]
            mem[64] = mem[64] + 32
            mem[_378] = cd[4]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.mem[_360 len 4] with:
                 gas gas_remaining wei
                args mem[_360 + 4 len 64]
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            idx = 0
            s = address(_361)
            s = 128
            t = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
            v = cd[4]
            while idx < cd[132]:
                _448 = mem[s]
                mem[_360 + 4] = mem[s + 12 len 20]
                staticcall t.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_448)
                mem[_360] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _459 = mem[floor32(('cd', 36).length) + (32 * idx + 1) + 97]
                _460 = mem[s]
                if not Mask(4, 252, mem[s]) == 1:
                    _482 = mem[u]
                    _484 = mem[u]
                    _485 = mem[u + 32]
                    mem[_360] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_360 + 4] = 0
                    mem[_360 + 36] = (ext_call.return_data[0] * Mask(16, 236, _460) * _485) - (_482 * Mask(16, 236, _460) * _485) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_482 * Mask(16, 236, _460)) + (10000 * _484)
                    if idx != cd[132] - 1:
                        mem[_360 + 68] = mem[s + 44 len 20]
                        mem[_360 + 100] = 128
                        mem[_360 + 132] = 0
                        call address(_448).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * Mask(16, 236, _460) * _485) - (_482 * Mask(16, 236, _460) * _485) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_482 * Mask(16, 236, _460)) + (10000 * _484), mem[_360 + 68], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx == cd[132] - 1 == 1:
                            mem[_360 + 68] = this.address
                            mem[_360 + 100] = 128
                            mem[_360 + 132] = 0
                            call address(_448).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * Mask(16, 236, _460) * _485) - (_482 * Mask(16, 236, _460) * _485) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_482 * Mask(16, 236, _460)) + (10000 * _484), this.address, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = address(_448)
                    s = s + 32
                    t = _459
                    u = u + 64
                    v = (ext_call.return_data[0] * Mask(16, 236, _460) * _485) - (_482 * Mask(16, 236, _460) * _485) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_482 * Mask(16, 236, _460)) + (10000 * _484)
                    continue 
                _486 = mem[u + 32]
                _488 = mem[u + 32]
                _489 = mem[u]
                mem[_360] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_360 + 4] = (ext_call.return_data[0] * Mask(16, 236, _460) * _489) - (_486 * Mask(16, 236, _460) * _489) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_486 * Mask(16, 236, _460)) + (10000 * _488)
                mem[_360 + 36] = 0
                if idx != cd[132] - 1:
                    mem[_360 + 68] = mem[s + 44 len 20]
                    mem[_360 + 100] = 128
                    mem[_360 + 132] = 0
                    call address(_448).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * Mask(16, 236, _460) * _489) - (_486 * Mask(16, 236, _460) * _489) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_486 * Mask(16, 236, _460)) + (10000 * _488), 0, mem[_360 + 68], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx == cd[132] - 1 == 1:
                        mem[_360 + 68] = this.address
                        mem[_360 + 100] = 128
                        mem[_360 + 132] = 0
                        call address(_448).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * Mask(16, 236, _460) * _489) - (_486 * Mask(16, 236, _460) * _489) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_486 * Mask(16, 236, _460)) + (10000 * _488), 0, this.address, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = address(_448)
                s = s + 32
                t = _459
                u = u + 64
                v = (ext_call.return_data[0] * Mask(16, 236, _460) * _489) - (_486 * Mask(16, 236, _460) * _489) / (ext_call.return_data[0] * Mask(16, 236, _460)) - (_486 * Mask(16, 236, _460)) + (10000 * _488)
                continue 
        else:
            if s < cd[4]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ' ',
                            0x164d696e2072657475726e206e6f742072656163686564
            mem[u] = s
            _370 = mem[64]
            _371 = mem[128]
            _375 = mem[64]
            mem[64] = mem[64] + 4
            mem[_375] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _379 = mem[64]
            mem[64] = mem[64] + 32
            mem[_379] = address(_371)
            _381 = mem[64]
            mem[64] = mem[64] + 32
            mem[_381] = cd[4]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.mem[_370 len 4] with:
                 gas gas_remaining wei
                args mem[_370 + 4 len 64]
            if not ext_call.success:
                revert with memory
                  from 0
                   len return_data.size
            idx = 0
            s = address(_371)
            s = 128
            t = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            u = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
            v = cd[4]
            while idx < cd[132]:
                _449 = mem[s]
                mem[_370 + 4] = mem[s + 12 len 20]
                staticcall t.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_449)
                mem[_370] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[floor32(('cd', 36).length) + (32 * idx + 1) + 97]
                _464 = mem[s]
                if not Mask(4, 252, mem[s]) == 1:
                    _490 = mem[u]
                    _492 = mem[u]
                    _493 = mem[u + 32]
                    mem[_370] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_370 + 4] = 0
                    mem[_370 + 36] = (ext_call.return_data[0] * Mask(16, 236, _464) * _493) - (_490 * Mask(16, 236, _464) * _493) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_490 * Mask(16, 236, _464)) + (10000 * _492)
                    if idx != cd[132] - 1:
                        mem[_370 + 68] = mem[s + 44 len 20]
                        mem[_370 + 100] = 128
                        mem[_370 + 132] = 0
                        call address(_449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * Mask(16, 236, _464) * _493) - (_490 * Mask(16, 236, _464) * _493) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_490 * Mask(16, 236, _464)) + (10000 * _492), mem[_370 + 68], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if idx == cd[132] - 1 == 1:
                            mem[_370 + 68] = this.address
                            mem[_370 + 100] = 128
                            mem[_370 + 132] = 0
                            call address(_449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * Mask(16, 236, _464) * _493) - (_490 * Mask(16, 236, _464) * _493) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_490 * Mask(16, 236, _464)) + (10000 * _492), this.address, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = address(_449)
                    s = s + 32
                    t = _463
                    u = u + 64
                    v = (ext_call.return_data[0] * Mask(16, 236, _464) * _493) - (_490 * Mask(16, 236, _464) * _493) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_490 * Mask(16, 236, _464)) + (10000 * _492)
                    continue 
                _494 = mem[u + 32]
                _496 = mem[u + 32]
                _497 = mem[u]
                mem[_370] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_370 + 4] = (ext_call.return_data[0] * Mask(16, 236, _464) * _497) - (_494 * Mask(16, 236, _464) * _497) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_494 * Mask(16, 236, _464)) + (10000 * _496)
                mem[_370 + 36] = 0
                if idx != cd[132] - 1:
                    mem[_370 + 68] = mem[s + 44 len 20]
                    mem[_370 + 100] = 128
                    mem[_370 + 132] = 0
                    call address(_449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * Mask(16, 236, _464) * _497) - (_494 * Mask(16, 236, _464) * _497) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_494 * Mask(16, 236, _464)) + (10000 * _496), 0, mem[_370 + 68], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx == cd[132] - 1 == 1:
                        mem[_370 + 68] = this.address
                        mem[_370 + 100] = 128
                        mem[_370 + 132] = 0
                        call address(_449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * Mask(16, 236, _464) * _497) - (_494 * Mask(16, 236, _464) * _497) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_494 * Mask(16, 236, _464)) + (10000 * _496), 0, this.address, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = address(_449)
                s = s + 32
                t = _463
                u = u + 64
                v = (ext_call.return_data[0] * Mask(16, 236, _464) * _497) - (_494 * Mask(16, 236, _464) * _497) / (ext_call.return_data[0] * Mask(16, 236, _464)) - (_494 * Mask(16, 236, _464)) + (10000 * _496)
                continue 
    return v, (5 * 10^6 * block.gasprice) - (gas_remaining * block.gasprice)
}



}
