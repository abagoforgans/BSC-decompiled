contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
            _417 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            _421 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_421))
            staticcall address(_421).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _431 = mem[_425]
            require mem[_425] <= test266151307()
            require _425 + mem[_425] + 31 < _425 + return_data.size
            _438 = mem[_425 + mem[_425]]
            require mem[_425 + mem[_425]] <= test266151307()
            require ceil32(mem[_425 + mem[_425]]) + 32 >= 0 and _425 + ceil32(return_data.size) + ceil32(mem[_425 + mem[_425]]) + 32 <= test266151307()
            mem[64] = _425 + ceil32(return_data.size) + ceil32(mem[_425 + mem[_425]]) + 32
            mem[_425 + ceil32(return_data.size)] = _438
            require _431 + _438 + 32 <= return_data.size
            s = 0
            while s < _438:
                mem[s + _425 + ceil32(return_data.size) + 32] = mem[s + _425 + _431 + 32]
                s = s + 32
                continue 
            if ceil32(_438) <= _438:
                mem[_417] = _425 + ceil32(return_data.size)
                require idx < mem[96]
                _630 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_630))
                staticcall address(_630).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _643 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _650 = mem[_643]
                require mem[_643] <= test266151307()
                require _643 + mem[_643] + 31 < _643 + return_data.size
                _658 = mem[_643 + mem[_643]]
                require mem[_643 + mem[_643]] <= test266151307()
                require ceil32(mem[_643 + mem[_643]]) + 32 >= 0 and _643 + ceil32(return_data.size) + ceil32(mem[_643 + mem[_643]]) + 32 <= test266151307()
                mem[64] = _643 + ceil32(return_data.size) + ceil32(mem[_643 + mem[_643]]) + 32
                mem[_643 + ceil32(return_data.size)] = _658
                require _650 + _658 + 32 <= return_data.size
                s = 0
                while s < _658:
                    mem[s + _643 + ceil32(return_data.size) + 32] = mem[s + _643 + _650 + 32]
                    s = s + 32
                    continue 
                if ceil32(_658) <= _658:
                    mem[_417 + 32] = _643 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _851 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_851] == mem[_851 + 31 len 1]
                    mem[_417 + 64] = mem[_851 + 31 len 1]
                    require idx < mem[96]
                    _872 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_872))
                    staticcall address(_872).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_417 + 96] = mem[_892]
                else:
                    mem[_643 + ceil32(return_data.size) + _658 + 32] = 0
                    mem[_417 + 32] = _643 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _854 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_854] == mem[_854 + 31 len 1]
                    mem[_417 + 64] = mem[_854 + 31 len 1]
                    require idx < mem[96]
                    _881 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_881))
                    staticcall address(_881).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _896 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_417 + 96] = mem[_896]
            else:
                mem[_425 + ceil32(return_data.size) + _438 + 32] = 0
                mem[_417] = _425 + ceil32(return_data.size)
                require idx < mem[96]
                _636 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_636))
                staticcall address(_636).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _646 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _654 = mem[_646]
                require mem[_646] <= test266151307()
                require _646 + mem[_646] + 31 < _646 + return_data.size
                _660 = mem[_646 + mem[_646]]
                require mem[_646 + mem[_646]] <= test266151307()
                require ceil32(mem[_646 + mem[_646]]) + 32 >= 0 and _646 + ceil32(return_data.size) + ceil32(mem[_646 + mem[_646]]) + 32 <= test266151307()
                mem[64] = _646 + ceil32(return_data.size) + ceil32(mem[_646 + mem[_646]]) + 32
                mem[_646 + ceil32(return_data.size)] = _660
                require _654 + _660 + 32 <= return_data.size
                s = 0
                while s < _660:
                    mem[s + _646 + ceil32(return_data.size) + 32] = mem[s + _646 + _654 + 32]
                    s = s + 32
                    continue 
                if ceil32(_660) <= _660:
                    mem[_417 + 32] = _646 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _852 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_852] == mem[_852 + 31 len 1]
                    mem[_417 + 64] = mem[_852 + 31 len 1]
                    require idx < mem[96]
                    _875 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_875))
                    staticcall address(_875).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_417 + 96] = mem[_893]
                else:
                    mem[_646 + ceil32(return_data.size) + _660 + 32] = 0
                    mem[_417 + 32] = _646 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_855] == mem[_855 + 31 len 1]
                    mem[_417 + 64] = mem[_855 + 31 len 1]
                    require idx < mem[96]
                    _883 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_883))
                    staticcall address(_883).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_417 + 96] = mem[_897]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _417
            idx = idx + 1
            continue 
        _420 = mem[64]
        mem[mem[64]] = 32
        _424 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _424) + 64
        u = mem[64] + 64
        while idx < _424:
            mem[u] = t + -_420 - 64
            _622 = mem[s]
            _623 = mem[mem[s]]
            mem[t] = 128
            _626 = mem[_623]
            mem[t + 128] = mem[_623]
            v = 0
            while v < _626:
                mem[v + t + 160] = mem[v + _623 + 32]
                v = v + 32
                continue 
            if ceil32(_626) <= _626:
                _825 = mem[_622 + 32]
                mem[t + 32] = ceil32(_626) + 160
                _829 = mem[_825]
                mem[ceil32(_626) + t + 160] = mem[_825]
                v = 0
                while v < _829:
                    mem[v + ceil32(_626) + t + 192] = mem[v + _825 + 32]
                    v = v + 32
                    continue 
                if ceil32(_829) > _829:
                    mem[ceil32(_626) + t + _829 + 192] = 0
                mem[t + 64] = mem[_622 + 95 len 1]
                mem[t + 96] = mem[_622 + 96]
                idx = idx + 1
                s = s + 32
                t = ceil32(_829) + ceil32(_626) + t + 192
                u = u + 32
                continue 
            mem[t + _626 + 160] = 0
            _830 = mem[_622 + 32]
            mem[t + 32] = ceil32(_626) + 160
            _841 = mem[_830]
            mem[ceil32(_626) + t + 160] = mem[_830]
            v = 0
            while v < _841:
                mem[v + ceil32(_626) + t + 192] = mem[v + _830 + 32]
                v = v + 32
                continue 
            if ceil32(_841) > _841:
                mem[ceil32(_626) + t + _841 + 192] = 0
            mem[t + 64] = mem[_622 + 95 len 1]
            mem[t + 96] = mem[_622 + 96]
            idx = idx + 1
            s = s + 32
            t = ceil32(_841) + ceil32(_626) + t + 192
            u = u + 32
            continue 
    else:
        mem[64] = (64 * ('cd', 36).length) + 288
        mem[(64 * ('cd', 36).length) + 160] = 96
        mem[(64 * ('cd', 36).length) + 192] = 96
        mem[(64 * ('cd', 36).length) + 224] = 0
        mem[(64 * ('cd', 36).length) + 256] = 0
        mem[var26001] = (64 * ('cd', 36).length) + 160
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(64 * ('cd', 36).length) + 160] = 96
            mem[(64 * ('cd', 36).length) + 192] = 96
            mem[(64 * ('cd', 36).length) + 224] = 0
            mem[(64 * ('cd', 36).length) + 256] = 0
            mem[s + 32] = (64 * ('cd', 36).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _814 = mem[96]
        idx = 0
        while idx < _814:
            _818 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            _821 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_821))
            staticcall address(_821).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _828 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _850 = mem[_828]
            require mem[_828] <= test266151307()
            require _828 + mem[_828] + 31 < _828 + return_data.size
            _856 = mem[_828 + mem[_828]]
            require mem[_828 + mem[_828]] <= test266151307()
            require ceil32(mem[_828 + mem[_828]]) + 32 >= 0 and _828 + ceil32(return_data.size) + ceil32(mem[_828 + mem[_828]]) + 32 <= test266151307()
            mem[64] = _828 + ceil32(return_data.size) + ceil32(mem[_828 + mem[_828]]) + 32
            mem[_828 + ceil32(return_data.size)] = _856
            require _850 + _856 + 32 <= return_data.size
            s = 0
            while s < _856:
                mem[s + _828 + ceil32(return_data.size) + 32] = mem[s + _828 + _850 + 32]
                _814 = mem[96]
                s = s + 32
                continue 
            if ceil32(_856) <= _856:
                mem[_818] = _828 + ceil32(return_data.size)
                require idx < mem[96]
                _1002 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1002))
                staticcall address(_1002).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1009 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1014 = mem[_1009]
                require mem[_1009] <= test266151307()
                require _1009 + mem[_1009] + 31 < _1009 + return_data.size
                _1017 = mem[_1009 + mem[_1009]]
                require mem[_1009 + mem[_1009]] <= test266151307()
                require ceil32(mem[_1009 + mem[_1009]]) + 32 >= 0 and _1009 + ceil32(return_data.size) + ceil32(mem[_1009 + mem[_1009]]) + 32 <= test266151307()
                mem[64] = _1009 + ceil32(return_data.size) + ceil32(mem[_1009 + mem[_1009]]) + 32
                mem[_1009 + ceil32(return_data.size)] = _1017
                require _1014 + _1017 + 32 <= return_data.size
                s = 0
                while s < _1017:
                    mem[s + _1009 + ceil32(return_data.size) + 32] = mem[s + _1009 + _1014 + 32]
                    _814 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1017) <= _1017:
                    mem[_818 + 32] = _1009 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1108] == mem[_1108 + 31 len 1]
                    mem[_818 + 64] = mem[_1108 + 31 len 1]
                    require idx < mem[96]
                    _1126 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1126))
                    staticcall address(_1126).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_818 + 96] = mem[_1142]
                else:
                    mem[_1009 + ceil32(return_data.size) + _1017 + 32] = 0
                    mem[_818 + 32] = _1009 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1111] == mem[_1111 + 31 len 1]
                    mem[_818 + 64] = mem[_1111 + 31 len 1]
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
                    _1144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_818 + 96] = mem[_1144]
            else:
                mem[_828 + ceil32(return_data.size) + _856 + 32] = 0
                mem[_818] = _828 + ceil32(return_data.size)
                require idx < mem[96]
                _1006 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1006))
                staticcall address(_1006).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1011 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1016 = mem[_1011]
                require mem[_1011] <= test266151307()
                require _1011 + mem[_1011] + 31 < _1011 + return_data.size
                _1019 = mem[_1011 + mem[_1011]]
                require mem[_1011 + mem[_1011]] <= test266151307()
                require ceil32(mem[_1011 + mem[_1011]]) + 32 >= 0 and _1011 + ceil32(return_data.size) + ceil32(mem[_1011 + mem[_1011]]) + 32 <= test266151307()
                mem[64] = _1011 + ceil32(return_data.size) + ceil32(mem[_1011 + mem[_1011]]) + 32
                mem[_1011 + ceil32(return_data.size)] = _1019
                require _1016 + _1019 + 32 <= return_data.size
                s = 0
                while s < _1019:
                    mem[s + _1011 + ceil32(return_data.size) + 32] = mem[s + _1011 + _1016 + 32]
                    _814 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1019) <= _1019:
                    mem[_818 + 32] = _1011 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1109] == mem[_1109 + 31 len 1]
                    mem[_818 + 64] = mem[_1109 + 31 len 1]
                    require idx < mem[96]
                    _1129 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(cd[4])
                    require ext_code.size(address(_1129))
                    staticcall address(_1129).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_818 + 96] = mem[_1143]
                else:
                    mem[_1011 + ceil32(return_data.size) + _1019 + 32] = 0
                    mem[_818 + 32] = _1011 + ceil32(return_data.size)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1112] == mem[_1112 + 31 len 1]
                    mem[_818 + 64] = mem[_1112 + 31 len 1]
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
                    _1145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_818 + 96] = mem[_1145]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _818
            _814 = mem[96]
            idx = idx + 1
            continue 
        _820 = mem[64]
        mem[mem[64]] = 32
        _824 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + (32 * _824) + 64
        u = mem[64] + 64
        while idx < _824:
            mem[u] = t + -_820 - 64
            _987 = mem[s]
            _988 = mem[mem[s]]
            mem[t] = 128
            _991 = mem[_988]
            mem[t + 128] = mem[_988]
            v = 0
            while v < _991:
                mem[v + t + 160] = mem[v + _988 + 32]
                v = v + 32
                continue 
            if ceil32(_991) <= _991:
                _1088 = mem[_987 + 32]
                mem[t + 32] = ceil32(_991) + 160
                _1091 = mem[_1088]
                mem[ceil32(_991) + t + 160] = mem[_1088]
                v = 0
                while v < _1091:
                    mem[v + ceil32(_991) + t + 192] = mem[v + _1088 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1091) > _1091:
                    mem[ceil32(_991) + t + _1091 + 192] = 0
                mem[t + 64] = mem[_987 + 95 len 1]
                mem[t + 96] = mem[_987 + 96]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1091) + ceil32(_991) + t + 192
                u = u + 32
                continue 
            mem[t + _991 + 160] = 0
            _1092 = mem[_987 + 32]
            mem[t + 32] = ceil32(_991) + 160
            _1101 = mem[_1092]
            mem[ceil32(_991) + t + 160] = mem[_1092]
            v = 0
            while v < _1101:
                mem[v + ceil32(_991) + t + 192] = mem[v + _1092 + 32]
                v = v + 32
                continue 
            if ceil32(_1101) > _1101:
                mem[ceil32(_991) + t + _1101 + 192] = 0
            mem[t + 64] = mem[_987 + 95 len 1]
            mem[t + 96] = mem[_987 + 96]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1101) + ceil32(_991) + t + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
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
            _454 = mem[s]
            _455 = mem[mem[s]]
            mem[t] = 128
            _458 = mem[_455]
            mem[t + 128] = mem[_455]
            v = 0
            while v < _458:
                mem[v + t + 160] = mem[v + _455 + 32]
                v = v + 32
                continue 
            if ceil32(_458) <= _458:
                _683 = mem[_454 + 32]
                mem[t + 32] = ceil32(_458) + 160
                _685 = mem[_683]
                mem[ceil32(_458) + t + 160] = mem[_683]
                v = 0
                while v < _685:
                    mem[v + ceil32(_458) + t + 192] = mem[v + _683 + 32]
                    v = v + 32
                    continue 
                if ceil32(_685) > _685:
                    mem[ceil32(_458) + t + _685 + 192] = 0
                mem[t + 64] = mem[_454 + 95 len 1]
                mem[t + 96] = mem[_454 + 96]
                idx = idx + 1
                s = s + 32
                t = ceil32(_685) + ceil32(_458) + t + 192
                u = u + 32
                continue 
            mem[t + _458 + 160] = 0
            _686 = mem[_454 + 32]
            mem[t + 32] = ceil32(_458) + 160
            _692 = mem[_686]
            mem[ceil32(_458) + t + 160] = mem[_686]
            v = 0
            while v < _692:
                mem[v + ceil32(_458) + t + 192] = mem[v + _686 + 32]
                v = v + 32
                continue 
            if ceil32(_692) > _692:
                mem[ceil32(_458) + t + _692 + 192] = 0
            mem[t + 64] = mem[_454 + 95 len 1]
            mem[t + 96] = mem[_454 + 96]
            idx = idx + 1
            s = s + 32
            t = ceil32(_692) + ceil32(_458) + t + 192
            u = u + 32
            continue 
    else:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _459 = mem[64]
                mem[64] = mem[64] + 128
                mem[_459] = 96
                mem[_459 + 32] = 96
                mem[_459 + 64] = 0
                mem[_459 + 96] = 0
                require idx < mem[96]
                _463 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_463))
                staticcall address(_463).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _474 = mem[_469]
                require mem[_469] <= test266151307()
                require _469 + mem[_469] + 31 < _469 + return_data.size
                _485 = mem[_469 + mem[_469]]
                require mem[_469 + mem[_469]] <= test266151307()
                require ceil32(mem[_469 + mem[_469]]) + 32 >= 0 and _469 + ceil32(return_data.size) + ceil32(mem[_469 + mem[_469]]) + 32 <= test266151307()
                mem[64] = _469 + ceil32(return_data.size) + ceil32(mem[_469 + mem[_469]]) + 32
                mem[_469 + ceil32(return_data.size)] = _485
                require _474 + _485 + 32 <= return_data.size
                s = 0
                while s < _485:
                    mem[s + _469 + ceil32(return_data.size) + 32] = mem[s + _469 + _474 + 32]
                    s = s + 32
                    continue 
                if ceil32(_485) <= _485:
                    mem[_459] = _469 + ceil32(return_data.size)
                    require idx < mem[96]
                    _688 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_688))
                    staticcall address(_688).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _697 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _710 = mem[_697]
                    require mem[_697] <= test266151307()
                    require _697 + mem[_697] + 31 < _697 + return_data.size
                    _718 = mem[_697 + mem[_697]]
                    require mem[_697 + mem[_697]] <= test266151307()
                    require ceil32(mem[_697 + mem[_697]]) + 32 >= 0 and _697 + ceil32(return_data.size) + ceil32(mem[_697 + mem[_697]]) + 32 <= test266151307()
                    mem[64] = _697 + ceil32(return_data.size) + ceil32(mem[_697 + mem[_697]]) + 32
                    mem[_697 + ceil32(return_data.size)] = _718
                    require _710 + _718 + 32 <= return_data.size
                    s = 0
                    while s < _718:
                        mem[s + _697 + ceil32(return_data.size) + 32] = mem[s + _697 + _710 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_718) <= _718:
                        mem[_459 + 32] = _697 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _926 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_926] == mem[_926 + 31 len 1]
                        mem[_459 + 64] = mem[_926 + 31 len 1]
                        require idx < mem[96]
                        _949 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_949))
                        staticcall address(_949).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _970 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_459 + 96] = mem[_970]
                    else:
                        mem[_697 + ceil32(return_data.size) + _718 + 32] = 0
                        mem[_459 + 32] = _697 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_931] == mem[_931 + 31 len 1]
                        mem[_459 + 64] = mem[_931 + 31 len 1]
                        require idx < mem[96]
                        _958 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_958))
                        staticcall address(_958).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _972 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_459 + 96] = mem[_972]
                else:
                    mem[_469 + ceil32(return_data.size) + _485 + 32] = 0
                    mem[_459] = _469 + ceil32(return_data.size)
                    require idx < mem[96]
                    _693 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_693))
                    staticcall address(_693).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _702 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _712 = mem[_702]
                    require mem[_702] <= test266151307()
                    require _702 + mem[_702] + 31 < _702 + return_data.size
                    _726 = mem[_702 + mem[_702]]
                    require mem[_702 + mem[_702]] <= test266151307()
                    require ceil32(mem[_702 + mem[_702]]) + 32 >= 0 and _702 + ceil32(return_data.size) + ceil32(mem[_702 + mem[_702]]) + 32 <= test266151307()
                    mem[64] = _702 + ceil32(return_data.size) + ceil32(mem[_702 + mem[_702]]) + 32
                    mem[_702 + ceil32(return_data.size)] = _726
                    require _712 + _726 + 32 <= return_data.size
                    s = 0
                    while s < _726:
                        mem[s + _702 + ceil32(return_data.size) + 32] = mem[s + _702 + _712 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_726) <= _726:
                        mem[_459 + 32] = _702 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_927] == mem[_927 + 31 len 1]
                        mem[_459 + 64] = mem[_927 + 31 len 1]
                        require idx < mem[96]
                        _952 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_952))
                        staticcall address(_952).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _971 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_459 + 96] = mem[_971]
                    else:
                        mem[_702 + ceil32(return_data.size) + _726 + 32] = 0
                        mem[_459 + 32] = _702 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_932] == mem[_932 + 31 len 1]
                        mem[_459 + 64] = mem[_932 + 31 len 1]
                        require idx < mem[96]
                        _960 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_960))
                        staticcall address(_960).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_459 + 96] = mem[_973]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _459
                idx = idx + 1
                continue 
            _460 = mem[64]
            mem[mem[64]] = 32
            _462 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _462) + 64
            u = mem[64] + 64
            while idx < _462:
                mem[u] = t + -_460 - 64
                _678 = mem[s]
                _679 = mem[mem[s]]
                mem[t] = 128
                _682 = mem[_679]
                mem[t + 128] = mem[_679]
                v = 0
                while v < _682:
                    mem[v + t + 160] = mem[v + _679 + 32]
                    v = v + 32
                    continue 
                if ceil32(_682) <= _682:
                    _895 = mem[_678 + 32]
                    mem[t + 32] = ceil32(_682) + 160
                    _906 = mem[_895]
                    mem[ceil32(_682) + t + 160] = mem[_895]
                    v = 0
                    while v < _906:
                        mem[v + ceil32(_682) + t + 192] = mem[v + _895 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_906) > _906:
                        mem[ceil32(_682) + t + _906 + 192] = 0
                    mem[t + 64] = mem[_678 + 95 len 1]
                    mem[t + 96] = mem[_678 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_906) + ceil32(_682) + t + 192
                    u = u + 32
                    continue 
                mem[t + _682 + 160] = 0
                _907 = mem[_678 + 32]
                mem[t + 32] = ceil32(_682) + 160
                _916 = mem[_907]
                mem[ceil32(_682) + t + 160] = mem[_907]
                v = 0
                while v < _916:
                    mem[v + ceil32(_682) + t + 192] = mem[v + _907 + 32]
                    v = v + 32
                    continue 
                if ceil32(_916) > _916:
                    mem[ceil32(_682) + t + _916 + 192] = 0
                mem[t + 64] = mem[_678 + 95 len 1]
                mem[t + 96] = mem[_678 + 96]
                idx = idx + 1
                s = s + 32
                t = ceil32(_916) + ceil32(_682) + t + 192
                u = u + 32
                continue 
        else:
            mem[64] = (64 * ('cd', 4).length) + 288
            mem[(64 * ('cd', 4).length) + 160] = 96
            mem[(64 * ('cd', 4).length) + 192] = 96
            mem[(64 * ('cd', 4).length) + 224] = 0
            mem[(64 * ('cd', 4).length) + 256] = 0
            mem[var24001] = (64 * ('cd', 4).length) + 160
            s = var24001
            idx = var24002
            while idx - 1:
                mem[64] = mem[64] + 128
                mem[(64 * ('cd', 4).length) + 160] = 96
                mem[(64 * ('cd', 4).length) + 192] = 96
                mem[(64 * ('cd', 4).length) + 224] = 0
                mem[(64 * ('cd', 4).length) + 256] = 0
                mem[s + 32] = (64 * ('cd', 4).length) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                _888 = mem[64]
                mem[64] = mem[64] + 128
                mem[_888] = 96
                mem[_888 + 32] = 96
                mem[_888 + 64] = 0
                mem[_888 + 96] = 0
                require idx < mem[96]
                _899 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_899))
                staticcall address(_899).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _925 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _933 = mem[_925]
                require mem[_925] <= test266151307()
                require _925 + mem[_925] + 31 < _925 + return_data.size
                _940 = mem[_925 + mem[_925]]
                require mem[_925 + mem[_925]] <= test266151307()
                require ceil32(mem[_925 + mem[_925]]) + 32 >= 0 and _925 + ceil32(return_data.size) + ceil32(mem[_925 + mem[_925]]) + 32 <= test266151307()
                mem[64] = _925 + ceil32(return_data.size) + ceil32(mem[_925 + mem[_925]]) + 32
                mem[_925 + ceil32(return_data.size)] = _940
                require _933 + _940 + 32 <= return_data.size
                s = 0
                while s < _940:
                    mem[s + _925 + ceil32(return_data.size) + 32] = mem[s + _925 + _933 + 32]
                    s = s + 32
                    continue 
                if ceil32(_940) <= _940:
                    mem[_888] = _925 + ceil32(return_data.size)
                    require idx < mem[96]
                    _1080 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1080))
                    staticcall address(_1080).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1087 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1092 = mem[_1087]
                    require mem[_1087] <= test266151307()
                    require _1087 + mem[_1087] + 31 < _1087 + return_data.size
                    _1095 = mem[_1087 + mem[_1087]]
                    require mem[_1087 + mem[_1087]] <= test266151307()
                    require ceil32(mem[_1087 + mem[_1087]]) + 32 >= 0 and _1087 + ceil32(return_data.size) + ceil32(mem[_1087 + mem[_1087]]) + 32 <= test266151307()
                    mem[64] = _1087 + ceil32(return_data.size) + ceil32(mem[_1087 + mem[_1087]]) + 32
                    mem[_1087 + ceil32(return_data.size)] = _1095
                    require _1092 + _1095 + 32 <= return_data.size
                    s = 0
                    while s < _1095:
                        mem[s + _1087 + ceil32(return_data.size) + 32] = mem[s + _1087 + _1092 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1095) <= _1095:
                        mem[_888 + 32] = _1087 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1186] == mem[_1186 + 31 len 1]
                        mem[_888 + 64] = mem[_1186 + 31 len 1]
                        require idx < mem[96]
                        _1204 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1204))
                        staticcall address(_1204).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_888 + 96] = mem[_1220]
                    else:
                        mem[_1087 + ceil32(return_data.size) + _1095 + 32] = 0
                        mem[_888 + 32] = _1087 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1189] == mem[_1189 + 31 len 1]
                        mem[_888 + 64] = mem[_1189 + 31 len 1]
                        require idx < mem[96]
                        _1212 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1212))
                        staticcall address(_1212).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_888 + 96] = mem[_1222]
                else:
                    mem[_925 + ceil32(return_data.size) + _940 + 32] = 0
                    mem[_888] = _925 + ceil32(return_data.size)
                    require idx < mem[96]
                    _1084 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1084))
                    staticcall address(_1084).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1089 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1094 = mem[_1089]
                    require mem[_1089] <= test266151307()
                    require _1089 + mem[_1089] + 31 < _1089 + return_data.size
                    _1097 = mem[_1089 + mem[_1089]]
                    require mem[_1089 + mem[_1089]] <= test266151307()
                    require ceil32(mem[_1089 + mem[_1089]]) + 32 >= 0 and _1089 + ceil32(return_data.size) + ceil32(mem[_1089 + mem[_1089]]) + 32 <= test266151307()
                    mem[64] = _1089 + ceil32(return_data.size) + ceil32(mem[_1089 + mem[_1089]]) + 32
                    mem[_1089 + ceil32(return_data.size)] = _1097
                    require _1094 + _1097 + 32 <= return_data.size
                    s = 0
                    while s < _1097:
                        mem[s + _1089 + ceil32(return_data.size) + 32] = mem[s + _1089 + _1094 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1097) <= _1097:
                        mem[_888 + 32] = _1089 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1187] == mem[_1187 + 31 len 1]
                        mem[_888 + 64] = mem[_1187 + 31 len 1]
                        require idx < mem[96]
                        _1207 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1207))
                        staticcall address(_1207).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_888 + 96] = mem[_1221]
                    else:
                        mem[_1089 + ceil32(return_data.size) + _1097 + 32] = 0
                        mem[_888 + 32] = _1089 + ceil32(return_data.size)
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1190] == mem[_1190 + 31 len 1]
                        mem[_888 + 64] = mem[_1190 + 31 len 1]
                        require idx < mem[96]
                        _1214 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(address(_1214))
                        staticcall address(_1214).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1223 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_888 + 96] = mem[_1223]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _888
                idx = idx + 1
                continue 
            _889 = mem[64]
            mem[mem[64]] = 32
            _898 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _898) + 64
            u = mem[64] + 64
            while idx < _898:
                mem[u] = t + -_889 - 64
                _1065 = mem[s]
                _1066 = mem[mem[s]]
                mem[t] = 128
                _1069 = mem[_1066]
                mem[t + 128] = mem[_1066]
                v = 0
                while v < _1069:
                    mem[v + t + 160] = mem[v + _1066 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1069) <= _1069:
                    _1166 = mem[_1065 + 32]
                    mem[t + 32] = ceil32(_1069) + 160
                    _1169 = mem[_1166]
                    mem[ceil32(_1069) + t + 160] = mem[_1166]
                    v = 0
                    while v < _1169:
                        mem[v + ceil32(_1069) + t + 192] = mem[v + _1166 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1169) > _1169:
                        mem[ceil32(_1069) + t + _1169 + 192] = 0
                    mem[t + 64] = mem[_1065 + 95 len 1]
                    mem[t + 96] = mem[_1065 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1169) + ceil32(_1069) + t + 192
                    u = u + 32
                    continue 
                mem[t + _1069 + 160] = 0
                _1170 = mem[_1065 + 32]
                mem[t + 32] = ceil32(_1069) + 160
                _1179 = mem[_1170]
                mem[ceil32(_1069) + t + 160] = mem[_1170]
                v = 0
                while v < _1179:
                    mem[v + ceil32(_1069) + t + 192] = mem[v + _1170 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1179) > _1179:
                    mem[ceil32(_1069) + t + _1179 + 192] = 0
                mem[t + 64] = mem[_1065 + 95 len 1]
                mem[t + 96] = mem[_1065 + 96]
                idx = idx + 1
                s = s + 32
                t = ceil32(_1179) + ceil32(_1069) + t + 192
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
