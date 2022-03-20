contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a6efb1ec(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 128] = 32
        mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < ('cd', 4).length:
            mem[u] = t + -(32 * ('cd', 4).length) - 192
            _332 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _334 = mem[_332 + 32]
            mem[t + 32] = 192
            _337 = mem[_334]
            mem[t + 192] = mem[_334]
            v = 0
            while v < _337:
                mem[v + t + 224] = mem[v + _334 + 32]
                v = v + 32
                continue 
            if ceil32(_337) <= _337:
                _501 = mem[_332 + 64]
                mem[t + 64] = ceil32(_337) + 224
                _505 = mem[_501]
                mem[ceil32(_337) + t + 224] = mem[_501]
                v = 0
                while v < _505:
                    mem[v + ceil32(_337) + t + 256] = mem[v + _501 + 32]
                    v = v + 32
                    continue 
                if ceil32(_505) > _505:
                    mem[ceil32(_337) + t + _505 + 256] = 0
                mem[t + 96] = mem[_332 + 127 len 1]
                mem[t + 128] = mem[_332 + 128]
                mem[t + 160] = mem[_332 + 160]
                idx = idx + 1
                s = s + 32
                t = ceil32(_505) + ceil32(_337) + t + 256
                u = u + 32
                continue 
            mem[t + _337 + 224] = 0
            _506 = mem[_332 + 64]
            mem[t + 64] = ceil32(_337) + 224
            _511 = mem[_506]
            mem[ceil32(_337) + t + 224] = mem[_506]
            v = 0
            while v < _511:
                mem[v + ceil32(_337) + t + 256] = mem[v + _506 + 32]
                v = v + 32
                continue 
            if ceil32(_511) > _511:
                mem[ceil32(_337) + t + _511 + 256] = 0
            mem[t + 96] = mem[_332 + 127 len 1]
            mem[t + 128] = mem[_332 + 128]
            mem[t + 160] = mem[_332 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_511) + ceil32(_337) + t + 256
            u = u + 32
            continue 
    else:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _338 = mem[64]
                mem[64] = mem[64] + 192
                mem[_338] = 0
                mem[_338 + 32] = 96
                mem[_338 + 64] = 96
                mem[_338 + 96] = 0
                mem[_338 + 128] = 0
                mem[_338 + 160] = 0
                require idx < mem[96]
                _342 = mem[(32 * idx) + 128]
                mem[_338] = mem[(32 * idx) + 140 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_342))
                staticcall address(_342).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _349 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _354 = mem[_349]
                require mem[_349] <= test266151307()
                require _349 + mem[_349] + 31 < _349 + return_data.size
                _365 = mem[_349 + mem[_349]]
                require mem[_349 + mem[_349]] <= test266151307()
                require ceil32(mem[_349 + mem[_349]]) + 32 >= 0 and _349 + ceil32(return_data.size) + ceil32(mem[_349 + mem[_349]]) + 32 <= test266151307()
                mem[64] = _349 + ceil32(return_data.size) + ceil32(mem[_349 + mem[_349]]) + 32
                mem[_349 + ceil32(return_data.size)] = _365
                require _354 + _365 + 32 <= return_data.size
                s = 0
                while s < _365:
                    mem[s + _349 + ceil32(return_data.size) + 32] = mem[s + _349 + _354 + 32]
                    s = s + 32
                    continue 
                if ceil32(_365) <= _365:
                    mem[_338 + 64] = _349 + ceil32(return_data.size)
                    require ext_code.size(mem[_338 + 12 len 20])
                    staticcall mem[_338 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_512] == mem[_512 + 31 len 1]
                    mem[_338 + 96] = mem[_512 + 31 len 1]
                    _529 = mem[_338]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_529))
                    staticcall address(_529).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_338 + 128] = mem[_556]
                    require ext_code.size(mem[_338 + 12 len 20])
                    staticcall mem[_338 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_338 + 160] = mem[_584]
                else:
                    mem[_349 + ceil32(return_data.size) + _365 + 32] = 0
                    mem[_338 + 64] = _349 + ceil32(return_data.size)
                    require ext_code.size(mem[_338 + 12 len 20])
                    staticcall mem[_338 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == mem[_514 + 31 len 1]
                    mem[_338 + 96] = mem[_514 + 31 len 1]
                    _538 = mem[_338]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_538))
                    staticcall address(_538).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_338 + 128] = mem[_562]
                    require ext_code.size(mem[_338 + 12 len 20])
                    staticcall mem[_338 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _586 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_338 + 160] = mem[_586]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _338
                idx = idx + 1
                continue 
            _339 = mem[64]
            mem[mem[64]] = 32
            _341 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _341) + 64
            u = mem[64] + 64
            while idx < _341:
                mem[u] = t + -_339 - 64
                _495 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _497 = mem[_495 + 32]
                mem[t + 32] = 192
                _500 = mem[_497]
                mem[t + 192] = mem[_497]
                v = 0
                while v < _500:
                    mem[v + t + 224] = mem[v + _497 + 32]
                    v = v + 32
                    continue 
                if ceil32(_500) <= _500:
                    _650 = mem[_495 + 64]
                    mem[t + 64] = ceil32(_500) + 224
                    _661 = mem[_650]
                    mem[ceil32(_500) + t + 224] = mem[_650]
                    v = 0
                    while v < _661:
                        mem[v + ceil32(_500) + t + 256] = mem[v + _650 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_661) > _661:
                        mem[ceil32(_500) + t + _661 + 256] = 0
                    mem[t + 96] = mem[_495 + 127 len 1]
                    mem[t + 128] = mem[_495 + 128]
                    mem[t + 160] = mem[_495 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_661) + ceil32(_500) + t + 256
                    u = u + 32
                    continue 
                mem[t + _500 + 224] = 0
                _662 = mem[_495 + 64]
                mem[t + 64] = ceil32(_500) + 224
                _663 = mem[_662]
                mem[ceil32(_500) + t + 224] = mem[_662]
                v = 0
                while v < _663:
                    mem[v + ceil32(_500) + t + 256] = mem[v + _662 + 32]
                    v = v + 32
                    continue 
                if ceil32(_663) > _663:
                    mem[ceil32(_500) + t + _663 + 256] = 0
                mem[t + 96] = mem[_495 + 127 len 1]
                mem[t + 128] = mem[_495 + 128]
                mem[t + 160] = mem[_495 + 160]
                idx = idx + 1
                s = s + 32
                t = ceil32(_663) + ceil32(_500) + t + 256
                u = u + 32
                continue 
        else:
            mem[64] = (64 * ('cd', 4).length) + 352
            mem[(64 * ('cd', 4).length) + 160] = 0
            mem[(64 * ('cd', 4).length) + 192] = 96
            mem[(64 * ('cd', 4).length) + 224] = 96
            mem[(64 * ('cd', 4).length) + 256] = 0
            mem[(64 * ('cd', 4).length) + 288] = 0
            mem[(64 * ('cd', 4).length) + 320] = 0
            mem[var24001] = (64 * ('cd', 4).length) + 160
            s = var24001
            idx = var24002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[(64 * ('cd', 4).length) + 160] = 0
                mem[(64 * ('cd', 4).length) + 192] = 96
                mem[(64 * ('cd', 4).length) + 224] = 96
                mem[(64 * ('cd', 4).length) + 256] = 0
                mem[(64 * ('cd', 4).length) + 288] = 0
                mem[(64 * ('cd', 4).length) + 320] = 0
                mem[s + 32] = (64 * ('cd', 4).length) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                _641 = mem[64]
                mem[64] = mem[64] + 192
                mem[_641] = 0
                mem[_641 + 32] = 96
                mem[_641 + 64] = 96
                mem[_641 + 96] = 0
                mem[_641 + 128] = 0
                mem[_641 + 160] = 0
                require idx < mem[96]
                _652 = mem[(32 * idx) + 128]
                mem[_641] = mem[(32 * idx) + 140 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_652))
                staticcall address(_652).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _667 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_667]
                require mem[_667] <= test266151307()
                require _667 + mem[_667] + 31 < _667 + return_data.size
                _674 = mem[_667 + mem[_667]]
                require mem[_667 + mem[_667]] <= test266151307()
                require ceil32(mem[_667 + mem[_667]]) + 32 >= 0 and _667 + ceil32(return_data.size) + ceil32(mem[_667 + mem[_667]]) + 32 <= test266151307()
                mem[64] = _667 + ceil32(return_data.size) + ceil32(mem[_667 + mem[_667]]) + 32
                mem[_667 + ceil32(return_data.size)] = _674
                require _671 + _674 + 32 <= return_data.size
                s = 0
                while s < _674:
                    mem[s + _667 + ceil32(return_data.size) + 32] = mem[s + _667 + _671 + 32]
                    s = s + 32
                    continue 
                if ceil32(_674) <= _674:
                    mem[_641 + 64] = _667 + ceil32(return_data.size)
                    require ext_code.size(mem[_641 + 12 len 20])
                    staticcall mem[_641 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_766] == mem[_766 + 31 len 1]
                    mem[_641 + 96] = mem[_766 + 31 len 1]
                    _774 = mem[_641]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_774))
                    staticcall address(_774).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_641 + 128] = mem[_782]
                    require ext_code.size(mem[_641 + 12 len 20])
                    staticcall mem[_641 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_641 + 160] = mem[_804]
                else:
                    mem[_667 + ceil32(return_data.size) + _674 + 32] = 0
                    mem[_641 + 64] = _667 + ceil32(return_data.size)
                    require ext_code.size(mem[_641 + 12 len 20])
                    staticcall mem[_641 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 31 len 1]
                    mem[_641 + 96] = mem[_767 + 31 len 1]
                    _776 = mem[_641]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_776))
                    staticcall address(_776).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_641 + 128] = mem[_786]
                    require ext_code.size(mem[_641 + 12 len 20])
                    staticcall mem[_641 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _805 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_641 + 160] = mem[_805]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _641
                idx = idx + 1
                continue 
            _642 = mem[64]
            mem[mem[64]] = 32
            _651 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _651) + 64
            u = mem[64] + 64
            while idx < _651:
                mem[u] = t + -_642 - 64
                _741 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _743 = mem[_741 + 32]
                mem[t + 32] = 192
                _746 = mem[_743]
                mem[t + 192] = mem[_743]
                v = 0
                while v < _746:
                    mem[v + t + 224] = mem[v + _743 + 32]
                    v = v + 32
                    continue 
                if ceil32(_746) <= _746:
                    _811 = mem[_741 + 64]
                    mem[t + 64] = ceil32(_746) + 224
                    _812 = mem[_811]
                    mem[ceil32(_746) + t + 224] = mem[_811]
                    v = 0
                    while v < _812:
                        mem[v + ceil32(_746) + t + 256] = mem[v + _811 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_812) > _812:
                        mem[ceil32(_746) + t + _812 + 256] = 0
                    mem[t + 96] = mem[_741 + 127 len 1]
                    mem[t + 128] = mem[_741 + 128]
                    mem[t + 160] = mem[_741 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_812) + ceil32(_746) + t + 256
                    u = u + 32
                    continue 
                mem[t + _746 + 224] = 0
                _813 = mem[_741 + 64]
                mem[t + 64] = ceil32(_746) + 224
                _814 = mem[_813]
                mem[ceil32(_746) + t + 224] = mem[_813]
                v = 0
                while v < _814:
                    mem[v + ceil32(_746) + t + 256] = mem[v + _813 + 32]
                    v = v + 32
                    continue 
                if ceil32(_814) > _814:
                    mem[ceil32(_746) + t + _814 + 256] = 0
                mem[t + 96] = mem[_741 + 127 len 1]
                mem[t + 128] = mem[_741 + 128]
                mem[t + 160] = mem[_741 + 160]
                idx = idx + 1
                s = s + 32
                t = ceil32(_814) + ceil32(_746) + t + 256
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_ef10a1a3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            _541 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[96]
            mem[_541] = mem[(32 * idx) + 140 len 20]
            require idx < mem[96]
            _548 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_548))
            staticcall address(_548).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _560 = mem[_554]
            require mem[_554] <= test266151307()
            require _554 + mem[_554] + 31 < _554 + return_data.size
            _569 = mem[_554 + mem[_554]]
            require mem[_554 + mem[_554]] <= test266151307()
            require ceil32(mem[_554 + mem[_554]]) + 32 >= 0 and _554 + ceil32(return_data.size) + ceil32(mem[_554 + mem[_554]]) + 32 <= test266151307()
            mem[64] = _554 + ceil32(return_data.size) + ceil32(mem[_554 + mem[_554]]) + 32
            mem[_554 + ceil32(return_data.size)] = _569
            require _560 + _569 + 32 <= return_data.size
            s = 0
            while s < _569:
                mem[s + _554 + ceil32(return_data.size) + 32] = mem[s + _554 + _560 + 32]
                s = s + 32
                continue 
            if ceil32(_569) <= _569:
                mem[_541 + 32] = _554 + ceil32(return_data.size)
                require idx < mem[96]
                _817 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_817))
                staticcall address(_817).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _838 = mem[_829]
                require mem[_829] <= test266151307()
                require _829 + mem[_829] + 31 < _829 + return_data.size
                _847 = mem[_829 + mem[_829]]
                require mem[_829 + mem[_829]] <= test266151307()
                require ceil32(mem[_829 + mem[_829]]) + 32 >= 0 and _829 + ceil32(return_data.size) + ceil32(mem[_829 + mem[_829]]) + 32 <= test266151307()
                mem[64] = _829 + ceil32(return_data.size) + ceil32(mem[_829 + mem[_829]]) + 32
                mem[_829 + ceil32(return_data.size)] = _847
                require _838 + _847 + 32 <= return_data.size
                s = 0
                while s < _847:
                    mem[s + _829 + ceil32(return_data.size) + 32] = mem[s + _829 + _838 + 32]
                    s = s + 32
                    continue 
                if ceil32(_847) <= _847:
                    mem[_541 + 64] = _829 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1099] == mem[_1099 + 31 len 1]
                    mem[_541 + 96] = mem[_1099 + 31 len 1]
                    require idx < mem[96]
                    _1124 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1124))
                    staticcall address(_1124).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 128] = mem[_1145]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 160] = mem[_1189]
                else:
                    mem[_829 + ceil32(return_data.size) + _847 + 32] = 0
                    mem[_541 + 64] = _829 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1103] == mem[_1103 + 31 len 1]
                    mem[_541 + 96] = mem[_1103 + 31 len 1]
                    require idx < mem[96]
                    _1134 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1134))
                    staticcall address(_1134).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 128] = mem[_1148]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 160] = mem[_1194]
            else:
                mem[_554 + ceil32(return_data.size) + _569 + 32] = 0
                mem[_541 + 32] = _554 + ceil32(return_data.size)
                require idx < mem[96]
                _823 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_823))
                staticcall address(_823).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _835 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _844 = mem[_835]
                require mem[_835] <= test266151307()
                require _835 + mem[_835] + 31 < _835 + return_data.size
                _850 = mem[_835 + mem[_835]]
                require mem[_835 + mem[_835]] <= test266151307()
                require ceil32(mem[_835 + mem[_835]]) + 32 >= 0 and _835 + ceil32(return_data.size) + ceil32(mem[_835 + mem[_835]]) + 32 <= test266151307()
                mem[64] = _835 + ceil32(return_data.size) + ceil32(mem[_835 + mem[_835]]) + 32
                mem[_835 + ceil32(return_data.size)] = _850
                require _844 + _850 + 32 <= return_data.size
                s = 0
                while s < _850:
                    mem[s + _835 + ceil32(return_data.size) + 32] = mem[s + _835 + _844 + 32]
                    s = s + 32
                    continue 
                if ceil32(_850) <= _850:
                    mem[_541 + 64] = _835 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1100] == mem[_1100 + 31 len 1]
                    mem[_541 + 96] = mem[_1100 + 31 len 1]
                    require idx < mem[96]
                    _1127 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1127))
                    staticcall address(_1127).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 128] = mem[_1146]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 160] = mem[_1190]
                else:
                    mem[_835 + ceil32(return_data.size) + _850 + 32] = 0
                    mem[_541 + 64] = _835 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1104] == mem[_1104 + 31 len 1]
                    mem[_541 + 96] = mem[_1104 + 31 len 1]
                    require idx < mem[96]
                    _1136 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1136))
                    staticcall address(_1136).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 128] = mem[_1149]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_541 + 160] = mem[_1195]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _541
            idx = idx + 1
            continue 
        _544 = mem[64]
        mem[mem[64]] = 32
        _547 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _547) + 64
        u = mem[64] + 64
        while idx < _547:
            mem[u] = t + -_544 - 64
            _808 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _810 = mem[_808 + 32]
            mem[t + 32] = 192
            _813 = mem[_810]
            mem[t + 192] = mem[_810]
            v = 0
            while v < _813:
                mem[v + t + 224] = mem[v + _810 + 32]
                v = v + 32
                continue 
            if ceil32(_813) <= _813:
                _1073 = mem[_808 + 64]
                mem[t + 64] = ceil32(_813) + 224
                _1076 = mem[_1073]
                mem[ceil32(_813) + t + 224] = mem[_1073]
                v = 0
                while v < _1076:
                    mem[v + ceil32(_813) + t + 256] = mem[v + _1073 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1076) > _1076:
                    mem[ceil32(_813) + t + _1076 + 256] = 0
                mem[t + 96] = mem[_808 + 127 len 1]
                mem[t + 128] = mem[_808 + 128]
                mem[t + 160] = mem[_808 + 160]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1076) + ceil32(_813) + t + 256
                u = u + 32
                continue 
            mem[t + _813 + 224] = 0
            _1077 = mem[_808 + 64]
            mem[t + 64] = ceil32(_813) + 224
            _1090 = mem[_1077]
            mem[ceil32(_813) + t + 224] = mem[_1077]
            v = 0
            while v < _1090:
                mem[v + ceil32(_813) + t + 256] = mem[v + _1077 + 32]
                v = v + 32
                continue 
            if ceil32(_1090) > _1090:
                mem[ceil32(_813) + t + _1090 + 256] = 0
            mem[t + 96] = mem[_808 + 127 len 1]
            mem[t + 128] = mem[_808 + 128]
            mem[t + 160] = mem[_808 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1090) + ceil32(_813) + t + 256
            u = u + 32
            continue 
    else:
        mem[64] = (64 * ('cd', 36).length) + 352
        mem[(64 * ('cd', 36).length) + 160] = 0
        mem[(64 * ('cd', 36).length) + 192] = 96
        mem[(64 * ('cd', 36).length) + 224] = 96
        mem[(64 * ('cd', 36).length) + 256] = 0
        mem[(64 * ('cd', 36).length) + 288] = 0
        mem[(64 * ('cd', 36).length) + 320] = 0
        mem[var26001] = (64 * ('cd', 36).length) + 160
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(64 * ('cd', 36).length) + 160] = 0
            mem[(64 * ('cd', 36).length) + 192] = 96
            mem[(64 * ('cd', 36).length) + 224] = 96
            mem[(64 * ('cd', 36).length) + 256] = 0
            mem[(64 * ('cd', 36).length) + 288] = 0
            mem[(64 * ('cd', 36).length) + 320] = 0
            mem[s + 32] = (64 * ('cd', 36).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _1060 = mem[96]
        idx = 0
        while idx < _1060:
            _1064 = mem[64]
            mem[64] = mem[64] + 192
            require idx < mem[96]
            mem[_1064] = mem[(32 * idx) + 140 len 20]
            require idx < mem[96]
            _1070 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1070))
            staticcall address(_1070).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1089 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1101 = mem[_1089]
            require mem[_1089] <= test266151307()
            require _1089 + mem[_1089] + 31 < _1089 + return_data.size
            _1109 = mem[_1089 + mem[_1089]]
            require mem[_1089 + mem[_1089]] <= test266151307()
            require ceil32(mem[_1089 + mem[_1089]]) + 32 >= 0 and _1089 + ceil32(return_data.size) + ceil32(mem[_1089 + mem[_1089]]) + 32 <= test266151307()
            mem[64] = _1089 + ceil32(return_data.size) + ceil32(mem[_1089 + mem[_1089]]) + 32
            mem[_1089 + ceil32(return_data.size)] = _1109
            require _1101 + _1109 + 32 <= return_data.size
            s = 0
            while s < _1109:
                mem[s + _1089 + ceil32(return_data.size) + 32] = mem[s + _1089 + _1101 + 32]
                _1060 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1109) <= _1109:
                mem[_1064 + 32] = _1089 + ceil32(return_data.size)
                require idx < mem[96]
                _1312 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1312))
                staticcall address(_1312).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1319 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1324 = mem[_1319]
                require mem[_1319] <= test266151307()
                require _1319 + mem[_1319] + 31 < _1319 + return_data.size
                _1327 = mem[_1319 + mem[_1319]]
                require mem[_1319 + mem[_1319]] <= test266151307()
                require ceil32(mem[_1319 + mem[_1319]]) + 32 >= 0 and _1319 + ceil32(return_data.size) + ceil32(mem[_1319 + mem[_1319]]) + 32 <= test266151307()
                mem[64] = _1319 + ceil32(return_data.size) + ceil32(mem[_1319 + mem[_1319]]) + 32
                mem[_1319 + ceil32(return_data.size)] = _1327
                require _1324 + _1327 + 32 <= return_data.size
                s = 0
                while s < _1327:
                    mem[s + _1319 + ceil32(return_data.size) + 32] = mem[s + _1319 + _1324 + 32]
                    _1060 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1327) <= _1327:
                    mem[_1064 + 64] = _1319 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1446] == mem[_1446 + 31 len 1]
                    mem[_1064 + 96] = mem[_1446 + 31 len 1]
                    require idx < mem[96]
                    _1467 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1467))
                    staticcall address(_1467).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 128] = mem[_1484]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 160] = mem[_1508]
                else:
                    mem[_1319 + ceil32(return_data.size) + _1327 + 32] = 0
                    mem[_1064 + 64] = _1319 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1449] == mem[_1449 + 31 len 1]
                    mem[_1064 + 96] = mem[_1449 + 31 len 1]
                    require idx < mem[96]
                    _1476 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1476))
                    staticcall address(_1476).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1486 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 128] = mem[_1486]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 160] = mem[_1510]
            else:
                mem[_1089 + ceil32(return_data.size) + _1109 + 32] = 0
                mem[_1064 + 32] = _1089 + ceil32(return_data.size)
                require idx < mem[96]
                _1316 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1316))
                staticcall address(_1316).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1321 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1326 = mem[_1321]
                require mem[_1321] <= test266151307()
                require _1321 + mem[_1321] + 31 < _1321 + return_data.size
                _1329 = mem[_1321 + mem[_1321]]
                require mem[_1321 + mem[_1321]] <= test266151307()
                require ceil32(mem[_1321 + mem[_1321]]) + 32 >= 0 and _1321 + ceil32(return_data.size) + ceil32(mem[_1321 + mem[_1321]]) + 32 <= test266151307()
                mem[64] = _1321 + ceil32(return_data.size) + ceil32(mem[_1321 + mem[_1321]]) + 32
                mem[_1321 + ceil32(return_data.size)] = _1329
                require _1326 + _1329 + 32 <= return_data.size
                s = 0
                while s < _1329:
                    mem[s + _1321 + ceil32(return_data.size) + 32] = mem[s + _1321 + _1326 + 32]
                    _1060 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1329) <= _1329:
                    mem[_1064 + 64] = _1321 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1447] == mem[_1447 + 31 len 1]
                    mem[_1064 + 96] = mem[_1447 + 31 len 1]
                    require idx < mem[96]
                    _1470 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1470))
                    staticcall address(_1470).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 128] = mem[_1485]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 160] = mem[_1509]
                else:
                    mem[_1321 + ceil32(return_data.size) + _1329 + 32] = 0
                    mem[_1064 + 64] = _1321 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1450] == mem[_1450 + 31 len 1]
                    mem[_1064 + 96] = mem[_1450 + 31 len 1]
                    require idx < mem[96]
                    _1478 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1478))
                    staticcall address(_1478).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 128] = mem[_1487]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1064 + 160] = mem[_1511]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _1064
            _1060 = mem[96]
            idx = idx + 1
            continue 
        _1066 = mem[64]
        mem[mem[64]] = 32
        _1069 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _1069) + 64
        u = mem[64] + 64
        while idx < _1069:
            mem[u] = t + -_1066 - 64
            _1292 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1294 = mem[_1292 + 32]
            mem[t + 32] = 192
            _1297 = mem[_1294]
            mem[t + 192] = mem[_1294]
            v = 0
            while v < _1297:
                mem[v + t + 224] = mem[v + _1294 + 32]
                v = v + 32
                continue 
            if ceil32(_1297) <= _1297:
                _1426 = mem[_1292 + 64]
                mem[t + 64] = ceil32(_1297) + 224
                _1429 = mem[_1426]
                mem[ceil32(_1297) + t + 224] = mem[_1426]
                v = 0
                while v < _1429:
                    mem[v + ceil32(_1297) + t + 256] = mem[v + _1426 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1429) > _1429:
                    mem[ceil32(_1297) + t + _1429 + 256] = 0
                mem[t + 96] = mem[_1292 + 127 len 1]
                mem[t + 128] = mem[_1292 + 128]
                mem[t + 160] = mem[_1292 + 160]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1429) + ceil32(_1297) + t + 256
                u = u + 32
                continue 
            mem[t + _1297 + 224] = 0
            _1430 = mem[_1292 + 64]
            mem[t + 64] = ceil32(_1297) + 224
            _1439 = mem[_1430]
            mem[ceil32(_1297) + t + 224] = mem[_1430]
            v = 0
            while v < _1439:
                mem[v + ceil32(_1297) + t + 256] = mem[v + _1430 + 32]
                v = v + 32
                continue 
            if ceil32(_1439) > _1439:
                mem[ceil32(_1297) + t + _1439 + 256] = 0
            mem[t + 96] = mem[_1292 + 127 len 1]
            mem[t + 128] = mem[_1292 + 128]
            mem[t + 160] = mem[_1292 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1439) + ceil32(_1297) + t + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
