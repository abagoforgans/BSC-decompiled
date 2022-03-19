contract main {




// =====================  Runtime code  =====================


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
                    mem[mem[64] + 128] = block.number
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[96]
                    _614 = mem[96]
                    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                    _1141 = mem[(32 * ext_call.return_data[0]) + 128]
                    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                    mem[mem[64] + 64] = (32 * _1141) + (32 * mem[96]) + 224
                    mem[(32 * _1141) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                    _1317 = mem[(64 * ext_call.return_data[0]) + 160]
                    mem[(32 * _1141) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                    mem[mem[64] + 96] = (32 * _1317) + (32 * _1141) + (32 * mem[96]) + 256
                    mem[(32 * _1317) + (32 * _1141) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                    _1445 = mem[(98 * ext_call.return_data[0]) + 192]
                    mem[(32 * _1317) + (32 * _1141) + (32 * _614) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                    return 160, 
                           mem[mem[64] + 32 len 96],
                           block.number,
                           mem[mem[64] + 160 len (32 * _1445) + (32 * _1317) + (32 * _1141) + (32 * _614) + 128]
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
                mem[mem[64] + 128] = block.number
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                _1144 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1144) + (32 * mem[96]) + 224
                mem[(32 * _1144) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                _1320 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1144) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[mem[64] + 96] = (32 * _1320) + (32 * _1144) + (32 * mem[96]) + 256
                mem[(32 * _1320) + (32 * _1144) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                _1448 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1320) + (32 * _1144) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1448) + (32 * _1320) + (32 * _1144) + (32 * mem[96]) + 96]), 
                       (32 * mem[96]) + 192,
                       (32 * _1144) + (32 * mem[96]) + 224,
                       (32 * _1320) + (32 * _1144) + (32 * mem[96]) + 256,
                       block.number
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
                mem[mem[64] + 128] = block.number
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                _1147 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1147) + (32 * mem[96]) + 224
                mem[(32 * _1147) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                _1323 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1147) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[mem[64] + 96] = (32 * _1323) + (32 * _1147) + (32 * mem[96]) + 256
                mem[(32 * _1323) + (32 * _1147) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                _1451 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1323) + (32 * _1147) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1451) + (32 * _1323) + (32 * _1147) + (32 * mem[96]) + 96]), 
                       (32 * mem[96]) + 192,
                       (32 * _1147) + (32 * mem[96]) + 224,
                       (32 * _1323) + (32 * _1147) + (32 * mem[96]) + 256,
                       block.number
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1150 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1150) + (32 * mem[96]) + 224
            mem[(32 * _1150) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1326 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1150) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1326) + (32 * _1150) + (32 * mem[96]) + 256
            mem[(32 * _1326) + (32 * _1150) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1454 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1326) + (32 * _1150) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1454) + (32 * _1326) + (32 * _1150) + (32 * mem[96]) + 96]), 
                   (32 * mem[96]) + 192,
                   (32 * _1150) + (32 * mem[96]) + 224,
                   (32 * _1326) + (32 * _1150) + (32 * mem[96]) + 256,
                   block.number
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
                mem[mem[64] + 128] = block.number
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                _1153 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1153) + (32 * mem[96]) + 224
                mem[(32 * _1153) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                _1329 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1153) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[mem[64] + 96] = (32 * _1329) + (32 * _1153) + (32 * mem[96]) + 256
                mem[(32 * _1329) + (32 * _1153) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                _1457 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1329) + (32 * _1153) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1457) + (32 * _1329) + (32 * _1153) + (32 * mem[96]) + 96]), 
                       (32 * mem[96]) + 192,
                       (32 * _1153) + (32 * mem[96]) + 224,
                       (32 * _1329) + (32 * _1153) + (32 * mem[96]) + 256,
                       block.number
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _629 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1156 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1156) + (32 * mem[96]) + 224
            mem[(32 * _1156) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1332 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1156) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1332) + (32 * _1156) + (32 * mem[96]) + 256
            mem[(32 * _1332) + (32 * _1156) + (32 * _629) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1460 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1332) + (32 * _1156) + (32 * _629) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return 160, 
                   mem[mem[64] + 32 len 96],
                   block.number,
                   mem[mem[64] + 160 len (32 * _1460) + (32 * _1332) + (32 * _1156) + (32 * _629) + 128]
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1159 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1159) + (32 * mem[96]) + 224
            mem[(32 * _1159) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1335 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1159) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1335) + (32 * _1159) + (32 * mem[96]) + 256
            mem[(32 * _1335) + (32 * _1159) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1463 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1335) + (32 * _1159) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1463) + (32 * _1335) + (32 * _1159) + (32 * mem[96]) + 96]), 
                   (32 * mem[96]) + 192,
                   (32 * _1159) + (32 * mem[96]) + 224,
                   (32 * _1335) + (32 * _1159) + (32 * mem[96]) + 256,
                   block.number
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
        mem[mem[64] + 128] = block.number
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _635 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
        _1162 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1162) + (32 * mem[96]) + 224
        mem[(32 * _1162) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _1338 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1162) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _1338) + (32 * _1162) + (32 * mem[96]) + 256
        mem[(32 * _1338) + (32 * _1162) + (32 * _635) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _1466 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1338) + (32 * _1162) + (32 * _635) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return 160, 
               mem[mem[64] + 32 len 96],
               block.number,
               mem[mem[64] + 160 len (32 * _1466) + (32 * _1338) + (32 * _1162) + (32 * _635) + 128]
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
                mem[mem[64] + 128] = block.number
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                _638 = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
                _1165 = mem[(32 * ext_call.return_data[0]) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
                mem[mem[64] + 64] = (32 * _1165) + (32 * mem[96]) + 224
                mem[(32 * _1165) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
                _1341 = mem[(64 * ext_call.return_data[0]) + 160]
                mem[(32 * _1165) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
                mem[mem[64] + 96] = (32 * _1341) + (32 * _1165) + (32 * mem[96]) + 256
                mem[(32 * _1341) + (32 * _1165) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
                _1469 = mem[(98 * ext_call.return_data[0]) + 192]
                mem[(32 * _1341) + (32 * _1165) + (32 * _638) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
                return 160, 
                       mem[mem[64] + 32 len 96],
                       block.number,
                       mem[mem[64] + 160 len (32 * _1469) + (32 * _1341) + (32 * _1165) + (32 * _638) + 128]
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _641 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1168 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1168) + (32 * mem[96]) + 224
            mem[(32 * _1168) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1344 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1168) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1344) + (32 * _1168) + (32 * mem[96]) + 256
            mem[(32 * _1344) + (32 * _1168) + (32 * _641) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1472 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1344) + (32 * _1168) + (32 * _641) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return 160, 
                   mem[mem[64] + 32 len 96],
                   block.number,
                   mem[mem[64] + 160 len (32 * _1472) + (32 * _1344) + (32 * _1168) + (32 * _641) + 128]
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _644 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1171 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1171) + (32 * mem[96]) + 224
            mem[(32 * _1171) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1347 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1171) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1347) + (32 * _1171) + (32 * mem[96]) + 256
            mem[(32 * _1347) + (32 * _1171) + (32 * _644) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1475 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1347) + (32 * _1171) + (32 * _644) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return 160, 
                   mem[mem[64] + 32 len 96],
                   block.number,
                   mem[mem[64] + 160 len (32 * _1475) + (32 * _1347) + (32 * _1171) + (32 * _644) + 128]
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
        mem[mem[64] + 128] = block.number
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
        _1174 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1174) + (32 * mem[96]) + 224
        mem[(32 * _1174) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _1350 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1174) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _1350) + (32 * _1174) + (32 * mem[96]) + 256
        mem[(32 * _1350) + (32 * _1174) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _1478 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1350) + (32 * _1174) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1478) + (32 * _1350) + (32 * _1174) + (32 * mem[96]) + 96]), 
               (32 * mem[96]) + 192,
               (32 * _1174) + (32 * mem[96]) + 224,
               (32 * _1350) + (32 * _1174) + (32 * mem[96]) + 256,
               block.number
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
            mem[mem[64] + 128] = block.number
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
            _1177 = mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
            mem[mem[64] + 64] = (32 * _1177) + (32 * mem[96]) + 224
            mem[(32 * _1177) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
            _1353 = mem[(64 * ext_call.return_data[0]) + 160]
            mem[(32 * _1177) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
            mem[mem[64] + 96] = (32 * _1353) + (32 * _1177) + (32 * mem[96]) + 256
            mem[(32 * _1353) + (32 * _1177) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
            _1481 = mem[(98 * ext_call.return_data[0]) + 192]
            mem[(32 * _1353) + (32 * _1177) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
            return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1481) + (32 * _1353) + (32 * _1177) + (32 * mem[96]) + 96]), 
                   (32 * mem[96]) + 192,
                   (32 * _1177) + (32 * mem[96]) + 224,
                   (32 * _1353) + (32 * _1177) + (32 * mem[96]) + 256,
                   block.number
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
        mem[mem[64] + 128] = block.number
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _653 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
        _1180 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1180) + (32 * mem[96]) + 224
        mem[(32 * _1180) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _1356 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1180) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _1356) + (32 * _1180) + (32 * mem[96]) + 256
        mem[(32 * _1356) + (32 * _1180) + (32 * _653) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _1484 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1356) + (32 * _1180) + (32 * _653) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return 160, 
               mem[mem[64] + 32 len 96],
               block.number,
               mem[mem[64] + 160 len (32 * _1484) + (32 * _1356) + (32 * _1180) + (32 * _653) + 128]
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
        mem[mem[64] + 128] = block.number
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _656 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
        _1183 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _1183) + (32 * mem[96]) + 224
        mem[(32 * _1183) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
        _1359 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _1183) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _1359) + (32 * _1183) + (32 * mem[96]) + 256
        mem[(32 * _1359) + (32 * _1183) + (32 * _656) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
        _1487 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _1359) + (32 * _1183) + (32 * _656) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return 160, 
               mem[mem[64] + 32 len 96],
               block.number,
               mem[mem[64] + 160 len (32 * _1487) + (32 * _1359) + (32 * _1183) + (32 * _656) + 128]
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
    mem[mem[64] + 128] = block.number
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * ext_call.return_data[0]) + 128]
    _1186 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _1186) + (32 * mem[96]) + 224
    mem[(32 * _1186) + (32 * mem[96]) + mem[64] + 224] = mem[(64 * ext_call.return_data[0]) + 160]
    _1362 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _1186) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 96] = (32 * _1362) + (32 * _1186) + (32 * mem[96]) + 256
    mem[(32 * _1362) + (32 * _1186) + (32 * mem[96]) + mem[64] + 256] = mem[(98 * ext_call.return_data[0]) + 192]
    _1490 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _1362) + (32 * _1186) + (32 * mem[96]) + mem[64] + 288 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return Array(len=mem[96], data=mem[mem[64] + 192 len (32 * _1490) + (32 * _1362) + (32 * _1186) + (32 * mem[96]) + 96]), 
           (32 * mem[96]) + 192,
           (32 * _1186) + (32 * mem[96]) + 224,
           (32 * _1362) + (32 * _1186) + (32 * mem[96]) + 256,
           block.number
}



}
