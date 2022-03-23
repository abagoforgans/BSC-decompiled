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
        _95 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
        require ext_code.size(address(stor[_95]))
        staticcall address(stor[_95]).WETH() with:
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
        _112 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
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
        require ext_code.size(address(stor[_95]))
        call address(stor[_95]).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _112) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _342 = mem[_340]
        require mem[_340] <= test266151307()
        require _340 + mem[_340] + 31 < _340 + return_data.size
        _344 = mem[_340 + mem[_340]]
        require mem[_340 + mem[_340]] <= test266151307()
        require _340 + ceil32(return_data.size) + (32 * mem[_340 + mem[_340]]) + 32 <= test266151307() and (32 * mem[_340 + mem[_340]]) + 32 >= 0
        mem[64] = _340 + ceil32(return_data.size) + (32 * mem[_340 + mem[_340]]) + 32
        mem[_340 + ceil32(return_data.size)] = _344
        require _342 + (32 * _344) + 32 <= return_data.size
        idx = 0
        s = _340 + _342 + 32
        t = _340 + ceil32(return_data.size) + 32
        while idx < _344:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _688 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_688 + 32 len 64] = call.data[calldata.size len 64]
        _692 = mem[ceil32(arg3.length) + 128]
        mem[_688 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
        mem[_688 + _692 + 96] = 0
        if ceil32(_692) <= _692:
            _1027 = sha3(mem[mem[64] len _688 + _692 + -mem[64] + 128])
            require 0 < mem[_688]
            mem[_688 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1027])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1027]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1046 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1046] == bool(mem[_1046])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1062 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1062] == bool(mem[_1062])
            _1074 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1074] = 1
            require ext_code.size(address(stor[_1027]))
            if ceil32(_1074) <= _1074:
                if bool(uint8(stor[sha3(mem[mem[64] len _1074 + 32])])) != 1:
                    staticcall address(stor[_1027]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1406] == mem[_1406 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1406 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1470 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1470:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1027]))
                    call address(stor[_1027]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1470) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1662 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1678 = mem[_1662]
                    require mem[_1662] <= test266151307()
                    require _1662 + mem[_1662] + 31 < _1662 + return_data.size
                    _1694 = mem[_1662 + mem[_1662]]
                    require mem[_1662 + mem[_1662]] <= test266151307()
                    require _1662 + ceil32(return_data.size) + (32 * mem[_1662 + mem[_1662]]) + 32 <= test266151307() and (32 * mem[_1662 + mem[_1662]]) + 32 >= 0
                    mem[64] = _1662 + ceil32(return_data.size) + (32 * mem[_1662 + mem[_1662]]) + 32
                    mem[_1662 + ceil32(return_data.size)] = _1694
                    require _1678 + (32 * _1694) + 32 <= return_data.size
                    idx = 0
                    s = _1662 + _1678 + 32
                    t = _1662 + ceil32(return_data.size) + 32
                    while idx < _1694:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1027]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1407] == mem[_1407 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1407 + 12 len 20]
                    _1447 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1471 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1471:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1447 + 100] = msg.sender
                    mem[_1447 + 132] = arg5
                    require ext_code.size(address(stor[_1027]))
                    call address(stor[_1027]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1447 + (32 * _1471) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1663 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1679 = mem[_1663]
                    require mem[_1663] <= test266151307()
                    require _1663 + mem[_1663] + 31 < _1663 + return_data.size
                    _1695 = mem[_1663 + mem[_1663]]
                    require mem[_1663 + mem[_1663]] <= test266151307()
                    require _1663 + ceil32(return_data.size) + (32 * mem[_1663 + mem[_1663]]) + 32 <= test266151307() and (32 * mem[_1663 + mem[_1663]]) + 32 >= 0
                    mem[64] = _1663 + ceil32(return_data.size) + (32 * mem[_1663 + mem[_1663]]) + 32
                    mem[_1663 + ceil32(return_data.size)] = _1695
                    require _1679 + (32 * _1695) + 32 <= return_data.size
                    idx = 0
                    s = _1663 + _1679 + 32
                    t = _1663 + ceil32(return_data.size) + 32
                    while idx < _1695:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1074 + 32])])) != 1:
                    staticcall address(stor[_1027]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1414] == mem[_1414 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1414 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1478 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1478:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1027]))
                    call address(stor[_1027]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1478) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1664 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1680 = mem[_1664]
                    require mem[_1664] <= test266151307()
                    require _1664 + mem[_1664] + 31 < _1664 + return_data.size
                    _1696 = mem[_1664 + mem[_1664]]
                    require mem[_1664 + mem[_1664]] <= test266151307()
                    require _1664 + ceil32(return_data.size) + (32 * mem[_1664 + mem[_1664]]) + 32 <= test266151307() and (32 * mem[_1664 + mem[_1664]]) + 32 >= 0
                    mem[64] = _1664 + ceil32(return_data.size) + (32 * mem[_1664 + mem[_1664]]) + 32
                    mem[_1664 + ceil32(return_data.size)] = _1696
                    require _1680 + (32 * _1696) + 32 <= return_data.size
                    idx = 0
                    s = _1664 + _1680 + 32
                    t = _1664 + ceil32(return_data.size) + 32
                    while idx < _1696:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1027]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1415] == mem[_1415 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1415 + 12 len 20]
                    _1463 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1479 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1479:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1463 + 100] = msg.sender
                    mem[_1463 + 132] = arg5
                    require ext_code.size(address(stor[_1027]))
                    call address(stor[_1027]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1463 + (32 * _1479) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1665 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1681 = mem[_1665]
                    require mem[_1665] <= test266151307()
                    require _1665 + mem[_1665] + 31 < _1665 + return_data.size
                    _1697 = mem[_1665 + mem[_1665]]
                    require mem[_1665 + mem[_1665]] <= test266151307()
                    require _1665 + ceil32(return_data.size) + (32 * mem[_1665 + mem[_1665]]) + 32 <= test266151307() and (32 * mem[_1665 + mem[_1665]]) + 32 >= 0
                    mem[64] = _1665 + ceil32(return_data.size) + (32 * mem[_1665 + mem[_1665]]) + 32
                    mem[_1665 + ceil32(return_data.size)] = _1697
                    require _1681 + (32 * _1697) + 32 <= return_data.size
                    idx = 0
                    s = _1665 + _1681 + 32
                    t = _1665 + ceil32(return_data.size) + 32
                    while idx < _1697:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            _1034 = sha3(mem[mem[64] len _688 + _692 + -mem[64] + 128])
            require 0 < mem[_688]
            mem[_688 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1034])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1034]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1048 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1048] == bool(mem[_1048])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1064] == bool(mem[_1064])
            _1072 = mem[64]
            _1076 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1076] = 1
            require ext_code.size(address(stor[_1034]))
            if ceil32(_1076) <= _1076:
                if bool(uint8(stor[sha3(mem[mem[64] len _1072 + _1076 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1034]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1408] == mem[_1408 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1408 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1472 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1472:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1034]))
                    call address(stor[_1034]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1472) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1666 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1682 = mem[_1666]
                    require mem[_1666] <= test266151307()
                    require _1666 + mem[_1666] + 31 < _1666 + return_data.size
                    _1698 = mem[_1666 + mem[_1666]]
                    require mem[_1666 + mem[_1666]] <= test266151307()
                    require _1666 + ceil32(return_data.size) + (32 * mem[_1666 + mem[_1666]]) + 32 <= test266151307() and (32 * mem[_1666 + mem[_1666]]) + 32 >= 0
                    mem[64] = _1666 + ceil32(return_data.size) + (32 * mem[_1666 + mem[_1666]]) + 32
                    mem[_1666 + ceil32(return_data.size)] = _1698
                    require _1682 + (32 * _1698) + 32 <= return_data.size
                    idx = 0
                    s = _1666 + _1682 + 32
                    t = _1666 + ceil32(return_data.size) + 32
                    while idx < _1698:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1034]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1409] == mem[_1409 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1409 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1473 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1473:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1034]))
                    call address(stor[_1034]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1473) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1667 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1683 = mem[_1667]
                    require mem[_1667] <= test266151307()
                    require _1667 + mem[_1667] + 31 < _1667 + return_data.size
                    _1699 = mem[_1667 + mem[_1667]]
                    require mem[_1667 + mem[_1667]] <= test266151307()
                    require _1667 + ceil32(return_data.size) + (32 * mem[_1667 + mem[_1667]]) + 32 <= test266151307() and (32 * mem[_1667 + mem[_1667]]) + 32 >= 0
                    mem[64] = _1667 + ceil32(return_data.size) + (32 * mem[_1667 + mem[_1667]]) + 32
                    mem[_1667 + ceil32(return_data.size)] = _1699
                    require _1683 + (32 * _1699) + 32 <= return_data.size
                    idx = 0
                    s = _1667 + _1683 + 32
                    t = _1667 + ceil32(return_data.size) + 32
                    while idx < _1699:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1072 + _1076 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1034]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1416 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1416] == mem[_1416 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1416 + 12 len 20]
                    _1464 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1480 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1480:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1464 + 100] = msg.sender
                    mem[_1464 + 132] = arg5
                    require ext_code.size(address(stor[_1034]))
                    call address(stor[_1034]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1464 + (32 * _1480) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1668 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1684 = mem[_1668]
                    require mem[_1668] <= test266151307()
                    require _1668 + mem[_1668] + 31 < _1668 + return_data.size
                    _1700 = mem[_1668 + mem[_1668]]
                    require mem[_1668 + mem[_1668]] <= test266151307()
                    require _1668 + ceil32(return_data.size) + (32 * mem[_1668 + mem[_1668]]) + 32 <= test266151307() and (32 * mem[_1668 + mem[_1668]]) + 32 >= 0
                    mem[64] = _1668 + ceil32(return_data.size) + (32 * mem[_1668 + mem[_1668]]) + 32
                    mem[_1668 + ceil32(return_data.size)] = _1700
                    require _1684 + (32 * _1700) + 32 <= return_data.size
                    idx = 0
                    s = _1668 + _1684 + 32
                    t = _1668 + ceil32(return_data.size) + 32
                    while idx < _1700:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1034]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1417] == mem[_1417 + 12 len 20]
                    require 1 < mem[_688]
                    mem[_688 + 64] = mem[_1417 + 12 len 20]
                    _1465 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1481 = mem[_688]
                    mem[mem[64] + 164] = mem[_688]
                    idx = 0
                    s = _688 + 32
                    t = mem[64] + 196
                    while idx < _1481:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1465 + 100] = msg.sender
                    mem[_1465 + 132] = arg5
                    require ext_code.size(address(stor[_1034]))
                    call address(stor[_1034]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1465 + (32 * _1481) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1669 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1685 = mem[_1669]
                    require mem[_1669] <= test266151307()
                    require _1669 + mem[_1669] + 31 < _1669 + return_data.size
                    _1701 = mem[_1669 + mem[_1669]]
                    require mem[_1669 + mem[_1669]] <= test266151307()
                    require _1669 + ceil32(return_data.size) + (32 * mem[_1669 + mem[_1669]]) + 32 <= test266151307() and (32 * mem[_1669 + mem[_1669]]) + 32 >= 0
                    mem[64] = _1669 + ceil32(return_data.size) + (32 * mem[_1669 + mem[_1669]]) + 32
                    mem[_1669 + ceil32(return_data.size)] = _1701
                    require _1685 + (32 * _1701) + 32 <= return_data.size
                    idx = 0
                    s = _1669 + _1685 + 32
                    t = _1669 + ceil32(return_data.size) + 32
                    while idx < _1701:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    else:
        _98 = sha3(Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 256 len arg3.length + -ceil32(arg3.length) + 32])
        require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = address(arg1)
        require ext_code.size(address(stor[_98]))
        staticcall address(stor[_98]).WETH() with:
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
        _113 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
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
        require ext_code.size(address(stor[_98]))
        call address(stor[_98]).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + (32 * _113) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _341 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _343 = mem[_341]
        require mem[_341] <= test266151307()
        require _341 + mem[_341] + 31 < _341 + return_data.size
        _345 = mem[_341 + mem[_341]]
        require mem[_341 + mem[_341]] <= test266151307()
        require _341 + ceil32(return_data.size) + (32 * mem[_341 + mem[_341]]) + 32 <= test266151307() and (32 * mem[_341 + mem[_341]]) + 32 >= 0
        mem[64] = _341 + ceil32(return_data.size) + (32 * mem[_341 + mem[_341]]) + 32
        mem[_341 + ceil32(return_data.size)] = _345
        require _343 + (32 * _345) + 32 <= return_data.size
        idx = 0
        s = _341 + _343 + 32
        t = _341 + ceil32(return_data.size) + 32
        while idx < _345:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _689 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_689 + 32 len 64] = call.data[calldata.size len 64]
        _693 = mem[ceil32(arg3.length) + 128]
        mem[_689 + 96 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
        mem[_689 + _693 + 96] = 0
        if ceil32(_693) <= _693:
            _1030 = sha3(mem[mem[64] len _689 + _693 + -mem[64] + 128])
            require 0 < mem[_689]
            mem[_689 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1030])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1030]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1047 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1047] == bool(mem[_1047])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1063] == bool(mem[_1063])
            _1071 = mem[64]
            _1075 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1075] = 1
            require ext_code.size(address(stor[_1030]))
            if ceil32(_1075) > _1075:
                if bool(uint8(stor[sha3(mem[mem[64] len _1071 + _1075 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1030]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1418] == mem[_1418 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1418 + 12 len 20]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1482 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1482:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1030]))
                    call address(stor[_1030]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1482) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1672 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1688 = mem[_1672]
                    require mem[_1672] <= test266151307()
                    require _1672 + mem[_1672] + 31 < _1672 + return_data.size
                    _1704 = mem[_1672 + mem[_1672]]
                    require mem[_1672 + mem[_1672]] <= test266151307()
                    require _1672 + ceil32(return_data.size) + (32 * mem[_1672 + mem[_1672]]) + 32 <= test266151307() and (32 * mem[_1672 + mem[_1672]]) + 32 >= 0
                    mem[64] = _1672 + ceil32(return_data.size) + (32 * mem[_1672 + mem[_1672]]) + 32
                    mem[_1672 + ceil32(return_data.size)] = _1704
                    require _1688 + (32 * _1704) + 32 <= return_data.size
                    idx = 0
                    s = _1672 + _1688 + 32
                    t = _1672 + ceil32(return_data.size) + 32
                    while idx < _1704:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1030]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1419] == mem[_1419 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1419 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1483 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1483:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1030]))
                    call address(stor[_1030]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1483) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1673 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1689 = mem[_1673]
                    require mem[_1673] <= test266151307()
                    require _1673 + mem[_1673] + 31 < _1673 + return_data.size
                    _1705 = mem[_1673 + mem[_1673]]
                    require mem[_1673 + mem[_1673]] <= test266151307()
                    require _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32 <= test266151307() and (32 * mem[_1673 + mem[_1673]]) + 32 >= 0
                    mem[64] = _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32
                    mem[_1673 + ceil32(return_data.size)] = _1705
                    require _1689 + (32 * _1705) + 32 <= return_data.size
                    idx = 0
                    s = _1673 + _1689 + 32
                    t = _1673 + ceil32(return_data.size) + 32
                    while idx < _1705:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1071 + _1075 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1030]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1410] == mem[_1410 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1410 + 12 len 20]
                    _1454 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1474 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1474:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1454 + 100] = msg.sender
                    mem[_1454 + 132] = arg5
                    require ext_code.size(address(stor[_1030]))
                    call address(stor[_1030]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1454 + (32 * _1474) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1670 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1686 = mem[_1670]
                    require mem[_1670] <= test266151307()
                    require _1670 + mem[_1670] + 31 < _1670 + return_data.size
                    _1702 = mem[_1670 + mem[_1670]]
                    require mem[_1670 + mem[_1670]] <= test266151307()
                    require _1670 + ceil32(return_data.size) + (32 * mem[_1670 + mem[_1670]]) + 32 <= test266151307() and (32 * mem[_1670 + mem[_1670]]) + 32 >= 0
                    mem[64] = _1670 + ceil32(return_data.size) + (32 * mem[_1670 + mem[_1670]]) + 32
                    mem[_1670 + ceil32(return_data.size)] = _1702
                    require _1686 + (32 * _1702) + 32 <= return_data.size
                    idx = 0
                    s = _1670 + _1686 + 32
                    t = _1670 + ceil32(return_data.size) + 32
                    while idx < _1702:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1030]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1411] == mem[_1411 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1411 + 12 len 20]
                    _1455 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1475 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1475:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1455 + 100] = msg.sender
                    mem[_1455 + 132] = arg5
                    require ext_code.size(address(stor[_1030]))
                    call address(stor[_1030]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1455 + (32 * _1475) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1671 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1687 = mem[_1671]
                    require mem[_1671] <= test266151307()
                    require _1671 + mem[_1671] + 31 < _1671 + return_data.size
                    _1703 = mem[_1671 + mem[_1671]]
                    require mem[_1671 + mem[_1671]] <= test266151307()
                    require _1671 + ceil32(return_data.size) + (32 * mem[_1671 + mem[_1671]]) + 32 <= test266151307() and (32 * mem[_1671 + mem[_1671]]) + 32 >= 0
                    mem[64] = _1671 + ceil32(return_data.size) + (32 * mem[_1671 + mem[_1671]]) + 32
                    mem[_1671 + ceil32(return_data.size)] = _1703
                    require _1687 + (32 * _1703) + 32 <= return_data.size
                    idx = 0
                    s = _1671 + _1687 + 32
                    t = _1671 + ceil32(return_data.size) + 32
                    while idx < _1703:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            _1038 = sha3(mem[mem[64] len _689 + _693 + -mem[64] + 128])
            require 0 < mem[_689]
            mem[_689 + 32] = address(arg1)
            mem[mem[64] + 4] = address(stor[_1038])
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(stor[_1038]), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1049 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1049] == bool(mem[_1049])
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = -1
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1065 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1065] == bool(mem[_1065])
            _1073 = mem[64]
            _1077 = mem[ceil32(arg3.length) + 128]
            mem[mem[64] len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
            mem[mem[64] + _1077] = 1
            require ext_code.size(address(stor[_1038]))
            if ceil32(_1077) <= _1077:
                if bool(uint8(stor[sha3(mem[mem[64] len _1073 + _1077 + -mem[64] + 32])])) != 1:
                    staticcall address(stor[_1038]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1412] == mem[_1412 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1412 + 12 len 20]
                    _1458 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1476 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1476:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1458 + 100] = msg.sender
                    mem[_1458 + 132] = arg5
                    require ext_code.size(address(stor[_1038]))
                    call address(stor[_1038]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1458 + (32 * _1476) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1674 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1690 = mem[_1674]
                    require mem[_1674] <= test266151307()
                    require _1674 + mem[_1674] + 31 < _1674 + return_data.size
                    _1706 = mem[_1674 + mem[_1674]]
                    require mem[_1674 + mem[_1674]] <= test266151307()
                    require _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32 <= test266151307() and (32 * mem[_1674 + mem[_1674]]) + 32 >= 0
                    mem[64] = _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32
                    mem[_1674 + ceil32(return_data.size)] = _1706
                    require _1690 + (32 * _1706) + 32 <= return_data.size
                    idx = 0
                    s = _1674 + _1690 + 32
                    t = _1674 + ceil32(return_data.size) + 32
                    while idx < _1706:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1038]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1413] == mem[_1413 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1413 + 12 len 20]
                    _1459 = mem[64]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1477 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1477:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1459 + 100] = msg.sender
                    mem[_1459 + 132] = arg5
                    require ext_code.size(address(stor[_1038]))
                    call address(stor[_1038]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1459 + (32 * _1477) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1675 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1691 = mem[_1675]
                    require mem[_1675] <= test266151307()
                    require _1675 + mem[_1675] + 31 < _1675 + return_data.size
                    _1707 = mem[_1675 + mem[_1675]]
                    require mem[_1675 + mem[_1675]] <= test266151307()
                    require _1675 + ceil32(return_data.size) + (32 * mem[_1675 + mem[_1675]]) + 32 <= test266151307() and (32 * mem[_1675 + mem[_1675]]) + 32 >= 0
                    mem[64] = _1675 + ceil32(return_data.size) + (32 * mem[_1675 + mem[_1675]]) + 32
                    mem[_1675 + ceil32(return_data.size)] = _1707
                    require _1691 + (32 * _1707) + 32 <= return_data.size
                    idx = 0
                    s = _1675 + _1691 + 32
                    t = _1675 + ceil32(return_data.size) + 32
                    while idx < _1707:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
                if bool(uint8(stor[sha3(mem[mem[64] len _1073 + _1077 + -mem[64] + 32])])) == 1:
                    staticcall address(stor[_1038]).0x8dd95002 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1421] == mem[_1421 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1421 + 12 len 20]
                    mem[mem[64]] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1485 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1485:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = arg5
                    require ext_code.size(address(stor[_1038]))
                    call address(stor[_1038]).0x5d616c5b with:
                         gas gas_remaining wei
                        args arg2, Mask(254, 2, 3 * msg.value), 160, msg.sender, arg5, mem[mem[64] + 164 len (32 * _1485) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1677 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1693 = mem[_1677]
                    require mem[_1677] <= test266151307()
                    require _1677 + mem[_1677] + 31 < _1677 + return_data.size
                    _1709 = mem[_1677 + mem[_1677]]
                    require mem[_1677 + mem[_1677]] <= test266151307()
                    require _1677 + ceil32(return_data.size) + (32 * mem[_1677 + mem[_1677]]) + 32 <= test266151307() and (32 * mem[_1677 + mem[_1677]]) + 32 >= 0
                    mem[64] = _1677 + ceil32(return_data.size) + (32 * mem[_1677 + mem[_1677]]) + 32
                    mem[_1677 + ceil32(return_data.size)] = _1709
                    require _1693 + (32 * _1709) + 32 <= return_data.size
                    idx = 0
                    s = _1677 + _1693 + 32
                    t = _1677 + ceil32(return_data.size) + 32
                    while idx < _1709:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    staticcall address(stor[_1038]).WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1420] == mem[_1420 + 12 len 20]
                    require 1 < mem[_689]
                    mem[_689 + 64] = mem[_1420 + 12 len 20]
                    _1468 = mem[64]
                    mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 3 * msg.value / 4
                    mem[mem[64] + 68] = 160
                    _1484 = mem[_689]
                    mem[mem[64] + 164] = mem[_689]
                    idx = 0
                    s = _689 + 32
                    t = mem[64] + 196
                    while idx < _1484:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1468 + 100] = msg.sender
                    mem[_1468 + 132] = arg5
                    require ext_code.size(address(stor[_1038]))
                    call address(stor[_1038]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1468 + (32 * _1484) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1676 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1692 = mem[_1676]
                    require mem[_1676] <= test266151307()
                    require _1676 + mem[_1676] + 31 < _1676 + return_data.size
                    _1708 = mem[_1676 + mem[_1676]]
                    require mem[_1676 + mem[_1676]] <= test266151307()
                    require _1676 + ceil32(return_data.size) + (32 * mem[_1676 + mem[_1676]]) + 32 <= test266151307() and (32 * mem[_1676 + mem[_1676]]) + 32 >= 0
                    mem[64] = _1676 + ceil32(return_data.size) + (32 * mem[_1676 + mem[_1676]]) + 32
                    mem[_1676 + ceil32(return_data.size)] = _1708
                    require _1692 + (32 * _1708) + 32 <= return_data.size
                    idx = 0
                    s = _1676 + _1692 + 32
                    t = _1676 + ceil32(return_data.size) + 32
                    while idx < _1708:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    return 0
}



}
