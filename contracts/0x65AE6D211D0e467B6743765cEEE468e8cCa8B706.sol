contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_6d127549(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function close() payable {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not creater'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function set_receiver(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not creater'
    stor1 = arg1
}

function sub_aeb8fbf9(?) payable {
    mem[128] = stor2
    mem[160] = stor3
    mem[192] = 32
    idx = 0
    s = 128
    t = 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[256 len 64])
}

function sub_d0ba2833(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.0xc45a0155 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(stor5)
    staticcall stor5.0xc45a0155 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 32
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 256 len 64])
}

function reserves(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor6)
    staticcall stor6.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor7)
    staticcall stor7.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        revert with 0, 'Pool not find...'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Pool not find...'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 >= arg2:
        return ext_call.return_data[32] << 144, 
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               Mask(112, 0, ext_call.return_data[0])
    return ext_call.return_data[0] << 144, 
           ext_call.return_data[32] << 144,
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function sub_3491ef43(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if cd[36] > test266151307():
        revert with 'NH{q', 65
    mem[96] = cd[36]
    mem[64] = (32 * cd[36]) + 128
    if not cd[36]:
        idx = 0
        while idx < cd[36]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((128 * idx) + cd[4] + 36)] == address(cd[((128 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
            require ext_code.size(address(cd[((128 * idx) + cd[4] + 36)]))
            staticcall address(cd[((128 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((128 * idx) + cd[4] + 100)]) >= address(cd[((128 * idx) + cd[4] + 132)]):
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _122 = mem[_120]
                require mem[_120] == mem[_120 + 18 len 14]
                _132 = mem[_120 + 32]
                require mem[_120 + 32] == mem[_120 + 50 len 14]
                require mem[_120 + 64] == mem[_120 + 92 len 4]
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_144] == mem[_144 + 18 len 14]
                _156 = mem[_144 + 32]
                require mem[_144 + 32] == mem[_144 + 50 len 14]
                require mem[_144 + 64] == mem[_144 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _166 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _170 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _174 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 96] = mem[_144 + 18 len 14]
                mem[_174 + 64] = Mask(112, 0, _156)
                mem[_170 + 32] = Mask(112, 0, _122)
                mem[_166] = Mask(112, 0, _132)
            else:
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _123 = mem[_121]
                require mem[_121] == mem[_121 + 18 len 14]
                _133 = mem[_121 + 32]
                require mem[_121 + 32] == mem[_121 + 50 len 14]
                require mem[_121 + 64] == mem[_121 + 92 len 4]
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _147 = mem[_145]
                require mem[_145] == mem[_145 + 18 len 14]
                require mem[_145 + 32] == mem[_145 + 50 len 14]
                require mem[_145 + 64] == mem[_145 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _168 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _172 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _176 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 96] = mem[_145 + 50 len 14]
                mem[_176 + 64] = Mask(112, 0, _147)
                mem[_172 + 32] = Mask(112, 0, _133)
                mem[_168] = Mask(112, 0, _123)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _100 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _101:
            _197 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_197 + 50 len 14]
            mem[t + 64] = mem[_197 + 82 len 14]
            mem[t + 96] = mem[_197 + 114 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _100 + (128 * _101) + -mem[64] + 64
    mem[64] = (32 * cd[36]) + 256
    mem[(32 * cd[36]) + 128] = 0
    mem[(32 * cd[36]) + 160] = 0
    mem[(32 * cd[36]) + 192] = 0
    mem[(32 * cd[36]) + 224] = 0
    mem[var24001] = (32 * cd[36]) + 128
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * cd[36]) + 128] = 0
        mem[(32 * cd[36]) + 160] = 0
        mem[(32 * cd[36]) + 192] = 0
        mem[(32 * cd[36]) + 224] = 0
        mem[s + 32] = (32 * cd[36]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < cd[36]:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((128 * idx) + cd[4] + 36)] == address(cd[((128 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
        require ext_code.size(address(cd[((128 * idx) + cd[4] + 36)]))
        staticcall address(cd[((128 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[((128 * idx) + cd[4] + 100)]) >= address(cd[((128 * idx) + cd[4] + 132)]):
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _265 = mem[_263]
            require mem[_263] == mem[_263 + 18 len 14]
            _267 = mem[_263 + 32]
            require mem[_263 + 32] == mem[_263 + 50 len 14]
            require mem[_263 + 64] == mem[_263 + 92 len 4]
            require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
            staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_275] == mem[_275 + 18 len 14]
            _279 = mem[_275 + 32]
            require mem[_275 + 32] == mem[_275 + 50 len 14]
            require mem[_275 + 64] == mem[_275 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _285 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _289 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _293 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_275 + 18 len 14]
            mem[_293 + 64] = Mask(112, 0, _279)
            mem[_289 + 32] = Mask(112, 0, _265)
            mem[_285] = Mask(112, 0, _267)
        else:
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _266 = mem[_264]
            require mem[_264] == mem[_264 + 18 len 14]
            _268 = mem[_264 + 32]
            require mem[_264 + 32] == mem[_264 + 50 len 14]
            require mem[_264 + 64] == mem[_264 + 92 len 4]
            require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
            staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _278 = mem[_276]
            require mem[_276] == mem[_276 + 18 len 14]
            require mem[_276 + 32] == mem[_276 + 50 len 14]
            require mem[_276 + 64] == mem[_276 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _287 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _291 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _295 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = mem[_276 + 50 len 14]
            mem[_295 + 64] = Mask(112, 0, _278)
            mem[_291 + 32] = Mask(112, 0, _268)
            mem[_287] = Mask(112, 0, _266)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _251 = mem[64]
    mem[mem[64]] = 32
    _252 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _252:
        _299 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_299 + 50 len 14]
        mem[t + 64] = mem[_299 + 82 len 14]
        mem[t + 96] = mem[_299 + 114 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _251 + (128 * _252) + -mem[64] + 64
}

function sub_f2ea2975(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3
    if not arg1:
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * arg3) + 128] = arg3
            if not arg3:
                if arg3 > test266151307():
                    revert with 'NH{q', 65
                mem[(64 * arg3) + 160] = arg3
                if not arg3:
                    mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor6)
                    staticcall stor6.allPairsLength() with:
                            gas gas_remaining wei
                           args mem[(98 * arg3) + 196 len 192 * arg3]
                    mem[(98 * arg3) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = 0
                    while idx < arg3:
                        if arg2 > -idx - 1:
                            revert with 'NH{q', 17
                        if arg2 + idx >= ext_call.return_data[0]:
                            _671 = mem[64]
                            mem[mem[64]] = 128
                            _703 = mem[96]
                            mem[mem[64] + 128] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 160
                            while idx < _703:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _703) + 160
                            _1232 = mem[(32 * arg3) + 128]
                            mem[mem[64] + (32 * _703) + 160] = mem[(32 * arg3) + 128]
                            idx = 0
                            t = (32 * arg3) + 160
                            u = mem[64] + (32 * _703) + 192
                            while idx < _1232:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_671 + 64] = (32 * _703) + (32 * _1232) + 192
                            _1424 = mem[(64 * arg3) + 160]
                            mem[_671 + (32 * _703) + (32 * _1232) + 192] = mem[(64 * arg3) + 160]
                            idx = 0
                            t = (64 * arg3) + 192
                            u = _671 + (32 * _703) + (32 * _1232) + 224
                            while idx < _1424:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_671 + 96] = s
                            return memory
                              from mem[64]
                               len _671 + (32 * _703) + (32 * _1232) + (32 * _1424) + -mem[64] + 224
                        if arg2 > -idx - 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg2 + idx
                        require ext_code.size(stor6)
                        staticcall stor6.allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args (arg2 + idx)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_799] == mem[_799 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_799 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1007] == mem[_1007 + 12 len 20]
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * arg3) + 160] = mem[_1007 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1151] == mem[_1151 + 12 len 20]
                        if idx >= mem[(64 * arg3) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * arg3) + 192] = mem[_1151 + 12 len 20]
                        if s == -1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _639 = mem[64]
                    mem[mem[64]] = 128
                    _655 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _655:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _655) + 160
                    _1231 = mem[(32 * arg3) + 128]
                    mem[mem[64] + (32 * _655) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = mem[64] + (32 * _655) + 192
                    while idx < _1231:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_639 + 64] = (32 * _655) + (32 * _1231) + 192
                    _1423 = mem[(64 * arg3) + 160]
                    mem[_639 + (32 * _655) + (32 * _1231) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _639 + (32 * _655) + (32 * _1231) + 224
                    while idx < _1423:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_639 + 96] = s
                    return memory
                      from mem[64]
                       len _639 + (32 * _655) + (32 * _1231) + (32 * _1423) + -mem[64] + 224
                mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor6)
                staticcall stor6.allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= ext_call.return_data[0]:
                        _672 = mem[64]
                        mem[mem[64]] = 128
                        _704 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 160
                        while idx < _704:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _704) + 160
                        _1234 = mem[(32 * arg3) + 128]
                        mem[mem[64] + (32 * _704) + 160] = mem[(32 * arg3) + 128]
                        idx = 0
                        t = (32 * arg3) + 160
                        u = mem[64] + (32 * _704) + 192
                        while idx < _1234:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_672 + 64] = (32 * _704) + (32 * _1234) + 192
                        _1426 = mem[(64 * arg3) + 160]
                        mem[_672 + (32 * _704) + (32 * _1234) + 192] = mem[(64 * arg3) + 160]
                        idx = 0
                        t = (64 * arg3) + 192
                        u = _672 + (32 * _704) + (32 * _1234) + 224
                        while idx < _1426:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_672 + 96] = s
                        return memory
                          from mem[64]
                           len _672 + (32 * _704) + (32 * _1234) + (32 * _1426) + -mem[64] + 224
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(stor6)
                    staticcall stor6.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_801] == mem[_801 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_801 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1008 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1008] == mem[_1008 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_1008 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1152] == mem[_1152 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_1152 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _640 = mem[64]
                mem[mem[64]] = 128
                _656 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _656:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_640 + 32] = (32 * _656) + 160
                _1233 = mem[(32 * arg3) + 128]
                mem[_640 + (32 * _656) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _640 + (32 * _656) + 192
                while idx < _1233:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_640 + 64] = (32 * _656) + (32 * _1233) + 192
                _1425 = mem[(64 * arg3) + 160]
                mem[_640 + (32 * _656) + (32 * _1233) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _640 + (32 * _656) + (32 * _1233) + 224
                while idx < _1425:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_640 + 96] = s
                return memory
                  from mem[64]
                   len _640 + (32 * _656) + (32 * _1233) + (32 * _1425) + -mem[64] + 224
            mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor6)
                staticcall stor6.allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= ext_call.return_data[0]:
                        _673 = mem[64]
                        mem[mem[64]] = 128
                        _705 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 160
                        while idx < _705:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _705) + 160
                        _1236 = mem[(32 * arg3) + 128]
                        mem[mem[64] + (32 * _705) + 160] = mem[(32 * arg3) + 128]
                        idx = 0
                        t = (32 * arg3) + 160
                        u = mem[64] + (32 * _705) + 192
                        while idx < _1236:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_673 + 64] = (32 * _705) + (32 * _1236) + 192
                        _1428 = mem[(64 * arg3) + 160]
                        mem[_673 + (32 * _705) + (32 * _1236) + 192] = mem[(64 * arg3) + 160]
                        idx = 0
                        t = (64 * arg3) + 192
                        u = _673 + (32 * _705) + (32 * _1236) + 224
                        while idx < _1428:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_673 + 96] = s
                        return memory
                          from mem[64]
                           len _673 + (32 * _705) + (32 * _1236) + (32 * _1428) + -mem[64] + 224
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(stor6)
                    staticcall stor6.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _803 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_803] == mem[_803 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_803 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1009] == mem[_1009 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_1009 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1153] == mem[_1153 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_1153 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _641 = mem[64]
                mem[mem[64]] = 128
                _657 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _657:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_641 + 32] = (32 * _657) + 160
                _1235 = mem[(32 * arg3) + 128]
                mem[_641 + (32 * _657) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _641 + (32 * _657) + 192
                while idx < _1235:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_641 + 64] = (32 * _657) + (32 * _1235) + 192
                _1427 = mem[(64 * arg3) + 160]
                mem[_641 + (32 * _657) + (32 * _1235) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _641 + (32 * _657) + (32 * _1235) + 224
                while idx < _1427:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_641 + 96] = s
                return memory
                  from mem[64]
                   len _641 + (32 * _657) + (32 * _1235) + (32 * _1427) + -mem[64] + 224
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor6)
            staticcall stor6.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _674 = mem[64]
                    mem[mem[64]] = 128
                    _706 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _706:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_674 + 32] = (32 * _706) + 160
                    _1238 = mem[(32 * arg3) + 128]
                    mem[_674 + (32 * _706) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = _674 + (32 * _706) + 192
                    while idx < _1238:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_674 + 64] = (32 * _706) + (32 * _1238) + 192
                    _1430 = mem[(64 * arg3) + 160]
                    mem[_674 + (32 * _706) + (32 * _1238) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _674 + (32 * _706) + (32 * _1238) + 224
                    while idx < _1430:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_674 + 96] = s
                    return memory
                      from mem[64]
                       len _674 + (32 * _706) + (32 * _1238) + (32 * _1430) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor6)
                staticcall stor6.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_805] == mem[_805 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_805 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1010] == mem[_1010 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1010 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1154] == mem[_1154 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1154 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _642 = mem[64]
            mem[mem[64]] = 128
            _658 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _658:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_642 + 32] = (32 * _658) + 160
            _1237 = mem[(32 * arg3) + 128]
            mem[_642 + (32 * _658) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _642 + (32 * _658) + 192
            while idx < _1237:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_642 + 64] = (32 * _658) + (32 * _1237) + 192
            _1429 = mem[(64 * arg3) + 160]
            mem[_642 + (32 * _658) + (32 * _1237) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _642 + (32 * _658) + (32 * _1237) + 224
            while idx < _1429:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_642 + 96] = s
            return memory
              from mem[64]
               len _642 + (32 * _658) + (32 * _1237) + (32 * _1429) + -mem[64] + 224
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg3) + 128] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor6)
                staticcall stor6.allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= ext_call.return_data[0]:
                        _675 = mem[64]
                        mem[mem[64]] = 128
                        _707 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 160
                        while idx < _707:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_675 + 32] = (32 * _707) + 160
                        _1240 = mem[(32 * arg3) + 128]
                        mem[_675 + (32 * _707) + 160] = mem[(32 * arg3) + 128]
                        idx = 0
                        t = (32 * arg3) + 160
                        u = _675 + (32 * _707) + 192
                        while idx < _1240:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_675 + 64] = (32 * _707) + (32 * _1240) + 192
                        _1432 = mem[(64 * arg3) + 160]
                        mem[_675 + (32 * _707) + (32 * _1240) + 192] = mem[(64 * arg3) + 160]
                        idx = 0
                        t = (64 * arg3) + 192
                        u = _675 + (32 * _707) + (32 * _1240) + 224
                        while idx < _1432:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_675 + 96] = s
                        return memory
                          from mem[64]
                           len _675 + (32 * _707) + (32 * _1240) + (32 * _1432) + -mem[64] + 224
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(stor6)
                    staticcall stor6.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _807 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_807] == mem[_807 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_807 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1011] == mem[_1011 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_1011 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1155] == mem[_1155 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_1155 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _643 = mem[64]
                mem[mem[64]] = 128
                _659 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _659:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_643 + 32] = (32 * _659) + 160
                _1239 = mem[(32 * arg3) + 128]
                mem[_643 + (32 * _659) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _643 + (32 * _659) + 192
                while idx < _1239:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_643 + 64] = (32 * _659) + (32 * _1239) + 192
                _1431 = mem[(64 * arg3) + 160]
                mem[_643 + (32 * _659) + (32 * _1239) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _643 + (32 * _659) + (32 * _1239) + 224
                while idx < _1431:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_643 + 96] = s
                return memory
                  from mem[64]
                   len _643 + (32 * _659) + (32 * _1239) + (32 * _1431) + -mem[64] + 224
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor6)
            staticcall stor6.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _676 = mem[64]
                    mem[mem[64]] = 128
                    _708 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _708:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_676 + 32] = (32 * _708) + 160
                    _1242 = mem[(32 * arg3) + 128]
                    mem[_676 + (32 * _708) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = _676 + (32 * _708) + 192
                    while idx < _1242:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_676 + 64] = (32 * _708) + (32 * _1242) + 192
                    _1434 = mem[(64 * arg3) + 160]
                    mem[_676 + (32 * _708) + (32 * _1242) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _676 + (32 * _708) + (32 * _1242) + 224
                    while idx < _1434:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_676 + 96] = s
                    return memory
                      from mem[64]
                       len _676 + (32 * _708) + (32 * _1242) + (32 * _1434) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor6)
                staticcall stor6.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _809 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_809] == mem[_809 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_809 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1012 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1012] == mem[_1012 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1012 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1156] == mem[_1156 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1156 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _644 = mem[64]
            mem[mem[64]] = 128
            _660 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _660:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_644 + 32] = (32 * _660) + 160
            _1241 = mem[(32 * arg3) + 128]
            mem[_644 + (32 * _660) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _644 + (32 * _660) + 192
            while idx < _1241:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_644 + 64] = (32 * _660) + (32 * _1241) + 192
            _1433 = mem[(64 * arg3) + 160]
            mem[_644 + (32 * _660) + (32 * _1241) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _644 + (32 * _660) + (32 * _1241) + 224
            while idx < _1433:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_644 + 96] = s
            return memory
              from mem[64]
               len _644 + (32 * _660) + (32 * _1241) + (32 * _1433) + -mem[64] + 224
        mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor6)
            staticcall stor6.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _677 = mem[64]
                    mem[mem[64]] = 128
                    _709 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _709:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _709) + 160
                    _1244 = mem[(32 * arg3) + 128]
                    mem[mem[64] + (32 * _709) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = mem[64] + (32 * _709) + 192
                    while idx < _1244:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_677 + 64] = (32 * _709) + (32 * _1244) + 192
                    _1436 = mem[(64 * arg3) + 160]
                    mem[_677 + (32 * _709) + (32 * _1244) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _677 + (32 * _709) + (32 * _1244) + 224
                    while idx < _1436:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_677 + 96] = s
                    return memory
                      from mem[64]
                       len _677 + (32 * _709) + (32 * _1244) + (32 * _1436) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor6)
                staticcall stor6.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _811 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_811] == mem[_811 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_811 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1013 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1013] == mem[_1013 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1013 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1157] == mem[_1157 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1157 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _645 = mem[64]
            mem[mem[64]] = 128
            _661 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _661:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_645 + 32] = (32 * _661) + 160
            _1243 = mem[(32 * arg3) + 128]
            mem[_645 + (32 * _661) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _645 + (32 * _661) + 192
            while idx < _1243:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_645 + 64] = (32 * _661) + (32 * _1243) + 192
            _1435 = mem[(64 * arg3) + 160]
            mem[_645 + (32 * _661) + (32 * _1243) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _645 + (32 * _661) + (32 * _1243) + 224
            while idx < _1435:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_645 + 96] = s
            return memory
              from mem[64]
               len _645 + (32 * _661) + (32 * _1243) + (32 * _1435) + -mem[64] + 224
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor6)
        staticcall stor6.allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= ext_call.return_data[0]:
                _678 = mem[64]
                mem[mem[64]] = 128
                _710 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _710:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _710) + 160
                _1246 = mem[(32 * arg3) + 128]
                mem[mem[64] + (32 * _710) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = mem[64] + (32 * _710) + 192
                while idx < _1246:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 64] = (32 * _710) + (32 * _1246) + 192
                _1438 = mem[(64 * arg3) + 160]
                mem[mem[64] + (32 * _710) + (32 * _1246) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = mem[64] + (32 * _710) + (32 * _1246) + 224
                while idx < _1438:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_678 + 96] = s
                return memory
                  from mem[64]
                   len _678 + (32 * _710) + (32 * _1246) + (32 * _1438) + -mem[64] + 224
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(stor6)
            staticcall stor6.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _813 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_813] == mem[_813 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_813 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1014 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1014] == mem[_1014 + 12 len 20]
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = mem[_1014 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1158] == mem[_1158 + 12 len 20]
            if idx >= mem[(64 * arg3) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (64 * arg3) + 192] = mem[_1158 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _646 = mem[64]
        mem[mem[64]] = 128
        _662 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 160
        while idx < _662:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 32] = (32 * _662) + 160
        _1245 = mem[(32 * arg3) + 128]
        mem[mem[64] + (32 * _662) + 160] = mem[(32 * arg3) + 128]
        idx = 0
        t = (32 * arg3) + 160
        u = mem[64] + (32 * _662) + 192
        while idx < _1245:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_646 + 64] = (32 * _662) + (32 * _1245) + 192
        _1437 = mem[(64 * arg3) + 160]
        mem[_646 + (32 * _662) + (32 * _1245) + 192] = mem[(64 * arg3) + 160]
        idx = 0
        t = (64 * arg3) + 192
        u = _646 + (32 * _662) + (32 * _1245) + 224
        while idx < _1437:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_646 + 96] = s
        return memory
          from mem[64]
           len _646 + (32 * _662) + (32 * _1245) + (32 * _1437) + -mem[64] + 224
    if not arg3:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg3) + 128] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor7)
                staticcall stor7.allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = 0
                while idx < arg3:
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    if arg2 + idx >= ext_call.return_data[0]:
                        _679 = mem[64]
                        mem[mem[64]] = 128
                        _711 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 160
                        while idx < _711:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _711) + 160
                        _1248 = mem[(32 * arg3) + 128]
                        mem[mem[64] + (32 * _711) + 160] = mem[(32 * arg3) + 128]
                        idx = 0
                        t = (32 * arg3) + 160
                        u = mem[64] + (32 * _711) + 192
                        while idx < _1248:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_679 + 64] = (32 * _711) + (32 * _1248) + 192
                        _1440 = mem[(64 * arg3) + 160]
                        mem[_679 + (32 * _711) + (32 * _1248) + 192] = mem[(64 * arg3) + 160]
                        idx = 0
                        t = (64 * arg3) + 192
                        u = _679 + (32 * _711) + (32 * _1248) + 224
                        while idx < _1440:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_679 + 96] = s
                        return memory
                          from mem[64]
                           len _679 + (32 * _711) + (32 * _1248) + (32 * _1440) + -mem[64] + 224
                    if arg2 > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg2 + idx
                    require ext_code.size(stor7)
                    staticcall stor7.allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args (arg2 + idx)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_815] == mem[_815 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_815 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1015] == mem[_1015 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_1015 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1159] == mem[_1159 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_1159 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _647 = mem[64]
                mem[mem[64]] = 128
                _663 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _663:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_647 + 32] = (32 * _663) + 160
                _1247 = mem[(32 * arg3) + 128]
                mem[_647 + (32 * _663) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _647 + (32 * _663) + 192
                while idx < _1247:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_647 + 64] = (32 * _663) + (32 * _1247) + 192
                _1439 = mem[(64 * arg3) + 160]
                mem[_647 + (32 * _663) + (32 * _1247) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _647 + (32 * _663) + (32 * _1247) + 224
                while idx < _1439:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_647 + 96] = s
                return memory
                  from mem[64]
                   len _647 + (32 * _663) + (32 * _1247) + (32 * _1439) + -mem[64] + 224
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor7)
            staticcall stor7.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _680 = mem[64]
                    mem[mem[64]] = 128
                    _712 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _712:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_680 + 32] = (32 * _712) + 160
                    _1250 = mem[(32 * arg3) + 128]
                    mem[_680 + (32 * _712) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = _680 + (32 * _712) + 192
                    while idx < _1250:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_680 + 64] = (32 * _712) + (32 * _1250) + 192
                    _1442 = mem[(64 * arg3) + 160]
                    mem[_680 + (32 * _712) + (32 * _1250) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _680 + (32 * _712) + (32 * _1250) + 224
                    while idx < _1442:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_680 + 96] = s
                    return memory
                      from mem[64]
                       len _680 + (32 * _712) + (32 * _1250) + (32 * _1442) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor7)
                staticcall stor7.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_817] == mem[_817 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_817 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1016 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1016] == mem[_1016 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1016 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1160] == mem[_1160 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1160 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _648 = mem[64]
            mem[mem[64]] = 128
            _664 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _664:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_648 + 32] = (32 * _664) + 160
            _1249 = mem[(32 * arg3) + 128]
            mem[_648 + (32 * _664) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _648 + (32 * _664) + 192
            while idx < _1249:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_648 + 64] = (32 * _664) + (32 * _1249) + 192
            _1441 = mem[(64 * arg3) + 160]
            mem[_648 + (32 * _664) + (32 * _1249) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _648 + (32 * _664) + (32 * _1249) + 224
            while idx < _1441:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_648 + 96] = s
            return memory
              from mem[64]
               len _648 + (32 * _664) + (32 * _1249) + (32 * _1441) + -mem[64] + 224
        mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor7)
            staticcall stor7.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _681 = mem[64]
                    mem[mem[64]] = 128
                    _713 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _713:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_681 + 32] = (32 * _713) + 160
                    _1252 = mem[(32 * arg3) + 128]
                    mem[_681 + (32 * _713) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = _681 + (32 * _713) + 192
                    while idx < _1252:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_681 + 64] = (32 * _713) + (32 * _1252) + 192
                    _1444 = mem[(64 * arg3) + 160]
                    mem[_681 + (32 * _713) + (32 * _1252) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _681 + (32 * _713) + (32 * _1252) + 224
                    while idx < _1444:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_681 + 96] = s
                    return memory
                      from mem[64]
                       len _681 + (32 * _713) + (32 * _1252) + (32 * _1444) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor7)
                staticcall stor7.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_819] == mem[_819 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_819 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1017 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1017] == mem[_1017 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1017 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1161] == mem[_1161 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1161 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _649 = mem[64]
            mem[mem[64]] = 128
            _665 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _665:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_649 + 32] = (32 * _665) + 160
            _1251 = mem[(32 * arg3) + 128]
            mem[_649 + (32 * _665) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _649 + (32 * _665) + 192
            while idx < _1251:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_649 + 64] = (32 * _665) + (32 * _1251) + 192
            _1443 = mem[(64 * arg3) + 160]
            mem[_649 + (32 * _665) + (32 * _1251) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _649 + (32 * _665) + (32 * _1251) + 224
            while idx < _1443:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_649 + 96] = s
            return memory
              from mem[64]
               len _649 + (32 * _665) + (32 * _1251) + (32 * _1443) + -mem[64] + 224
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor7)
        staticcall stor7.allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= ext_call.return_data[0]:
                _682 = mem[64]
                mem[mem[64]] = 128
                _714 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _714:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_682 + 32] = (32 * _714) + 160
                _1254 = mem[(32 * arg3) + 128]
                mem[_682 + (32 * _714) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _682 + (32 * _714) + 192
                while idx < _1254:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_682 + 64] = (32 * _714) + (32 * _1254) + 192
                _1446 = mem[(64 * arg3) + 160]
                mem[_682 + (32 * _714) + (32 * _1254) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _682 + (32 * _714) + (32 * _1254) + 224
                while idx < _1446:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_682 + 96] = s
                return memory
                  from mem[64]
                   len _682 + (32 * _714) + (32 * _1254) + (32 * _1446) + -mem[64] + 224
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(stor7)
            staticcall stor7.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_821] == mem[_821 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_821 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1018 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1018] == mem[_1018 + 12 len 20]
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = mem[_1018 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1162] == mem[_1162 + 12 len 20]
            if idx >= mem[(64 * arg3) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (64 * arg3) + 192] = mem[_1162 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _650 = mem[64]
        mem[mem[64]] = 128
        _666 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 160
        while idx < _666:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_650 + 32] = (32 * _666) + 160
        _1253 = mem[(32 * arg3) + 128]
        mem[_650 + (32 * _666) + 160] = mem[(32 * arg3) + 128]
        idx = 0
        t = (32 * arg3) + 160
        u = _650 + (32 * _666) + 192
        while idx < _1253:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_650 + 64] = (32 * _666) + (32 * _1253) + 192
        _1445 = mem[(64 * arg3) + 160]
        mem[_650 + (32 * _666) + (32 * _1253) + 192] = mem[(64 * arg3) + 160]
        idx = 0
        t = (64 * arg3) + 192
        u = _650 + (32 * _666) + (32 * _1253) + 224
        while idx < _1445:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_650 + 96] = s
        return memory
          from mem[64]
           len _650 + (32 * _666) + (32 * _1253) + (32 * _1445) + -mem[64] + 224
    mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg3) + 128] = arg3
    if not arg3:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor7)
            staticcall stor7.allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                if arg2 + idx >= ext_call.return_data[0]:
                    _683 = mem[64]
                    mem[mem[64]] = 128
                    _715 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    t = 128
                    u = mem[64] + 160
                    while idx < _715:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_683 + 32] = (32 * _715) + 160
                    _1256 = mem[(32 * arg3) + 128]
                    mem[_683 + (32 * _715) + 160] = mem[(32 * arg3) + 128]
                    idx = 0
                    t = (32 * arg3) + 160
                    u = _683 + (32 * _715) + 192
                    while idx < _1256:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_683 + 64] = (32 * _715) + (32 * _1256) + 192
                    _1448 = mem[(64 * arg3) + 160]
                    mem[_683 + (32 * _715) + (32 * _1256) + 192] = mem[(64 * arg3) + 160]
                    idx = 0
                    t = (64 * arg3) + 192
                    u = _683 + (32 * _715) + (32 * _1256) + 224
                    while idx < _1448:
                        mem[u] = mem[t + 12 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_683 + 96] = s
                    return memory
                      from mem[64]
                       len _683 + (32 * _715) + (32 * _1256) + (32 * _1448) + -mem[64] + 224
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(stor7)
                staticcall stor7.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_823] == mem[_823 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_823 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1019] == mem[_1019 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_1019 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1163] == mem[_1163 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_1163 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _651 = mem[64]
            mem[mem[64]] = 128
            _667 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _667:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_651 + 32] = (32 * _667) + 160
            _1255 = mem[(32 * arg3) + 128]
            mem[_651 + (32 * _667) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _651 + (32 * _667) + 192
            while idx < _1255:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_651 + 64] = (32 * _667) + (32 * _1255) + 192
            _1447 = mem[(64 * arg3) + 160]
            mem[_651 + (32 * _667) + (32 * _1255) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _651 + (32 * _667) + (32 * _1255) + 224
            while idx < _1447:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_651 + 96] = s
            return memory
              from mem[64]
               len _651 + (32 * _667) + (32 * _1255) + (32 * _1447) + -mem[64] + 224
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor7)
        staticcall stor7.allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= ext_call.return_data[0]:
                _684 = mem[64]
                mem[mem[64]] = 128
                _716 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _716:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_684 + 32] = (32 * _716) + 160
                _1258 = mem[(32 * arg3) + 128]
                mem[_684 + (32 * _716) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = _684 + (32 * _716) + 192
                while idx < _1258:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_684 + 64] = (32 * _716) + (32 * _1258) + 192
                _1450 = mem[(64 * arg3) + 160]
                mem[_684 + (32 * _716) + (32 * _1258) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _684 + (32 * _716) + (32 * _1258) + 224
                while idx < _1450:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_684 + 96] = s
                return memory
                  from mem[64]
                   len _684 + (32 * _716) + (32 * _1258) + (32 * _1450) + -mem[64] + 224
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(stor7)
            staticcall stor7.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_825] == mem[_825 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_825 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1020] == mem[_1020 + 12 len 20]
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = mem[_1020 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1164] == mem[_1164 + 12 len 20]
            if idx >= mem[(64 * arg3) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (64 * arg3) + 192] = mem[_1164 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _652 = mem[64]
        mem[mem[64]] = 128
        _668 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 160
        while idx < _668:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_652 + 32] = (32 * _668) + 160
        _1257 = mem[(32 * arg3) + 128]
        mem[_652 + (32 * _668) + 160] = mem[(32 * arg3) + 128]
        idx = 0
        t = (32 * arg3) + 160
        u = _652 + (32 * _668) + 192
        while idx < _1257:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_652 + 64] = (32 * _668) + (32 * _1257) + 192
        _1449 = mem[(64 * arg3) + 160]
        mem[_652 + (32 * _668) + (32 * _1257) + 192] = mem[(64 * arg3) + 160]
        idx = 0
        t = (64 * arg3) + 192
        u = _652 + (32 * _668) + (32 * _1257) + 224
        while idx < _1449:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_652 + 96] = s
        return memory
          from mem[64]
           len _652 + (32 * _668) + (32 * _1257) + (32 * _1449) + -mem[64] + 224
    mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[(64 * arg3) + 160] = arg3
    if not arg3:
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor7)
        staticcall stor7.allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            if arg2 + idx >= ext_call.return_data[0]:
                _685 = mem[64]
                mem[mem[64]] = 128
                _717 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 160
                while idx < _717:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _717) + 160
                _1260 = mem[(32 * arg3) + 128]
                mem[mem[64] + (32 * _717) + 160] = mem[(32 * arg3) + 128]
                idx = 0
                t = (32 * arg3) + 160
                u = mem[64] + (32 * _717) + 192
                while idx < _1260:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_685 + 64] = (32 * _717) + (32 * _1260) + 192
                _1452 = mem[(64 * arg3) + 160]
                mem[_685 + (32 * _717) + (32 * _1260) + 192] = mem[(64 * arg3) + 160]
                idx = 0
                t = (64 * arg3) + 192
                u = _685 + (32 * _717) + (32 * _1260) + 224
                while idx < _1452:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_685 + 96] = s
                return memory
                  from mem[64]
                   len _685 + (32 * _717) + (32 * _1260) + (32 * _1452) + -mem[64] + 224
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(stor7)
            staticcall stor7.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _827 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_827] == mem[_827 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_827 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1021 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1021] == mem[_1021 + 12 len 20]
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = mem[_1021 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1165] == mem[_1165 + 12 len 20]
            if idx >= mem[(64 * arg3) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (64 * arg3) + 192] = mem[_1165 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _653 = mem[64]
        mem[mem[64]] = 128
        _669 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 160
        while idx < _669:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 32] = (32 * _669) + 160
        _1259 = mem[(32 * arg3) + 128]
        mem[mem[64] + (32 * _669) + 160] = mem[(32 * arg3) + 128]
        idx = 0
        t = (32 * arg3) + 160
        u = mem[64] + (32 * _669) + 192
        while idx < _1259:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 64] = (32 * _669) + (32 * _1259) + 192
        _1451 = mem[(64 * arg3) + 160]
        mem[mem[64] + (32 * _669) + (32 * _1259) + 192] = mem[(64 * arg3) + 160]
        idx = 0
        t = (64 * arg3) + 192
        u = mem[64] + (32 * _669) + (32 * _1259) + 224
        while idx < _1451:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_653 + 96] = s
        return memory
          from mem[64]
           len _653 + (32 * _669) + (32 * _1259) + (32 * _1451) + -mem[64] + 224
    mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor7)
    staticcall stor7.allPairsLength() with:
            gas gas_remaining wei
           args mem[(98 * arg3) + 196 len 192 * arg3]
    mem[(98 * arg3) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < arg3:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        if arg2 + idx >= ext_call.return_data[0]:
            _686 = mem[64]
            mem[mem[64]] = 128
            _718 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 160
            while idx < _718:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_686 + 32] = (32 * _718) + 160
            _1262 = mem[(32 * arg3) + 128]
            mem[_686 + (32 * _718) + 160] = mem[(32 * arg3) + 128]
            idx = 0
            t = (32 * arg3) + 160
            u = _686 + (32 * _718) + 192
            while idx < _1262:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_686 + 64] = (32 * _718) + (32 * _1262) + 192
            _1454 = mem[(64 * arg3) + 160]
            mem[_686 + (32 * _718) + (32 * _1262) + 192] = mem[(64 * arg3) + 160]
            idx = 0
            t = (64 * arg3) + 192
            u = _686 + (32 * _718) + (32 * _1262) + 224
            while idx < _1454:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_686 + 96] = s
            return memory
              from mem[64]
               len _686 + (32 * _718) + (32 * _1262) + (32 * _1454) + -mem[64] + 224
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg2 + idx
        require ext_code.size(stor7)
        staticcall stor7.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _829 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_829] == mem[_829 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_829 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1022 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1022] == mem[_1022 + 12 len 20]
        if idx >= mem[(32 * arg3) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg3) + 160] = mem[_1022 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1166] == mem[_1166 + 12 len 20]
        if idx >= mem[(64 * arg3) + 160]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (64 * arg3) + 192] = mem[_1166 + 12 len 20]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _654 = mem[64]
    mem[mem[64]] = 128
    _670 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    t = 128
    u = mem[64] + 160
    while idx < _670:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[mem[64] + 32] = (32 * _670) + 160
    _1261 = mem[(32 * arg3) + 128]
    mem[mem[64] + (32 * _670) + 160] = mem[(32 * arg3) + 128]
    idx = 0
    t = (32 * arg3) + 160
    u = mem[64] + (32 * _670) + 192
    while idx < _1261:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[_654 + 64] = (32 * _670) + (32 * _1261) + 192
    _1453 = mem[(64 * arg3) + 160]
    mem[_654 + (32 * _670) + (32 * _1261) + 192] = mem[(64 * arg3) + 160]
    idx = 0
    t = (64 * arg3) + 192
    u = _654 + (32 * _670) + (32 * _1261) + 224
    while idx < _1453:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[_654 + 96] = s
    return memory
      from mem[64]
       len _654 + (32 * _670) + (32 * _1261) + (32 * _1453) + -mem[64] + 224
}

function sub_98702883(?) payable {
    require calldata.size - 4 >= 416
    require arg5 == Mask(112, 0, arg5)
    require arg6 == Mask(112, 0, arg6)
    require arg7 == Mask(112, 0, arg7)
    if Mask(112, 0, arg5) <= 0:
        revert with 0, 'require b, a, c > 0'
    if Mask(112, 0, arg7) <= 0:
        revert with 0, 'require b, a, c > 0'
    if Mask(112, 0, arg6) <= 0:
        revert with 0, 'require b, a, c > 0'
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require arg13 == bool(arg13)
    require arg9 == Mask(112, 0, arg9)
    if address(arg3) >= address(arg4):
        if not arg13:
            if Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, arg9):
                if Mask(112, 0, arg6) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, arg6) and 997 > -1 / Mask(112, 0, arg6):
                    revert with 'NH{q', 17
                if 997 * Mask(112, 0, arg6) / 997 != Mask(112, 0, arg6):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(112, 0, arg6)) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                        revert with 'NH{q', 18
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1:
                        revert with 'NH{q', 17
                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 > 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                        revert with 0, 'ds-math-sub-underflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg7) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                else:
                    if 997 * Mask(112, 0, arg6) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(112, 0, arg6):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(112, 0, arg6):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(112, 0, arg6)) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1:
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 > 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                        revert with 0, 'ds-math-sub-underflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg7) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
            else:
                require arg10 == Mask(112, 0, arg10)
                if Mask(112, 0, ext_call.return_data[0]) == Mask(112, 0, arg10):
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if Mask(112, 0, arg5) <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if Mask(112, 0, arg5) <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg5) <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) - Mask(112, 0, arg7) > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) - Mask(112, 0, arg7) < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if Mask(112, 0, arg5) <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg5) < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if Mask(112, 0, arg5) <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg5) < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                else:
                    if Mask(112, 0, arg6) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, arg6) and 997 > -1 / Mask(112, 0, arg6):
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, arg6) / 997 != Mask(112, 0, arg6):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(112, 0, arg6)) - 1:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                            revert with 'NH{q', 18
                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1:
                            revert with 'NH{q', 17
                        if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 > 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                            revert with 0, 'ds-math-sub-underflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg7) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg6) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if not Mask(112, 0, arg6):
                                    if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, arg6):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        if 997 * Mask(112, 0, arg6) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(112, 0, arg6):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(112, 0, arg6):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(112, 0, arg6)) - 1:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)) < 1:
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 > 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6)):
                            revert with 0, 'ds-math-sub-underflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg7) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg6) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if not Mask(112, 0, arg6):
                                    if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    if ext_call.return_data[50 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, arg6):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[50 len 14] * Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[18 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[18 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[50 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[18 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
        else:
            if Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, arg9):
                if Mask(112, 0, arg5) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'cacl out find zero'
                if not Mask(112, 0, arg5):
                    if Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                        revert with 'NH{q', 18
                    if 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                        revert with 0, 'ds-math-add-overflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                else:
                    if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, arg5) > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, arg5):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / Mask(112, 0, arg5) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / 1000 != Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                        revert with 'NH{q', 18
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) > -2:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                        revert with 0, 'ds-math-add-overflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
            else:
                require arg10 == Mask(112, 0, arg10)
                if Mask(112, 0, ext_call.return_data[0]) == Mask(112, 0, arg10):
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[50 len 14]:
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg6) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg6) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) - Mask(112, 0, arg6) > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) - Mask(112, 0, arg6) < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg6) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg6) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                else:
                    if Mask(112, 0, arg5) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if not Mask(112, 0, arg5):
                        if Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                            revert with 'NH{q', 18
                        if 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) > -2:
                            revert with 'NH{q', 17
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                            revert with 0, 'ds-math-add-overflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                                if Mask(112, 0, arg7) <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg7) < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg5) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) and Mask(112, 0, arg5) > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, arg5):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / Mask(112, 0, arg5) != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / 1000 != Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) < Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[0]) - Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                            revert with 'NH{q', 18
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)) > -2:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1 < 1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5)):
                            revert with 0, 'ds-math-add-overflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[50 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[18 len 14] == Mask(112, 0, arg12):
                                if Mask(112, 0, arg7) <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg7) < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg5) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    if 997 * Mask(112, 0, arg5) and ext_call.return_data[50 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * Mask(112, 0, arg5):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
    else:
        if not arg13:
            if Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, arg9):
                if Mask(112, 0, arg6) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, arg6) and 997 > -1 / Mask(112, 0, arg6):
                    revert with 'NH{q', 17
                if 997 * Mask(112, 0, arg6) / 997 != Mask(112, 0, arg6):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * Mask(112, 0, arg6)) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                        revert with 'NH{q', 18
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1:
                        revert with 'NH{q', 17
                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 > 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                        revert with 0, 'ds-math-sub-underflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg7) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                else:
                    if 997 * Mask(112, 0, arg6) and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * Mask(112, 0, arg6):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * Mask(112, 0, arg6):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * Mask(112, 0, arg6)) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1:
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 > 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                        revert with 0, 'ds-math-sub-underflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg7) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
            else:
                require arg10 == Mask(112, 0, arg10)
                if Mask(112, 0, ext_call.return_data[32]) == Mask(112, 0, arg10):
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg6) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if not Mask(112, 0, arg6):
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if Mask(112, 0, arg5) <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, arg6):
                                revert with 'NH{q', 18
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-sub-underflow'
                            if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                revert with 0, 'ds-math-mul-overflow'
                            if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 'NH{q', 18
                            if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                revert with 0, 'ds-math-add-overflow'
                            if Mask(112, 0, arg5) <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg5) <= Mask(112, 0, arg7):
                                revert with 0, 'require b - c >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg5) < Mask(112, 0, arg7):
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg5) - Mask(112, 0, arg7) > Mask(112, 0, arg5):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg5) - Mask(112, 0, arg7) < Mask(112, 0, arg8):
                                revert with 0, 'require b - c >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if Mask(112, 0, arg5) <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg5) < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg5) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if Mask(112, 0, arg5) <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg5) < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 > Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg5) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                else:
                    if Mask(112, 0, arg6) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, arg6) and 997 > -1 / Mask(112, 0, arg6):
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, arg6) / 997 != Mask(112, 0, arg6):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * Mask(112, 0, arg6)) - 1:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                            revert with 'NH{q', 18
                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1:
                            revert with 'NH{q', 17
                        if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 > 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                            revert with 0, 'ds-math-sub-underflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg7) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg6) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if not Mask(112, 0, arg6):
                                    if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, arg6):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                    else:
                        if 997 * Mask(112, 0, arg6) and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * Mask(112, 0, arg6):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * Mask(112, 0, arg6):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * Mask(112, 0, arg6)) - 1:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)) < 1:
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 > 997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6)):
                            revert with 0, 'ds-math-sub-underflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg6) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if not Mask(112, 0, arg6):
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                            else:
                                if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, arg6):
                                    revert with 'NH{q', 18
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 'NH{q', 18
                                if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                    revert with 0, 'ds-math-add-overflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= Mask(112, 0, arg7):
                                    revert with 0, 'require b - c >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < Mask(112, 0, arg7):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg7) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -Mask(112, 0, arg7) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require b - c >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg6) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if not Mask(112, 0, arg6):
                                    if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(0 / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                else:
                                    if ext_call.return_data[18 len 14] and Mask(112, 0, arg6) > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, arg6):
                                        revert with 'NH{q', 18
                                    if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / Mask(112, 0, arg6) != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] * Mask(112, 0, arg6) and 1000 > -1 / ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / 1000 != ext_call.return_data[18 len 14] * Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] < Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if ext_call.return_data[50 len 14] - Mask(112, 0, arg6) and 997 > -1 / ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 'NH{q', 17
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) / 997 != ext_call.return_data[50 len 14] - Mask(112, 0, arg6):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 'NH{q', 18
                                    if 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)) > -2:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1 < 1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6)):
                                        revert with 0, 'ds-math-add-overflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 <= (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 0, 'require b - c >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1 < (1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) + -(1000 * ext_call.return_data[18 len 14] * Mask(112, 0, arg6) / (997 * ext_call.return_data[50 len 14]) - (997 * Mask(112, 0, arg6))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require b - c >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), (997 * Mask(112, 0, arg6) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg6))) - 1, arg6 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg6) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg6))) + 1, bool(arg13)
        else:
            if Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, arg9):
                if Mask(112, 0, arg5) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'cacl out find zero'
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'cacl out find zero'
                if not Mask(112, 0, arg5):
                    if Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                        revert with 'NH{q', 18
                    if 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) > -2:
                        revert with 'NH{q', 17
                    if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                        revert with 0, 'ds-math-add-overflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                else:
                    if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, arg5) > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, arg5):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / Mask(112, 0, arg5) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / 1000 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-sub-underflow'
                    if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                        revert with 'NH{q', 17
                    if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                        revert with 0, 'ds-math-mul-overflow'
                    if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                        revert with 'NH{q', 18
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) > -2:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                        revert with 0, 'ds-math-add-overflow'
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
            else:
                require arg10 == Mask(112, 0, arg10)
                if Mask(112, 0, ext_call.return_data[32]) == Mask(112, 0, arg10):
                    require arg11 == Mask(112, 0, arg11)
                    if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                        if Mask(112, 0, arg5) <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'cacl out find zero'
                        if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[18 len 14]:
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg6) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                revert with 'NH{q', 17
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 'NH{q', 18
                            if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                revert with 'NH{q', 17
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if -Mask(112, 0, arg6) > 0:
                                revert with 0, 'ds-math-sub-underflow'
                            if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        require arg12 == Mask(112, 0, arg12)
                        if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                            if Mask(112, 0, arg7) <= Mask(112, 0, arg6):
                                revert with 0, 'require c - a >= p'
                            require arg8 == Mask(112, 0, arg8)
                            if Mask(112, 0, arg7) < Mask(112, 0, arg6):
                                revert with 'NH{q', 17
                            if Mask(112, 0, arg7) - Mask(112, 0, arg6) > Mask(112, 0, arg7):
                                revert with 0, 'ds-math-sub-underflow'
                            if Mask(112, 0, arg7) - Mask(112, 0, arg6) < Mask(112, 0, arg8):
                                revert with 0, 'require c - a >= p'
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require arg4 == address(arg4)
                            require arg13 == bool(arg13)
                            require arg4 == address(arg4)
                            require arg3 == address(arg3)
                            require arg1 == address(arg1)
                            require ext_code.size(address(arg1))
                            if address(arg3) >= address(arg4):
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                            else:
                                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, arg7 << 144, bool(arg13)
                        else:
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg6) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= Mask(112, 0, arg6):
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg6):
                                    revert with 'NH{q', 17
                                if -Mask(112, 0, arg6) > 0:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -Mask(112, 0, arg6) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, arg6 << 144, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                else:
                    if Mask(112, 0, arg5) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'cacl out find zero'
                    if not Mask(112, 0, arg5):
                        if Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                            revert with 'NH{q', 18
                        if 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) > -2:
                            revert with 'NH{q', 17
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                            revert with 0, 'ds-math-add-overflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                                if Mask(112, 0, arg7) <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg7) < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg7) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg5) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, arg5) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, arg5):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / Mask(112, 0, arg5) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / 1000 != Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if Mask(112, 0, ext_call.return_data[32]) < Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                            revert with 'NH{q', 17
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) / 997 != Mask(112, 0, ext_call.return_data[32]) - Mask(112, 0, arg5):
                            revert with 0, 'ds-math-mul-overflow'
                        if not (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                            revert with 'NH{q', 18
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)) > -2:
                            revert with 'NH{q', 17
                        if (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5)):
                            revert with 0, 'ds-math-add-overflow'
                        require arg11 == Mask(112, 0, arg11)
                        if ext_call.return_data[18 len 14] != Mask(112, 0, arg11):
                            if Mask(112, 0, arg5) <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'cacl out find zero'
                            if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                revert with 'NH{q', 17
                            if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                            else:
                                if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                    revert with 'NH{q', 17
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 'NH{q', 18
                                if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                    revert with 'NH{q', 17
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                        else:
                            require arg12 == Mask(112, 0, arg12)
                            if ext_call.return_data[50 len 14] == Mask(112, 0, arg12):
                                if Mask(112, 0, arg7) <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 0, 'require c - a >= p'
                                require arg8 == Mask(112, 0, arg8)
                                if Mask(112, 0, arg7) < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 > Mask(112, 0, arg7):
                                    revert with 0, 'ds-math-sub-underflow'
                                if Mask(112, 0, arg7) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 1 < Mask(112, 0, arg8):
                                    revert with 0, 'require c - a >= p'
                                require arg2 == address(arg2)
                                require arg3 == address(arg3)
                                require arg4 == address(arg4)
                                require arg13 == bool(arg13)
                                require arg4 == address(arg4)
                                require arg3 == address(arg3)
                                require arg1 == address(arg1)
                                require ext_code.size(address(arg1))
                                if address(arg3) >= address(arg4):
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                                else:
                                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, arg7 << 144, bool(arg13)
                            else:
                                if Mask(112, 0, arg5) <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'cacl out find zero'
                                if Mask(112, 0, arg5) and 997 > -1 / Mask(112, 0, arg5):
                                    revert with 'NH{q', 17
                                if 997 * Mask(112, 0, arg5) / 997 != Mask(112, 0, arg5):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (0 / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                else:
                                    if 997 * Mask(112, 0, arg5) and ext_call.return_data[18 len 14] > -1 / 997 * Mask(112, 0, arg5):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * Mask(112, 0, arg5):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * Mask(112, 0, arg5)) - 1:
                                        revert with 'NH{q', 17
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 'NH{q', 18
                                    if 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)) < 1:
                                        revert with 'NH{q', 17
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 > 997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5)):
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 <= (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 0, 'require c - a >= p'
                                    require arg8 == Mask(112, 0, arg8)
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) - 1 < (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1:
                                        revert with 'NH{q', 17
                                    if -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 > -1:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * Mask(112, 0, arg5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * Mask(112, 0, arg5))) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) - 2 < Mask(112, 0, arg8):
                                        revert with 0, 'require c - a >= p'
                                    require arg2 == address(arg2)
                                    require arg3 == address(arg3)
                                    require arg4 == address(arg4)
                                    require arg13 == bool(arg13)
                                    require arg4 == address(arg4)
                                    require arg3 == address(arg3)
                                    require arg1 == address(arg1)
                                    require ext_code.size(address(arg1))
                                    if address(arg3) >= address(arg4):
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args arg5 << 144, 0, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
                                    else:
                                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, arg5 << 144, address(this.address), 128, 224, address(arg2), address(arg3), address(arg4), arg5 << 144, (1000 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, arg5) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, arg5))) + 1, (997 * Mask(112, 0, arg5) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * Mask(112, 0, arg5))) - 1, bool(arg13)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
