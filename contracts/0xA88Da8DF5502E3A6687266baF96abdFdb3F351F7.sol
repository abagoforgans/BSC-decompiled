contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint128 stor4;
address stor5;
array of address stor6;
array of struct stor7;
array of address stor8;
address stor9;

function _fallback() payable {
    revert
}

function sub_c0336629(?) {
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor3 = 0
}

function sub_1dd11731(?) {
    mem[64] = (32 * stor7.length) + 128
    mem[96] = stor7.length
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        idx = 0
        s = 128
        t = (32 * stor7.length) + 192
        while idx < stor7.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = address(stor7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor7.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor7.length) + -mem[64] + 192
}

function sub_43234915(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    s = 0
    while idx < stor6.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if ext_code.size(address(stor7[idx].field_0)) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = address(stor7[idx].field_0)
            s = ext_code.size(address(stor7[idx].field_0))
            continue 
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        mem[mem[64] + 4] = address(stor7[idx].field_0)
        require ext_code.size(stor6[idx])
        staticcall stor6[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(stor7[idx].field_0)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == mem[_18]
        if mem[_18] < stor4:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = address(stor7[idx].field_0)
            s = mem[_18]
            continue 
        if idx >= stor6.length:
            revert with 'NH{q', 50
        return stor6[idx]
    return 0
}

function sub_c8ce6c78(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    if not address(cd[4]):
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value cd[68] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == bool(mem[_40])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_8a9852c1(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    s = 0
    while idx < stor6.length:
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if ext_code.size(address(stor7[idx].field_0)) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = address(stor7[idx].field_0)
            s = ext_code.size(address(stor7[idx].field_0))
            continue 
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        mem[mem[64] + 4] = address(stor7[idx].field_0)
        require ext_code.size(stor6[idx])
        staticcall stor6[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(stor7[idx].field_0)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if mem[_31] < stor4:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = address(stor7[idx].field_0)
            s = mem[_31]
            continue 
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        _36 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_36]:
            revert with 'NH{q', 50
        mem[_36 + 32] = stor6[idx]
        if 1 >= mem[_36]:
            revert with 'NH{q', 50
        mem[_36 + 64] = stor0
        mem[_36 + 96] = 32
        mem[_36 + 128] = mem[_36]
        idx = 0
        s = _36 + 32
        t = _36 + 160
        while idx < mem[_36]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _36 + (32 * mem[_36]) + -mem[64] + 160
    _25 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_25]:
        revert with 'NH{q', 50
    mem[_25 + 32] = 0
    if 1 >= mem[_25]:
        revert with 'NH{q', 50
    mem[_25 + 64] = stor0
    mem[_25 + 96] = 32
    mem[_25 + 128] = mem[_25]
    idx = 0
    s = _25 + 32
    t = _25 + 160
    while idx < mem[_25]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _25 + (32 * mem[_25]) + -mem[64] + 160
}

function sub_12405e47(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == Mask(112, 0, arg3)
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    mem[96] = 2
    mem[128 len 64] = call.data[calldata.size len 64]
    stor8.length = 2
    mem[0] = 8
    s = 0
    idx = 128
    while 192 > idx:
        address(stor8[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor8.length > idx:
        uint256(stor8[idx]) = 0
        idx = idx + 1
        continue 
    stor0 = address(arg1)
    stor1 = address(arg2)
    stor4 = Mask(112, 0, arg3)
    stor3 = 1
    if stor6.length > test266151307():
        revert with 'NH{q', 65
    mem[192] = stor6.length
    mem[64] = (32 * stor6.length) + 224
    if not stor6.length:
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor6[idx] < address(arg1):
                _287 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _291 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _293 = sha3(mem[_291 + 32 len mem[_291]])
                mem[_287 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_287 + 105] = stor5
                mem[_287 + 125] = _293
                mem[_287 + 157] = 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb
                mem[_287 + 72] = 85
                mem[64] = _287 + 189
                if idx >= mem[192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 224] = address(sha3(0, stor5, _293, 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb))
            else:
                _288 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _295 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _297 = sha3(mem[_295 + 32 len mem[_295]])
                mem[_288 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_288 + 105] = stor5
                mem[_288 + 125] = _297
                mem[_288 + 157] = 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb
                mem[_288 + 72] = 85
                mem[64] = _288 + 189
                if idx >= mem[192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 224] = address(sha3(0, stor5, _297, 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[224 len 32 * stor6.length] = call.data[calldata.size len 32 * stor6.length]
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor6[idx] < address(arg1):
                _289 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _299 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _301 = sha3(mem[_299 + 32 len mem[_299]])
                mem[_289 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_289 + 105] = stor5
                mem[_289 + 125] = _301
                mem[_289 + 157] = 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb
                mem[_289 + 72] = 85
                mem[64] = _289 + 189
                if idx >= mem[192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 224] = address(sha3(0, stor5, _301, 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb))
            else:
                _290 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _303 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _305 = sha3(mem[_303 + 32 len mem[_303]])
                mem[_290 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_290 + 105] = stor5
                mem[_290 + 125] = _305
                mem[_290 + 157] = 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb
                mem[_290 + 72] = 85
                mem[64] = _290 + 189
                if idx >= mem[192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 224] = address(sha3(0, stor5, _305, 0xa09f7ad489ebacc50d67f97c0fe03a38d38ddbbbb56d1cf44cd44317f5d59fdb))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    stor7.length = mem[192]
    if not mem[192]:
        idx = 0
        while stor7.length > idx:
            uint256(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 224
        while (32 * mem[192]) + 224 > idx:
            address(stor7[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[192]) + 31) >> 5
        while stor7.length > idx:
            uint256(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_ffa39300(?) payable {
    mem[64] = 96
    if stor3 == 1:
        idx = 0
        s = 0
        s = 0
        while idx < stor6.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if ext_code.size(address(stor7[idx].field_0)) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx].field_0)
                s = ext_code.size(address(stor7[idx].field_0))
                continue 
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            mem[mem[64] + 4] = address(stor7[idx].field_0)
            require ext_code.size(stor6[idx])
            staticcall stor6[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(stor7[idx].field_0)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_31] == mem[_31]
            if mem[_31] < stor4:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx].field_0)
                s = mem[_31]
                continue 
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if stor6[idx]:
                stor3 = 0
                _34 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_34]:
                    revert with 'NH{q', 50
                mem[_34 + 32] = stor6[idx]
                if 1 >= mem[_34]:
                    revert with 'NH{q', 50
                mem[_34 + 64] = stor0
                mem[_34 + 100] = this.address
                require ext_code.size(stor6[idx])
                staticcall stor6[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_34 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _34 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if block.timestamp > -1201:
                    revert with 'NH{q', 17
                mem[_34 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_34 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                mem[_34 + ceil32(return_data.size) + 132] = 0
                mem[_34 + ceil32(return_data.size) + 164] = 160
                mem[_34 + ceil32(return_data.size) + 260] = mem[_34]
                s = 0
                t = _34 + 32
                u = _34 + ceil32(return_data.size) + 292
                while s < mem[_34]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_34 + ceil32(return_data.size) + 196] = stor1
                mem[_34 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor1, block.timestamp + 1200, mem[_34 + ceil32(return_data.size) + 260 len (32 * mem[_34]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_34 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _34 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _56 = mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
                require mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require _34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _34 + ceil32(return_data.size) + return_data.size + 96
                _57 = mem[_34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                if mem[_34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
                    revert with 'NH{q', 65
                if _34 + (2 * ceil32(return_data.size)) + floor32(mem[_34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[_34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _34 + (2 * ceil32(return_data.size)) + floor32(mem[_34 + ceil32(return_data.size) + mem[_34 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
                mem[_34 + (2 * ceil32(return_data.size)) + 96] = _57
                require _56 + (32 * _57) + 32 <= return_data.size
                s = 0
                t = _34 + ceil32(return_data.size) + _56 + 128
                u = _34 + (2 * ceil32(return_data.size)) + 128
                while s < _57:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _64 = mem[64]
                mem[64] = mem[64] + 64
                mem[_64] = stor0
                mem[_64 + 32] = stor6[idx]
                stor8.length = 2
                mem[0] = 8
                s = sha3(8)
                idx = _64
                while _64 + 64 > idx:
                    address(stor[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(8) + 2
                while sha3(8) + stor8.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
}



}
