contract main {




// =====================  Runtime code  =====================


array of address stor2;

function _fallback() payable {
    revert
}

function sub_3cad8b22(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _74 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_74] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_74 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_74 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _74
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _103 = mem[96]
    idx = 0
    while idx < _103:
        require idx < mem[96]
        _105 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _107 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _108 = mem[64]
        _109 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        s = 0
        while s < _109:
            mem[_108 + s] = mem[_107 + s + 32]
            _103 = mem[96]
            s = s + 32
            continue 
        mem[_108 + _109] = 0
        mem[mem[64] + 4] = address(stor[sha3(mem[mem[64] len _108 + _109 + -mem[64] + 32])])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_105))
        call address(_105).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ceil32(_109) <= _109:
            _144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_144] == bool(mem[_144])
            require idx < mem[96]
            _149 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_149))
            call address(_149).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == bool(mem[_156])
        else:
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_145] == bool(mem[_145])
            require idx < mem[96]
            _152 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_152))
            call address(_152).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_157] == bool(mem[_157])
        _103 = mem[96]
        idx = idx + 1
        continue 
}

function sub_2527fa33(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _392 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_392] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_392 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_392 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _392
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _393 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_393] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _393 + 32
    while idx < ('cd', 68).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _586 = mem[96]
    require mem[96] <= test266151307()
    _587 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _586) + 32
    if not _586:
        _588 = mem[_587]
        stor2.length = mem[_587]
        mem[0] = 2
        if not _588:
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            _964 = mem[96]
            idx = 0
            while idx < _964:
                require idx < mem[96]
                _968 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _972 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _973 = mem[64]
                _980 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                s = 0
                while s < _980:
                    mem[_973 + s] = mem[_972 + s + 32]
                    _964 = mem[96]
                    s = s + 32
                    continue 
                mem[_973 + _980] = 0
                address(stor[sha3(mem[mem[64] len _973 + _980 + -mem[64] + 32])]) = address(_968)
                require idx < mem[_393]
                if ceil32(_980) <= _980:
                    _1168 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1180 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1181 = mem[64]
                    _1192 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1192:
                        mem[_1181 + s] = mem[_1180 + s + 32]
                        _964 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1181 + _1192] = 1
                    uint8(stor[sha3(mem[mem[64] len _1181 + _1192 + -mem[64] + 32])]) = uint8(bool(_1168))
                else:
                    _1182 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1188 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1189 = mem[64]
                    _1194 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1194:
                        mem[_1189 + s] = mem[_1188 + s + 32]
                        _964 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1189 + _1194] = 1
                    uint8(stor[sha3(mem[mem[64] len _1189 + _1194 + -mem[64] + 32])]) = uint8(bool(_1182))
                require idx < mem[96]
                require idx < stor2.length
                mem[0] = 2
                stor2[idx] = mem[(32 * idx) + 140 len 20]
                _964 = mem[96]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _587 + 32
            while _587 + (32 * _588) + 32 > idx:
                stor2[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * _588) + 31) >> 5
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            _1148 = mem[96]
            idx = 0
            while idx < _1148:
                require idx < mem[96]
                _1154 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _1158 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _1159 = mem[64]
                _1173 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                s = 0
                while s < _1173:
                    mem[_1159 + s] = mem[_1158 + s + 32]
                    _1148 = mem[96]
                    s = s + 32
                    continue 
                mem[_1159 + _1173] = 0
                address(stor[sha3(mem[mem[64] len _1159 + _1173 + -mem[64] + 32])]) = address(_1154)
                require idx < mem[_393]
                if ceil32(_1173) <= _1173:
                    _1350 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1372 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1373 = mem[64]
                    _1392 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1392:
                        mem[_1373 + s] = mem[_1372 + s + 32]
                        _1148 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1373 + _1392] = 1
                    uint8(stor[sha3(mem[mem[64] len _1373 + _1392 + -mem[64] + 32])]) = uint8(bool(_1350))
                else:
                    _1374 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1386 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1387 = mem[64]
                    _1394 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1394:
                        mem[_1387 + s] = mem[_1386 + s + 32]
                        _1148 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1387 + _1394] = 1
                    uint8(stor[sha3(mem[mem[64] len _1387 + _1394 + -mem[64] + 32])]) = uint8(bool(_1374))
                require idx < mem[96]
                require idx < stor2.length
                mem[0] = 2
                stor2[idx] = mem[(32 * idx) + 140 len 20]
                _1148 = mem[96]
                idx = idx + 1
                continue 
    else:
        mem[_587 + 32 len 32 * _586] = call.data[calldata.size len 32 * _586]
        _590 = mem[_587]
        stor2.length = mem[_587]
        mem[0] = 2
        if not _590:
            idx = 0
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            _965 = mem[96]
            idx = 0
            while idx < _965:
                require idx < mem[96]
                _970 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _974 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _975 = mem[64]
                _983 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                s = 0
                while s < _983:
                    mem[_975 + s] = mem[_974 + s + 32]
                    _965 = mem[96]
                    s = s + 32
                    continue 
                mem[_975 + _983] = 0
                address(stor[sha3(mem[mem[64] len _975 + _983 + -mem[64] + 32])]) = address(_970)
                require idx < mem[_393]
                if ceil32(_983) <= _983:
                    _1174 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1184 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1185 = mem[64]
                    _1193 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1193:
                        mem[_1185 + s] = mem[_1184 + s + 32]
                        _965 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1185 + _1193] = 1
                    uint8(stor[sha3(mem[mem[64] len _1185 + _1193 + -mem[64] + 32])]) = uint8(bool(_1174))
                else:
                    _1186 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1190 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1191 = mem[64]
                    _1195 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1195:
                        mem[_1191 + s] = mem[_1190 + s + 32]
                        _965 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1191 + _1195] = 1
                    uint8(stor[sha3(mem[mem[64] len _1191 + _1195 + -mem[64] + 32])]) = uint8(bool(_1186))
                require idx < mem[96]
                require idx < stor2.length
                mem[0] = 2
                stor2[idx] = mem[(32 * idx) + 140 len 20]
                _965 = mem[96]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _587 + 32
            while _587 + (32 * _590) + 32 > idx:
                stor2[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * _590) + 31) >> 5
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
            _1149 = mem[96]
            idx = 0
            while idx < _1149:
                require idx < mem[96]
                _1156 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _1160 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _1161 = mem[64]
                _1179 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                s = 0
                while s < _1179:
                    mem[_1161 + s] = mem[_1160 + s + 32]
                    _1149 = mem[96]
                    s = s + 32
                    continue 
                mem[_1161 + _1179] = 0
                address(stor[sha3(mem[mem[64] len _1161 + _1179 + -mem[64] + 32])]) = address(_1156)
                require idx < mem[_393]
                if ceil32(_1179) <= _1179:
                    _1363 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1380 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1381 = mem[64]
                    _1393 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1393:
                        mem[_1381 + s] = mem[_1380 + s + 32]
                        _1149 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1381 + _1393] = 1
                    uint8(stor[sha3(mem[mem[64] len _1381 + _1393 + -mem[64] + 32])]) = uint8(bool(_1363))
                else:
                    _1382 = mem[(32 * idx) + _393 + 32]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _1390 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    _1391 = mem[64]
                    _1395 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
                    s = 0
                    while s < _1395:
                        mem[_1391 + s] = mem[_1390 + s + 32]
                        _1149 = mem[96]
                        s = s + 32
                        continue 
                    mem[_1391 + _1395] = 1
                    uint8(stor[sha3(mem[mem[64] len _1391 + _1395 + -mem[64] + 32])]) = uint8(bool(_1382))
                require idx < mem[96]
                require idx < stor2.length
                mem[0] = 2
                stor2[idx] = mem[(32 * idx) + 140 len 20]
                _1149 = mem[96]
                idx = idx + 1
                continue 
}

function sub_6076c95a(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg3.length) + ceil32(arg4.length) + 160 <= test266151307() and ceil32(arg4.length) + 160 >= 128
    mem[ceil32(arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 == arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 256] = 1
    if ceil32(arg3.length) <= arg3.length:
        _719 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 256] = 0
        if ceil32(arg3.length) <= arg3.length:
            _2071 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
            require ext_code.size(address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]))
            if not uint8(stor[_719]):
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2130 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2071]))
                call address(stor[_2071]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2130) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3426 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3434 = mem[_3426]
                require mem[_3426] <= test266151307()
                require _3426 + mem[_3426] + 31 < _3426 + return_data.size
                _3442 = mem[_3426 + mem[_3426]]
                require mem[_3426 + mem[_3426]] <= test266151307()
                require _3426 + ceil32(return_data.size) + (32 * mem[_3426 + mem[_3426]]) + 32 <= test266151307() and (32 * mem[_3426 + mem[_3426]]) + 32 >= 0
                mem[64] = _3426 + ceil32(return_data.size) + (32 * mem[_3426 + mem[_3426]]) + 32
                mem[_3426 + ceil32(return_data.size)] = _3442
                require _3434 + (32 * _3442) + 32 <= return_data.size
                idx = 0
                s = _3426 + _3434 + 32
                t = _3426 + ceil32(return_data.size) + 32
                while idx < _3442:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4690 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4690 + 32 len 64] = call.data[calldata.size len 64]
                _4706 = mem[ceil32(arg3.length) + 128]
                mem[_4690 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4690 + _4706 + 96] = 0
                if ceil32(_4706) <= _4706:
                    _5915 = sha3(mem[mem[64] len _4690 + _4706 + -mem[64] + 128])
                    require 0 < mem[_4690]
                    mem[_4690 + 32] = address(arg1)
                    _5938 = mem[64]
                    _5978 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5978] = 1
                    require ext_code.size(address(stor[_5915]))
                    if ceil32(_5978) <= _5978:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5938 + _5978 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5915]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7306] == mem[_7306 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7306 + 12 len 20]
                            _7466 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7562 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7562:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7466 + 100] = msg.sender
                            mem[_7466 + 132] = arg5
                            require ext_code.size(address(stor[_5915]))
                            call address(stor[_5915]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7466 + (32 * _7562) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8330 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8394 = mem[_8330]
                            require mem[_8330] <= test266151307()
                            require _8330 + mem[_8330] + 31 < _8330 + return_data.size
                            _8458 = mem[_8330 + mem[_8330]]
                            require mem[_8330 + mem[_8330]] <= test266151307()
                            require _8330 + ceil32(return_data.size) + (32 * mem[_8330 + mem[_8330]]) + 32 <= test266151307() and (32 * mem[_8330 + mem[_8330]]) + 32 >= 0
                            mem[64] = _8330 + ceil32(return_data.size) + (32 * mem[_8330 + mem[_8330]]) + 32
                            mem[_8330 + ceil32(return_data.size)] = _8458
                            require _8394 + (32 * _8458) + 32 <= return_data.size
                            idx = 0
                            s = _8330 + _8394 + 32
                            t = _8330 + ceil32(return_data.size) + 32
                            while idx < _8458:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5915]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7307] == mem[_7307 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7307 + 12 len 20]
                            _7467 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7563 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7563:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7467 + 100] = msg.sender
                            mem[_7467 + 132] = arg5
                            require ext_code.size(address(stor[_5915]))
                            call address(stor[_5915]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7467 + (32 * _7563) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8331 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8395 = mem[_8331]
                            require mem[_8331] <= test266151307()
                            require _8331 + mem[_8331] + 31 < _8331 + return_data.size
                            _8459 = mem[_8331 + mem[_8331]]
                            require mem[_8331 + mem[_8331]] <= test266151307()
                            require _8331 + ceil32(return_data.size) + (32 * mem[_8331 + mem[_8331]]) + 32 <= test266151307() and (32 * mem[_8331 + mem[_8331]]) + 32 >= 0
                            mem[64] = _8331 + ceil32(return_data.size) + (32 * mem[_8331 + mem[_8331]]) + 32
                            mem[_8331 + ceil32(return_data.size)] = _8459
                            require _8395 + (32 * _8459) + 32 <= return_data.size
                            idx = 0
                            s = _8331 + _8395 + 32
                            t = _8331 + ceil32(return_data.size) + 32
                            while idx < _8459:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5938 + _5978 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5915]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7338] == mem[_7338 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7338 + 12 len 20]
                            _7530 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7594 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7594:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7530 + 100] = msg.sender
                            mem[_7530 + 132] = arg5
                            require ext_code.size(address(stor[_5915]))
                            call address(stor[_5915]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7530 + (32 * _7594) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8332 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8396 = mem[_8332]
                            require mem[_8332] <= test266151307()
                            require _8332 + mem[_8332] + 31 < _8332 + return_data.size
                            _8460 = mem[_8332 + mem[_8332]]
                            require mem[_8332 + mem[_8332]] <= test266151307()
                            require _8332 + ceil32(return_data.size) + (32 * mem[_8332 + mem[_8332]]) + 32 <= test266151307() and (32 * mem[_8332 + mem[_8332]]) + 32 >= 0
                            mem[64] = _8332 + ceil32(return_data.size) + (32 * mem[_8332 + mem[_8332]]) + 32
                            mem[_8332 + ceil32(return_data.size)] = _8460
                            require _8396 + (32 * _8460) + 32 <= return_data.size
                            idx = 0
                            s = _8332 + _8396 + 32
                            t = _8332 + ceil32(return_data.size) + 32
                            while idx < _8460:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5915]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7339] == mem[_7339 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7339 + 12 len 20]
                            _7531 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7595 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7595:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7531 + 100] = msg.sender
                            mem[_7531 + 132] = arg5
                            require ext_code.size(address(stor[_5915]))
                            call address(stor[_5915]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7531 + (32 * _7595) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8333 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8397 = mem[_8333]
                            require mem[_8333] <= test266151307()
                            require _8333 + mem[_8333] + 31 < _8333 + return_data.size
                            _8461 = mem[_8333 + mem[_8333]]
                            require mem[_8333 + mem[_8333]] <= test266151307()
                            require _8333 + ceil32(return_data.size) + (32 * mem[_8333 + mem[_8333]]) + 32 <= test266151307() and (32 * mem[_8333 + mem[_8333]]) + 32 >= 0
                            mem[64] = _8333 + ceil32(return_data.size) + (32 * mem[_8333 + mem[_8333]]) + 32
                            mem[_8333 + ceil32(return_data.size)] = _8461
                            require _8397 + (32 * _8461) + 32 <= return_data.size
                            idx = 0
                            s = _8333 + _8397 + 32
                            t = _8333 + ceil32(return_data.size) + 32
                            while idx < _8461:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5940 = sha3(mem[mem[64] len _4690 + _4706 + -mem[64] + 128])
                    require 0 < mem[_4690]
                    mem[_4690 + 32] = address(arg1)
                    _5970 = mem[64]
                    _5986 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5986] = 1
                    require ext_code.size(address(stor[_5940]))
                    if ceil32(_5986) <= _5986:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5970 + _5986 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5940]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7308] == mem[_7308 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7308 + 12 len 20]
                            _7470 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7564 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7564:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7470 + 100] = msg.sender
                            mem[_7470 + 132] = arg5
                            require ext_code.size(address(stor[_5940]))
                            call address(stor[_5940]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7470 + (32 * _7564) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8334 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8398 = mem[_8334]
                            require mem[_8334] <= test266151307()
                            require _8334 + mem[_8334] + 31 < _8334 + return_data.size
                            _8462 = mem[_8334 + mem[_8334]]
                            require mem[_8334 + mem[_8334]] <= test266151307()
                            require _8334 + ceil32(return_data.size) + (32 * mem[_8334 + mem[_8334]]) + 32 <= test266151307() and (32 * mem[_8334 + mem[_8334]]) + 32 >= 0
                            mem[64] = _8334 + ceil32(return_data.size) + (32 * mem[_8334 + mem[_8334]]) + 32
                            mem[_8334 + ceil32(return_data.size)] = _8462
                            require _8398 + (32 * _8462) + 32 <= return_data.size
                            idx = 0
                            s = _8334 + _8398 + 32
                            t = _8334 + ceil32(return_data.size) + 32
                            while idx < _8462:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5940]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7309] == mem[_7309 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7309 + 12 len 20]
                            _7471 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7565 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7565:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7471 + 100] = msg.sender
                            mem[_7471 + 132] = arg5
                            require ext_code.size(address(stor[_5940]))
                            call address(stor[_5940]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7471 + (32 * _7565) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8335 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8399 = mem[_8335]
                            require mem[_8335] <= test266151307()
                            require _8335 + mem[_8335] + 31 < _8335 + return_data.size
                            _8463 = mem[_8335 + mem[_8335]]
                            require mem[_8335 + mem[_8335]] <= test266151307()
                            require _8335 + ceil32(return_data.size) + (32 * mem[_8335 + mem[_8335]]) + 32 <= test266151307() and (32 * mem[_8335 + mem[_8335]]) + 32 >= 0
                            mem[64] = _8335 + ceil32(return_data.size) + (32 * mem[_8335 + mem[_8335]]) + 32
                            mem[_8335 + ceil32(return_data.size)] = _8463
                            require _8399 + (32 * _8463) + 32 <= return_data.size
                            idx = 0
                            s = _8335 + _8399 + 32
                            t = _8335 + ceil32(return_data.size) + 32
                            while idx < _8463:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5970 + _5986 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5940]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7340] == mem[_7340 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7340 + 12 len 20]
                            _7532 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7596 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7596:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7532 + 100] = msg.sender
                            mem[_7532 + 132] = arg5
                            require ext_code.size(address(stor[_5940]))
                            call address(stor[_5940]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7532 + (32 * _7596) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8336 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8400 = mem[_8336]
                            require mem[_8336] <= test266151307()
                            require _8336 + mem[_8336] + 31 < _8336 + return_data.size
                            _8464 = mem[_8336 + mem[_8336]]
                            require mem[_8336 + mem[_8336]] <= test266151307()
                            require _8336 + ceil32(return_data.size) + (32 * mem[_8336 + mem[_8336]]) + 32 <= test266151307() and (32 * mem[_8336 + mem[_8336]]) + 32 >= 0
                            mem[64] = _8336 + ceil32(return_data.size) + (32 * mem[_8336 + mem[_8336]]) + 32
                            mem[_8336 + ceil32(return_data.size)] = _8464
                            require _8400 + (32 * _8464) + 32 <= return_data.size
                            idx = 0
                            s = _8336 + _8400 + 32
                            t = _8336 + ceil32(return_data.size) + 32
                            while idx < _8464:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5940]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7341] == mem[_7341 + 12 len 20]
                            require 1 < mem[_4690]
                            mem[_4690 + 64] = mem[_7341 + 12 len 20]
                            _7533 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7597 = mem[_4690]
                            mem[mem[64] + 164] = mem[_4690]
                            idx = 0
                            s = _4690 + 32
                            t = mem[64] + 196
                            while idx < _7597:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7533 + 100] = msg.sender
                            mem[_7533 + 132] = arg5
                            require ext_code.size(address(stor[_5940]))
                            call address(stor[_5940]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7533 + (32 * _7597) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8337 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8401 = mem[_8337]
                            require mem[_8337] <= test266151307()
                            require _8337 + mem[_8337] + 31 < _8337 + return_data.size
                            _8465 = mem[_8337 + mem[_8337]]
                            require mem[_8337 + mem[_8337]] <= test266151307()
                            require _8337 + ceil32(return_data.size) + (32 * mem[_8337 + mem[_8337]]) + 32 <= test266151307() and (32 * mem[_8337 + mem[_8337]]) + 32 >= 0
                            mem[64] = _8337 + ceil32(return_data.size) + (32 * mem[_8337 + mem[_8337]]) + 32
                            mem[_8337 + ceil32(return_data.size)] = _8465
                            require _8401 + (32 * _8465) + 32 <= return_data.size
                            idx = 0
                            s = _8337 + _8401 + 32
                            t = _8337 + ceil32(return_data.size) + 32
                            while idx < _8465:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).0x8dd95002 with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2131 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2071]))
                call address(stor[_2071]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2131) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3427 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3435 = mem[_3427]
                require mem[_3427] <= test266151307()
                require _3427 + mem[_3427] + 31 < _3427 + return_data.size
                _3443 = mem[_3427 + mem[_3427]]
                require mem[_3427 + mem[_3427]] <= test266151307()
                require _3427 + ceil32(return_data.size) + (32 * mem[_3427 + mem[_3427]]) + 32 <= test266151307() and (32 * mem[_3427 + mem[_3427]]) + 32 >= 0
                mem[64] = _3427 + ceil32(return_data.size) + (32 * mem[_3427 + mem[_3427]]) + 32
                mem[_3427 + ceil32(return_data.size)] = _3443
                require _3435 + (32 * _3443) + 32 <= return_data.size
                idx = 0
                s = _3427 + _3435 + 32
                t = _3427 + ceil32(return_data.size) + 32
                while idx < _3443:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4691 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4691 + 32 len 64] = call.data[calldata.size len 64]
                _4707 = mem[ceil32(arg3.length) + 128]
                mem[_4691 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4691 + _4707 + 96] = 0
                if ceil32(_4707) <= _4707:
                    _5918 = sha3(mem[mem[64] len _4691 + _4707 + -mem[64] + 128])
                    require 0 < mem[_4691]
                    mem[_4691 + 32] = address(arg1)
                    _5942 = mem[64]
                    _5979 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5979] = 1
                    require ext_code.size(address(stor[_5918]))
                    if ceil32(_5979) <= _5979:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5942 + _5979 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5918]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7310] == mem[_7310 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7310 + 12 len 20]
                            _7474 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7566 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7566:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7474 + 100] = msg.sender
                            mem[_7474 + 132] = arg5
                            require ext_code.size(address(stor[_5918]))
                            call address(stor[_5918]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7474 + (32 * _7566) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8338 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8402 = mem[_8338]
                            require mem[_8338] <= test266151307()
                            require _8338 + mem[_8338] + 31 < _8338 + return_data.size
                            _8466 = mem[_8338 + mem[_8338]]
                            require mem[_8338 + mem[_8338]] <= test266151307()
                            require _8338 + ceil32(return_data.size) + (32 * mem[_8338 + mem[_8338]]) + 32 <= test266151307() and (32 * mem[_8338 + mem[_8338]]) + 32 >= 0
                            mem[64] = _8338 + ceil32(return_data.size) + (32 * mem[_8338 + mem[_8338]]) + 32
                            mem[_8338 + ceil32(return_data.size)] = _8466
                            require _8402 + (32 * _8466) + 32 <= return_data.size
                            idx = 0
                            s = _8338 + _8402 + 32
                            t = _8338 + ceil32(return_data.size) + 32
                            while idx < _8466:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5918]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7311] == mem[_7311 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7311 + 12 len 20]
                            _7475 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7567 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7567:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7475 + 100] = msg.sender
                            mem[_7475 + 132] = arg5
                            require ext_code.size(address(stor[_5918]))
                            call address(stor[_5918]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7475 + (32 * _7567) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8339 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8403 = mem[_8339]
                            require mem[_8339] <= test266151307()
                            require _8339 + mem[_8339] + 31 < _8339 + return_data.size
                            _8467 = mem[_8339 + mem[_8339]]
                            require mem[_8339 + mem[_8339]] <= test266151307()
                            require _8339 + ceil32(return_data.size) + (32 * mem[_8339 + mem[_8339]]) + 32 <= test266151307() and (32 * mem[_8339 + mem[_8339]]) + 32 >= 0
                            mem[64] = _8339 + ceil32(return_data.size) + (32 * mem[_8339 + mem[_8339]]) + 32
                            mem[_8339 + ceil32(return_data.size)] = _8467
                            require _8403 + (32 * _8467) + 32 <= return_data.size
                            idx = 0
                            s = _8339 + _8403 + 32
                            t = _8339 + ceil32(return_data.size) + 32
                            while idx < _8467:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5942 + _5979 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5918]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7342 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7342] == mem[_7342 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7342 + 12 len 20]
                            _7534 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7598 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7598:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7534 + 100] = msg.sender
                            mem[_7534 + 132] = arg5
                            require ext_code.size(address(stor[_5918]))
                            call address(stor[_5918]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7534 + (32 * _7598) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8340 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8404 = mem[_8340]
                            require mem[_8340] <= test266151307()
                            require _8340 + mem[_8340] + 31 < _8340 + return_data.size
                            _8468 = mem[_8340 + mem[_8340]]
                            require mem[_8340 + mem[_8340]] <= test266151307()
                            require _8340 + ceil32(return_data.size) + (32 * mem[_8340 + mem[_8340]]) + 32 <= test266151307() and (32 * mem[_8340 + mem[_8340]]) + 32 >= 0
                            mem[64] = _8340 + ceil32(return_data.size) + (32 * mem[_8340 + mem[_8340]]) + 32
                            mem[_8340 + ceil32(return_data.size)] = _8468
                            require _8404 + (32 * _8468) + 32 <= return_data.size
                            idx = 0
                            s = _8340 + _8404 + 32
                            t = _8340 + ceil32(return_data.size) + 32
                            while idx < _8468:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5918]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7343] == mem[_7343 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7343 + 12 len 20]
                            _7535 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7599 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7599:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7535 + 100] = msg.sender
                            mem[_7535 + 132] = arg5
                            require ext_code.size(address(stor[_5918]))
                            call address(stor[_5918]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7535 + (32 * _7599) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8341 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8405 = mem[_8341]
                            require mem[_8341] <= test266151307()
                            require _8341 + mem[_8341] + 31 < _8341 + return_data.size
                            _8469 = mem[_8341 + mem[_8341]]
                            require mem[_8341 + mem[_8341]] <= test266151307()
                            require _8341 + ceil32(return_data.size) + (32 * mem[_8341 + mem[_8341]]) + 32 <= test266151307() and (32 * mem[_8341 + mem[_8341]]) + 32 >= 0
                            mem[64] = _8341 + ceil32(return_data.size) + (32 * mem[_8341 + mem[_8341]]) + 32
                            mem[_8341 + ceil32(return_data.size)] = _8469
                            require _8405 + (32 * _8469) + 32 <= return_data.size
                            idx = 0
                            s = _8341 + _8405 + 32
                            t = _8341 + ceil32(return_data.size) + 32
                            while idx < _8469:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5944 = sha3(mem[mem[64] len _4691 + _4707 + -mem[64] + 128])
                    require 0 < mem[_4691]
                    mem[_4691 + 32] = address(arg1)
                    _5971 = mem[64]
                    _5987 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5987] = 1
                    require ext_code.size(address(stor[_5944]))
                    if ceil32(_5987) <= _5987:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5971 + _5987 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5944]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7312] == mem[_7312 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7312 + 12 len 20]
                            _7478 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7568 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7568:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7478 + 100] = msg.sender
                            mem[_7478 + 132] = arg5
                            require ext_code.size(address(stor[_5944]))
                            call address(stor[_5944]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7478 + (32 * _7568) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8342 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8406 = mem[_8342]
                            require mem[_8342] <= test266151307()
                            require _8342 + mem[_8342] + 31 < _8342 + return_data.size
                            _8470 = mem[_8342 + mem[_8342]]
                            require mem[_8342 + mem[_8342]] <= test266151307()
                            require _8342 + ceil32(return_data.size) + (32 * mem[_8342 + mem[_8342]]) + 32 <= test266151307() and (32 * mem[_8342 + mem[_8342]]) + 32 >= 0
                            mem[64] = _8342 + ceil32(return_data.size) + (32 * mem[_8342 + mem[_8342]]) + 32
                            mem[_8342 + ceil32(return_data.size)] = _8470
                            require _8406 + (32 * _8470) + 32 <= return_data.size
                            idx = 0
                            s = _8342 + _8406 + 32
                            t = _8342 + ceil32(return_data.size) + 32
                            while idx < _8470:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5944]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7313] == mem[_7313 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7313 + 12 len 20]
                            _7479 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7569 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7569:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7479 + 100] = msg.sender
                            mem[_7479 + 132] = arg5
                            require ext_code.size(address(stor[_5944]))
                            call address(stor[_5944]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7479 + (32 * _7569) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8343 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8407 = mem[_8343]
                            require mem[_8343] <= test266151307()
                            require _8343 + mem[_8343] + 31 < _8343 + return_data.size
                            _8471 = mem[_8343 + mem[_8343]]
                            require mem[_8343 + mem[_8343]] <= test266151307()
                            require _8343 + ceil32(return_data.size) + (32 * mem[_8343 + mem[_8343]]) + 32 <= test266151307() and (32 * mem[_8343 + mem[_8343]]) + 32 >= 0
                            mem[64] = _8343 + ceil32(return_data.size) + (32 * mem[_8343 + mem[_8343]]) + 32
                            mem[_8343 + ceil32(return_data.size)] = _8471
                            require _8407 + (32 * _8471) + 32 <= return_data.size
                            idx = 0
                            s = _8343 + _8407 + 32
                            t = _8343 + ceil32(return_data.size) + 32
                            while idx < _8471:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5971 + _5987 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5944]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7344] == mem[_7344 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7344 + 12 len 20]
                            _7536 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7600 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7600:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7536 + 100] = msg.sender
                            mem[_7536 + 132] = arg5
                            require ext_code.size(address(stor[_5944]))
                            call address(stor[_5944]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7536 + (32 * _7600) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8344 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8408 = mem[_8344]
                            require mem[_8344] <= test266151307()
                            require _8344 + mem[_8344] + 31 < _8344 + return_data.size
                            _8472 = mem[_8344 + mem[_8344]]
                            require mem[_8344 + mem[_8344]] <= test266151307()
                            require _8344 + ceil32(return_data.size) + (32 * mem[_8344 + mem[_8344]]) + 32 <= test266151307() and (32 * mem[_8344 + mem[_8344]]) + 32 >= 0
                            mem[64] = _8344 + ceil32(return_data.size) + (32 * mem[_8344 + mem[_8344]]) + 32
                            mem[_8344 + ceil32(return_data.size)] = _8472
                            require _8408 + (32 * _8472) + 32 <= return_data.size
                            idx = 0
                            s = _8344 + _8408 + 32
                            t = _8344 + ceil32(return_data.size) + 32
                            while idx < _8472:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5944]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7345] == mem[_7345 + 12 len 20]
                            require 1 < mem[_4691]
                            mem[_4691 + 64] = mem[_7345 + 12 len 20]
                            _7537 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7601 = mem[_4691]
                            mem[mem[64] + 164] = mem[_4691]
                            idx = 0
                            s = _4691 + 32
                            t = mem[64] + 196
                            while idx < _7601:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7537 + 100] = msg.sender
                            mem[_7537 + 132] = arg5
                            require ext_code.size(address(stor[_5944]))
                            call address(stor[_5944]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7537 + (32 * _7601) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8345 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8409 = mem[_8345]
                            require mem[_8345] <= test266151307()
                            require _8345 + mem[_8345] + 31 < _8345 + return_data.size
                            _8473 = mem[_8345 + mem[_8345]]
                            require mem[_8345 + mem[_8345]] <= test266151307()
                            require _8345 + ceil32(return_data.size) + (32 * mem[_8345 + mem[_8345]]) + 32 <= test266151307() and (32 * mem[_8345 + mem[_8345]]) + 32 >= 0
                            mem[64] = _8345 + ceil32(return_data.size) + (32 * mem[_8345 + mem[_8345]]) + 32
                            mem[_8345 + ceil32(return_data.size)] = _8473
                            require _8409 + (32 * _8473) + 32 <= return_data.size
                            idx = 0
                            s = _8345 + _8409 + 32
                            t = _8345 + ceil32(return_data.size) + 32
                            while idx < _8473:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
        else:
            _2077 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
            require ext_code.size(address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]))
            if not uint8(stor[_719]):
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2134 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2077]))
                call address(stor[_2077]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2134) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3428 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3436 = mem[_3428]
                require mem[_3428] <= test266151307()
                require _3428 + mem[_3428] + 31 < _3428 + return_data.size
                _3444 = mem[_3428 + mem[_3428]]
                require mem[_3428 + mem[_3428]] <= test266151307()
                require _3428 + ceil32(return_data.size) + (32 * mem[_3428 + mem[_3428]]) + 32 <= test266151307() and (32 * mem[_3428 + mem[_3428]]) + 32 >= 0
                mem[64] = _3428 + ceil32(return_data.size) + (32 * mem[_3428 + mem[_3428]]) + 32
                mem[_3428 + ceil32(return_data.size)] = _3444
                require _3436 + (32 * _3444) + 32 <= return_data.size
                idx = 0
                s = _3428 + _3436 + 32
                t = _3428 + ceil32(return_data.size) + 32
                while idx < _3444:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4692 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4692 + 32 len 64] = call.data[calldata.size len 64]
                _4708 = mem[ceil32(arg3.length) + 128]
                mem[_4692 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4692 + _4708 + 96] = 0
                if ceil32(_4708) <= _4708:
                    _5921 = sha3(mem[mem[64] len _4692 + _4708 + -mem[64] + 128])
                    require 0 < mem[_4692]
                    mem[_4692 + 32] = address(arg1)
                    _5946 = mem[64]
                    _5980 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5980] = 1
                    require ext_code.size(address(stor[_5921]))
                    if ceil32(_5980) <= _5980:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5946 + _5980 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5921]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7314] == mem[_7314 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7314 + 12 len 20]
                            _7482 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7570 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7570:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7482 + 100] = msg.sender
                            mem[_7482 + 132] = arg5
                            require ext_code.size(address(stor[_5921]))
                            call address(stor[_5921]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7482 + (32 * _7570) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8346 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8410 = mem[_8346]
                            require mem[_8346] <= test266151307()
                            require _8346 + mem[_8346] + 31 < _8346 + return_data.size
                            _8474 = mem[_8346 + mem[_8346]]
                            require mem[_8346 + mem[_8346]] <= test266151307()
                            require _8346 + ceil32(return_data.size) + (32 * mem[_8346 + mem[_8346]]) + 32 <= test266151307() and (32 * mem[_8346 + mem[_8346]]) + 32 >= 0
                            mem[64] = _8346 + ceil32(return_data.size) + (32 * mem[_8346 + mem[_8346]]) + 32
                            mem[_8346 + ceil32(return_data.size)] = _8474
                            require _8410 + (32 * _8474) + 32 <= return_data.size
                            idx = 0
                            s = _8346 + _8410 + 32
                            t = _8346 + ceil32(return_data.size) + 32
                            while idx < _8474:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5921]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7315] == mem[_7315 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7315 + 12 len 20]
                            _7483 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7571 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7571:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7483 + 100] = msg.sender
                            mem[_7483 + 132] = arg5
                            require ext_code.size(address(stor[_5921]))
                            call address(stor[_5921]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7483 + (32 * _7571) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8347 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8411 = mem[_8347]
                            require mem[_8347] <= test266151307()
                            require _8347 + mem[_8347] + 31 < _8347 + return_data.size
                            _8475 = mem[_8347 + mem[_8347]]
                            require mem[_8347 + mem[_8347]] <= test266151307()
                            require _8347 + ceil32(return_data.size) + (32 * mem[_8347 + mem[_8347]]) + 32 <= test266151307() and (32 * mem[_8347 + mem[_8347]]) + 32 >= 0
                            mem[64] = _8347 + ceil32(return_data.size) + (32 * mem[_8347 + mem[_8347]]) + 32
                            mem[_8347 + ceil32(return_data.size)] = _8475
                            require _8411 + (32 * _8475) + 32 <= return_data.size
                            idx = 0
                            s = _8347 + _8411 + 32
                            t = _8347 + ceil32(return_data.size) + 32
                            while idx < _8475:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5946 + _5980 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5921]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7346] == mem[_7346 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7346 + 12 len 20]
                            _7538 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7602 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7602:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7538 + 100] = msg.sender
                            mem[_7538 + 132] = arg5
                            require ext_code.size(address(stor[_5921]))
                            call address(stor[_5921]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7538 + (32 * _7602) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8348 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8412 = mem[_8348]
                            require mem[_8348] <= test266151307()
                            require _8348 + mem[_8348] + 31 < _8348 + return_data.size
                            _8476 = mem[_8348 + mem[_8348]]
                            require mem[_8348 + mem[_8348]] <= test266151307()
                            require _8348 + ceil32(return_data.size) + (32 * mem[_8348 + mem[_8348]]) + 32 <= test266151307() and (32 * mem[_8348 + mem[_8348]]) + 32 >= 0
                            mem[64] = _8348 + ceil32(return_data.size) + (32 * mem[_8348 + mem[_8348]]) + 32
                            mem[_8348 + ceil32(return_data.size)] = _8476
                            require _8412 + (32 * _8476) + 32 <= return_data.size
                            idx = 0
                            s = _8348 + _8412 + 32
                            t = _8348 + ceil32(return_data.size) + 32
                            while idx < _8476:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5921]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7347] == mem[_7347 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7347 + 12 len 20]
                            _7539 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7603 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7603:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7539 + 100] = msg.sender
                            mem[_7539 + 132] = arg5
                            require ext_code.size(address(stor[_5921]))
                            call address(stor[_5921]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7539 + (32 * _7603) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8349 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8413 = mem[_8349]
                            require mem[_8349] <= test266151307()
                            require _8349 + mem[_8349] + 31 < _8349 + return_data.size
                            _8477 = mem[_8349 + mem[_8349]]
                            require mem[_8349 + mem[_8349]] <= test266151307()
                            require _8349 + ceil32(return_data.size) + (32 * mem[_8349 + mem[_8349]]) + 32 <= test266151307() and (32 * mem[_8349 + mem[_8349]]) + 32 >= 0
                            mem[64] = _8349 + ceil32(return_data.size) + (32 * mem[_8349 + mem[_8349]]) + 32
                            mem[_8349 + ceil32(return_data.size)] = _8477
                            require _8413 + (32 * _8477) + 32 <= return_data.size
                            idx = 0
                            s = _8349 + _8413 + 32
                            t = _8349 + ceil32(return_data.size) + 32
                            while idx < _8477:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5948 = sha3(mem[mem[64] len _4692 + _4708 + -mem[64] + 128])
                    require 0 < mem[_4692]
                    mem[_4692 + 32] = address(arg1)
                    _5972 = mem[64]
                    _5988 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5988] = 1
                    require ext_code.size(address(stor[_5948]))
                    if ceil32(_5988) <= _5988:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5972 + _5988 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5948]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7316] == mem[_7316 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7316 + 12 len 20]
                            _7486 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7572 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7572:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7486 + 100] = msg.sender
                            mem[_7486 + 132] = arg5
                            require ext_code.size(address(stor[_5948]))
                            call address(stor[_5948]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7486 + (32 * _7572) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8350 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8414 = mem[_8350]
                            require mem[_8350] <= test266151307()
                            require _8350 + mem[_8350] + 31 < _8350 + return_data.size
                            _8478 = mem[_8350 + mem[_8350]]
                            require mem[_8350 + mem[_8350]] <= test266151307()
                            require _8350 + ceil32(return_data.size) + (32 * mem[_8350 + mem[_8350]]) + 32 <= test266151307() and (32 * mem[_8350 + mem[_8350]]) + 32 >= 0
                            mem[64] = _8350 + ceil32(return_data.size) + (32 * mem[_8350 + mem[_8350]]) + 32
                            mem[_8350 + ceil32(return_data.size)] = _8478
                            require _8414 + (32 * _8478) + 32 <= return_data.size
                            idx = 0
                            s = _8350 + _8414 + 32
                            t = _8350 + ceil32(return_data.size) + 32
                            while idx < _8478:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5948]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7317] == mem[_7317 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7317 + 12 len 20]
                            _7487 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7573 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7573:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7487 + 100] = msg.sender
                            mem[_7487 + 132] = arg5
                            require ext_code.size(address(stor[_5948]))
                            call address(stor[_5948]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7487 + (32 * _7573) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8351 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8415 = mem[_8351]
                            require mem[_8351] <= test266151307()
                            require _8351 + mem[_8351] + 31 < _8351 + return_data.size
                            _8479 = mem[_8351 + mem[_8351]]
                            require mem[_8351 + mem[_8351]] <= test266151307()
                            require _8351 + ceil32(return_data.size) + (32 * mem[_8351 + mem[_8351]]) + 32 <= test266151307() and (32 * mem[_8351 + mem[_8351]]) + 32 >= 0
                            mem[64] = _8351 + ceil32(return_data.size) + (32 * mem[_8351 + mem[_8351]]) + 32
                            mem[_8351 + ceil32(return_data.size)] = _8479
                            require _8415 + (32 * _8479) + 32 <= return_data.size
                            idx = 0
                            s = _8351 + _8415 + 32
                            t = _8351 + ceil32(return_data.size) + 32
                            while idx < _8479:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5972 + _5988 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5948]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7348] == mem[_7348 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7348 + 12 len 20]
                            _7540 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7604 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7604:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7540 + 100] = msg.sender
                            mem[_7540 + 132] = arg5
                            require ext_code.size(address(stor[_5948]))
                            call address(stor[_5948]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7540 + (32 * _7604) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8352 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8416 = mem[_8352]
                            require mem[_8352] <= test266151307()
                            require _8352 + mem[_8352] + 31 < _8352 + return_data.size
                            _8480 = mem[_8352 + mem[_8352]]
                            require mem[_8352 + mem[_8352]] <= test266151307()
                            require _8352 + ceil32(return_data.size) + (32 * mem[_8352 + mem[_8352]]) + 32 <= test266151307() and (32 * mem[_8352 + mem[_8352]]) + 32 >= 0
                            mem[64] = _8352 + ceil32(return_data.size) + (32 * mem[_8352 + mem[_8352]]) + 32
                            mem[_8352 + ceil32(return_data.size)] = _8480
                            require _8416 + (32 * _8480) + 32 <= return_data.size
                            idx = 0
                            s = _8352 + _8416 + 32
                            t = _8352 + ceil32(return_data.size) + 32
                            while idx < _8480:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5948]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7349] == mem[_7349 + 12 len 20]
                            require 1 < mem[_4692]
                            mem[_4692 + 64] = mem[_7349 + 12 len 20]
                            _7541 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7605 = mem[_4692]
                            mem[mem[64] + 164] = mem[_4692]
                            idx = 0
                            s = _4692 + 32
                            t = mem[64] + 196
                            while idx < _7605:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7541 + 100] = msg.sender
                            mem[_7541 + 132] = arg5
                            require ext_code.size(address(stor[_5948]))
                            call address(stor[_5948]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7541 + (32 * _7605) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8353 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8417 = mem[_8353]
                            require mem[_8353] <= test266151307()
                            require _8353 + mem[_8353] + 31 < _8353 + return_data.size
                            _8481 = mem[_8353 + mem[_8353]]
                            require mem[_8353 + mem[_8353]] <= test266151307()
                            require _8353 + ceil32(return_data.size) + (32 * mem[_8353 + mem[_8353]]) + 32 <= test266151307() and (32 * mem[_8353 + mem[_8353]]) + 32 >= 0
                            mem[64] = _8353 + ceil32(return_data.size) + (32 * mem[_8353 + mem[_8353]]) + 32
                            mem[_8353 + ceil32(return_data.size)] = _8481
                            require _8417 + (32 * _8481) + 32 <= return_data.size
                            idx = 0
                            s = _8353 + _8417 + 32
                            t = _8353 + ceil32(return_data.size) + 32
                            while idx < _8481:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).0x8dd95002 with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2135 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2077]))
                call address(stor[_2077]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2135) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3429 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3437 = mem[_3429]
                require mem[_3429] <= test266151307()
                require _3429 + mem[_3429] + 31 < _3429 + return_data.size
                _3445 = mem[_3429 + mem[_3429]]
                require mem[_3429 + mem[_3429]] <= test266151307()
                require _3429 + ceil32(return_data.size) + (32 * mem[_3429 + mem[_3429]]) + 32 <= test266151307() and (32 * mem[_3429 + mem[_3429]]) + 32 >= 0
                mem[64] = _3429 + ceil32(return_data.size) + (32 * mem[_3429 + mem[_3429]]) + 32
                mem[_3429 + ceil32(return_data.size)] = _3445
                require _3437 + (32 * _3445) + 32 <= return_data.size
                idx = 0
                s = _3429 + _3437 + 32
                t = _3429 + ceil32(return_data.size) + 32
                while idx < _3445:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4693 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4693 + 32 len 64] = call.data[calldata.size len 64]
                _4709 = mem[ceil32(arg3.length) + 128]
                mem[_4693 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4693 + _4709 + 96] = 0
                if ceil32(_4709) <= _4709:
                    _5924 = sha3(mem[mem[64] len _4693 + _4709 + -mem[64] + 128])
                    require 0 < mem[_4693]
                    mem[_4693 + 32] = address(arg1)
                    _5950 = mem[64]
                    _5981 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5981] = 1
                    require ext_code.size(address(stor[_5924]))
                    if ceil32(_5981) <= _5981:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5950 + _5981 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5924]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7318] == mem[_7318 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7318 + 12 len 20]
                            _7490 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7574 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7574:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7490 + 100] = msg.sender
                            mem[_7490 + 132] = arg5
                            require ext_code.size(address(stor[_5924]))
                            call address(stor[_5924]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7490 + (32 * _7574) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8354 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8418 = mem[_8354]
                            require mem[_8354] <= test266151307()
                            require _8354 + mem[_8354] + 31 < _8354 + return_data.size
                            _8482 = mem[_8354 + mem[_8354]]
                            require mem[_8354 + mem[_8354]] <= test266151307()
                            require _8354 + ceil32(return_data.size) + (32 * mem[_8354 + mem[_8354]]) + 32 <= test266151307() and (32 * mem[_8354 + mem[_8354]]) + 32 >= 0
                            mem[64] = _8354 + ceil32(return_data.size) + (32 * mem[_8354 + mem[_8354]]) + 32
                            mem[_8354 + ceil32(return_data.size)] = _8482
                            require _8418 + (32 * _8482) + 32 <= return_data.size
                            idx = 0
                            s = _8354 + _8418 + 32
                            t = _8354 + ceil32(return_data.size) + 32
                            while idx < _8482:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5924]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7319] == mem[_7319 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7319 + 12 len 20]
                            _7491 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7575 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7575:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7491 + 100] = msg.sender
                            mem[_7491 + 132] = arg5
                            require ext_code.size(address(stor[_5924]))
                            call address(stor[_5924]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7491 + (32 * _7575) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8355 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8419 = mem[_8355]
                            require mem[_8355] <= test266151307()
                            require _8355 + mem[_8355] + 31 < _8355 + return_data.size
                            _8483 = mem[_8355 + mem[_8355]]
                            require mem[_8355 + mem[_8355]] <= test266151307()
                            require _8355 + ceil32(return_data.size) + (32 * mem[_8355 + mem[_8355]]) + 32 <= test266151307() and (32 * mem[_8355 + mem[_8355]]) + 32 >= 0
                            mem[64] = _8355 + ceil32(return_data.size) + (32 * mem[_8355 + mem[_8355]]) + 32
                            mem[_8355 + ceil32(return_data.size)] = _8483
                            require _8419 + (32 * _8483) + 32 <= return_data.size
                            idx = 0
                            s = _8355 + _8419 + 32
                            t = _8355 + ceil32(return_data.size) + 32
                            while idx < _8483:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5950 + _5981 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5924]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7350] == mem[_7350 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7350 + 12 len 20]
                            _7542 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7606 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7606:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7542 + 100] = msg.sender
                            mem[_7542 + 132] = arg5
                            require ext_code.size(address(stor[_5924]))
                            call address(stor[_5924]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7542 + (32 * _7606) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8356 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8420 = mem[_8356]
                            require mem[_8356] <= test266151307()
                            require _8356 + mem[_8356] + 31 < _8356 + return_data.size
                            _8484 = mem[_8356 + mem[_8356]]
                            require mem[_8356 + mem[_8356]] <= test266151307()
                            require _8356 + ceil32(return_data.size) + (32 * mem[_8356 + mem[_8356]]) + 32 <= test266151307() and (32 * mem[_8356 + mem[_8356]]) + 32 >= 0
                            mem[64] = _8356 + ceil32(return_data.size) + (32 * mem[_8356 + mem[_8356]]) + 32
                            mem[_8356 + ceil32(return_data.size)] = _8484
                            require _8420 + (32 * _8484) + 32 <= return_data.size
                            idx = 0
                            s = _8356 + _8420 + 32
                            t = _8356 + ceil32(return_data.size) + 32
                            while idx < _8484:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5924]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7351 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7351] == mem[_7351 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7351 + 12 len 20]
                            _7543 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7607 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7607:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7543 + 100] = msg.sender
                            mem[_7543 + 132] = arg5
                            require ext_code.size(address(stor[_5924]))
                            call address(stor[_5924]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7543 + (32 * _7607) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8357 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8421 = mem[_8357]
                            require mem[_8357] <= test266151307()
                            require _8357 + mem[_8357] + 31 < _8357 + return_data.size
                            _8485 = mem[_8357 + mem[_8357]]
                            require mem[_8357 + mem[_8357]] <= test266151307()
                            require _8357 + ceil32(return_data.size) + (32 * mem[_8357 + mem[_8357]]) + 32 <= test266151307() and (32 * mem[_8357 + mem[_8357]]) + 32 >= 0
                            mem[64] = _8357 + ceil32(return_data.size) + (32 * mem[_8357 + mem[_8357]]) + 32
                            mem[_8357 + ceil32(return_data.size)] = _8485
                            require _8421 + (32 * _8485) + 32 <= return_data.size
                            idx = 0
                            s = _8357 + _8421 + 32
                            t = _8357 + ceil32(return_data.size) + 32
                            while idx < _8485:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5952 = sha3(mem[mem[64] len _4693 + _4709 + -mem[64] + 128])
                    require 0 < mem[_4693]
                    mem[_4693 + 32] = address(arg1)
                    _5973 = mem[64]
                    _5989 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5989] = 1
                    require ext_code.size(address(stor[_5952]))
                    if ceil32(_5989) <= _5989:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5973 + _5989 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5952]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7320] == mem[_7320 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7320 + 12 len 20]
                            _7494 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7576 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7576:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7494 + 100] = msg.sender
                            mem[_7494 + 132] = arg5
                            require ext_code.size(address(stor[_5952]))
                            call address(stor[_5952]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7494 + (32 * _7576) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8358 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8422 = mem[_8358]
                            require mem[_8358] <= test266151307()
                            require _8358 + mem[_8358] + 31 < _8358 + return_data.size
                            _8486 = mem[_8358 + mem[_8358]]
                            require mem[_8358 + mem[_8358]] <= test266151307()
                            require _8358 + ceil32(return_data.size) + (32 * mem[_8358 + mem[_8358]]) + 32 <= test266151307() and (32 * mem[_8358 + mem[_8358]]) + 32 >= 0
                            mem[64] = _8358 + ceil32(return_data.size) + (32 * mem[_8358 + mem[_8358]]) + 32
                            mem[_8358 + ceil32(return_data.size)] = _8486
                            require _8422 + (32 * _8486) + 32 <= return_data.size
                            idx = 0
                            s = _8358 + _8422 + 32
                            t = _8358 + ceil32(return_data.size) + 32
                            while idx < _8486:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5952]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7321] == mem[_7321 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7321 + 12 len 20]
                            _7495 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7577 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7577:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7495 + 100] = msg.sender
                            mem[_7495 + 132] = arg5
                            require ext_code.size(address(stor[_5952]))
                            call address(stor[_5952]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7495 + (32 * _7577) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8359 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8423 = mem[_8359]
                            require mem[_8359] <= test266151307()
                            require _8359 + mem[_8359] + 31 < _8359 + return_data.size
                            _8487 = mem[_8359 + mem[_8359]]
                            require mem[_8359 + mem[_8359]] <= test266151307()
                            require _8359 + ceil32(return_data.size) + (32 * mem[_8359 + mem[_8359]]) + 32 <= test266151307() and (32 * mem[_8359 + mem[_8359]]) + 32 >= 0
                            mem[64] = _8359 + ceil32(return_data.size) + (32 * mem[_8359 + mem[_8359]]) + 32
                            mem[_8359 + ceil32(return_data.size)] = _8487
                            require _8423 + (32 * _8487) + 32 <= return_data.size
                            idx = 0
                            s = _8359 + _8423 + 32
                            t = _8359 + ceil32(return_data.size) + 32
                            while idx < _8487:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5973 + _5989 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5952]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7352] == mem[_7352 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7352 + 12 len 20]
                            _7544 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7608 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7608:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7544 + 100] = msg.sender
                            mem[_7544 + 132] = arg5
                            require ext_code.size(address(stor[_5952]))
                            call address(stor[_5952]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7544 + (32 * _7608) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8360 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8424 = mem[_8360]
                            require mem[_8360] <= test266151307()
                            require _8360 + mem[_8360] + 31 < _8360 + return_data.size
                            _8488 = mem[_8360 + mem[_8360]]
                            require mem[_8360 + mem[_8360]] <= test266151307()
                            require _8360 + ceil32(return_data.size) + (32 * mem[_8360 + mem[_8360]]) + 32 <= test266151307() and (32 * mem[_8360 + mem[_8360]]) + 32 >= 0
                            mem[64] = _8360 + ceil32(return_data.size) + (32 * mem[_8360 + mem[_8360]]) + 32
                            mem[_8360 + ceil32(return_data.size)] = _8488
                            require _8424 + (32 * _8488) + 32 <= return_data.size
                            idx = 0
                            s = _8360 + _8424 + 32
                            t = _8360 + ceil32(return_data.size) + 32
                            while idx < _8488:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5952]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7353] == mem[_7353 + 12 len 20]
                            require 1 < mem[_4693]
                            mem[_4693 + 64] = mem[_7353 + 12 len 20]
                            _7545 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7609 = mem[_4693]
                            mem[mem[64] + 164] = mem[_4693]
                            idx = 0
                            s = _4693 + 32
                            t = mem[64] + 196
                            while idx < _7609:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7545 + 100] = msg.sender
                            mem[_7545 + 132] = arg5
                            require ext_code.size(address(stor[_5952]))
                            call address(stor[_5952]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7545 + (32 * _7609) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8361 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8425 = mem[_8361]
                            require mem[_8361] <= test266151307()
                            require _8361 + mem[_8361] + 31 < _8361 + return_data.size
                            _8489 = mem[_8361 + mem[_8361]]
                            require mem[_8361 + mem[_8361]] <= test266151307()
                            require _8361 + ceil32(return_data.size) + (32 * mem[_8361 + mem[_8361]]) + 32 <= test266151307() and (32 * mem[_8361 + mem[_8361]]) + 32 >= 0
                            mem[64] = _8361 + ceil32(return_data.size) + (32 * mem[_8361 + mem[_8361]]) + 32
                            mem[_8361 + ceil32(return_data.size)] = _8489
                            require _8425 + (32 * _8489) + 32 <= return_data.size
                            idx = 0
                            s = _8361 + _8425 + 32
                            t = _8361 + ceil32(return_data.size) + 32
                            while idx < _8489:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    else:
        _722 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 256] = 0
        if ceil32(arg3.length) <= arg3.length:
            _2074 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
            require ext_code.size(address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]))
            if not uint8(stor[_722]):
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2132 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2074]))
                call address(stor[_2074]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2132) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3430 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3438 = mem[_3430]
                require mem[_3430] <= test266151307()
                require _3430 + mem[_3430] + 31 < _3430 + return_data.size
                _3446 = mem[_3430 + mem[_3430]]
                require mem[_3430 + mem[_3430]] <= test266151307()
                require _3430 + ceil32(return_data.size) + (32 * mem[_3430 + mem[_3430]]) + 32 <= test266151307() and (32 * mem[_3430 + mem[_3430]]) + 32 >= 0
                mem[64] = _3430 + ceil32(return_data.size) + (32 * mem[_3430 + mem[_3430]]) + 32
                mem[_3430 + ceil32(return_data.size)] = _3446
                require _3438 + (32 * _3446) + 32 <= return_data.size
                idx = 0
                s = _3430 + _3438 + 32
                t = _3430 + ceil32(return_data.size) + 32
                while idx < _3446:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4694 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4694 + 32 len 64] = call.data[calldata.size len 64]
                _4710 = mem[ceil32(arg3.length) + 128]
                mem[_4694 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4694 + _4710 + 96] = 0
                if ceil32(_4710) <= _4710:
                    _5927 = sha3(mem[mem[64] len _4694 + _4710 + -mem[64] + 128])
                    require 0 < mem[_4694]
                    mem[_4694 + 32] = address(arg1)
                    _5954 = mem[64]
                    _5982 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5982] = 1
                    require ext_code.size(address(stor[_5927]))
                    if ceil32(_5982) <= _5982:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5954 + _5982 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5927]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7322] == mem[_7322 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7322 + 12 len 20]
                            _7498 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7578 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7578:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7498 + 100] = msg.sender
                            mem[_7498 + 132] = arg5
                            require ext_code.size(address(stor[_5927]))
                            call address(stor[_5927]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7498 + (32 * _7578) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8362 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8426 = mem[_8362]
                            require mem[_8362] <= test266151307()
                            require _8362 + mem[_8362] + 31 < _8362 + return_data.size
                            _8490 = mem[_8362 + mem[_8362]]
                            require mem[_8362 + mem[_8362]] <= test266151307()
                            require _8362 + ceil32(return_data.size) + (32 * mem[_8362 + mem[_8362]]) + 32 <= test266151307() and (32 * mem[_8362 + mem[_8362]]) + 32 >= 0
                            mem[64] = _8362 + ceil32(return_data.size) + (32 * mem[_8362 + mem[_8362]]) + 32
                            mem[_8362 + ceil32(return_data.size)] = _8490
                            require _8426 + (32 * _8490) + 32 <= return_data.size
                            idx = 0
                            s = _8362 + _8426 + 32
                            t = _8362 + ceil32(return_data.size) + 32
                            while idx < _8490:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5927]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7323] == mem[_7323 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7323 + 12 len 20]
                            _7499 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7579 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7579:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7499 + 100] = msg.sender
                            mem[_7499 + 132] = arg5
                            require ext_code.size(address(stor[_5927]))
                            call address(stor[_5927]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7499 + (32 * _7579) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8363 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8427 = mem[_8363]
                            require mem[_8363] <= test266151307()
                            require _8363 + mem[_8363] + 31 < _8363 + return_data.size
                            _8491 = mem[_8363 + mem[_8363]]
                            require mem[_8363 + mem[_8363]] <= test266151307()
                            require _8363 + ceil32(return_data.size) + (32 * mem[_8363 + mem[_8363]]) + 32 <= test266151307() and (32 * mem[_8363 + mem[_8363]]) + 32 >= 0
                            mem[64] = _8363 + ceil32(return_data.size) + (32 * mem[_8363 + mem[_8363]]) + 32
                            mem[_8363 + ceil32(return_data.size)] = _8491
                            require _8427 + (32 * _8491) + 32 <= return_data.size
                            idx = 0
                            s = _8363 + _8427 + 32
                            t = _8363 + ceil32(return_data.size) + 32
                            while idx < _8491:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5954 + _5982 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5927]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7354] == mem[_7354 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7354 + 12 len 20]
                            _7546 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7610 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7610:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7546 + 100] = msg.sender
                            mem[_7546 + 132] = arg5
                            require ext_code.size(address(stor[_5927]))
                            call address(stor[_5927]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7546 + (32 * _7610) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8364 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8428 = mem[_8364]
                            require mem[_8364] <= test266151307()
                            require _8364 + mem[_8364] + 31 < _8364 + return_data.size
                            _8492 = mem[_8364 + mem[_8364]]
                            require mem[_8364 + mem[_8364]] <= test266151307()
                            require _8364 + ceil32(return_data.size) + (32 * mem[_8364 + mem[_8364]]) + 32 <= test266151307() and (32 * mem[_8364 + mem[_8364]]) + 32 >= 0
                            mem[64] = _8364 + ceil32(return_data.size) + (32 * mem[_8364 + mem[_8364]]) + 32
                            mem[_8364 + ceil32(return_data.size)] = _8492
                            require _8428 + (32 * _8492) + 32 <= return_data.size
                            idx = 0
                            s = _8364 + _8428 + 32
                            t = _8364 + ceil32(return_data.size) + 32
                            while idx < _8492:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5927]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7355] == mem[_7355 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7355 + 12 len 20]
                            _7547 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7611 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7611:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7547 + 100] = msg.sender
                            mem[_7547 + 132] = arg5
                            require ext_code.size(address(stor[_5927]))
                            call address(stor[_5927]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7547 + (32 * _7611) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8365 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8429 = mem[_8365]
                            require mem[_8365] <= test266151307()
                            require _8365 + mem[_8365] + 31 < _8365 + return_data.size
                            _8493 = mem[_8365 + mem[_8365]]
                            require mem[_8365 + mem[_8365]] <= test266151307()
                            require _8365 + ceil32(return_data.size) + (32 * mem[_8365 + mem[_8365]]) + 32 <= test266151307() and (32 * mem[_8365 + mem[_8365]]) + 32 >= 0
                            mem[64] = _8365 + ceil32(return_data.size) + (32 * mem[_8365 + mem[_8365]]) + 32
                            mem[_8365 + ceil32(return_data.size)] = _8493
                            require _8429 + (32 * _8493) + 32 <= return_data.size
                            idx = 0
                            s = _8365 + _8429 + 32
                            t = _8365 + ceil32(return_data.size) + 32
                            while idx < _8493:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5956 = sha3(mem[mem[64] len _4694 + _4710 + -mem[64] + 128])
                    require 0 < mem[_4694]
                    mem[_4694 + 32] = address(arg1)
                    _5974 = mem[64]
                    _5990 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5990] = 1
                    require ext_code.size(address(stor[_5956]))
                    if ceil32(_5990) <= _5990:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5974 + _5990 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5956]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7324] == mem[_7324 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7324 + 12 len 20]
                            _7502 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7580 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7580:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7502 + 100] = msg.sender
                            mem[_7502 + 132] = arg5
                            require ext_code.size(address(stor[_5956]))
                            call address(stor[_5956]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7502 + (32 * _7580) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8366 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8430 = mem[_8366]
                            require mem[_8366] <= test266151307()
                            require _8366 + mem[_8366] + 31 < _8366 + return_data.size
                            _8494 = mem[_8366 + mem[_8366]]
                            require mem[_8366 + mem[_8366]] <= test266151307()
                            require _8366 + ceil32(return_data.size) + (32 * mem[_8366 + mem[_8366]]) + 32 <= test266151307() and (32 * mem[_8366 + mem[_8366]]) + 32 >= 0
                            mem[64] = _8366 + ceil32(return_data.size) + (32 * mem[_8366 + mem[_8366]]) + 32
                            mem[_8366 + ceil32(return_data.size)] = _8494
                            require _8430 + (32 * _8494) + 32 <= return_data.size
                            idx = 0
                            s = _8366 + _8430 + 32
                            t = _8366 + ceil32(return_data.size) + 32
                            while idx < _8494:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5956]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7325] == mem[_7325 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7325 + 12 len 20]
                            _7503 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7581 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7581:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7503 + 100] = msg.sender
                            mem[_7503 + 132] = arg5
                            require ext_code.size(address(stor[_5956]))
                            call address(stor[_5956]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7503 + (32 * _7581) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8367 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8431 = mem[_8367]
                            require mem[_8367] <= test266151307()
                            require _8367 + mem[_8367] + 31 < _8367 + return_data.size
                            _8495 = mem[_8367 + mem[_8367]]
                            require mem[_8367 + mem[_8367]] <= test266151307()
                            require _8367 + ceil32(return_data.size) + (32 * mem[_8367 + mem[_8367]]) + 32 <= test266151307() and (32 * mem[_8367 + mem[_8367]]) + 32 >= 0
                            mem[64] = _8367 + ceil32(return_data.size) + (32 * mem[_8367 + mem[_8367]]) + 32
                            mem[_8367 + ceil32(return_data.size)] = _8495
                            require _8431 + (32 * _8495) + 32 <= return_data.size
                            idx = 0
                            s = _8367 + _8431 + 32
                            t = _8367 + ceil32(return_data.size) + 32
                            while idx < _8495:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5974 + _5990 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5956]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7356] == mem[_7356 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7356 + 12 len 20]
                            _7548 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7612 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7612:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7548 + 100] = msg.sender
                            mem[_7548 + 132] = arg5
                            require ext_code.size(address(stor[_5956]))
                            call address(stor[_5956]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7548 + (32 * _7612) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8368 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8432 = mem[_8368]
                            require mem[_8368] <= test266151307()
                            require _8368 + mem[_8368] + 31 < _8368 + return_data.size
                            _8496 = mem[_8368 + mem[_8368]]
                            require mem[_8368 + mem[_8368]] <= test266151307()
                            require _8368 + ceil32(return_data.size) + (32 * mem[_8368 + mem[_8368]]) + 32 <= test266151307() and (32 * mem[_8368 + mem[_8368]]) + 32 >= 0
                            mem[64] = _8368 + ceil32(return_data.size) + (32 * mem[_8368 + mem[_8368]]) + 32
                            mem[_8368 + ceil32(return_data.size)] = _8496
                            require _8432 + (32 * _8496) + 32 <= return_data.size
                            idx = 0
                            s = _8368 + _8432 + 32
                            t = _8368 + ceil32(return_data.size) + 32
                            while idx < _8496:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5956]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7357] == mem[_7357 + 12 len 20]
                            require 1 < mem[_4694]
                            mem[_4694 + 64] = mem[_7357 + 12 len 20]
                            _7549 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7613 = mem[_4694]
                            mem[mem[64] + 164] = mem[_4694]
                            idx = 0
                            s = _4694 + 32
                            t = mem[64] + 196
                            while idx < _7613:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7549 + 100] = msg.sender
                            mem[_7549 + 132] = arg5
                            require ext_code.size(address(stor[_5956]))
                            call address(stor[_5956]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7549 + (32 * _7613) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8369 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8433 = mem[_8369]
                            require mem[_8369] <= test266151307()
                            require _8369 + mem[_8369] + 31 < _8369 + return_data.size
                            _8497 = mem[_8369 + mem[_8369]]
                            require mem[_8369 + mem[_8369]] <= test266151307()
                            require _8369 + ceil32(return_data.size) + (32 * mem[_8369 + mem[_8369]]) + 32 <= test266151307() and (32 * mem[_8369 + mem[_8369]]) + 32 >= 0
                            mem[64] = _8369 + ceil32(return_data.size) + (32 * mem[_8369 + mem[_8369]]) + 32
                            mem[_8369 + ceil32(return_data.size)] = _8497
                            require _8433 + (32 * _8497) + 32 <= return_data.size
                            idx = 0
                            s = _8369 + _8433 + 32
                            t = _8369 + ceil32(return_data.size) + 32
                            while idx < _8497:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).0x8dd95002 with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2133 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2074]))
                call address(stor[_2074]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2133) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3431 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3439 = mem[_3431]
                require mem[_3431] <= test266151307()
                require _3431 + mem[_3431] + 31 < _3431 + return_data.size
                _3447 = mem[_3431 + mem[_3431]]
                require mem[_3431 + mem[_3431]] <= test266151307()
                require _3431 + ceil32(return_data.size) + (32 * mem[_3431 + mem[_3431]]) + 32 <= test266151307() and (32 * mem[_3431 + mem[_3431]]) + 32 >= 0
                mem[64] = _3431 + ceil32(return_data.size) + (32 * mem[_3431 + mem[_3431]]) + 32
                mem[_3431 + ceil32(return_data.size)] = _3447
                require _3439 + (32 * _3447) + 32 <= return_data.size
                idx = 0
                s = _3431 + _3439 + 32
                t = _3431 + ceil32(return_data.size) + 32
                while idx < _3447:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4695 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4695 + 32 len 64] = call.data[calldata.size len 64]
                _4711 = mem[ceil32(arg3.length) + 128]
                mem[_4695 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4695 + _4711 + 96] = 0
                if ceil32(_4711) <= _4711:
                    _5930 = sha3(mem[mem[64] len _4695 + _4711 + -mem[64] + 128])
                    require 0 < mem[_4695]
                    mem[_4695 + 32] = address(arg1)
                    _5958 = mem[64]
                    _5983 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5983] = 1
                    require ext_code.size(address(stor[_5930]))
                    if ceil32(_5983) <= _5983:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5958 + _5983 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5930]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7326] == mem[_7326 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7326 + 12 len 20]
                            _7506 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7582 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7582:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7506 + 100] = msg.sender
                            mem[_7506 + 132] = arg5
                            require ext_code.size(address(stor[_5930]))
                            call address(stor[_5930]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7506 + (32 * _7582) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8370 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8434 = mem[_8370]
                            require mem[_8370] <= test266151307()
                            require _8370 + mem[_8370] + 31 < _8370 + return_data.size
                            _8498 = mem[_8370 + mem[_8370]]
                            require mem[_8370 + mem[_8370]] <= test266151307()
                            require _8370 + ceil32(return_data.size) + (32 * mem[_8370 + mem[_8370]]) + 32 <= test266151307() and (32 * mem[_8370 + mem[_8370]]) + 32 >= 0
                            mem[64] = _8370 + ceil32(return_data.size) + (32 * mem[_8370 + mem[_8370]]) + 32
                            mem[_8370 + ceil32(return_data.size)] = _8498
                            require _8434 + (32 * _8498) + 32 <= return_data.size
                            idx = 0
                            s = _8370 + _8434 + 32
                            t = _8370 + ceil32(return_data.size) + 32
                            while idx < _8498:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5930]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7327] == mem[_7327 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7327 + 12 len 20]
                            _7507 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7583 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7583:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7507 + 100] = msg.sender
                            mem[_7507 + 132] = arg5
                            require ext_code.size(address(stor[_5930]))
                            call address(stor[_5930]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7507 + (32 * _7583) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8371 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8435 = mem[_8371]
                            require mem[_8371] <= test266151307()
                            require _8371 + mem[_8371] + 31 < _8371 + return_data.size
                            _8499 = mem[_8371 + mem[_8371]]
                            require mem[_8371 + mem[_8371]] <= test266151307()
                            require _8371 + ceil32(return_data.size) + (32 * mem[_8371 + mem[_8371]]) + 32 <= test266151307() and (32 * mem[_8371 + mem[_8371]]) + 32 >= 0
                            mem[64] = _8371 + ceil32(return_data.size) + (32 * mem[_8371 + mem[_8371]]) + 32
                            mem[_8371 + ceil32(return_data.size)] = _8499
                            require _8435 + (32 * _8499) + 32 <= return_data.size
                            idx = 0
                            s = _8371 + _8435 + 32
                            t = _8371 + ceil32(return_data.size) + 32
                            while idx < _8499:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5958 + _5983 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5930]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7358] == mem[_7358 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7358 + 12 len 20]
                            _7550 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7614 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7614:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7550 + 100] = msg.sender
                            mem[_7550 + 132] = arg5
                            require ext_code.size(address(stor[_5930]))
                            call address(stor[_5930]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7550 + (32 * _7614) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8372 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8436 = mem[_8372]
                            require mem[_8372] <= test266151307()
                            require _8372 + mem[_8372] + 31 < _8372 + return_data.size
                            _8500 = mem[_8372 + mem[_8372]]
                            require mem[_8372 + mem[_8372]] <= test266151307()
                            require _8372 + ceil32(return_data.size) + (32 * mem[_8372 + mem[_8372]]) + 32 <= test266151307() and (32 * mem[_8372 + mem[_8372]]) + 32 >= 0
                            mem[64] = _8372 + ceil32(return_data.size) + (32 * mem[_8372 + mem[_8372]]) + 32
                            mem[_8372 + ceil32(return_data.size)] = _8500
                            require _8436 + (32 * _8500) + 32 <= return_data.size
                            idx = 0
                            s = _8372 + _8436 + 32
                            t = _8372 + ceil32(return_data.size) + 32
                            while idx < _8500:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5930]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7359 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7359] == mem[_7359 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7359 + 12 len 20]
                            _7551 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7615 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7615:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7551 + 100] = msg.sender
                            mem[_7551 + 132] = arg5
                            require ext_code.size(address(stor[_5930]))
                            call address(stor[_5930]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7551 + (32 * _7615) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8373 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8437 = mem[_8373]
                            require mem[_8373] <= test266151307()
                            require _8373 + mem[_8373] + 31 < _8373 + return_data.size
                            _8501 = mem[_8373 + mem[_8373]]
                            require mem[_8373 + mem[_8373]] <= test266151307()
                            require _8373 + ceil32(return_data.size) + (32 * mem[_8373 + mem[_8373]]) + 32 <= test266151307() and (32 * mem[_8373 + mem[_8373]]) + 32 >= 0
                            mem[64] = _8373 + ceil32(return_data.size) + (32 * mem[_8373 + mem[_8373]]) + 32
                            mem[_8373 + ceil32(return_data.size)] = _8501
                            require _8437 + (32 * _8501) + 32 <= return_data.size
                            idx = 0
                            s = _8373 + _8437 + 32
                            t = _8373 + ceil32(return_data.size) + 32
                            while idx < _8501:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5960 = sha3(mem[mem[64] len _4695 + _4711 + -mem[64] + 128])
                    require 0 < mem[_4695]
                    mem[_4695 + 32] = address(arg1)
                    _5975 = mem[64]
                    _5991 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5991] = 1
                    require ext_code.size(address(stor[_5960]))
                    if ceil32(_5991) <= _5991:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5975 + _5991 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5960]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7328 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7328] == mem[_7328 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7328 + 12 len 20]
                            _7510 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7584 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7584:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7510 + 100] = msg.sender
                            mem[_7510 + 132] = arg5
                            require ext_code.size(address(stor[_5960]))
                            call address(stor[_5960]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7510 + (32 * _7584) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8374 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8438 = mem[_8374]
                            require mem[_8374] <= test266151307()
                            require _8374 + mem[_8374] + 31 < _8374 + return_data.size
                            _8502 = mem[_8374 + mem[_8374]]
                            require mem[_8374 + mem[_8374]] <= test266151307()
                            require _8374 + ceil32(return_data.size) + (32 * mem[_8374 + mem[_8374]]) + 32 <= test266151307() and (32 * mem[_8374 + mem[_8374]]) + 32 >= 0
                            mem[64] = _8374 + ceil32(return_data.size) + (32 * mem[_8374 + mem[_8374]]) + 32
                            mem[_8374 + ceil32(return_data.size)] = _8502
                            require _8438 + (32 * _8502) + 32 <= return_data.size
                            idx = 0
                            s = _8374 + _8438 + 32
                            t = _8374 + ceil32(return_data.size) + 32
                            while idx < _8502:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5960]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7329] == mem[_7329 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7329 + 12 len 20]
                            _7511 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7585 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7585:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7511 + 100] = msg.sender
                            mem[_7511 + 132] = arg5
                            require ext_code.size(address(stor[_5960]))
                            call address(stor[_5960]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7511 + (32 * _7585) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8375 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8439 = mem[_8375]
                            require mem[_8375] <= test266151307()
                            require _8375 + mem[_8375] + 31 < _8375 + return_data.size
                            _8503 = mem[_8375 + mem[_8375]]
                            require mem[_8375 + mem[_8375]] <= test266151307()
                            require _8375 + ceil32(return_data.size) + (32 * mem[_8375 + mem[_8375]]) + 32 <= test266151307() and (32 * mem[_8375 + mem[_8375]]) + 32 >= 0
                            mem[64] = _8375 + ceil32(return_data.size) + (32 * mem[_8375 + mem[_8375]]) + 32
                            mem[_8375 + ceil32(return_data.size)] = _8503
                            require _8439 + (32 * _8503) + 32 <= return_data.size
                            idx = 0
                            s = _8375 + _8439 + 32
                            t = _8375 + ceil32(return_data.size) + 32
                            while idx < _8503:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5975 + _5991 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5960]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7360] == mem[_7360 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7360 + 12 len 20]
                            _7552 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7616 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7616:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7552 + 100] = msg.sender
                            mem[_7552 + 132] = arg5
                            require ext_code.size(address(stor[_5960]))
                            call address(stor[_5960]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7552 + (32 * _7616) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8376 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8440 = mem[_8376]
                            require mem[_8376] <= test266151307()
                            require _8376 + mem[_8376] + 31 < _8376 + return_data.size
                            _8504 = mem[_8376 + mem[_8376]]
                            require mem[_8376 + mem[_8376]] <= test266151307()
                            require _8376 + ceil32(return_data.size) + (32 * mem[_8376 + mem[_8376]]) + 32 <= test266151307() and (32 * mem[_8376 + mem[_8376]]) + 32 >= 0
                            mem[64] = _8376 + ceil32(return_data.size) + (32 * mem[_8376 + mem[_8376]]) + 32
                            mem[_8376 + ceil32(return_data.size)] = _8504
                            require _8440 + (32 * _8504) + 32 <= return_data.size
                            idx = 0
                            s = _8376 + _8440 + 32
                            t = _8376 + ceil32(return_data.size) + 32
                            while idx < _8504:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5960]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7361] == mem[_7361 + 12 len 20]
                            require 1 < mem[_4695]
                            mem[_4695 + 64] = mem[_7361 + 12 len 20]
                            _7553 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7617 = mem[_4695]
                            mem[mem[64] + 164] = mem[_4695]
                            idx = 0
                            s = _4695 + 32
                            t = mem[64] + 196
                            while idx < _7617:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7553 + 100] = msg.sender
                            mem[_7553 + 132] = arg5
                            require ext_code.size(address(stor[_5960]))
                            call address(stor[_5960]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7553 + (32 * _7617) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8377 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8441 = mem[_8377]
                            require mem[_8377] <= test266151307()
                            require _8377 + mem[_8377] + 31 < _8377 + return_data.size
                            _8505 = mem[_8377 + mem[_8377]]
                            require mem[_8377 + mem[_8377]] <= test266151307()
                            require _8377 + ceil32(return_data.size) + (32 * mem[_8377 + mem[_8377]]) + 32 <= test266151307() and (32 * mem[_8377 + mem[_8377]]) + 32 >= 0
                            mem[64] = _8377 + ceil32(return_data.size) + (32 * mem[_8377 + mem[_8377]]) + 32
                            mem[_8377 + ceil32(return_data.size)] = _8505
                            require _8441 + (32 * _8505) + 32 <= return_data.size
                            idx = 0
                            s = _8377 + _8441 + 32
                            t = _8377 + ceil32(return_data.size) + 32
                            while idx < _8505:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
        else:
            _2080 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
            require ext_code.size(address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]))
            if not uint8(stor[_722]):
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).WETH() with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2136 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2080]))
                call address(stor[_2080]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2136) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3432 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3440 = mem[_3432]
                require mem[_3432] <= test266151307()
                require _3432 + mem[_3432] + 31 < _3432 + return_data.size
                _3448 = mem[_3432 + mem[_3432]]
                require mem[_3432 + mem[_3432]] <= test266151307()
                require _3432 + ceil32(return_data.size) + (32 * mem[_3432 + mem[_3432]]) + 32 <= test266151307() and (32 * mem[_3432 + mem[_3432]]) + 32 >= 0
                mem[64] = _3432 + ceil32(return_data.size) + (32 * mem[_3432 + mem[_3432]]) + 32
                mem[_3432 + ceil32(return_data.size)] = _3448
                require _3440 + (32 * _3448) + 32 <= return_data.size
                idx = 0
                s = _3432 + _3440 + 32
                t = _3432 + ceil32(return_data.size) + 32
                while idx < _3448:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4696 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4696 + 32 len 64] = call.data[calldata.size len 64]
                _4712 = mem[ceil32(arg3.length) + 128]
                mem[_4696 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4696 + _4712 + 96] = 0
                if ceil32(_4712) <= _4712:
                    _5933 = sha3(mem[mem[64] len _4696 + _4712 + -mem[64] + 128])
                    require 0 < mem[_4696]
                    mem[_4696 + 32] = address(arg1)
                    _5962 = mem[64]
                    _5984 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5984] = 1
                    require ext_code.size(address(stor[_5933]))
                    if ceil32(_5984) <= _5984:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5962 + _5984 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5933]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7330] == mem[_7330 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7330 + 12 len 20]
                            _7514 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7586 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7586:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7514 + 100] = msg.sender
                            mem[_7514 + 132] = arg5
                            require ext_code.size(address(stor[_5933]))
                            call address(stor[_5933]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7514 + (32 * _7586) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8378 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8442 = mem[_8378]
                            require mem[_8378] <= test266151307()
                            require _8378 + mem[_8378] + 31 < _8378 + return_data.size
                            _8506 = mem[_8378 + mem[_8378]]
                            require mem[_8378 + mem[_8378]] <= test266151307()
                            require _8378 + ceil32(return_data.size) + (32 * mem[_8378 + mem[_8378]]) + 32 <= test266151307() and (32 * mem[_8378 + mem[_8378]]) + 32 >= 0
                            mem[64] = _8378 + ceil32(return_data.size) + (32 * mem[_8378 + mem[_8378]]) + 32
                            mem[_8378 + ceil32(return_data.size)] = _8506
                            require _8442 + (32 * _8506) + 32 <= return_data.size
                            idx = 0
                            s = _8378 + _8442 + 32
                            t = _8378 + ceil32(return_data.size) + 32
                            while idx < _8506:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5933]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7331] == mem[_7331 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7331 + 12 len 20]
                            _7515 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7587 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7587:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7515 + 100] = msg.sender
                            mem[_7515 + 132] = arg5
                            require ext_code.size(address(stor[_5933]))
                            call address(stor[_5933]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7515 + (32 * _7587) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8379 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8443 = mem[_8379]
                            require mem[_8379] <= test266151307()
                            require _8379 + mem[_8379] + 31 < _8379 + return_data.size
                            _8507 = mem[_8379 + mem[_8379]]
                            require mem[_8379 + mem[_8379]] <= test266151307()
                            require _8379 + ceil32(return_data.size) + (32 * mem[_8379 + mem[_8379]]) + 32 <= test266151307() and (32 * mem[_8379 + mem[_8379]]) + 32 >= 0
                            mem[64] = _8379 + ceil32(return_data.size) + (32 * mem[_8379 + mem[_8379]]) + 32
                            mem[_8379 + ceil32(return_data.size)] = _8507
                            require _8443 + (32 * _8507) + 32 <= return_data.size
                            idx = 0
                            s = _8379 + _8443 + 32
                            t = _8379 + ceil32(return_data.size) + 32
                            while idx < _8507:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5962 + _5984 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5933]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7362] == mem[_7362 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7362 + 12 len 20]
                            _7554 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7618 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7618:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7554 + 100] = msg.sender
                            mem[_7554 + 132] = arg5
                            require ext_code.size(address(stor[_5933]))
                            call address(stor[_5933]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7554 + (32 * _7618) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8380 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8444 = mem[_8380]
                            require mem[_8380] <= test266151307()
                            require _8380 + mem[_8380] + 31 < _8380 + return_data.size
                            _8508 = mem[_8380 + mem[_8380]]
                            require mem[_8380 + mem[_8380]] <= test266151307()
                            require _8380 + ceil32(return_data.size) + (32 * mem[_8380 + mem[_8380]]) + 32 <= test266151307() and (32 * mem[_8380 + mem[_8380]]) + 32 >= 0
                            mem[64] = _8380 + ceil32(return_data.size) + (32 * mem[_8380 + mem[_8380]]) + 32
                            mem[_8380 + ceil32(return_data.size)] = _8508
                            require _8444 + (32 * _8508) + 32 <= return_data.size
                            idx = 0
                            s = _8380 + _8444 + 32
                            t = _8380 + ceil32(return_data.size) + 32
                            while idx < _8508:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5933]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7363] == mem[_7363 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7363 + 12 len 20]
                            _7555 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7619 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7619:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7555 + 100] = msg.sender
                            mem[_7555 + 132] = arg5
                            require ext_code.size(address(stor[_5933]))
                            call address(stor[_5933]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7555 + (32 * _7619) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8381 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8445 = mem[_8381]
                            require mem[_8381] <= test266151307()
                            require _8381 + mem[_8381] + 31 < _8381 + return_data.size
                            _8509 = mem[_8381 + mem[_8381]]
                            require mem[_8381 + mem[_8381]] <= test266151307()
                            require _8381 + ceil32(return_data.size) + (32 * mem[_8381 + mem[_8381]]) + 32 <= test266151307() and (32 * mem[_8381 + mem[_8381]]) + 32 >= 0
                            mem[64] = _8381 + ceil32(return_data.size) + (32 * mem[_8381 + mem[_8381]]) + 32
                            mem[_8381 + ceil32(return_data.size)] = _8509
                            require _8445 + (32 * _8509) + 32 <= return_data.size
                            idx = 0
                            s = _8381 + _8445 + 32
                            t = _8381 + ceil32(return_data.size) + 32
                            while idx < _8509:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5964 = sha3(mem[mem[64] len _4696 + _4712 + -mem[64] + 128])
                    require 0 < mem[_4696]
                    mem[_4696 + 32] = address(arg1)
                    _5976 = mem[64]
                    _5992 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5992] = 1
                    require ext_code.size(address(stor[_5964]))
                    if ceil32(_5992) <= _5992:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5976 + _5992 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5964]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7332] == mem[_7332 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7332 + 12 len 20]
                            _7518 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7588 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7588:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7518 + 100] = msg.sender
                            mem[_7518 + 132] = arg5
                            require ext_code.size(address(stor[_5964]))
                            call address(stor[_5964]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7518 + (32 * _7588) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8382 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8446 = mem[_8382]
                            require mem[_8382] <= test266151307()
                            require _8382 + mem[_8382] + 31 < _8382 + return_data.size
                            _8510 = mem[_8382 + mem[_8382]]
                            require mem[_8382 + mem[_8382]] <= test266151307()
                            require _8382 + ceil32(return_data.size) + (32 * mem[_8382 + mem[_8382]]) + 32 <= test266151307() and (32 * mem[_8382 + mem[_8382]]) + 32 >= 0
                            mem[64] = _8382 + ceil32(return_data.size) + (32 * mem[_8382 + mem[_8382]]) + 32
                            mem[_8382 + ceil32(return_data.size)] = _8510
                            require _8446 + (32 * _8510) + 32 <= return_data.size
                            idx = 0
                            s = _8382 + _8446 + 32
                            t = _8382 + ceil32(return_data.size) + 32
                            while idx < _8510:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5964]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7333] == mem[_7333 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7333 + 12 len 20]
                            _7519 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7589 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7589:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7519 + 100] = msg.sender
                            mem[_7519 + 132] = arg5
                            require ext_code.size(address(stor[_5964]))
                            call address(stor[_5964]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7519 + (32 * _7589) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8383 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8447 = mem[_8383]
                            require mem[_8383] <= test266151307()
                            require _8383 + mem[_8383] + 31 < _8383 + return_data.size
                            _8511 = mem[_8383 + mem[_8383]]
                            require mem[_8383 + mem[_8383]] <= test266151307()
                            require _8383 + ceil32(return_data.size) + (32 * mem[_8383 + mem[_8383]]) + 32 <= test266151307() and (32 * mem[_8383 + mem[_8383]]) + 32 >= 0
                            mem[64] = _8383 + ceil32(return_data.size) + (32 * mem[_8383 + mem[_8383]]) + 32
                            mem[_8383 + ceil32(return_data.size)] = _8511
                            require _8447 + (32 * _8511) + 32 <= return_data.size
                            idx = 0
                            s = _8383 + _8447 + 32
                            t = _8383 + ceil32(return_data.size) + 32
                            while idx < _8511:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5976 + _5992 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5964]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7364] == mem[_7364 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7364 + 12 len 20]
                            _7556 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7620 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7620:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7556 + 100] = msg.sender
                            mem[_7556 + 132] = arg5
                            require ext_code.size(address(stor[_5964]))
                            call address(stor[_5964]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7556 + (32 * _7620) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8384 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8448 = mem[_8384]
                            require mem[_8384] <= test266151307()
                            require _8384 + mem[_8384] + 31 < _8384 + return_data.size
                            _8512 = mem[_8384 + mem[_8384]]
                            require mem[_8384 + mem[_8384]] <= test266151307()
                            require _8384 + ceil32(return_data.size) + (32 * mem[_8384 + mem[_8384]]) + 32 <= test266151307() and (32 * mem[_8384 + mem[_8384]]) + 32 >= 0
                            mem[64] = _8384 + ceil32(return_data.size) + (32 * mem[_8384 + mem[_8384]]) + 32
                            mem[_8384 + ceil32(return_data.size)] = _8512
                            require _8448 + (32 * _8512) + 32 <= return_data.size
                            idx = 0
                            s = _8384 + _8448 + 32
                            t = _8384 + ceil32(return_data.size) + 32
                            while idx < _8512:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5964]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7365] == mem[_7365 + 12 len 20]
                            require 1 < mem[_4696]
                            mem[_4696 + 64] = mem[_7365 + 12 len 20]
                            _7557 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7621 = mem[_4696]
                            mem[mem[64] + 164] = mem[_4696]
                            idx = 0
                            s = _4696 + 32
                            t = mem[64] + 196
                            while idx < _7621:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7557 + 100] = msg.sender
                            mem[_7557 + 132] = arg5
                            require ext_code.size(address(stor[_5964]))
                            call address(stor[_5964]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7557 + (32 * _7621) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8385 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8449 = mem[_8385]
                            require mem[_8385] <= test266151307()
                            require _8385 + mem[_8385] + 31 < _8385 + return_data.size
                            _8513 = mem[_8385 + mem[_8385]]
                            require mem[_8385 + mem[_8385]] <= test266151307()
                            require _8385 + ceil32(return_data.size) + (32 * mem[_8385 + mem[_8385]]) + 32 <= test266151307() and (32 * mem[_8385 + mem[_8385]]) + 32 >= 0
                            mem[64] = _8385 + ceil32(return_data.size) + (32 * mem[_8385 + mem[_8385]]) + 32
                            mem[_8385 + ceil32(return_data.size)] = _8513
                            require _8449 + (32 * _8513) + 32 <= return_data.size
                            idx = 0
                            s = _8385 + _8449 + 32
                            t = _8385 + ceil32(return_data.size) + 32
                            while idx < _8513:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                staticcall address(stor[mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32]][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256]).0x8dd95002 with:
                        gas gas_remaining wei
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 256] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = arg2
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 292] = 128
                _2137 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 388] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                idx = 0
                s = ceil32(arg3.length) + ceil32(arg4.length) + 192
                t = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 420
                while idx < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = this.address
                mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 356] = arg5
                require ext_code.size(address(stor[_2080]))
                call address(stor[_2080]).mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _2137) + -mem[64] + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3433 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3441 = mem[_3433]
                require mem[_3433] <= test266151307()
                require _3433 + mem[_3433] + 31 < _3433 + return_data.size
                _3449 = mem[_3433 + mem[_3433]]
                require mem[_3433 + mem[_3433]] <= test266151307()
                require _3433 + ceil32(return_data.size) + (32 * mem[_3433 + mem[_3433]]) + 32 <= test266151307() and (32 * mem[_3433 + mem[_3433]]) + 32 >= 0
                mem[64] = _3433 + ceil32(return_data.size) + (32 * mem[_3433 + mem[_3433]]) + 32
                mem[_3433 + ceil32(return_data.size)] = _3449
                require _3441 + (32 * _3449) + 32 <= return_data.size
                idx = 0
                s = _3433 + _3441 + 32
                t = _3433 + ceil32(return_data.size) + 32
                while idx < _3449:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _4697 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4697 + 32 len 64] = call.data[calldata.size len 64]
                _4713 = mem[ceil32(arg3.length) + 128]
                mem[_4697 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                mem[_4697 + _4713 + 96] = 0
                if ceil32(_4713) <= _4713:
                    _5936 = sha3(mem[mem[64] len _4697 + _4713 + -mem[64] + 128])
                    require 0 < mem[_4697]
                    mem[_4697 + 32] = address(arg1)
                    _5966 = mem[64]
                    _5985 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5985] = 1
                    require ext_code.size(address(stor[_5936]))
                    if ceil32(_5985) <= _5985:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5966 + _5985 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5936]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7334] == mem[_7334 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7334 + 12 len 20]
                            _7522 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7590 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7590:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7522 + 100] = msg.sender
                            mem[_7522 + 132] = arg5
                            require ext_code.size(address(stor[_5936]))
                            call address(stor[_5936]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7522 + (32 * _7590) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8386 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8450 = mem[_8386]
                            require mem[_8386] <= test266151307()
                            require _8386 + mem[_8386] + 31 < _8386 + return_data.size
                            _8514 = mem[_8386 + mem[_8386]]
                            require mem[_8386 + mem[_8386]] <= test266151307()
                            require _8386 + ceil32(return_data.size) + (32 * mem[_8386 + mem[_8386]]) + 32 <= test266151307() and (32 * mem[_8386 + mem[_8386]]) + 32 >= 0
                            mem[64] = _8386 + ceil32(return_data.size) + (32 * mem[_8386 + mem[_8386]]) + 32
                            mem[_8386 + ceil32(return_data.size)] = _8514
                            require _8450 + (32 * _8514) + 32 <= return_data.size
                            idx = 0
                            s = _8386 + _8450 + 32
                            t = _8386 + ceil32(return_data.size) + 32
                            while idx < _8514:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5936]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7335] == mem[_7335 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7335 + 12 len 20]
                            _7523 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7591 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7591:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7523 + 100] = msg.sender
                            mem[_7523 + 132] = arg5
                            require ext_code.size(address(stor[_5936]))
                            call address(stor[_5936]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7523 + (32 * _7591) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8387 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8451 = mem[_8387]
                            require mem[_8387] <= test266151307()
                            require _8387 + mem[_8387] + 31 < _8387 + return_data.size
                            _8515 = mem[_8387 + mem[_8387]]
                            require mem[_8387 + mem[_8387]] <= test266151307()
                            require _8387 + ceil32(return_data.size) + (32 * mem[_8387 + mem[_8387]]) + 32 <= test266151307() and (32 * mem[_8387 + mem[_8387]]) + 32 >= 0
                            mem[64] = _8387 + ceil32(return_data.size) + (32 * mem[_8387 + mem[_8387]]) + 32
                            mem[_8387 + ceil32(return_data.size)] = _8515
                            require _8451 + (32 * _8515) + 32 <= return_data.size
                            idx = 0
                            s = _8387 + _8451 + 32
                            t = _8387 + ceil32(return_data.size) + 32
                            while idx < _8515:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5966 + _5985 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5936]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7366 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7366] == mem[_7366 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7366 + 12 len 20]
                            _7558 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7622 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7622:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7558 + 100] = msg.sender
                            mem[_7558 + 132] = arg5
                            require ext_code.size(address(stor[_5936]))
                            call address(stor[_5936]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7558 + (32 * _7622) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8388 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8452 = mem[_8388]
                            require mem[_8388] <= test266151307()
                            require _8388 + mem[_8388] + 31 < _8388 + return_data.size
                            _8516 = mem[_8388 + mem[_8388]]
                            require mem[_8388 + mem[_8388]] <= test266151307()
                            require _8388 + ceil32(return_data.size) + (32 * mem[_8388 + mem[_8388]]) + 32 <= test266151307() and (32 * mem[_8388 + mem[_8388]]) + 32 >= 0
                            mem[64] = _8388 + ceil32(return_data.size) + (32 * mem[_8388 + mem[_8388]]) + 32
                            mem[_8388 + ceil32(return_data.size)] = _8516
                            require _8452 + (32 * _8516) + 32 <= return_data.size
                            idx = 0
                            s = _8388 + _8452 + 32
                            t = _8388 + ceil32(return_data.size) + 32
                            while idx < _8516:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5936]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7367] == mem[_7367 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7367 + 12 len 20]
                            _7559 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7623 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7623:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7559 + 100] = msg.sender
                            mem[_7559 + 132] = arg5
                            require ext_code.size(address(stor[_5936]))
                            call address(stor[_5936]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7559 + (32 * _7623) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8389 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8453 = mem[_8389]
                            require mem[_8389] <= test266151307()
                            require _8389 + mem[_8389] + 31 < _8389 + return_data.size
                            _8517 = mem[_8389 + mem[_8389]]
                            require mem[_8389 + mem[_8389]] <= test266151307()
                            require _8389 + ceil32(return_data.size) + (32 * mem[_8389 + mem[_8389]]) + 32 <= test266151307() and (32 * mem[_8389 + mem[_8389]]) + 32 >= 0
                            mem[64] = _8389 + ceil32(return_data.size) + (32 * mem[_8389 + mem[_8389]]) + 32
                            mem[_8389 + ceil32(return_data.size)] = _8517
                            require _8453 + (32 * _8517) + 32 <= return_data.size
                            idx = 0
                            s = _8389 + _8453 + 32
                            t = _8389 + ceil32(return_data.size) + 32
                            while idx < _8517:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    _5968 = sha3(mem[mem[64] len _4697 + _4713 + -mem[64] + 128])
                    require 0 < mem[_4697]
                    mem[_4697 + 32] = address(arg1)
                    _5977 = mem[64]
                    _5993 = mem[ceil32(arg3.length) + 128]
                    mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
                    mem[mem[64] + _5993] = 1
                    require ext_code.size(address(stor[_5968]))
                    if ceil32(_5993) <= _5993:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5977 + _5993 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5968]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7336] == mem[_7336 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7336 + 12 len 20]
                            _7526 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7592 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7592:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7526 + 100] = msg.sender
                            mem[_7526 + 132] = arg5
                            require ext_code.size(address(stor[_5968]))
                            call address(stor[_5968]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7526 + (32 * _7592) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8390 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8454 = mem[_8390]
                            require mem[_8390] <= test266151307()
                            require _8390 + mem[_8390] + 31 < _8390 + return_data.size
                            _8518 = mem[_8390 + mem[_8390]]
                            require mem[_8390 + mem[_8390]] <= test266151307()
                            require _8390 + ceil32(return_data.size) + (32 * mem[_8390 + mem[_8390]]) + 32 <= test266151307() and (32 * mem[_8390 + mem[_8390]]) + 32 >= 0
                            mem[64] = _8390 + ceil32(return_data.size) + (32 * mem[_8390 + mem[_8390]]) + 32
                            mem[_8390 + ceil32(return_data.size)] = _8518
                            require _8454 + (32 * _8518) + 32 <= return_data.size
                            idx = 0
                            s = _8390 + _8454 + 32
                            t = _8390 + ceil32(return_data.size) + 32
                            while idx < _8518:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5968]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7337] == mem[_7337 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7337 + 12 len 20]
                            _7527 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7593 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7593:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7527 + 100] = msg.sender
                            mem[_7527 + 132] = arg5
                            require ext_code.size(address(stor[_5968]))
                            call address(stor[_5968]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7527 + (32 * _7593) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8391 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8455 = mem[_8391]
                            require mem[_8391] <= test266151307()
                            require _8391 + mem[_8391] + 31 < _8391 + return_data.size
                            _8519 = mem[_8391 + mem[_8391]]
                            require mem[_8391 + mem[_8391]] <= test266151307()
                            require _8391 + ceil32(return_data.size) + (32 * mem[_8391 + mem[_8391]]) + 32 <= test266151307() and (32 * mem[_8391 + mem[_8391]]) + 32 >= 0
                            mem[64] = _8391 + ceil32(return_data.size) + (32 * mem[_8391 + mem[_8391]]) + 32
                            mem[_8391 + ceil32(return_data.size)] = _8519
                            require _8455 + (32 * _8519) + 32 <= return_data.size
                            idx = 0
                            s = _8391 + _8455 + 32
                            t = _8391 + ceil32(return_data.size) + 32
                            while idx < _8519:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if bool(uint8(stor[sha3(mem[mem[64] len _5977 + _5993 + -mem[64] + 32])])) != 1:
                            staticcall address(stor[_5968]).WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7368] == mem[_7368 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7368 + 12 len 20]
                            _7560 = mem[64]
                            mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7624 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7624:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7560 + 100] = msg.sender
                            mem[_7560 + 132] = arg5
                            require ext_code.size(address(stor[_5968]))
                            call address(stor[_5968]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7560 + (32 * _7624) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8392 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8456 = mem[_8392]
                            require mem[_8392] <= test266151307()
                            require _8392 + mem[_8392] + 31 < _8392 + return_data.size
                            _8520 = mem[_8392 + mem[_8392]]
                            require mem[_8392 + mem[_8392]] <= test266151307()
                            require _8392 + ceil32(return_data.size) + (32 * mem[_8392 + mem[_8392]]) + 32 <= test266151307() and (32 * mem[_8392 + mem[_8392]]) + 32 >= 0
                            mem[64] = _8392 + ceil32(return_data.size) + (32 * mem[_8392 + mem[_8392]]) + 32
                            mem[_8392 + ceil32(return_data.size)] = _8520
                            require _8456 + (32 * _8520) + 32 <= return_data.size
                            idx = 0
                            s = _8392 + _8456 + 32
                            t = _8392 + ceil32(return_data.size) + 32
                            while idx < _8520:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            staticcall address(stor[_5968]).0x8dd95002 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7369] == mem[_7369 + 12 len 20]
                            require 1 < mem[_4697]
                            mem[_4697 + 64] = mem[_7369 + 12 len 20]
                            _7561 = mem[64]
                            mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = msg.value
                            mem[mem[64] + 68] = 160
                            _7625 = mem[_4697]
                            mem[mem[64] + 164] = mem[_4697]
                            idx = 0
                            s = _4697 + 32
                            t = mem[64] + 196
                            while idx < _7625:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7561 + 100] = msg.sender
                            mem[_7561 + 132] = arg5
                            require ext_code.size(address(stor[_5968]))
                            call address(stor[_5968]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7561 + (32 * _7625) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8393 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8457 = mem[_8393]
                            require mem[_8393] <= test266151307()
                            require _8393 + mem[_8393] + 31 < _8393 + return_data.size
                            _8521 = mem[_8393 + mem[_8393]]
                            require mem[_8393 + mem[_8393]] <= test266151307()
                            require _8393 + ceil32(return_data.size) + (32 * mem[_8393 + mem[_8393]]) + 32 <= test266151307() and (32 * mem[_8393 + mem[_8393]]) + 32 >= 0
                            mem[64] = _8393 + ceil32(return_data.size) + (32 * mem[_8393 + mem[_8393]]) + 32
                            mem[_8393 + ceil32(return_data.size)] = _8521
                            require _8457 + (32 * _8521) + 32 <= return_data.size
                            idx = 0
                            s = _8393 + _8457 + 32
                            t = _8393 + ceil32(return_data.size) + 32
                            while idx < _8521:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    return 0
}



}
