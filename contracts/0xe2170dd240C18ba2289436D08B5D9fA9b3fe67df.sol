contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0828a02a(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _282 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_282] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (224 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _282 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 224
            _582 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_582] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_582 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_582 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_582 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_582 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_582 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_582 + 192] = cd[(v + 192)]
            mem[w] = _582
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[t] = _282
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    if address(cd[36]) == 4100:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _573 = mem[96]
        idx = 0
        while idx < _573:
            require idx < mem[96]
            if var209003 >= mem[mem[(32 * idx) + 128]]:
                if var209004 < var209004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2172 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2172] = 0
                mem[_2172 + 32] = 0
                mem[_2172 + 64] = 0
                mem[_2172 + 96] = 0
                mem[_2172 + 128] = 0
                mem[_2172 + 160] = 0
                mem[_2172 + 192] = 0
                require idx < mem[96]
                require var213002 < mem[mem[(32 * idx) + 128]]
                _2181 = mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]
                _2182 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 32]
                if var213002 <= 0:
                    _2185 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2185)
                    require ext_code.size(address(_2182))
                    staticcall address(_2182).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2185)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2196] == mem[_2196]
                    if mem[_2196] <= 0:
                        _2209 = mem[_2181 + 96]
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = _2209
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2209
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2229] == bool(mem[_2229])
                        if mem[_2181 + 192] == 1:
                            _2259 = mem[_2181]
                            _2261 = mem[_2181 + 96]
                            _2262 = mem[_2181 + 64]
                            _2263 = mem[_2181 + 128]
                            _2264 = mem[_2181 + 160]
                            mem[mem[64] + 4] = mem[_2181 + 44 len 20]
                            mem[mem[64] + 36] = _2261
                            mem[mem[64] + 68] = address(_2262)
                            mem[mem[64] + 100] = _2263
                            mem[mem[64] + 132] = _2264
                            require ext_code.size(address(_2259))
                            call address(_2259).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2261, address(_2262), _2263, _2264
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2397 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2397] == mem[_2397]
                            require mem[_2397 + 32] == mem[_2397 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2397]
                                continue 
                            if mem[_2397] < mem[_2397]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2181 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2276 = mem[_2181]
                                _2290 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2290]
                                mem[_2290 + 32] = address(cd[36])
                                require 1 < mem[_2290]
                                mem[_2290 + 64] = address(cd[68])
                                _2325 = mem[_2181 + 96]
                                _2326 = mem[_2181 + 128]
                                mem[_2290 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2290 + 100] = _2325
                                mem[_2290 + 132] = _2326
                                mem[_2290 + 164] = 160
                                mem[_2290 + 260] = mem[_2290]
                                s = 0
                                t = _2290 + 32
                                u = _2290 + 292
                                while s < mem[_2290]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2290 + 196] = this.address
                                mem[_2290 + 228] = cd[164]
                                require ext_code.size(address(_2276))
                                call address(_2276).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2290 + (32 * mem[_2290]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2651 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2659 = mem[_2651]
                                require mem[_2651] <= test266151307()
                                require _2651 + mem[_2651] + 31 < _2651 + return_data.size
                                _2667 = mem[_2651 + mem[_2651]]
                                require mem[_2651 + mem[_2651]] <= test266151307()
                                require _2651 + ceil32(return_data.size) + (32 * mem[_2651 + mem[_2651]]) + 32 <= test266151307() and (32 * mem[_2651 + mem[_2651]]) + 32 >= 0
                                mem[64] = _2651 + ceil32(return_data.size) + (32 * mem[_2651 + mem[_2651]]) + 32
                                mem[_2651 + ceil32(return_data.size)] = _2667
                                require _2659 + (32 * _2667) + 32 <= return_data.size
                                s = 0
                                t = _2651 + _2659 + 32
                                u = _2651 + ceil32(return_data.size) + 32
                                while s < _2667:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2667
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2651 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2651 + ceil32(return_data.size) + 64] < mem[_2651 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2236] == bool(mem[_2236])
                        _2292 = mem[_2181 + 96]
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = _2292
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2292
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2348] == bool(mem[_2348])
                        if mem[_2181 + 192] == 1:
                            _2378 = mem[_2181]
                            _2380 = mem[_2181 + 96]
                            _2381 = mem[_2181 + 64]
                            _2382 = mem[_2181 + 128]
                            _2383 = mem[_2181 + 160]
                            mem[mem[64] + 4] = mem[_2181 + 44 len 20]
                            mem[mem[64] + 36] = _2380
                            mem[mem[64] + 68] = address(_2381)
                            mem[mem[64] + 100] = _2382
                            mem[mem[64] + 132] = _2383
                            require ext_code.size(address(_2378))
                            call address(_2378).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2380, address(_2381), _2382, _2383
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2521] == mem[_2521]
                            require mem[_2521 + 32] == mem[_2521 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2521]
                                continue 
                            if mem[_2521] < mem[_2521]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2181 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2398 = mem[_2181]
                                _2410 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2410]
                                mem[_2410 + 32] = address(cd[36])
                                require 1 < mem[_2410]
                                mem[_2410 + 64] = address(cd[68])
                                _2441 = mem[_2181 + 96]
                                _2442 = mem[_2181 + 128]
                                mem[_2410 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2410 + 100] = _2441
                                mem[_2410 + 132] = _2442
                                mem[_2410 + 164] = 160
                                mem[_2410 + 260] = mem[_2410]
                                s = 0
                                t = _2410 + 32
                                u = _2410 + 292
                                while s < mem[_2410]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2410 + 196] = this.address
                                mem[_2410 + 228] = cd[164]
                                require ext_code.size(address(_2398))
                                call address(_2398).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2410 + (32 * mem[_2410]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2652 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2660 = mem[_2652]
                                require mem[_2652] <= test266151307()
                                require _2652 + mem[_2652] + 31 < _2652 + return_data.size
                                _2668 = mem[_2652 + mem[_2652]]
                                require mem[_2652 + mem[_2652]] <= test266151307()
                                require _2652 + ceil32(return_data.size) + (32 * mem[_2652 + mem[_2652]]) + 32 <= test266151307() and (32 * mem[_2652 + mem[_2652]]) + 32 >= 0
                                mem[64] = _2652 + ceil32(return_data.size) + (32 * mem[_2652 + mem[_2652]]) + 32
                                mem[_2652 + ceil32(return_data.size)] = _2668
                                require _2660 + (32 * _2668) + 32 <= return_data.size
                                s = 0
                                t = _2652 + _2660 + 32
                                u = _2652 + ceil32(return_data.size) + 32
                                while s < _2668:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2668
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2652 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2652 + ceil32(return_data.size) + 64] < mem[_2652 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 96] = var213003
                    _2189 = mem[_2181]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2189)
                    require ext_code.size(address(_2182))
                    staticcall address(_2182).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2189)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2198] == mem[_2198]
                    if mem[_2198] <= 0:
                        _2219 = mem[_2181 + 96]
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = _2219
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2219
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2233] == bool(mem[_2233])
                        if mem[_2181 + 192] == 1:
                            _2278 = mem[_2181]
                            _2280 = mem[_2181 + 96]
                            _2281 = mem[_2181 + 64]
                            _2282 = mem[_2181 + 128]
                            _2283 = mem[_2181 + 160]
                            mem[mem[64] + 4] = mem[_2181 + 44 len 20]
                            mem[mem[64] + 36] = _2280
                            mem[mem[64] + 68] = address(_2281)
                            mem[mem[64] + 100] = _2282
                            mem[mem[64] + 132] = _2283
                            require ext_code.size(address(_2278))
                            call address(_2278).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2280, address(_2281), _2282, _2283
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2411] == mem[_2411]
                            require mem[_2411 + 32] == mem[_2411 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2411]
                                continue 
                            if mem[_2411] < mem[_2411]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2181 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2294 = mem[_2181]
                                _2301 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2301]
                                mem[_2301 + 32] = address(cd[36])
                                require 1 < mem[_2301]
                                mem[_2301 + 64] = address(cd[68])
                                _2334 = mem[_2181 + 96]
                                _2335 = mem[_2181 + 128]
                                mem[_2301 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2301 + 100] = _2334
                                mem[_2301 + 132] = _2335
                                mem[_2301 + 164] = 160
                                mem[_2301 + 260] = mem[_2301]
                                s = 0
                                t = _2301 + 32
                                u = _2301 + 292
                                while s < mem[_2301]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2301 + 196] = this.address
                                mem[_2301 + 228] = cd[164]
                                require ext_code.size(address(_2294))
                                call address(_2294).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2301 + (32 * mem[_2301]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2653 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2661 = mem[_2653]
                                require mem[_2653] <= test266151307()
                                require _2653 + mem[_2653] + 31 < _2653 + return_data.size
                                _2669 = mem[_2653 + mem[_2653]]
                                require mem[_2653 + mem[_2653]] <= test266151307()
                                require _2653 + ceil32(return_data.size) + (32 * mem[_2653 + mem[_2653]]) + 32 <= test266151307() and (32 * mem[_2653 + mem[_2653]]) + 32 >= 0
                                mem[64] = _2653 + ceil32(return_data.size) + (32 * mem[_2653 + mem[_2653]]) + 32
                                mem[_2653 + ceil32(return_data.size)] = _2669
                                require _2661 + (32 * _2669) + 32 <= return_data.size
                                s = 0
                                t = _2653 + _2661 + 32
                                u = _2653 + ceil32(return_data.size) + 32
                                while s < _2669:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2669
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2653 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2653 + ceil32(return_data.size) + 64] < mem[_2653 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2240] == bool(mem[_2240])
                        _2303 = mem[_2181 + 96]
                        mem[mem[64] + 4] = mem[_2181 + 12 len 20]
                        mem[mem[64] + 36] = _2303
                        require ext_code.size(address(_2182))
                        call address(_2182).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2303
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2352 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2352] == bool(mem[_2352])
                        if mem[_2181 + 192] == 1:
                            _2400 = mem[_2181]
                            _2402 = mem[_2181 + 96]
                            _2403 = mem[_2181 + 64]
                            _2404 = mem[_2181 + 128]
                            _2405 = mem[_2181 + 160]
                            mem[mem[64] + 4] = mem[_2181 + 44 len 20]
                            mem[mem[64] + 36] = _2402
                            mem[mem[64] + 68] = address(_2403)
                            mem[mem[64] + 100] = _2404
                            mem[mem[64] + 132] = _2405
                            require ext_code.size(address(_2400))
                            call address(_2400).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2402, address(_2403), _2404, _2405
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2526] == mem[_2526]
                            require mem[_2526 + 32] == mem[_2526 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2526]
                                continue 
                            if mem[_2526] < mem[_2526]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2181 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2412 = mem[_2181]
                                _2416 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2416]
                                mem[_2416 + 32] = address(cd[36])
                                require 1 < mem[_2416]
                                mem[_2416 + 64] = address(cd[68])
                                _2450 = mem[_2181 + 96]
                                _2451 = mem[_2181 + 128]
                                mem[_2416 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2416 + 100] = _2450
                                mem[_2416 + 132] = _2451
                                mem[_2416 + 164] = 160
                                mem[_2416 + 260] = mem[_2416]
                                s = 0
                                t = _2416 + 32
                                u = _2416 + 292
                                while s < mem[_2416]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2416 + 196] = this.address
                                mem[_2416 + 228] = cd[164]
                                require ext_code.size(address(_2412))
                                call address(_2412).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2416 + (32 * mem[_2416]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2654 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2662 = mem[_2654]
                                require mem[_2654] <= test266151307()
                                require _2654 + mem[_2654] + 31 < _2654 + return_data.size
                                _2670 = mem[_2654 + mem[_2654]]
                                require mem[_2654 + mem[_2654]] <= test266151307()
                                require _2654 + ceil32(return_data.size) + (32 * mem[_2654 + mem[_2654]]) + 32 <= test266151307() and (32 * mem[_2654 + mem[_2654]]) + 32 >= 0
                                mem[64] = _2654 + ceil32(return_data.size) + (32 * mem[_2654 + mem[_2654]]) + 32
                                mem[_2654 + ceil32(return_data.size)] = _2670
                                require _2662 + (32 * _2670) + 32 <= return_data.size
                                s = 0
                                t = _2654 + _2662 + 32
                                u = _2654 + ceil32(return_data.size) + 32
                                while s < _2670:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2670
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2654 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2654 + ceil32(return_data.size) + 64] < mem[_2654 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 < cd[132]:
            revert with 0, 'ERR_LIMIT_OUT'
        mem[mem[64] + 4] = this.address
        if address(cd[36]) != 4100:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _611 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _616 = mem[_611]
            require mem[_611] == mem[_611]
            if mem[_611]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_611]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_611] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _616
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _616
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_690] == bool(mem[_690])
                    if not mem[_690]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _612 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _617 = mem[_612]
            require mem[_612] == mem[_612]
            if mem[_612]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_612] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _617
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _617
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_691] == bool(mem[_691])
                    if not mem[_691]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _306 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_306] == bool(mem[_306])
        if not mem[_306]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _572 = mem[96]
        idx = 0
        while idx < _572:
            require idx < mem[96]
            if var242003 >= mem[mem[(32 * idx) + 128]]:
                if var242004 < var242004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2171 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2171] = 0
                mem[_2171 + 32] = 0
                mem[_2171 + 64] = 0
                mem[_2171 + 96] = 0
                mem[_2171 + 128] = 0
                mem[_2171 + 160] = 0
                mem[_2171 + 192] = 0
                require idx < mem[96]
                require var246002 < mem[mem[(32 * idx) + 128]]
                _2179 = mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]
                _2180 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 32]
                if var246002 <= 0:
                    _2183 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2183)
                    require ext_code.size(address(_2180))
                    staticcall address(_2180).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2183)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2195] == mem[_2195]
                    if mem[_2195] <= 0:
                        _2204 = mem[_2179 + 96]
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = _2204
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2204
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2227] == bool(mem[_2227])
                        if mem[_2179 + 192] == 1:
                            _2250 = mem[_2179]
                            _2252 = mem[_2179 + 96]
                            _2253 = mem[_2179 + 64]
                            _2254 = mem[_2179 + 128]
                            _2255 = mem[_2179 + 160]
                            mem[mem[64] + 4] = mem[_2179 + 44 len 20]
                            mem[mem[64] + 36] = _2252
                            mem[mem[64] + 68] = address(_2253)
                            mem[mem[64] + 100] = _2254
                            mem[mem[64] + 132] = _2255
                            require ext_code.size(address(_2250))
                            call address(_2250).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2252, address(_2253), _2254, _2255
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2387] == mem[_2387]
                            require mem[_2387 + 32] == mem[_2387 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2387]
                                continue 
                            if mem[_2387] < mem[_2387]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2179 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2267 = mem[_2179]
                                _2285 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2285]
                                mem[_2285 + 32] = address(cd[36])
                                require 1 < mem[_2285]
                                mem[_2285 + 64] = address(cd[68])
                                _2321 = mem[_2179 + 96]
                                _2322 = mem[_2179 + 128]
                                mem[_2285 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2285 + 100] = _2321
                                mem[_2285 + 132] = _2322
                                mem[_2285 + 164] = 160
                                mem[_2285 + 260] = mem[_2285]
                                s = 0
                                t = _2285 + 32
                                u = _2285 + 292
                                while s < mem[_2285]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2285 + 196] = this.address
                                mem[_2285 + 228] = cd[164]
                                require ext_code.size(address(_2267))
                                call address(_2267).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2285 + (32 * mem[_2285]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2647 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2655 = mem[_2647]
                                require mem[_2647] <= test266151307()
                                require _2647 + mem[_2647] + 31 < _2647 + return_data.size
                                _2663 = mem[_2647 + mem[_2647]]
                                require mem[_2647 + mem[_2647]] <= test266151307()
                                require _2647 + ceil32(return_data.size) + (32 * mem[_2647 + mem[_2647]]) + 32 <= test266151307() and (32 * mem[_2647 + mem[_2647]]) + 32 >= 0
                                mem[64] = _2647 + ceil32(return_data.size) + (32 * mem[_2647 + mem[_2647]]) + 32
                                mem[_2647 + ceil32(return_data.size)] = _2663
                                require _2655 + (32 * _2663) + 32 <= return_data.size
                                s = 0
                                t = _2647 + _2655 + 32
                                u = _2647 + ceil32(return_data.size) + 32
                                while s < _2663:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2663
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2647 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2647 + ceil32(return_data.size) + 64] < mem[_2647 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2235] == bool(mem[_2235])
                        _2287 = mem[_2179 + 96]
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = _2287
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2287
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2347] == bool(mem[_2347])
                        if mem[_2179 + 192] == 1:
                            _2368 = mem[_2179]
                            _2370 = mem[_2179 + 96]
                            _2371 = mem[_2179 + 64]
                            _2372 = mem[_2179 + 128]
                            _2373 = mem[_2179 + 160]
                            mem[mem[64] + 4] = mem[_2179 + 44 len 20]
                            mem[mem[64] + 36] = _2370
                            mem[mem[64] + 68] = address(_2371)
                            mem[mem[64] + 100] = _2372
                            mem[mem[64] + 132] = _2373
                            require ext_code.size(address(_2368))
                            call address(_2368).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2370, address(_2371), _2372, _2373
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2518] == mem[_2518]
                            require mem[_2518 + 32] == mem[_2518 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2518]
                                continue 
                            if mem[_2518] < mem[_2518]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2179 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2388 = mem[_2179]
                                _2407 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2407]
                                mem[_2407 + 32] = address(cd[36])
                                require 1 < mem[_2407]
                                mem[_2407 + 64] = address(cd[68])
                                _2437 = mem[_2179 + 96]
                                _2438 = mem[_2179 + 128]
                                mem[_2407 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2407 + 100] = _2437
                                mem[_2407 + 132] = _2438
                                mem[_2407 + 164] = 160
                                mem[_2407 + 260] = mem[_2407]
                                s = 0
                                t = _2407 + 32
                                u = _2407 + 292
                                while s < mem[_2407]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2407 + 196] = this.address
                                mem[_2407 + 228] = cd[164]
                                require ext_code.size(address(_2388))
                                call address(_2388).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2407 + (32 * mem[_2407]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2648 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2656 = mem[_2648]
                                require mem[_2648] <= test266151307()
                                require _2648 + mem[_2648] + 31 < _2648 + return_data.size
                                _2664 = mem[_2648 + mem[_2648]]
                                require mem[_2648 + mem[_2648]] <= test266151307()
                                require _2648 + ceil32(return_data.size) + (32 * mem[_2648 + mem[_2648]]) + 32 <= test266151307() and (32 * mem[_2648 + mem[_2648]]) + 32 >= 0
                                mem[64] = _2648 + ceil32(return_data.size) + (32 * mem[_2648 + mem[_2648]]) + 32
                                mem[_2648 + ceil32(return_data.size)] = _2664
                                require _2656 + (32 * _2664) + 32 <= return_data.size
                                s = 0
                                t = _2648 + _2656 + 32
                                u = _2648 + ceil32(return_data.size) + 32
                                while s < _2664:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2664
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2648 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2648 + ceil32(return_data.size) + 64] < mem[_2648 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 96] = var246003
                    _2187 = mem[_2179]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2187)
                    require ext_code.size(address(_2180))
                    staticcall address(_2180).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2197] == mem[_2197]
                    if mem[_2197] <= 0:
                        _2214 = mem[_2179 + 96]
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = _2214
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2214
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2231] == bool(mem[_2231])
                        if mem[_2179 + 192] == 1:
                            _2269 = mem[_2179]
                            _2271 = mem[_2179 + 96]
                            _2272 = mem[_2179 + 64]
                            _2273 = mem[_2179 + 128]
                            _2274 = mem[_2179 + 160]
                            mem[mem[64] + 4] = mem[_2179 + 44 len 20]
                            mem[mem[64] + 36] = _2271
                            mem[mem[64] + 68] = address(_2272)
                            mem[mem[64] + 100] = _2273
                            mem[mem[64] + 132] = _2274
                            require ext_code.size(address(_2269))
                            call address(_2269).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2271, address(_2272), _2273, _2274
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2408] == mem[_2408]
                            require mem[_2408 + 32] == mem[_2408 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2408]
                                continue 
                            if mem[_2408] < mem[_2408]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2179 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2289 = mem[_2179]
                                _2296 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2296]
                                mem[_2296 + 32] = address(cd[36])
                                require 1 < mem[_2296]
                                mem[_2296 + 64] = address(cd[68])
                                _2330 = mem[_2179 + 96]
                                _2331 = mem[_2179 + 128]
                                mem[_2296 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2296 + 100] = _2330
                                mem[_2296 + 132] = _2331
                                mem[_2296 + 164] = 160
                                mem[_2296 + 260] = mem[_2296]
                                s = 0
                                t = _2296 + 32
                                u = _2296 + 292
                                while s < mem[_2296]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2296 + 196] = this.address
                                mem[_2296 + 228] = cd[164]
                                require ext_code.size(address(_2289))
                                call address(_2289).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2296 + (32 * mem[_2296]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2649 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2657 = mem[_2649]
                                require mem[_2649] <= test266151307()
                                require _2649 + mem[_2649] + 31 < _2649 + return_data.size
                                _2665 = mem[_2649 + mem[_2649]]
                                require mem[_2649 + mem[_2649]] <= test266151307()
                                require _2649 + ceil32(return_data.size) + (32 * mem[_2649 + mem[_2649]]) + 32 <= test266151307() and (32 * mem[_2649 + mem[_2649]]) + 32 >= 0
                                mem[64] = _2649 + ceil32(return_data.size) + (32 * mem[_2649 + mem[_2649]]) + 32
                                mem[_2649 + ceil32(return_data.size)] = _2665
                                require _2657 + (32 * _2665) + 32 <= return_data.size
                                s = 0
                                t = _2649 + _2657 + 32
                                u = _2649 + ceil32(return_data.size) + 32
                                while s < _2665:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2665
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2649 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2649 + ceil32(return_data.size) + 64] < mem[_2649 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2238] == bool(mem[_2238])
                        _2298 = mem[_2179 + 96]
                        mem[mem[64] + 4] = mem[_2179 + 12 len 20]
                        mem[mem[64] + 36] = _2298
                        require ext_code.size(address(_2180))
                        call address(_2180).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2298
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2350 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2350] == bool(mem[_2350])
                        if mem[_2179 + 192] == 1:
                            _2390 = mem[_2179]
                            _2392 = mem[_2179 + 96]
                            _2393 = mem[_2179 + 64]
                            _2394 = mem[_2179 + 128]
                            _2395 = mem[_2179 + 160]
                            mem[mem[64] + 4] = mem[_2179 + 44 len 20]
                            mem[mem[64] + 36] = _2392
                            mem[mem[64] + 68] = address(_2393)
                            mem[mem[64] + 100] = _2394
                            mem[mem[64] + 132] = _2395
                            require ext_code.size(address(_2390))
                            call address(_2390).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2392, address(_2393), _2394, _2395
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2524] == mem[_2524]
                            require mem[_2524 + 32] == mem[_2524 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2524]
                                continue 
                            if mem[_2524] < mem[_2524]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2179 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2409 = mem[_2179]
                                _2414 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2414]
                                mem[_2414 + 32] = address(cd[36])
                                require 1 < mem[_2414]
                                mem[_2414 + 64] = address(cd[68])
                                _2446 = mem[_2179 + 96]
                                _2447 = mem[_2179 + 128]
                                mem[_2414 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2414 + 100] = _2446
                                mem[_2414 + 132] = _2447
                                mem[_2414 + 164] = 160
                                mem[_2414 + 260] = mem[_2414]
                                s = 0
                                t = _2414 + 32
                                u = _2414 + 292
                                while s < mem[_2414]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2414 + 196] = this.address
                                mem[_2414 + 228] = cd[164]
                                require ext_code.size(address(_2409))
                                call address(_2409).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2414 + (32 * mem[_2414]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2650 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2658 = mem[_2650]
                                require mem[_2650] <= test266151307()
                                require _2650 + mem[_2650] + 31 < _2650 + return_data.size
                                _2666 = mem[_2650 + mem[_2650]]
                                require mem[_2650 + mem[_2650]] <= test266151307()
                                require _2650 + ceil32(return_data.size) + (32 * mem[_2650 + mem[_2650]]) + 32 <= test266151307() and (32 * mem[_2650 + mem[_2650]]) + 32 >= 0
                                mem[64] = _2650 + ceil32(return_data.size) + (32 * mem[_2650 + mem[_2650]]) + 32
                                mem[_2650 + ceil32(return_data.size)] = _2666
                                require _2658 + (32 * _2666) + 32 <= return_data.size
                                s = 0
                                t = _2650 + _2658 + 32
                                u = _2650 + ceil32(return_data.size) + 32
                                while s < _2666:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2666
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2650 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2650 + ceil32(return_data.size) + 64] < mem[_2650 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 < cd[132]:
            revert with 0, 'ERR_LIMIT_OUT'
        mem[mem[64] + 4] = this.address
        if address(cd[36]) != 4100:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _613 = mem[_609]
            require mem[_609] == mem[_609]
            if mem[_609]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_609]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_609] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _613
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _613
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_687] == bool(mem[_687])
                    if not mem[_687]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _614 = mem[_610]
            require mem[_610] == mem[_610]
            if mem[_610]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_610]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_610] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _614
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _614
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_688] == bool(mem[_688])
                    if not mem[_688]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
