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



}
