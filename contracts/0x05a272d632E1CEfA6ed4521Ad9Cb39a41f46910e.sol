contract main {




// =====================  Runtime code  =====================


#
#  - sub_12954ec3(?)
#
address owner;
address sub_57dfb313Address;
address sub_7559d0beAddress;

function sub_57dfb313(?) {
    return sub_57dfb313Address
}

function sub_7559d0be(?) {
    return sub_7559d0beAddress
}

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

function sub_d78a87c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_57dfb313Address = address(arg1)
}

function sub_df73dd94(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7559d0beAddress = address(arg1)
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

function sub_c84348da(?) {
    require calldata.size - 4 >= 64
    mem[96] = 0xd43c816a00000000000000000000000000000000000000000000000000000000
    staticcall sub_57dfb313Address.0xd43c816a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _4 + 128
    while idx < (32 * _5) + _4 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    staticcall sub_57dfb313Address.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    if _5 > test266151307():
        revert with 0, 65
    _83 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _152 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_152)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _159 = mem[_156]
            if arg1 and mem[_156] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_156] / _81 and 1 > -1 / arg1 * mem[_156] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_156] / _81:
                    revert with 0, 17
                _183 = mem[64]
                mem[64] = mem[64] + 96
                mem[_183] = address(_152)
                mem[_183 + 32] = _159
                mem[_183 + 64] = arg1 * _159 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _183
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _159 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_156] / _81 and 10^arg2 > -1 / arg1 * mem[_156] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_156] / _81 * 10^arg2:
                        revert with 0, 17
                    _186 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_186] = address(_152)
                    mem[_186 + 32] = _159
                    mem[_186 + 64] = arg1 * _159 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _186
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _159 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_156] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_156] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_156] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _191 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_191] = address(_152)
                    mem[_191 + 32] = _159
                    mem[_191 + 64] = arg1 * _159 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _191
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _159 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_156] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_156] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_156] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _245 = mem[64]
                mem[64] = mem[64] + 96
                mem[_245] = address(_152)
                mem[_245 + 32] = _159
                mem[_245 + 64] = arg1 * _159 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _245
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _159 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_156] / _81 and u * v > -1 / arg1 * mem[_156] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_156] / _81 * u * v:
                    revert with 0, 17
                _253 = mem[64]
                mem[64] = mem[64] + 96
                mem[_253] = address(_152)
                mem[_253 + 32] = _159
                mem[_253 + 64] = arg1 * _159 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _253
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _159 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_156] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_156] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_156] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _255 = mem[64]
                mem[64] = mem[64] + 96
                mem[_255] = address(_152)
                mem[_255 + 32] = _159
                mem[_255 + 64] = arg1 * _159 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _255
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _159 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_156] / _81 / w * x and u * v > -1 / arg1 * mem[_156] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_156] / _81 / w * x * u * v:
                revert with 0, 17
            _318 = mem[64]
            mem[64] = mem[64] + 96
            mem[_318] = address(_152)
            mem[_318 + 32] = _159
            mem[_318 + 64] = arg1 * _159 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _318
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _159 / _81 / w * x * u * v)
            continue 
        _149 = mem[64]
        mem[64] = mem[64] + 96
        mem[_149] = msg.sender
        mem[_149 + 32] = 0
        mem[_149 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _149
        _166 = mem[64]
        mem[mem[64]] = 32
        _168 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _168:
            _211 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_211 + 32]
            mem[t + 64] = mem[_211 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _166 + (96 * _168) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 128
    mem[_83 + (32 * _5) + 32] = 0
    mem[_83 + (32 * _5) + 64] = 0
    mem[_83 + (32 * _5) + 96] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _293 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_293)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_296]
            if arg1 and mem[_296] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_296] / _81 and 1 > -1 / arg1 * mem[_296] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_296] / _81:
                    revert with 0, 17
                _325 = mem[64]
                mem[64] = mem[64] + 96
                mem[_325] = address(_293)
                mem[_325 + 32] = _302
                mem[_325 + 64] = arg1 * _302 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _325
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _302 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_296] / _81 and 10^arg2 > -1 / arg1 * mem[_296] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_296] / _81 * 10^arg2:
                        revert with 0, 17
                    _328 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_328] = address(_293)
                    mem[_328 + 32] = _302
                    mem[_328 + 64] = arg1 * _302 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _328
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _302 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_296] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_296] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_296] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _333 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_333] = address(_293)
                    mem[_333 + 32] = _302
                    mem[_333 + 64] = arg1 * _302 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _333
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _302 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_296] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_296] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_296] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _388 = mem[64]
                mem[64] = mem[64] + 96
                mem[_388] = address(_293)
                mem[_388 + 32] = _302
                mem[_388 + 64] = arg1 * _302 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _388
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _302 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_296] / _81 and u * v > -1 / arg1 * mem[_296] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_296] / _81 * u * v:
                    revert with 0, 17
                _395 = mem[64]
                mem[64] = mem[64] + 96
                mem[_395] = address(_293)
                mem[_395 + 32] = _302
                mem[_395 + 64] = arg1 * _302 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _395
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _302 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_296] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_296] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_296] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _397 = mem[64]
                mem[64] = mem[64] + 96
                mem[_397] = address(_293)
                mem[_397 + 32] = _302
                mem[_397 + 64] = arg1 * _302 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _397
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _302 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_296] / _81 / w * x and u * v > -1 / arg1 * mem[_296] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_296] / _81 / w * x * u * v:
                revert with 0, 17
            _464 = mem[64]
            mem[64] = mem[64] + 96
            mem[_464] = address(_293)
            mem[_464 + 32] = _302
            mem[_464 + 64] = arg1 * _302 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _464
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _302 / _81 / w * x * u * v)
            continue 
        _289 = mem[64]
        mem[64] = mem[64] + 96
        mem[_289] = msg.sender
        mem[_289 + 32] = 0
        mem[_289 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _289
        _307 = mem[64]
        mem[mem[64]] = 32
        _309 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _309:
            _354 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_354 + 32]
            mem[t + 64] = mem[_354 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _307 + (96 * _309) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 224
    mem[_83 + (32 * _5) + 128] = 0
    mem[_83 + (32 * _5) + 160] = 0
    mem[_83 + (32 * _5) + 192] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _435 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_435)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _444 = mem[_438]
            if arg1 and mem[_438] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_438] / _81 and 1 > -1 / arg1 * mem[_438] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_438] / _81:
                    revert with 0, 17
                _467 = mem[64]
                mem[64] = mem[64] + 96
                mem[_467] = address(_435)
                mem[_467 + 32] = _444
                mem[_467 + 64] = arg1 * _444 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _467
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _444 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_438] / _81 and 10^arg2 > -1 / arg1 * mem[_438] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_438] / _81 * 10^arg2:
                        revert with 0, 17
                    _470 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_470] = address(_435)
                    mem[_470 + 32] = _444
                    mem[_470 + 64] = arg1 * _444 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _470
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _444 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_438] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_438] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_438] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _475 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_475] = address(_435)
                    mem[_475 + 32] = _444
                    mem[_475 + 64] = arg1 * _444 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _475
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _444 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_438] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_438] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_438] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _530 = mem[64]
                mem[64] = mem[64] + 96
                mem[_530] = address(_435)
                mem[_530 + 32] = _444
                mem[_530 + 64] = arg1 * _444 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _530
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _444 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_438] / _81 and u * v > -1 / arg1 * mem[_438] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_438] / _81 * u * v:
                    revert with 0, 17
                _537 = mem[64]
                mem[64] = mem[64] + 96
                mem[_537] = address(_435)
                mem[_537 + 32] = _444
                mem[_537 + 64] = arg1 * _444 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _537
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _444 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_438] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_438] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_438] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _539 = mem[64]
                mem[64] = mem[64] + 96
                mem[_539] = address(_435)
                mem[_539 + 32] = _444
                mem[_539 + 64] = arg1 * _444 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _539
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _444 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_438] / _81 / w * x and u * v > -1 / arg1 * mem[_438] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_438] / _81 / w * x * u * v:
                revert with 0, 17
            _606 = mem[64]
            mem[64] = mem[64] + 96
            mem[_606] = address(_435)
            mem[_606 + 32] = _444
            mem[_606 + 64] = arg1 * _444 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _606
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _444 / _81 / w * x * u * v)
            continue 
        _431 = mem[64]
        mem[64] = mem[64] + 96
        mem[_431] = msg.sender
        mem[_431 + 32] = 0
        mem[_431 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _431
        _449 = mem[64]
        mem[mem[64]] = 32
        _451 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _451:
            _496 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_496 + 32]
            mem[t + 64] = mem[_496 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _449 + (96 * _451) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 320
    mem[_83 + (32 * _5) + 224] = 0
    mem[_83 + (32 * _5) + 256] = 0
    mem[_83 + (32 * _5) + 288] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _577 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_577)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _580 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _586 = mem[_580]
            if arg1 and mem[_580] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_580] / _81 and 1 > -1 / arg1 * mem[_580] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_580] / _81:
                    revert with 0, 17
                _609 = mem[64]
                mem[64] = mem[64] + 96
                mem[_609] = address(_577)
                mem[_609 + 32] = _586
                mem[_609 + 64] = arg1 * _586 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _609
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _586 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_580] / _81 and 10^arg2 > -1 / arg1 * mem[_580] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_580] / _81 * 10^arg2:
                        revert with 0, 17
                    _612 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_612] = address(_577)
                    mem[_612 + 32] = _586
                    mem[_612 + 64] = arg1 * _586 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _612
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _586 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_580] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_580] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_580] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _617 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_617] = address(_577)
                    mem[_617 + 32] = _586
                    mem[_617 + 64] = arg1 * _586 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _617
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _586 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_580] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_580] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_580] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _672 = mem[64]
                mem[64] = mem[64] + 96
                mem[_672] = address(_577)
                mem[_672 + 32] = _586
                mem[_672 + 64] = arg1 * _586 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _672
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _586 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_580] / _81 and u * v > -1 / arg1 * mem[_580] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_580] / _81 * u * v:
                    revert with 0, 17
                _679 = mem[64]
                mem[64] = mem[64] + 96
                mem[_679] = address(_577)
                mem[_679 + 32] = _586
                mem[_679 + 64] = arg1 * _586 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _679
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _586 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_580] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_580] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_580] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _681 = mem[64]
                mem[64] = mem[64] + 96
                mem[_681] = address(_577)
                mem[_681 + 32] = _586
                mem[_681 + 64] = arg1 * _586 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _681
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _586 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_580] / _81 / w * x and u * v > -1 / arg1 * mem[_580] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_580] / _81 / w * x * u * v:
                revert with 0, 17
            _748 = mem[64]
            mem[64] = mem[64] + 96
            mem[_748] = address(_577)
            mem[_748 + 32] = _586
            mem[_748 + 64] = arg1 * _586 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _748
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _586 / _81 / w * x * u * v)
            continue 
        _573 = mem[64]
        mem[64] = mem[64] + 96
        mem[_573] = msg.sender
        mem[_573 + 32] = 0
        mem[_573 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _573
        _591 = mem[64]
        mem[mem[64]] = 32
        _593 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _593:
            _638 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_638 + 32]
            mem[t + 64] = mem[_638 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _591 + (96 * _593) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 416
    mem[_83 + (32 * _5) + 320] = 0
    mem[_83 + (32 * _5) + 352] = 0
    mem[_83 + (32 * _5) + 384] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _719 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_719)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _722 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _728 = mem[_722]
            if arg1 and mem[_722] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_722] / _81 and 1 > -1 / arg1 * mem[_722] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_722] / _81:
                    revert with 0, 17
                _751 = mem[64]
                mem[64] = mem[64] + 96
                mem[_751] = address(_719)
                mem[_751 + 32] = _728
                mem[_751 + 64] = arg1 * _728 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _751
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _728 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_722] / _81 and 10^arg2 > -1 / arg1 * mem[_722] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_722] / _81 * 10^arg2:
                        revert with 0, 17
                    _754 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_754] = address(_719)
                    mem[_754 + 32] = _728
                    mem[_754 + 64] = arg1 * _728 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _754
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _728 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_722] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_722] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_722] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _759 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_759] = address(_719)
                    mem[_759 + 32] = _728
                    mem[_759 + 64] = arg1 * _728 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _759
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _728 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_722] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_722] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_722] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _814 = mem[64]
                mem[64] = mem[64] + 96
                mem[_814] = address(_719)
                mem[_814 + 32] = _728
                mem[_814 + 64] = arg1 * _728 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _814
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _728 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_722] / _81 and u * v > -1 / arg1 * mem[_722] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_722] / _81 * u * v:
                    revert with 0, 17
                _821 = mem[64]
                mem[64] = mem[64] + 96
                mem[_821] = address(_719)
                mem[_821 + 32] = _728
                mem[_821 + 64] = arg1 * _728 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _821
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _728 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_722] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_722] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_722] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _823 = mem[64]
                mem[64] = mem[64] + 96
                mem[_823] = address(_719)
                mem[_823 + 32] = _728
                mem[_823 + 64] = arg1 * _728 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _823
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _728 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_722] / _81 / w * x and u * v > -1 / arg1 * mem[_722] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_722] / _81 / w * x * u * v:
                revert with 0, 17
            _890 = mem[64]
            mem[64] = mem[64] + 96
            mem[_890] = address(_719)
            mem[_890 + 32] = _728
            mem[_890 + 64] = arg1 * _728 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _890
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _728 / _81 / w * x * u * v)
            continue 
        _715 = mem[64]
        mem[64] = mem[64] + 96
        mem[_715] = msg.sender
        mem[_715 + 32] = 0
        mem[_715 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _715
        _733 = mem[64]
        mem[mem[64]] = 32
        _735 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _735:
            _780 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_780 + 32]
            mem[t + 64] = mem[_780 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _733 + (96 * _735) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 512
    mem[_83 + (32 * _5) + 416] = 0
    mem[_83 + (32 * _5) + 448] = 0
    mem[_83 + (32 * _5) + 480] = 0
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _861 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_861)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _864 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _870 = mem[_864]
            if arg1 and mem[_864] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_864] / _81 and 1 > -1 / arg1 * mem[_864] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_864] / _81:
                    revert with 0, 17
                _893 = mem[64]
                mem[64] = mem[64] + 96
                mem[_893] = address(_861)
                mem[_893 + 32] = _870
                mem[_893 + 64] = arg1 * _870 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _893
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _870 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_864] / _81 and 10^arg2 > -1 / arg1 * mem[_864] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_864] / _81 * 10^arg2:
                        revert with 0, 17
                    _896 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_896] = address(_861)
                    mem[_896 + 32] = _870
                    mem[_896 + 64] = arg1 * _870 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _896
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _870 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_864] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_864] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_864] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _901 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_901] = address(_861)
                    mem[_901 + 32] = _870
                    mem[_901 + 64] = arg1 * _870 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _901
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _870 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_864] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_864] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_864] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _956 = mem[64]
                mem[64] = mem[64] + 96
                mem[_956] = address(_861)
                mem[_956 + 32] = _870
                mem[_956 + 64] = arg1 * _870 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _956
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _870 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_864] / _81 and u * v > -1 / arg1 * mem[_864] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_864] / _81 * u * v:
                    revert with 0, 17
                _963 = mem[64]
                mem[64] = mem[64] + 96
                mem[_963] = address(_861)
                mem[_963 + 32] = _870
                mem[_963 + 64] = arg1 * _870 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _963
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _870 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_864] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_864] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_864] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _965 = mem[64]
                mem[64] = mem[64] + 96
                mem[_965] = address(_861)
                mem[_965 + 32] = _870
                mem[_965 + 64] = arg1 * _870 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _965
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _870 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_864] / _81 / w * x and u * v > -1 / arg1 * mem[_864] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_864] / _81 / w * x * u * v:
                revert with 0, 17
            _1032 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1032] = address(_861)
            mem[_1032 + 32] = _870
            mem[_1032 + 64] = arg1 * _870 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _1032
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _870 / _81 / w * x * u * v)
            continue 
        _857 = mem[64]
        mem[64] = mem[64] + 96
        mem[_857] = msg.sender
        mem[_857 + 32] = 0
        mem[_857 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _857
        _875 = mem[64]
        mem[mem[64]] = 32
        _877 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _877:
            _922 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_922 + 32]
            mem[t + 64] = mem[_922 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _875 + (96 * _877) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 608
    mem[_83 + (32 * _5) + 512] = 0
    mem[_83 + (32 * _5) + 544] = 0
    mem[_83 + (32 * _5) + 576] = 0
    mem[var49002] = var49001
    if not var49003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _1003 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1003)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1012 = mem[_1006]
            if arg1 and mem[_1006] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_1006] / _81 and 1 > -1 / arg1 * mem[_1006] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_1006] / _81:
                    revert with 0, 17
                _1035 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1035] = address(_1003)
                mem[_1035 + 32] = _1012
                mem[_1035 + 64] = arg1 * _1012 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1035
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1012 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_1006] / _81 and 10^arg2 > -1 / arg1 * mem[_1006] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_1006] / _81 * 10^arg2:
                        revert with 0, 17
                    _1038 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1038] = address(_1003)
                    mem[_1038 + 32] = _1012
                    mem[_1038 + 64] = arg1 * _1012 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1038
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1012 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_1006] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_1006] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_1006] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _1043 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1043] = address(_1003)
                    mem[_1043 + 32] = _1012
                    mem[_1043 + 64] = arg1 * _1012 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1043
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1012 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_1006] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_1006] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_1006] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _1098 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1098] = address(_1003)
                mem[_1098 + 32] = _1012
                mem[_1098 + 64] = arg1 * _1012 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1098
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1012 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_1006] / _81 and u * v > -1 / arg1 * mem[_1006] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_1006] / _81 * u * v:
                    revert with 0, 17
                _1105 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1105] = address(_1003)
                mem[_1105 + 32] = _1012
                mem[_1105 + 64] = arg1 * _1012 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1105
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1012 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_1006] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_1006] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_1006] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _1107 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1107] = address(_1003)
                mem[_1107 + 32] = _1012
                mem[_1107 + 64] = arg1 * _1012 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1107
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1012 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_1006] / _81 / w * x and u * v > -1 / arg1 * mem[_1006] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_1006] / _81 / w * x * u * v:
                revert with 0, 17
            _1174 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1174] = address(_1003)
            mem[_1174 + 32] = _1012
            mem[_1174 + 64] = arg1 * _1012 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _1174
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _1012 / _81 / w * x * u * v)
            continue 
        _999 = mem[64]
        mem[64] = mem[64] + 96
        mem[_999] = msg.sender
        mem[_999 + 32] = 0
        mem[_999 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _999
        _1017 = mem[64]
        mem[mem[64]] = 32
        _1019 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _1019:
            _1064 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1064 + 32]
            mem[t + 64] = mem[_1064 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1017 + (96 * _1019) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 704
    mem[_83 + (32 * _5) + 608] = 0
    mem[_83 + (32 * _5) + 640] = 0
    mem[_83 + (32 * _5) + 672] = 0
    mem[var53002] = var53001
    if not var53003 - 1:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _1145 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1145)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1154 = mem[_1148]
            if arg1 and mem[_1148] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_1148] / _81 and 1 > -1 / arg1 * mem[_1148] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_1148] / _81:
                    revert with 0, 17
                _1177 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1177] = address(_1145)
                mem[_1177 + 32] = _1154
                mem[_1177 + 64] = arg1 * _1154 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1177
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1154 / _81)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not arg2:
                    if arg1 * mem[_1148] / _81 and 10^arg2 > -1 / arg1 * mem[_1148] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_1148] / _81 * 10^arg2:
                        revert with 0, 17
                    _1180 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1180] = address(_1145)
                    mem[_1180 + 32] = _1154
                    mem[_1180 + 64] = arg1 * _1154 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1180
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1154 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_1148] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_1148] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_1148] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _1185 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1185] = address(_1145)
                    mem[_1185 + 32] = _1154
                    mem[_1185 + 64] = arg1 * _1154 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1185
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1154 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_1148] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_1148] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_1148] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _1240 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1240] = address(_1145)
                mem[_1240 + 32] = _1154
                mem[_1240 + 64] = arg1 * _1154 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1240
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1154 / _81 / u * v * 10^arg2)
                continue 
            u = 10
            v = 1
            t = arg2
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not arg2:
                if arg1 * mem[_1148] / _81 and u * v > -1 / arg1 * mem[_1148] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_1148] / _81 * u * v:
                    revert with 0, 17
                _1247 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1247] = address(_1145)
                mem[_1247 + 32] = _1154
                mem[_1247 + 64] = arg1 * _1154 / _81 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1247
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1154 / _81 * u * v)
                continue 
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                if not 10^arg2:
                    revert with 0, 18
                if arg1 * mem[_1148] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_1148] / _81 / 10^arg2:
                    revert with 0, 17
                if s < arg1 * mem[_1148] / _81 / 10^arg2 * u * v:
                    revert with 0, 17
                _1249 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1249] = address(_1145)
                mem[_1249 + 32] = _1154
                mem[_1249 + 64] = arg1 * _1154 / _81 / 10^arg2 * u * v
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1249
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1154 / _81 / 10^arg2 * u * v)
                continue 
            w = 10
            x = 1
            t = arg2
            while t > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(t):
                    w = w * w
                    x = x
                    t = uint255(t) * 0.5
                    continue 
                w = w * w
                x = w * x
                t = uint255(t) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if not w * x:
                revert with 0, 18
            if arg1 * mem[_1148] / _81 / w * x and u * v > -1 / arg1 * mem[_1148] / _81 / w * x:
                revert with 0, 17
            if s < arg1 * mem[_1148] / _81 / w * x * u * v:
                revert with 0, 17
            _1316 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1316] = address(_1145)
            mem[_1316 + 32] = _1154
            mem[_1316 + 64] = arg1 * _1154 / _81 / w * x * u * v
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[_83]:
                revert with 0, 50
            mem[(32 * idx - 1) + _83 + 32] = _1316
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - (arg1 * _1154 / _81 / w * x * u * v)
            continue 
        _1141 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1141] = msg.sender
        mem[_1141 + 32] = 0
        mem[_1141 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _1141
        _1159 = mem[64]
        mem[mem[64]] = 32
        _1161 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _1161:
            _1206 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1206 + 32]
            mem[t + 64] = mem[_1206 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1159 + (96 * _1161) + -mem[64] + 64
    mem[64] = _83 + (32 * _5) + 800
    mem[_83 + (32 * _5) + 704] = 0
    mem[_83 + (32 * _5) + 736] = 0
    mem[_83 + (32 * _5) + 768] = 0
    mem[var57002] = var57001
    if var57003 - 1:
        # nil
    else:
        idx = 1
        s = arg1
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _1287 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            staticcall sub_57dfb313Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1287)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1296 = mem[_1290]
            if arg1 and mem[_1290] > -1 / arg1:
                revert with 0, 17
            if not _81:
                revert with 0, 18
            if not arg2:
                if arg1 * mem[_1290] / _81 and 1 > -1 / arg1 * mem[_1290] / _81:
                    revert with 0, 17
                if s < arg1 * mem[_1290] / _81:
                    revert with 0, 17
                _1319 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1319] = address(_1287)
                mem[_1319 + 32] = _1296
                mem[_1319 + 64] = arg1 * _1296 / _81
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1319
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1296 / _81)
                continue 
            if not bool(arg2 < 78) and not bool(arg2 < 32):
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not arg2:
                    if arg1 * mem[_1290] / _81 and u * v > -1 / arg1 * mem[_1290] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_1290] / _81 * u * v:
                        revert with 0, 17
                    _1389 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1389] = address(_1287)
                    mem[_1389 + 32] = _1296
                    mem[_1389 + 64] = arg1 * _1296 / _81 * u * v
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1389
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1296 / _81 * u * v)
                    continue 
                if not bool(arg2 < 78) and not bool(arg2 < 32):
                    # nil
                else:
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_1290] / _81 / 10^arg2 and u * v > -1 / arg1 * mem[_1290] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_1290] / _81 / 10^arg2 * u * v:
                        revert with 0, 17
                    _1391 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1391] = address(_1287)
                    mem[_1391 + 32] = _1296
                    mem[_1391 + 64] = arg1 * _1296 / _81 / 10^arg2 * u * v
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1391
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1296 / _81 / 10^arg2 * u * v)
                    continue 
            else:
                if not arg2:
                    if arg1 * mem[_1290] / _81 and 10^arg2 > -1 / arg1 * mem[_1290] / _81:
                        revert with 0, 17
                    if s < arg1 * mem[_1290] / _81 * 10^arg2:
                        revert with 0, 17
                    _1322 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1322] = address(_1287)
                    mem[_1322 + 32] = _1296
                    mem[_1322 + 64] = arg1 * _1296 / _81 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1322
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1296 / _81 * 10^arg2)
                    continue 
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if not 10^arg2:
                        revert with 0, 18
                    if arg1 * mem[_1290] / _81 / 10^arg2 and 10^arg2 > -1 / arg1 * mem[_1290] / _81 / 10^arg2:
                        revert with 0, 17
                    if s < arg1 * mem[_1290] / _81 / 10^arg2 * 10^arg2:
                        revert with 0, 17
                    _1327 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1327] = address(_1287)
                    mem[_1327 + 32] = _1296
                    mem[_1327 + 64] = arg1 * _1296 / _81 / 10^arg2 * 10^arg2
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_83]:
                        revert with 0, 50
                    mem[(32 * idx - 1) + _83 + 32] = _1327
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - (arg1 * _1296 / _81 / 10^arg2 * 10^arg2)
                    continue 
                u = 10
                v = 1
                t = arg2
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if arg1 * mem[_1290] / _81 / u * v and 10^arg2 > -1 / arg1 * mem[_1290] / _81 / u * v:
                    revert with 0, 17
                if s < arg1 * mem[_1290] / _81 / u * v * 10^arg2:
                    revert with 0, 17
                _1382 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1382] = address(_1287)
                mem[_1382 + 32] = _1296
                mem[_1382 + 64] = arg1 * _1296 / _81 / u * v * 10^arg2
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_83]:
                    revert with 0, 50
                mem[(32 * idx - 1) + _83 + 32] = _1382
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - (arg1 * _1296 / _81 / u * v * 10^arg2)
                continue 
        _1283 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1283] = msg.sender
        mem[_1283 + 32] = 0
        mem[_1283 + 64] = s
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 96] - 1 >= mem[_83]:
            revert with 0, 50
        mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + _83 + 32] = _1283
        _1301 = mem[64]
        mem[mem[64]] = 32
        _1303 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _1303:
            _1348 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1348 + 32]
            mem[t + 64] = mem[_1348 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1301 + (96 * _1303) + -mem[64] + 64
}



}
