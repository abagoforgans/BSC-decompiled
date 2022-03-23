contract main {




// =====================  Runtime code  =====================


array of address stor2;

function _fallback() payable {
    revert
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
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg3.length + 256] = 0
    if ceil32(arg3.length) <= arg3.length:
        _171 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
        require ext_code.size(address(stor[_171]))
        staticcall address(stor[_171]).WETH() with:
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
        _188 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
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
        require ext_code.size(address(stor[_171]))
        call address(stor[_171]).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _188) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _514 = mem[_512]
        require mem[_512] <= test266151307()
        require _512 + mem[_512] + 31 < _512 + return_data.size
        _516 = mem[_512 + mem[_512]]
        require mem[_512 + mem[_512]] <= test266151307()
        require _512 + ceil32(return_data.size) + (32 * mem[_512 + mem[_512]]) + 32 <= test266151307() and (32 * mem[_512 + mem[_512]]) + 32 >= 0
        mem[64] = _512 + ceil32(return_data.size) + (32 * mem[_512 + mem[_512]]) + 32
        mem[_512 + ceil32(return_data.size)] = _516
        require _514 + (32 * _516) + 32 <= return_data.size
        idx = 0
        s = _512 + _514 + 32
        t = _512 + ceil32(return_data.size) + 32
        while idx < _516:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _844 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_844 + 32 len 64] = call.data[calldata.size len 64]
        _848 = mem[ceil32(arg3.length) + 128]
        mem[_844 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
        mem[_844 + _848 + 96] = 0
        if ceil32(_848) <= _848:
            _1167 = sha3(mem[mem[64] len _844 + _848 + -mem[64] + 128])
            require 0 < mem[_844]
            mem[_844 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1167])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1167]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1186] == bool(mem[_1186])
            _1194 = mem[64]
            _1198 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1198] = 1
            require ext_code.size(address(stor[_1167]))
            if ceil32(_1198) <= _1198:
                if bool(uint8(stor[sha3(mem[mem[64] len _1194 + _1198 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1167]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1530] == mem[_1530 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1530 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1594 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1594:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1167]))
                    call address(stor[_1167]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1594) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1786 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1802 = mem[_1786]
                    require mem[_1786] <= test266151307()
                    require _1786 + mem[_1786] + 31 < _1786 + return_data.size
                    _1818 = mem[_1786 + mem[_1786]]
                    require mem[_1786 + mem[_1786]] <= test266151307()
                    require _1786 + ceil32(return_data.size) + (32 * mem[_1786 + mem[_1786]]) + 32 <= test266151307() and (32 * mem[_1786 + mem[_1786]]) + 32 >= 0
                    mem[64] = _1786 + ceil32(return_data.size) + (32 * mem[_1786 + mem[_1786]]) + 32
                    mem[_1786 + ceil32(return_data.size)] = _1818
                    require _1802 + (32 * _1818) + 32 <= return_data.size
                    idx = 0
                    s = _1786 + _1802 + 32
                    t = _1786 + ceil32(return_data.size) + 32
                    while idx < _1818:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1167]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1531] == mem[_1531 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1531 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1595 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1595:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1167]))
                    call address(stor[_1167]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1595) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1787 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1803 = mem[_1787]
                    require mem[_1787] <= test266151307()
                    require _1787 + mem[_1787] + 31 < _1787 + return_data.size
                    _1819 = mem[_1787 + mem[_1787]]
                    require mem[_1787 + mem[_1787]] <= test266151307()
                    require _1787 + ceil32(return_data.size) + (32 * mem[_1787 + mem[_1787]]) + 32 <= test266151307() and (32 * mem[_1787 + mem[_1787]]) + 32 >= 0
                    mem[64] = _1787 + ceil32(return_data.size) + (32 * mem[_1787 + mem[_1787]]) + 32
                    mem[_1787 + ceil32(return_data.size)] = _1819
                    require _1803 + (32 * _1819) + 32 <= return_data.size
                    idx = 0
                    s = _1787 + _1803 + 32
                    t = _1787 + ceil32(return_data.size) + 32
                    while idx < _1819:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1194 + _1198 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1167]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1538] == mem[_1538 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1538 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1602 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1602:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1167]))
                    call address(stor[_1167]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1602) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1788 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1804 = mem[_1788]
                    require mem[_1788] <= test266151307()
                    require _1788 + mem[_1788] + 31 < _1788 + return_data.size
                    _1820 = mem[_1788 + mem[_1788]]
                    require mem[_1788 + mem[_1788]] <= test266151307()
                    require _1788 + ceil32(return_data.size) + (32 * mem[_1788 + mem[_1788]]) + 32 <= test266151307() and (32 * mem[_1788 + mem[_1788]]) + 32 >= 0
                    mem[64] = _1788 + ceil32(return_data.size) + (32 * mem[_1788 + mem[_1788]]) + 32
                    mem[_1788 + ceil32(return_data.size)] = _1820
                    require _1804 + (32 * _1820) + 32 <= return_data.size
                    idx = 0
                    s = _1788 + _1804 + 32
                    t = _1788 + ceil32(return_data.size) + 32
                    while idx < _1820:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1167]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1539] == mem[_1539 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1539 + 12 len 20]
                    _1587 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1603 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1603:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1587 + 100] = msg.sender
                    mem[_1587 + 132] = arg5
                    require ext_code.size(address(stor[_1167]))
                    call address(stor[_1167]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1587 + (32 * _1603) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1789 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1805 = mem[_1789]
                    require mem[_1789] <= test266151307()
                    require _1789 + mem[_1789] + 31 < _1789 + return_data.size
                    _1821 = mem[_1789 + mem[_1789]]
                    require mem[_1789 + mem[_1789]] <= test266151307()
                    require _1789 + ceil32(return_data.size) + (32 * mem[_1789 + mem[_1789]]) + 32 <= test266151307() and (32 * mem[_1789 + mem[_1789]]) + 32 >= 0
                    mem[64] = _1789 + ceil32(return_data.size) + (32 * mem[_1789 + mem[_1789]]) + 32
                    mem[_1789 + ceil32(return_data.size)] = _1821
                    require _1805 + (32 * _1821) + 32 <= return_data.size
                    idx = 0
                    s = _1789 + _1805 + 32
                    t = _1789 + ceil32(return_data.size) + 32
                    while idx < _1821:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            _1174 = sha3(mem[mem[64] len _844 + _848 + -mem[64] + 128])
            require 0 < mem[_844]
            mem[_844 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1174])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1174]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1188] == bool(mem[_1188])
            _1196 = mem[64]
            _1200 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1200] = 1
            require ext_code.size(address(stor[_1174]))
            if ceil32(_1200) <= _1200:
                if bool(uint8(stor[sha3(mem[mem[64] len _1196 + _1200 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1174]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1532] == mem[_1532 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1532 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1596 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1596:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1174]))
                    call address(stor[_1174]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1596) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1790 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1806 = mem[_1790]
                    require mem[_1790] <= test266151307()
                    require _1790 + mem[_1790] + 31 < _1790 + return_data.size
                    _1822 = mem[_1790 + mem[_1790]]
                    require mem[_1790 + mem[_1790]] <= test266151307()
                    require _1790 + ceil32(return_data.size) + (32 * mem[_1790 + mem[_1790]]) + 32 <= test266151307() and (32 * mem[_1790 + mem[_1790]]) + 32 >= 0
                    mem[64] = _1790 + ceil32(return_data.size) + (32 * mem[_1790 + mem[_1790]]) + 32
                    mem[_1790 + ceil32(return_data.size)] = _1822
                    require _1806 + (32 * _1822) + 32 <= return_data.size
                    idx = 0
                    s = _1790 + _1806 + 32
                    t = _1790 + ceil32(return_data.size) + 32
                    while idx < _1822:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1174]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1533] == mem[_1533 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1533 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1597 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1597:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1174]))
                    call address(stor[_1174]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1597) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1791 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1807 = mem[_1791]
                    require mem[_1791] <= test266151307()
                    require _1791 + mem[_1791] + 31 < _1791 + return_data.size
                    _1823 = mem[_1791 + mem[_1791]]
                    require mem[_1791 + mem[_1791]] <= test266151307()
                    require _1791 + ceil32(return_data.size) + (32 * mem[_1791 + mem[_1791]]) + 32 <= test266151307() and (32 * mem[_1791 + mem[_1791]]) + 32 >= 0
                    mem[64] = _1791 + ceil32(return_data.size) + (32 * mem[_1791 + mem[_1791]]) + 32
                    mem[_1791 + ceil32(return_data.size)] = _1823
                    require _1807 + (32 * _1823) + 32 <= return_data.size
                    idx = 0
                    s = _1791 + _1807 + 32
                    t = _1791 + ceil32(return_data.size) + 32
                    while idx < _1823:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1196 + _1200 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1174]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1540] == mem[_1540 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1540 + 12 len 20]
                    _1588 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1604 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1604:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1588 + 100] = msg.sender
                    mem[_1588 + 132] = arg5
                    require ext_code.size(address(stor[_1174]))
                    call address(stor[_1174]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1588 + (32 * _1604) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1792 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1808 = mem[_1792]
                    require mem[_1792] <= test266151307()
                    require _1792 + mem[_1792] + 31 < _1792 + return_data.size
                    _1824 = mem[_1792 + mem[_1792]]
                    require mem[_1792 + mem[_1792]] <= test266151307()
                    require _1792 + ceil32(return_data.size) + (32 * mem[_1792 + mem[_1792]]) + 32 <= test266151307() and (32 * mem[_1792 + mem[_1792]]) + 32 >= 0
                    mem[64] = _1792 + ceil32(return_data.size) + (32 * mem[_1792 + mem[_1792]]) + 32
                    mem[_1792 + ceil32(return_data.size)] = _1824
                    require _1808 + (32 * _1824) + 32 <= return_data.size
                    idx = 0
                    s = _1792 + _1808 + 32
                    t = _1792 + ceil32(return_data.size) + 32
                    while idx < _1824:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1174]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1541] == mem[_1541 + 12 len 20]
                    require 1 < mem[_844]
                    mem[_844 + 64] = mem[_1541 + 12 len 20]
                    _1589 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1605 = mem[_844]
                    mem[mem[64] + 164] = mem[_844]
                    idx = 0
                    s = _844 + 32
                    t = mem[64] + 196
                    while idx < _1605:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1589 + 100] = msg.sender
                    mem[_1589 + 132] = arg5
                    require ext_code.size(address(stor[_1174]))
                    call address(stor[_1174]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1589 + (32 * _1605) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1793 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1809 = mem[_1793]
                    require mem[_1793] <= test266151307()
                    require _1793 + mem[_1793] + 31 < _1793 + return_data.size
                    _1825 = mem[_1793 + mem[_1793]]
                    require mem[_1793 + mem[_1793]] <= test266151307()
                    require _1793 + ceil32(return_data.size) + (32 * mem[_1793 + mem[_1793]]) + 32 <= test266151307() and (32 * mem[_1793 + mem[_1793]]) + 32 >= 0
                    mem[64] = _1793 + ceil32(return_data.size) + (32 * mem[_1793 + mem[_1793]]) + 32
                    mem[_1793 + ceil32(return_data.size)] = _1825
                    require _1809 + (32 * _1825) + 32 <= return_data.size
                    idx = 0
                    s = _1793 + _1809 + 32
                    t = _1793 + ceil32(return_data.size) + 32
                    while idx < _1825:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    else:
        _174 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
        require ext_code.size(address(stor[_174]))
        staticcall address(stor[_174]).WETH() with:
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
        _189 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
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
        require ext_code.size(address(stor[_174]))
        call address(stor[_174]).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _189) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _513 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _515 = mem[_513]
        require mem[_513] <= test266151307()
        require _513 + mem[_513] + 31 < _513 + return_data.size
        _517 = mem[_513 + mem[_513]]
        require mem[_513 + mem[_513]] <= test266151307()
        require _513 + ceil32(return_data.size) + (32 * mem[_513 + mem[_513]]) + 32 <= test266151307() and (32 * mem[_513 + mem[_513]]) + 32 >= 0
        mem[64] = _513 + ceil32(return_data.size) + (32 * mem[_513 + mem[_513]]) + 32
        mem[_513 + ceil32(return_data.size)] = _517
        require _515 + (32 * _517) + 32 <= return_data.size
        idx = 0
        s = _513 + _515 + 32
        t = _513 + ceil32(return_data.size) + 32
        while idx < _517:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _845 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_845 + 32 len 64] = call.data[calldata.size len 64]
        _849 = mem[ceil32(arg3.length) + 128]
        mem[_845 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
        mem[_845 + _849 + 96] = 0
        if ceil32(_849) <= _849:
            _1170 = sha3(mem[mem[64] len _845 + _849 + -mem[64] + 128])
            require 0 < mem[_845]
            mem[_845 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1170])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1170]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1187] == bool(mem[_1187])
            _1199 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1199] = 1
            require ext_code.size(address(stor[_1170]))
            if ceil32(_1199) <= _1199:
                if bool(uint8(stor[sha3(mem[mem[64] len _1199 + 32])])) == 1:
                    staticcall address(stor[_1170]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1535] == mem[_1535 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1535 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1599 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1599:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1170]))
                    call address(stor[_1170]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1599) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1795 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1811 = mem[_1795]
                    require mem[_1795] <= test266151307()
                    require _1795 + mem[_1795] + 31 < _1795 + return_data.size
                    _1827 = mem[_1795 + mem[_1795]]
                    require mem[_1795 + mem[_1795]] <= test266151307()
                    require _1795 + ceil32(return_data.size) + (32 * mem[_1795 + mem[_1795]]) + 32 <= test266151307() and (32 * mem[_1795 + mem[_1795]]) + 32 >= 0
                    mem[64] = _1795 + ceil32(return_data.size) + (32 * mem[_1795 + mem[_1795]]) + 32
                    mem[_1795 + ceil32(return_data.size)] = _1827
                    require _1811 + (32 * _1827) + 32 <= return_data.size
                    idx = 0
                    s = _1795 + _1811 + 32
                    t = _1795 + ceil32(return_data.size) + 32
                    while idx < _1827:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1170]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1534 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1534] == mem[_1534 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1534 + 12 len 20]
                    _1578 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1598 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1598:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1578 + 100] = msg.sender
                    mem[_1578 + 132] = arg5
                    require ext_code.size(address(stor[_1170]))
                    call address(stor[_1170]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1578 + (32 * _1598) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1794 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1810 = mem[_1794]
                    require mem[_1794] <= test266151307()
                    require _1794 + mem[_1794] + 31 < _1794 + return_data.size
                    _1826 = mem[_1794 + mem[_1794]]
                    require mem[_1794 + mem[_1794]] <= test266151307()
                    require _1794 + ceil32(return_data.size) + (32 * mem[_1794 + mem[_1794]]) + 32 <= test266151307() and (32 * mem[_1794 + mem[_1794]]) + 32 >= 0
                    mem[64] = _1794 + ceil32(return_data.size) + (32 * mem[_1794 + mem[_1794]]) + 32
                    mem[_1794 + ceil32(return_data.size)] = _1826
                    require _1810 + (32 * _1826) + 32 <= return_data.size
                    idx = 0
                    s = _1794 + _1810 + 32
                    t = _1794 + ceil32(return_data.size) + 32
                    while idx < _1826:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1199 + 32])])) != 1:
                    staticcall address(stor[_1170]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1542] == mem[_1542 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1542 + 12 len 20]
                    _1590 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1606 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1606:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1590 + 100] = msg.sender
                    mem[_1590 + 132] = arg5
                    require ext_code.size(address(stor[_1170]))
                    call address(stor[_1170]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1590 + (32 * _1606) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1796 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1812 = mem[_1796]
                    require mem[_1796] <= test266151307()
                    require _1796 + mem[_1796] + 31 < _1796 + return_data.size
                    _1828 = mem[_1796 + mem[_1796]]
                    require mem[_1796 + mem[_1796]] <= test266151307()
                    require _1796 + ceil32(return_data.size) + (32 * mem[_1796 + mem[_1796]]) + 32 <= test266151307() and (32 * mem[_1796 + mem[_1796]]) + 32 >= 0
                    mem[64] = _1796 + ceil32(return_data.size) + (32 * mem[_1796 + mem[_1796]]) + 32
                    mem[_1796 + ceil32(return_data.size)] = _1828
                    require _1812 + (32 * _1828) + 32 <= return_data.size
                    idx = 0
                    s = _1796 + _1812 + 32
                    t = _1796 + ceil32(return_data.size) + 32
                    while idx < _1828:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1170]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1543] == mem[_1543 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1543 + 12 len 20]
                    _1591 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1607 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1607:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1591 + 100] = msg.sender
                    mem[_1591 + 132] = arg5
                    require ext_code.size(address(stor[_1170]))
                    call address(stor[_1170]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1591 + (32 * _1607) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1797 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1813 = mem[_1797]
                    require mem[_1797] <= test266151307()
                    require _1797 + mem[_1797] + 31 < _1797 + return_data.size
                    _1829 = mem[_1797 + mem[_1797]]
                    require mem[_1797 + mem[_1797]] <= test266151307()
                    require _1797 + ceil32(return_data.size) + (32 * mem[_1797 + mem[_1797]]) + 32 <= test266151307() and (32 * mem[_1797 + mem[_1797]]) + 32 >= 0
                    mem[64] = _1797 + ceil32(return_data.size) + (32 * mem[_1797 + mem[_1797]]) + 32
                    mem[_1797 + ceil32(return_data.size)] = _1829
                    require _1813 + (32 * _1829) + 32 <= return_data.size
                    idx = 0
                    s = _1797 + _1813 + 32
                    t = _1797 + ceil32(return_data.size) + 32
                    while idx < _1829:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            _1178 = sha3(mem[mem[64] len _845 + _849 + -mem[64] + 128])
            require 0 < mem[_845]
            mem[_845 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1178])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1178]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1189] == bool(mem[_1189])
            _1197 = mem[64]
            _1201 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1201] = 1
            require ext_code.size(address(stor[_1178]))
            if ceil32(_1201) <= _1201:
                if bool(uint8(stor[sha3(mem[mem[64] len _1197 + _1201 + -mem[64] + 32])])) == 1:
                    staticcall address(stor[_1178]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1537] == mem[_1537 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1537 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1601 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1601:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1178]))
                    call address(stor[_1178]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1601) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1799 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1815 = mem[_1799]
                    require mem[_1799] <= test266151307()
                    require _1799 + mem[_1799] + 31 < _1799 + return_data.size
                    _1831 = mem[_1799 + mem[_1799]]
                    require mem[_1799 + mem[_1799]] <= test266151307()
                    require _1799 + ceil32(return_data.size) + (32 * mem[_1799 + mem[_1799]]) + 32 <= test266151307() and (32 * mem[_1799 + mem[_1799]]) + 32 >= 0
                    mem[64] = _1799 + ceil32(return_data.size) + (32 * mem[_1799 + mem[_1799]]) + 32
                    mem[_1799 + ceil32(return_data.size)] = _1831
                    require _1815 + (32 * _1831) + 32 <= return_data.size
                    idx = 0
                    s = _1799 + _1815 + 32
                    t = _1799 + ceil32(return_data.size) + 32
                    while idx < _1831:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1178]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1536] == mem[_1536 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1536 + 12 len 20]
                    _1582 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1600 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1600:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1582 + 100] = msg.sender
                    mem[_1582 + 132] = arg5
                    require ext_code.size(address(stor[_1178]))
                    call address(stor[_1178]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1582 + (32 * _1600) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1798 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1814 = mem[_1798]
                    require mem[_1798] <= test266151307()
                    require _1798 + mem[_1798] + 31 < _1798 + return_data.size
                    _1830 = mem[_1798 + mem[_1798]]
                    require mem[_1798 + mem[_1798]] <= test266151307()
                    require _1798 + ceil32(return_data.size) + (32 * mem[_1798 + mem[_1798]]) + 32 <= test266151307() and (32 * mem[_1798 + mem[_1798]]) + 32 >= 0
                    mem[64] = _1798 + ceil32(return_data.size) + (32 * mem[_1798 + mem[_1798]]) + 32
                    mem[_1798 + ceil32(return_data.size)] = _1830
                    require _1814 + (32 * _1830) + 32 <= return_data.size
                    idx = 0
                    s = _1798 + _1814 + 32
                    t = _1798 + ceil32(return_data.size) + 32
                    while idx < _1830:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1197 + _1201 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1178]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1544] == mem[_1544 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1544 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1608 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1608:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1178]))
                    call address(stor[_1178]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1608) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1800 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1816 = mem[_1800]
                    require mem[_1800] <= test266151307()
                    require _1800 + mem[_1800] + 31 < _1800 + return_data.size
                    _1832 = mem[_1800 + mem[_1800]]
                    require mem[_1800 + mem[_1800]] <= test266151307()
                    require _1800 + ceil32(return_data.size) + (32 * mem[_1800 + mem[_1800]]) + 32 <= test266151307() and (32 * mem[_1800 + mem[_1800]]) + 32 >= 0
                    mem[64] = _1800 + ceil32(return_data.size) + (32 * mem[_1800 + mem[_1800]]) + 32
                    mem[_1800 + ceil32(return_data.size)] = _1832
                    require _1816 + (32 * _1832) + 32 <= return_data.size
                    idx = 0
                    s = _1800 + _1816 + 32
                    t = _1800 + ceil32(return_data.size) + 32
                    while idx < _1832:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1178]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1545] == mem[_1545 + 12 len 20]
                    require 1 < mem[_845]
                    mem[_845 + 64] = mem[_1545 + 12 len 20]
                    _1593 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1609 = mem[_845]
                    mem[mem[64] + 164] = mem[_845]
                    idx = 0
                    s = _845 + 32
                    t = mem[64] + 196
                    while idx < _1609:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1593 + 100] = msg.sender
                    mem[_1593 + 132] = arg5
                    require ext_code.size(address(stor[_1178]))
                    call address(stor[_1178]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1593 + (32 * _1609) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1801 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1817 = mem[_1801]
                    require mem[_1801] <= test266151307()
                    require _1801 + mem[_1801] + 31 < _1801 + return_data.size
                    _1833 = mem[_1801 + mem[_1801]]
                    require mem[_1801 + mem[_1801]] <= test266151307()
                    require _1801 + ceil32(return_data.size) + (32 * mem[_1801 + mem[_1801]]) + 32 <= test266151307() and (32 * mem[_1801 + mem[_1801]]) + 32 >= 0
                    mem[64] = _1801 + ceil32(return_data.size) + (32 * mem[_1801 + mem[_1801]]) + 32
                    mem[_1801 + ceil32(return_data.size)] = _1833
                    require _1817 + (32 * _1833) + 32 <= return_data.size
                    idx = 0
                    s = _1801 + _1817 + 32
                    t = _1801 + ceil32(return_data.size) + 32
                    while idx < _1833:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    return 0
}



}
