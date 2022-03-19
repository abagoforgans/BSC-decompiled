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
        _290 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_290] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (224 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _290 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 224
            _598 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_598] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_598 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_598 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_598 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_598 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_598 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_598 + 192] = cd[(v + 192)]
            mem[w] = _598
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[t] = _290
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
        _589 = mem[96]
        idx = 0
        while idx < _589:
            require idx < mem[96]
            if var209003 >= mem[mem[(32 * idx) + 128]]:
                if var209004 < var209004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2244 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2244] = 0
                mem[_2244 + 32] = 0
                mem[_2244 + 64] = 0
                mem[_2244 + 96] = 0
                mem[_2244 + 128] = 0
                mem[_2244 + 160] = 0
                mem[_2244 + 192] = 0
                require idx < mem[96]
                require var213002 < mem[mem[(32 * idx) + 128]]
                _2253 = mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]
                _2254 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 32]
                if var213002 <= 0:
                    _2257 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2257)
                    require ext_code.size(address(_2254))
                    staticcall address(_2254).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2257)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2268] == mem[_2268]
                    if mem[_2268] <= 0:
                        _2281 = mem[_2253 + 96]
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = _2281
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2281
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2301] == bool(mem[_2301])
                        if mem[_2253 + 192] == 1:
                            _2331 = mem[_2253]
                            _2333 = mem[_2253 + 96]
                            _2334 = mem[_2253 + 64]
                            _2335 = mem[_2253 + 128]
                            _2336 = mem[_2253 + 160]
                            mem[mem[64] + 4] = mem[_2253 + 44 len 20]
                            mem[mem[64] + 36] = _2333
                            mem[mem[64] + 68] = address(_2334)
                            mem[mem[64] + 100] = _2335
                            mem[mem[64] + 132] = _2336
                            require ext_code.size(address(_2331))
                            call address(_2331).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2333, address(_2334), _2335, _2336
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2477 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2477] == mem[_2477]
                            require mem[_2477 + 32] == mem[_2477 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2477]
                                continue 
                            if mem[_2477] < mem[_2477]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2253 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2348 = mem[_2253]
                                _2362 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2362 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2362]
                                mem[_2362 + 32] = mem[_2253 + 44 len 20]
                                require 1 < mem[_2362]
                                mem[_2362 + 64] = mem[_2253 + 76 len 20]
                                _2404 = mem[_2253 + 96]
                                _2405 = mem[_2253 + 128]
                                mem[_2362 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2362 + 100] = _2404
                                mem[_2362 + 132] = _2405
                                mem[_2362 + 164] = 160
                                mem[_2362 + 260] = mem[_2362]
                                s = 0
                                t = _2362 + 32
                                u = _2362 + 292
                                while s < mem[_2362]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2362 + 196] = this.address
                                mem[_2362 + 228] = cd[164]
                                require ext_code.size(address(_2348))
                                call address(_2348).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2362 + (32 * mem[_2362]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2739 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2747 = mem[_2739]
                                require mem[_2739] <= test266151307()
                                require _2739 + mem[_2739] + 31 < _2739 + return_data.size
                                _2755 = mem[_2739 + mem[_2739]]
                                require mem[_2739 + mem[_2739]] <= test266151307()
                                require _2739 + ceil32(return_data.size) + (32 * mem[_2739 + mem[_2739]]) + 32 <= test266151307() and (32 * mem[_2739 + mem[_2739]]) + 32 >= 0
                                mem[64] = _2739 + ceil32(return_data.size) + (32 * mem[_2739 + mem[_2739]]) + 32
                                mem[_2739 + ceil32(return_data.size)] = _2755
                                require _2747 + (32 * _2755) + 32 <= return_data.size
                                s = 0
                                t = _2739 + _2747 + 32
                                u = _2739 + ceil32(return_data.size) + 32
                                while s < _2755:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2755
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2739 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2739 + ceil32(return_data.size) + 64] < mem[_2739 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2308 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2308] == bool(mem[_2308])
                        _2364 = mem[_2253 + 96]
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = _2364
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2364
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2428] == bool(mem[_2428])
                        if mem[_2253 + 192] == 1:
                            _2458 = mem[_2253]
                            _2460 = mem[_2253 + 96]
                            _2461 = mem[_2253 + 64]
                            _2462 = mem[_2253 + 128]
                            _2463 = mem[_2253 + 160]
                            mem[mem[64] + 4] = mem[_2253 + 44 len 20]
                            mem[mem[64] + 36] = _2460
                            mem[mem[64] + 68] = address(_2461)
                            mem[mem[64] + 100] = _2462
                            mem[mem[64] + 132] = _2463
                            require ext_code.size(address(_2458))
                            call address(_2458).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2460, address(_2461), _2462, _2463
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2609] == mem[_2609]
                            require mem[_2609 + 32] == mem[_2609 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2609]
                                continue 
                            if mem[_2609] < mem[_2609]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2253 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2478 = mem[_2253]
                                _2490 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2490 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2490]
                                mem[_2490 + 32] = mem[_2253 + 44 len 20]
                                require 1 < mem[_2490]
                                mem[_2490 + 64] = mem[_2253 + 76 len 20]
                                _2528 = mem[_2253 + 96]
                                _2529 = mem[_2253 + 128]
                                mem[_2490 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2490 + 100] = _2528
                                mem[_2490 + 132] = _2529
                                mem[_2490 + 164] = 160
                                mem[_2490 + 260] = mem[_2490]
                                s = 0
                                t = _2490 + 32
                                u = _2490 + 292
                                while s < mem[_2490]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2490 + 196] = this.address
                                mem[_2490 + 228] = cd[164]
                                require ext_code.size(address(_2478))
                                call address(_2478).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2490 + (32 * mem[_2490]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2740 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2748 = mem[_2740]
                                require mem[_2740] <= test266151307()
                                require _2740 + mem[_2740] + 31 < _2740 + return_data.size
                                _2756 = mem[_2740 + mem[_2740]]
                                require mem[_2740 + mem[_2740]] <= test266151307()
                                require _2740 + ceil32(return_data.size) + (32 * mem[_2740 + mem[_2740]]) + 32 <= test266151307() and (32 * mem[_2740 + mem[_2740]]) + 32 >= 0
                                mem[64] = _2740 + ceil32(return_data.size) + (32 * mem[_2740 + mem[_2740]]) + 32
                                mem[_2740 + ceil32(return_data.size)] = _2756
                                require _2748 + (32 * _2756) + 32 <= return_data.size
                                s = 0
                                t = _2740 + _2748 + 32
                                u = _2740 + ceil32(return_data.size) + 32
                                while s < _2756:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2756
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2740 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2740 + ceil32(return_data.size) + 64] < mem[_2740 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 96] = var213003
                    _2261 = mem[_2253]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2261)
                    require ext_code.size(address(_2254))
                    staticcall address(_2254).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2261)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2270] == mem[_2270]
                    if mem[_2270] <= 0:
                        _2291 = mem[_2253 + 96]
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = _2291
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2291
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2305] == bool(mem[_2305])
                        if mem[_2253 + 192] == 1:
                            _2350 = mem[_2253]
                            _2352 = mem[_2253 + 96]
                            _2353 = mem[_2253 + 64]
                            _2354 = mem[_2253 + 128]
                            _2355 = mem[_2253 + 160]
                            mem[mem[64] + 4] = mem[_2253 + 44 len 20]
                            mem[mem[64] + 36] = _2352
                            mem[mem[64] + 68] = address(_2353)
                            mem[mem[64] + 100] = _2354
                            mem[mem[64] + 132] = _2355
                            require ext_code.size(address(_2350))
                            call address(_2350).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2352, address(_2353), _2354, _2355
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2491 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2491] == mem[_2491]
                            require mem[_2491 + 32] == mem[_2491 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2491]
                                continue 
                            if mem[_2491] < mem[_2491]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2253 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2366 = mem[_2253]
                                _2373 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2373 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2373]
                                mem[_2373 + 32] = mem[_2253 + 44 len 20]
                                require 1 < mem[_2373]
                                mem[_2373 + 64] = mem[_2253 + 76 len 20]
                                _2414 = mem[_2253 + 96]
                                _2415 = mem[_2253 + 128]
                                mem[_2373 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2373 + 100] = _2414
                                mem[_2373 + 132] = _2415
                                mem[_2373 + 164] = 160
                                mem[_2373 + 260] = mem[_2373]
                                s = 0
                                t = _2373 + 32
                                u = _2373 + 292
                                while s < mem[_2373]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2373 + 196] = this.address
                                mem[_2373 + 228] = cd[164]
                                require ext_code.size(address(_2366))
                                call address(_2366).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2373 + (32 * mem[_2373]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2741 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2749 = mem[_2741]
                                require mem[_2741] <= test266151307()
                                require _2741 + mem[_2741] + 31 < _2741 + return_data.size
                                _2757 = mem[_2741 + mem[_2741]]
                                require mem[_2741 + mem[_2741]] <= test266151307()
                                require _2741 + ceil32(return_data.size) + (32 * mem[_2741 + mem[_2741]]) + 32 <= test266151307() and (32 * mem[_2741 + mem[_2741]]) + 32 >= 0
                                mem[64] = _2741 + ceil32(return_data.size) + (32 * mem[_2741 + mem[_2741]]) + 32
                                mem[_2741 + ceil32(return_data.size)] = _2757
                                require _2749 + (32 * _2757) + 32 <= return_data.size
                                s = 0
                                t = _2741 + _2749 + 32
                                u = _2741 + ceil32(return_data.size) + 32
                                while s < _2757:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2757
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2741 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2741 + ceil32(return_data.size) + 64] < mem[_2741 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2312] == bool(mem[_2312])
                        _2375 = mem[_2253 + 96]
                        mem[mem[64] + 4] = mem[_2253 + 12 len 20]
                        mem[mem[64] + 36] = _2375
                        require ext_code.size(address(_2254))
                        call address(_2254).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2375
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2432] == bool(mem[_2432])
                        if mem[_2253 + 192] == 1:
                            _2480 = mem[_2253]
                            _2482 = mem[_2253 + 96]
                            _2483 = mem[_2253 + 64]
                            _2484 = mem[_2253 + 128]
                            _2485 = mem[_2253 + 160]
                            mem[mem[64] + 4] = mem[_2253 + 44 len 20]
                            mem[mem[64] + 36] = _2482
                            mem[mem[64] + 68] = address(_2483)
                            mem[mem[64] + 100] = _2484
                            mem[mem[64] + 132] = _2485
                            require ext_code.size(address(_2480))
                            call address(_2480).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2482, address(_2483), _2484, _2485
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2614] == mem[_2614]
                            require mem[_2614 + 32] == mem[_2614 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2614]
                                continue 
                            if mem[_2614] < mem[_2614]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2253 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2492 = mem[_2253]
                                _2496 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2496 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2496]
                                mem[_2496 + 32] = mem[_2253 + 44 len 20]
                                require 1 < mem[_2496]
                                mem[_2496 + 64] = mem[_2253 + 76 len 20]
                                _2538 = mem[_2253 + 96]
                                _2539 = mem[_2253 + 128]
                                mem[_2496 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2496 + 100] = _2538
                                mem[_2496 + 132] = _2539
                                mem[_2496 + 164] = 160
                                mem[_2496 + 260] = mem[_2496]
                                s = 0
                                t = _2496 + 32
                                u = _2496 + 292
                                while s < mem[_2496]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2496 + 196] = this.address
                                mem[_2496 + 228] = cd[164]
                                require ext_code.size(address(_2492))
                                call address(_2492).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2496 + (32 * mem[_2496]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2742 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2750 = mem[_2742]
                                require mem[_2742] <= test266151307()
                                require _2742 + mem[_2742] + 31 < _2742 + return_data.size
                                _2758 = mem[_2742 + mem[_2742]]
                                require mem[_2742 + mem[_2742]] <= test266151307()
                                require _2742 + ceil32(return_data.size) + (32 * mem[_2742 + mem[_2742]]) + 32 <= test266151307() and (32 * mem[_2742 + mem[_2742]]) + 32 >= 0
                                mem[64] = _2742 + ceil32(return_data.size) + (32 * mem[_2742 + mem[_2742]]) + 32
                                mem[_2742 + ceil32(return_data.size)] = _2758
                                require _2750 + (32 * _2758) + 32 <= return_data.size
                                s = 0
                                t = _2742 + _2750 + 32
                                u = _2742 + ceil32(return_data.size) + 32
                                while s < _2758:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2758
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2742 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2742 + ceil32(return_data.size) + 64] < mem[_2742 + ceil32(return_data.size) + 64]:
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
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _632 = mem[_627]
            require mem[_627] == mem[_627]
            if mem[_627]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_627]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_627] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _632
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _632
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_706] == bool(mem[_706])
                    if not mem[_706]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _633 = mem[_628]
            require mem[_628] == mem[_628]
            if mem[_628]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_628]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_628] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _633
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _633
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_707] == bool(mem[_707])
                    if not mem[_707]:
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
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_314] == bool(mem[_314])
        if not mem[_314]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _588 = mem[96]
        idx = 0
        while idx < _588:
            require idx < mem[96]
            if var242003 >= mem[mem[(32 * idx) + 128]]:
                if var242004 < var242004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2243 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2243] = 0
                mem[_2243 + 32] = 0
                mem[_2243 + 64] = 0
                mem[_2243 + 96] = 0
                mem[_2243 + 128] = 0
                mem[_2243 + 160] = 0
                mem[_2243 + 192] = 0
                require idx < mem[96]
                require var246002 < mem[mem[(32 * idx) + 128]]
                _2251 = mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]
                _2252 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 32]
                if var246002 <= 0:
                    _2255 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2255)
                    require ext_code.size(address(_2252))
                    staticcall address(_2252).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2255)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2267] == mem[_2267]
                    if mem[_2267] <= 0:
                        _2276 = mem[_2251 + 96]
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = _2276
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2276
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2299] == bool(mem[_2299])
                        if mem[_2251 + 192] == 1:
                            _2322 = mem[_2251]
                            _2324 = mem[_2251 + 96]
                            _2325 = mem[_2251 + 64]
                            _2326 = mem[_2251 + 128]
                            _2327 = mem[_2251 + 160]
                            mem[mem[64] + 4] = mem[_2251 + 44 len 20]
                            mem[mem[64] + 36] = _2324
                            mem[mem[64] + 68] = address(_2325)
                            mem[mem[64] + 100] = _2326
                            mem[mem[64] + 132] = _2327
                            require ext_code.size(address(_2322))
                            call address(_2322).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2324, address(_2325), _2326, _2327
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2467 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2467] == mem[_2467]
                            require mem[_2467 + 32] == mem[_2467 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2467]
                                continue 
                            if mem[_2467] < mem[_2467]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2251 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2339 = mem[_2251]
                                _2357 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2357 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2357]
                                mem[_2357 + 32] = mem[_2251 + 44 len 20]
                                require 1 < mem[_2357]
                                mem[_2357 + 64] = mem[_2251 + 76 len 20]
                                _2399 = mem[_2251 + 96]
                                _2400 = mem[_2251 + 128]
                                mem[_2357 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2357 + 100] = _2399
                                mem[_2357 + 132] = _2400
                                mem[_2357 + 164] = 160
                                mem[_2357 + 260] = mem[_2357]
                                s = 0
                                t = _2357 + 32
                                u = _2357 + 292
                                while s < mem[_2357]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2357 + 196] = this.address
                                mem[_2357 + 228] = cd[164]
                                require ext_code.size(address(_2339))
                                call address(_2339).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2357 + (32 * mem[_2357]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2735 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2743 = mem[_2735]
                                require mem[_2735] <= test266151307()
                                require _2735 + mem[_2735] + 31 < _2735 + return_data.size
                                _2751 = mem[_2735 + mem[_2735]]
                                require mem[_2735 + mem[_2735]] <= test266151307()
                                require _2735 + ceil32(return_data.size) + (32 * mem[_2735 + mem[_2735]]) + 32 <= test266151307() and (32 * mem[_2735 + mem[_2735]]) + 32 >= 0
                                mem[64] = _2735 + ceil32(return_data.size) + (32 * mem[_2735 + mem[_2735]]) + 32
                                mem[_2735 + ceil32(return_data.size)] = _2751
                                require _2743 + (32 * _2751) + 32 <= return_data.size
                                s = 0
                                t = _2735 + _2743 + 32
                                u = _2735 + ceil32(return_data.size) + 32
                                while s < _2751:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2751
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2735 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2735 + ceil32(return_data.size) + 64] < mem[_2735 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2307] == bool(mem[_2307])
                        _2359 = mem[_2251 + 96]
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = _2359
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2359
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2427] == bool(mem[_2427])
                        if mem[_2251 + 192] == 1:
                            _2448 = mem[_2251]
                            _2450 = mem[_2251 + 96]
                            _2451 = mem[_2251 + 64]
                            _2452 = mem[_2251 + 128]
                            _2453 = mem[_2251 + 160]
                            mem[mem[64] + 4] = mem[_2251 + 44 len 20]
                            mem[mem[64] + 36] = _2450
                            mem[mem[64] + 68] = address(_2451)
                            mem[mem[64] + 100] = _2452
                            mem[mem[64] + 132] = _2453
                            require ext_code.size(address(_2448))
                            call address(_2448).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2450, address(_2451), _2452, _2453
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2606] == mem[_2606]
                            require mem[_2606 + 32] == mem[_2606 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2606]
                                continue 
                            if mem[_2606] < mem[_2606]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2251 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2468 = mem[_2251]
                                _2487 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2487 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2487]
                                mem[_2487 + 32] = mem[_2251 + 44 len 20]
                                require 1 < mem[_2487]
                                mem[_2487 + 64] = mem[_2251 + 76 len 20]
                                _2523 = mem[_2251 + 96]
                                _2524 = mem[_2251 + 128]
                                mem[_2487 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2487 + 100] = _2523
                                mem[_2487 + 132] = _2524
                                mem[_2487 + 164] = 160
                                mem[_2487 + 260] = mem[_2487]
                                s = 0
                                t = _2487 + 32
                                u = _2487 + 292
                                while s < mem[_2487]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2487 + 196] = this.address
                                mem[_2487 + 228] = cd[164]
                                require ext_code.size(address(_2468))
                                call address(_2468).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2487 + (32 * mem[_2487]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2736 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2744 = mem[_2736]
                                require mem[_2736] <= test266151307()
                                require _2736 + mem[_2736] + 31 < _2736 + return_data.size
                                _2752 = mem[_2736 + mem[_2736]]
                                require mem[_2736 + mem[_2736]] <= test266151307()
                                require _2736 + ceil32(return_data.size) + (32 * mem[_2736 + mem[_2736]]) + 32 <= test266151307() and (32 * mem[_2736 + mem[_2736]]) + 32 >= 0
                                mem[64] = _2736 + ceil32(return_data.size) + (32 * mem[_2736 + mem[_2736]]) + 32
                                mem[_2736 + ceil32(return_data.size)] = _2752
                                require _2744 + (32 * _2752) + 32 <= return_data.size
                                s = 0
                                t = _2736 + _2744 + 32
                                u = _2736 + ceil32(return_data.size) + 32
                                while s < _2752:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2752
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2736 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2736 + ceil32(return_data.size) + 64] < mem[_2736 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 96] = var246003
                    _2259 = mem[_2251]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2259)
                    require ext_code.size(address(_2252))
                    staticcall address(_2252).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2259)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2269] == mem[_2269]
                    if mem[_2269] <= 0:
                        _2286 = mem[_2251 + 96]
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = _2286
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2286
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2303] == bool(mem[_2303])
                        if mem[_2251 + 192] == 1:
                            _2341 = mem[_2251]
                            _2343 = mem[_2251 + 96]
                            _2344 = mem[_2251 + 64]
                            _2345 = mem[_2251 + 128]
                            _2346 = mem[_2251 + 160]
                            mem[mem[64] + 4] = mem[_2251 + 44 len 20]
                            mem[mem[64] + 36] = _2343
                            mem[mem[64] + 68] = address(_2344)
                            mem[mem[64] + 100] = _2345
                            mem[mem[64] + 132] = _2346
                            require ext_code.size(address(_2341))
                            call address(_2341).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2343, address(_2344), _2345, _2346
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2488 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2488] == mem[_2488]
                            require mem[_2488 + 32] == mem[_2488 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2488]
                                continue 
                            if mem[_2488] < mem[_2488]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2251 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2361 = mem[_2251]
                                _2368 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2368 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2368]
                                mem[_2368 + 32] = mem[_2251 + 44 len 20]
                                require 1 < mem[_2368]
                                mem[_2368 + 64] = mem[_2251 + 76 len 20]
                                _2410 = mem[_2251 + 96]
                                _2411 = mem[_2251 + 128]
                                mem[_2368 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2368 + 100] = _2410
                                mem[_2368 + 132] = _2411
                                mem[_2368 + 164] = 160
                                mem[_2368 + 260] = mem[_2368]
                                s = 0
                                t = _2368 + 32
                                u = _2368 + 292
                                while s < mem[_2368]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2368 + 196] = this.address
                                mem[_2368 + 228] = cd[164]
                                require ext_code.size(address(_2361))
                                call address(_2361).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2368 + (32 * mem[_2368]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2737 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2745 = mem[_2737]
                                require mem[_2737] <= test266151307()
                                require _2737 + mem[_2737] + 31 < _2737 + return_data.size
                                _2753 = mem[_2737 + mem[_2737]]
                                require mem[_2737 + mem[_2737]] <= test266151307()
                                require _2737 + ceil32(return_data.size) + (32 * mem[_2737 + mem[_2737]]) + 32 <= test266151307() and (32 * mem[_2737 + mem[_2737]]) + 32 >= 0
                                mem[64] = _2737 + ceil32(return_data.size) + (32 * mem[_2737 + mem[_2737]]) + 32
                                mem[_2737 + ceil32(return_data.size)] = _2753
                                require _2745 + (32 * _2753) + 32 <= return_data.size
                                s = 0
                                t = _2737 + _2745 + 32
                                u = _2737 + ceil32(return_data.size) + 32
                                while s < _2753:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2753
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2737 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2737 + ceil32(return_data.size) + 64] < mem[_2737 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2310 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2310] == bool(mem[_2310])
                        _2370 = mem[_2251 + 96]
                        mem[mem[64] + 4] = mem[_2251 + 12 len 20]
                        mem[mem[64] + 36] = _2370
                        require ext_code.size(address(_2252))
                        call address(_2252).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2370
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2430] == bool(mem[_2430])
                        if mem[_2251 + 192] == 1:
                            _2470 = mem[_2251]
                            _2472 = mem[_2251 + 96]
                            _2473 = mem[_2251 + 64]
                            _2474 = mem[_2251 + 128]
                            _2475 = mem[_2251 + 160]
                            mem[mem[64] + 4] = mem[_2251 + 44 len 20]
                            mem[mem[64] + 36] = _2472
                            mem[mem[64] + 68] = address(_2473)
                            mem[mem[64] + 100] = _2474
                            mem[mem[64] + 132] = _2475
                            require ext_code.size(address(_2470))
                            call address(_2470).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2472, address(_2473), _2474, _2475
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2612] == mem[_2612]
                            require mem[_2612 + 32] == mem[_2612 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2612]
                                continue 
                            if mem[_2612] < mem[_2612]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2251 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2489 = mem[_2251]
                                _2494 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2494 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[_2494]
                                mem[_2494 + 32] = mem[_2251 + 44 len 20]
                                require 1 < mem[_2494]
                                mem[_2494 + 64] = mem[_2251 + 76 len 20]
                                _2534 = mem[_2251 + 96]
                                _2535 = mem[_2251 + 128]
                                mem[_2494 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2494 + 100] = _2534
                                mem[_2494 + 132] = _2535
                                mem[_2494 + 164] = 160
                                mem[_2494 + 260] = mem[_2494]
                                s = 0
                                t = _2494 + 32
                                u = _2494 + 292
                                while s < mem[_2494]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2494 + 196] = this.address
                                mem[_2494 + 228] = cd[164]
                                require ext_code.size(address(_2489))
                                call address(_2489).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2494 + (32 * mem[_2494]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2738 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2746 = mem[_2738]
                                require mem[_2738] <= test266151307()
                                require _2738 + mem[_2738] + 31 < _2738 + return_data.size
                                _2754 = mem[_2738 + mem[_2738]]
                                require mem[_2738 + mem[_2738]] <= test266151307()
                                require _2738 + ceil32(return_data.size) + (32 * mem[_2738 + mem[_2738]]) + 32 <= test266151307() and (32 * mem[_2738 + mem[_2738]]) + 32 >= 0
                                mem[64] = _2738 + ceil32(return_data.size) + (32 * mem[_2738 + mem[_2738]]) + 32
                                mem[_2738 + ceil32(return_data.size)] = _2754
                                require _2746 + (32 * _2754) + 32 <= return_data.size
                                s = 0
                                t = _2738 + _2746 + 32
                                u = _2738 + ceil32(return_data.size) + 32
                                while s < _2754:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2754
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2738 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2738 + ceil32(return_data.size) + 64] < mem[_2738 + ceil32(return_data.size) + 64]:
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
            _625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _629 = mem[_625]
            require mem[_625] == mem[_625]
            if mem[_625]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_625]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_625] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _629
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _629
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_703] == bool(mem[_703])
                    if not mem[_703]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _626 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _630 = mem[_626]
            require mem[_626] == mem[_626]
            if mem[_626]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_626]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_626] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _630
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _630
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _704 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_704] == bool(mem[_704])
                    if not mem[_704]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
