contract main {




// =====================  Runtime code  =====================


address sub_39cdbacdAddress;
address sub_fa4f418cAddress;

function sub_39cdbacd(?) payable {
    return sub_39cdbacdAddress
}

function sub_fa4f418c(?) payable {
    return sub_fa4f418cAddress
}

function _fallback() payable {
    revert
}

function sub_ca8a42c6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] <= test266151307()
                mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
                mem[64] = (131 * ext_call.return_data[0]) + 224
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg1)
                        staticcall arg1.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[(32 * ext_call.return_data[0]) + 128]
                        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(64 * ext_call.return_data[0]) + 160]
                        require idx < mem[(98 * ext_call.return_data[0]) + 192]
                        mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    _612 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[96]
                    _614 = mem[96]
                    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 160
                    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
                    _1141 = mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                    mem[mem[64] + 64] = (32 * _1141) + (32 * mem[96]) + 192
                    mem[(32 * _1141) + (32 * _614) + _612 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
                    _1317 = mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * _1141) + (32 * _614) + _612 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                    mem[_612 + 96] = (32 * _1317) + (32 * _1141) + (32 * _614) + 224
                    mem[(32 * _1317) + (32 * _1141) + (32 * _614) + _612 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
                    _1445 = mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * _1317) + (32 * _1141) + (32 * _614) + _612 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _1445) + (32 * _1317) + (32 * _1141) + (32 * _614) + _612 + -mem[64] + 256
                mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    require idx < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _615 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _617 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
                _1144 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1144) + (32 * mem[96]) + 192
                mem[(32 * _1144) + (32 * mem[96]) + _615 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
                _1320 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1144) + (32 * mem[96]) + _615 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[_615 + 96] = (32 * _1320) + (32 * _1144) + (32 * mem[96]) + 224
                mem[(32 * _1320) + (32 * _1144) + (32 * _617) + _615 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
                _1448 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1320) + (32 * _1144) + (32 * _617) + _615 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1448) + (32 * _1320) + (32 * _1144) + (32 * _617) + _615 + -mem[64] + 256
            mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            require ext_call.return_data[0] <= test266151307()
            mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    require idx < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _618 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _620 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
                _1147 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1147) + (32 * mem[96]) + 192
                mem[(32 * _1147) + (32 * _620) + _618 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
                _1323 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1147) + (32 * _620) + _618 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[_618 + 96] = (32 * _1323) + (32 * _1147) + (32 * _620) + 224
                mem[(32 * _1323) + (32 * _1147) + (32 * _620) + _618 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
                _1451 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1323) + (32 * _1147) + (32 * _620) + _618 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1451) + (32 * _1323) + (32 * _1147) + (32 * _620) + _618 + -mem[64] + 256
            mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _621 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _623 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1150 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1150) + (32 * mem[96]) + 192
            mem[(32 * _1150) + (32 * _623) + _621 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1326 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1150) + (32 * _623) + _621 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_621 + 96] = (32 * _1326) + (32 * _1150) + (32 * _623) + 224
            mem[(32 * _1326) + (32 * _1150) + (32 * _623) + _621 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1454 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1326) + (32 * _1150) + (32 * _623) + _621 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1454) + (32 * _1326) + (32 * _1150) + (32 * _623) + _621 + -mem[64] + 256
        mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    require idx < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _624 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _626 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
                _1153 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1153) + (32 * mem[96]) + 192
                mem[(32 * _1153) + (32 * _626) + _624 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
                _1329 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1153) + (32 * _626) + _624 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[_624 + 96] = (32 * _1329) + (32 * _1153) + (32 * _626) + 224
                mem[(32 * _1329) + (32 * _1153) + (32 * _626) + _624 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
                _1457 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1329) + (32 * _1153) + (32 * _626) + _624 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1457) + (32 * _1329) + (32 * _1153) + (32 * _626) + _624 + -mem[64] + 256
            mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _627 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _629 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1156 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1156) + (32 * mem[96]) + 192
            mem[(32 * _1156) + (32 * mem[96]) + _627 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1332 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1156) + (32 * mem[96]) + _627 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_627 + 96] = (32 * _1332) + (32 * _1156) + (32 * mem[96]) + 224
            mem[(32 * _1332) + (32 * _1156) + (32 * _629) + _627 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1460 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1332) + (32 * _1156) + (32 * _629) + _627 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1460) + (32 * _1332) + (32 * _1156) + (32 * _629) + _627 + -mem[64] + 256
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _630 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _632 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1159 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1159) + (32 * mem[96]) + 192
            mem[(32 * _1159) + (32 * _632) + _630 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1335 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1159) + (32 * _632) + _630 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_630 + 96] = (32 * _1335) + (32 * _1159) + (32 * _632) + 224
            mem[(32 * _1335) + (32 * _1159) + (32 * _632) + _630 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1463 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1335) + (32 * _1159) + (32 * _632) + _630 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1463) + (32 * _1335) + (32 * _1159) + (32 * _632) + _630 + -mem[64] + 256
        mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _633 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _635 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _1162 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1162) + (32 * mem[96]) + 192
        mem[(32 * _1162) + (32 * _635) + _633 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _1338 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1162) + (32 * _635) + _633 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[_633 + 96] = (32 * _1338) + (32 * _1162) + (32 * _635) + 224
        mem[(32 * _1338) + (32 * _1162) + (32 * _635) + _633 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _1466 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1338) + (32 * _1162) + (32 * _635) + _633 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _1466) + (32 * _1338) + (32 * _1162) + (32 * _635) + _633 + -mem[64] + 256
    mem[128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] <= test266151307()
            mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
            mem[64] = (131 * ext_call.return_data[0]) + 224
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg1)
                    staticcall arg1.allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ext_call.return_data[0]) + 160]
                    require idx < mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _636 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[96]
                _638 = mem[96]
                mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
                _1165 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1165) + (32 * mem[96]) + 192
                mem[(32 * _1165) + (32 * _638) + _636 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
                _1341 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1165) + (32 * _638) + _636 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[_636 + 96] = (32 * _1341) + (32 * _1165) + (32 * _638) + 224
                mem[(32 * _1341) + (32 * _1165) + (32 * _638) + _636 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
                _1469 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1341) + (32 * _1165) + (32 * _638) + _636 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return memory
                  from mem[64]
                   len (32 * _1469) + (32 * _1341) + (32 * _1165) + (32 * _638) + _636 + -mem[64] + 256
            mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _639 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _641 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1168 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1168) + (32 * mem[96]) + 192
            mem[(32 * _1168) + (32 * _641) + _639 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1344 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1168) + (32 * _641) + _639 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_639 + 96] = (32 * _1344) + (32 * _1168) + (32 * _641) + 224
            mem[(32 * _1344) + (32 * _1168) + (32 * _641) + _639 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1472 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1344) + (32 * _1168) + (32 * _641) + _639 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1472) + (32 * _1344) + (32 * _1168) + (32 * _641) + _639 + -mem[64] + 256
        mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        require ext_call.return_data[0] <= test266151307()
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _642 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _644 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1171 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1171) + (32 * mem[96]) + 192
            mem[(32 * _1171) + (32 * _644) + _642 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1347 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1171) + (32 * _644) + _642 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_642 + 96] = (32 * _1347) + (32 * _1171) + (32 * _644) + 224
            mem[(32 * _1347) + (32 * _1171) + (32 * _644) + _642 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1475 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1347) + (32 * _1171) + (32 * _644) + _642 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1475) + (32 * _1347) + (32 * _1171) + (32 * _644) + _642 + -mem[64] + 256
        mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _645 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _647 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _1174 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1174) + (32 * mem[96]) + 192
        mem[(32 * _1174) + (32 * mem[96]) + _645 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _1350 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1174) + (32 * mem[96]) + _645 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[_645 + 96] = (32 * _1350) + (32 * _1174) + (32 * mem[96]) + 224
        mem[(32 * _1350) + (32 * _1174) + (32 * _647) + _645 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _1478 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1350) + (32 * _1174) + (32 * _647) + _645 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _1478) + (32 * _1350) + (32 * _1174) + (32 * _647) + _645 + -mem[64] + 256
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] <= test266151307()
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (131 * ext_call.return_data[0]) + 224
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ext_call.return_data[0]) + 160]
                require idx < mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
                mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
            _648 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[96]
            _650 = mem[96]
            mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
            _1177 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1177) + (32 * mem[96]) + 192
            mem[(32 * _1177) + (32 * _650) + _648 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
            _1353 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1177) + (32 * _650) + _648 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[_648 + 96] = (32 * _1353) + (32 * _1177) + (32 * _650) + 224
            mem[(32 * _1353) + (32 * _1177) + (32 * _650) + _648 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
            _1481 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1353) + (32 * _1177) + (32 * _650) + _648 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return memory
              from mem[64]
               len (32 * _1481) + (32 * _1353) + (32 * _1177) + (32 * _650) + _648 + -mem[64] + 256
        mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _651 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _653 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _1180 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1180) + (32 * mem[96]) + 192
        mem[(32 * _1180) + (32 * _653) + _651 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _1356 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1180) + (32 * _653) + _651 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[_651 + 96] = (32 * _1356) + (32 * _1180) + (32 * _653) + 224
        mem[(32 * _1356) + (32 * _1180) + (32 * _653) + _651 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _1484 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1356) + (32 * _1180) + (32 * _653) + _651 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _1484) + (32 * _1356) + (32 * _1180) + (32 * _653) + _651 + -mem[64] + 256
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    require ext_call.return_data[0] <= test266151307()
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = (131 * ext_call.return_data[0]) + 224
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
            mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        _654 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _656 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _1183 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1183) + (32 * mem[96]) + 192
        mem[(32 * _1183) + (32 * _656) + _654 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _1359 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1183) + (32 * _656) + _654 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[_654 + 96] = (32 * _1359) + (32 * _1183) + (32 * _656) + 224
        mem[(32 * _1359) + (32 * _1183) + (32 * _656) + _654 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _1487 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1359) + (32 * _1183) + (32 * _656) + _654 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return memory
          from mem[64]
           len (32 * _1487) + (32 * _1359) + (32 * _1183) + (32 * _656) + _654 + -mem[64] + 256
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * idx) + (32 * ext_call.return_data[0]) + 160] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * idx) + (98 * ext_call.return_data[0]) + 224] = Mask(112, 0, ext_call.return_data[32])
        mem[(32 * idx) + (64 * ext_call.return_data[0]) + 192] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    _657 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _659 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
    _1186 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _1186) + (32 * mem[96]) + 192
    mem[(32 * _1186) + (32 * _659) + _657 + 192] = mem[(64 * ext_call.return_data[0]) + 160]
    _1362 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _1186) + (32 * _659) + _657 + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[_657 + 96] = (32 * _1362) + (32 * _1186) + (32 * _659) + 224
    mem[(32 * _1362) + (32 * _1186) + (32 * _659) + _657 + 224] = mem[(98 * ext_call.return_data[0]) + 192]
    _1490 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _1362) + (32 * _1186) + (32 * _659) + _657 + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return memory
      from mem[64]
       len (32 * _1490) + (32 * _1362) + (32 * _1186) + (32 * _659) + _657 + -mem[64] + 256
}



}
