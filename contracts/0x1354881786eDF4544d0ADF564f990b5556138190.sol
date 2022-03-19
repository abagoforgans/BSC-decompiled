contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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
        _279 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_279] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (224 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _279 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 224
            _578 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_578] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_578 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_578 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_578 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_578 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_578 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_578 + 192] = cd[(v + 192)]
            mem[w] = _578
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[t] = _279
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
        _569 = mem[96]
        idx = 0
        while idx < _569:
            require idx < mem[96]
            if var213003 >= mem[mem[(32 * idx) + 128]]:
                if var213004 < var213004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2196 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2196] = 0
                mem[_2196 + 32] = 0
                mem[_2196 + 64] = 0
                mem[_2196 + 96] = 0
                mem[_2196 + 128] = 0
                mem[_2196 + 160] = 0
                mem[_2196 + 192] = 0
                require idx < mem[96]
                require var217002 < mem[mem[(32 * idx) + 128]]
                _2205 = mem[(32 * var217002) + mem[(32 * idx) + 128] + 32]
                _2206 = mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32] + 32]
                if var217002 > 0:
                    mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32] + 96] = var217003
                    _2213 = mem[_2205]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2213)
                    require ext_code.size(address(_2206))
                    staticcall address(_2206).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2213)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2222] == mem[_2222]
                    if mem[_2222] <= 0:
                        _2243 = mem[_2205 + 96]
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = _2243
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2243
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2257] == bool(mem[_2257])
                        if mem[_2205 + 192] == 1:
                            _2306 = mem[_2205]
                            _2308 = mem[_2205 + 96]
                            _2309 = mem[_2205 + 64]
                            _2310 = mem[_2205 + 128]
                            _2311 = mem[_2205 + 160]
                            mem[mem[64] + 4] = mem[_2205 + 44 len 20]
                            mem[mem[64] + 36] = _2308
                            mem[mem[64] + 68] = address(_2309)
                            mem[mem[64] + 100] = _2310
                            mem[mem[64] + 132] = _2311
                            require ext_code.size(address(_2306))
                            call address(_2306).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2308, address(_2309), _2310, _2311
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2447 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2447] == mem[_2447]
                            require mem[_2447 + 32] == mem[_2447 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2447]
                                continue 
                            if mem[_2447] < mem[_2447]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2205 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2326 = mem[_2205]
                                require 0 < mem[96]
                                mem[128] = mem[_2205 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2205 + 76 len 20]
                                _2356 = mem[_2205 + 96]
                                _2357 = mem[_2205 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2356
                                mem[mem[64] + 36] = _2357
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2326))
                                call address(_2326).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2356, _2357, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2685 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2693 = mem[_2685]
                                require mem[_2685] <= test266151307()
                                require _2685 + mem[_2685] + 31 < _2685 + return_data.size
                                _2701 = mem[_2685 + mem[_2685]]
                                require mem[_2685 + mem[_2685]] <= test266151307()
                                require _2685 + ceil32(return_data.size) + (32 * mem[_2685 + mem[_2685]]) + 32 <= test266151307() and (32 * mem[_2685 + mem[_2685]]) + 32 >= 0
                                mem[64] = _2685 + ceil32(return_data.size) + (32 * mem[_2685 + mem[_2685]]) + 32
                                mem[_2685 + ceil32(return_data.size)] = _2701
                                require _2693 + (32 * _2701) + 32 <= return_data.size
                                s = 0
                                t = _2685 + _2693 + 32
                                u = _2685 + ceil32(return_data.size) + 32
                                while s < _2701:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2701
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2685 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2685 + ceil32(return_data.size) + 64] < mem[_2685 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2264] == bool(mem[_2264])
                        _2345 = mem[_2205 + 96]
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = _2345
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2345
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2382] == bool(mem[_2382])
                        if mem[_2205 + 192] == 1:
                            _2432 = mem[_2205]
                            _2434 = mem[_2205 + 96]
                            _2435 = mem[_2205 + 64]
                            _2436 = mem[_2205 + 128]
                            _2437 = mem[_2205 + 160]
                            mem[mem[64] + 4] = mem[_2205 + 44 len 20]
                            mem[mem[64] + 36] = _2434
                            mem[mem[64] + 68] = address(_2435)
                            mem[mem[64] + 100] = _2436
                            mem[mem[64] + 132] = _2437
                            require ext_code.size(address(_2432))
                            call address(_2432).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2434, address(_2435), _2436, _2437
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2556 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2556] == mem[_2556]
                            require mem[_2556 + 32] == mem[_2556 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2556]
                                continue 
                            if mem[_2556] < mem[_2556]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2205 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2448 = mem[_2205]
                                require 0 < mem[96]
                                mem[128] = mem[_2205 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2205 + 76 len 20]
                                _2474 = mem[_2205 + 96]
                                _2475 = mem[_2205 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2474
                                mem[mem[64] + 36] = _2475
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2448))
                                call address(_2448).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2474, _2475, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2686 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2694 = mem[_2686]
                                require mem[_2686] <= test266151307()
                                require _2686 + mem[_2686] + 31 < _2686 + return_data.size
                                _2702 = mem[_2686 + mem[_2686]]
                                require mem[_2686 + mem[_2686]] <= test266151307()
                                require _2686 + ceil32(return_data.size) + (32 * mem[_2686 + mem[_2686]]) + 32 <= test266151307() and (32 * mem[_2686 + mem[_2686]]) + 32 >= 0
                                mem[64] = _2686 + ceil32(return_data.size) + (32 * mem[_2686 + mem[_2686]]) + 32
                                mem[_2686 + ceil32(return_data.size)] = _2702
                                require _2694 + (32 * _2702) + 32 <= return_data.size
                                s = 0
                                t = _2686 + _2694 + 32
                                u = _2686 + ceil32(return_data.size) + 32
                                while s < _2702:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2702
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2686 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2686 + ceil32(return_data.size) + 64] < mem[_2686 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    _2209 = mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2209)
                    require ext_code.size(address(_2206))
                    staticcall address(_2206).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2209)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2220] == mem[_2220]
                    if mem[_2220] <= 0:
                        _2233 = mem[_2205 + 96]
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = _2233
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2233
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2253] == bool(mem[_2253])
                        if mem[_2205 + 192] == 1:
                            _2283 = mem[_2205]
                            _2285 = mem[_2205 + 96]
                            _2286 = mem[_2205 + 64]
                            _2287 = mem[_2205 + 128]
                            _2288 = mem[_2205 + 160]
                            mem[mem[64] + 4] = mem[_2205 + 44 len 20]
                            mem[mem[64] + 36] = _2285
                            mem[mem[64] + 68] = address(_2286)
                            mem[mem[64] + 100] = _2287
                            mem[mem[64] + 132] = _2288
                            require ext_code.size(address(_2283))
                            call address(_2283).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2285, address(_2286), _2287, _2288
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2427 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2427] == mem[_2427]
                            require mem[_2427 + 32] == mem[_2427 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2427]
                                continue 
                            if mem[_2427] < mem[_2427]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2205 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2302 = mem[_2205]
                                require 0 < mem[96]
                                mem[128] = mem[_2205 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2205 + 76 len 20]
                                _2339 = mem[_2205 + 96]
                                _2340 = mem[_2205 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2339
                                mem[mem[64] + 36] = _2340
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2302))
                                call address(_2302).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2339, _2340, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2683 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2691 = mem[_2683]
                                require mem[_2683] <= test266151307()
                                require _2683 + mem[_2683] + 31 < _2683 + return_data.size
                                _2699 = mem[_2683 + mem[_2683]]
                                require mem[_2683 + mem[_2683]] <= test266151307()
                                require _2683 + ceil32(return_data.size) + (32 * mem[_2683 + mem[_2683]]) + 32 <= test266151307() and (32 * mem[_2683 + mem[_2683]]) + 32 >= 0
                                mem[64] = _2683 + ceil32(return_data.size) + (32 * mem[_2683 + mem[_2683]]) + 32
                                mem[_2683 + ceil32(return_data.size)] = _2699
                                require _2691 + (32 * _2699) + 32 <= return_data.size
                                s = 0
                                t = _2683 + _2691 + 32
                                u = _2683 + ceil32(return_data.size) + 32
                                while s < _2699:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2699
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2683 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2683 + ceil32(return_data.size) + 64] < mem[_2683 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2260] == bool(mem[_2260])
                        _2324 = mem[_2205 + 96]
                        mem[mem[64] + 4] = mem[_2205 + 12 len 20]
                        mem[mem[64] + 36] = _2324
                        require ext_code.size(address(_2206))
                        call address(_2206).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2324
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2380] == bool(mem[_2380])
                        if mem[_2205 + 192] == 1:
                            _2406 = mem[_2205]
                            _2408 = mem[_2205 + 96]
                            _2409 = mem[_2205 + 64]
                            _2410 = mem[_2205 + 128]
                            _2411 = mem[_2205 + 160]
                            mem[mem[64] + 4] = mem[_2205 + 44 len 20]
                            mem[mem[64] + 36] = _2408
                            mem[mem[64] + 68] = address(_2409)
                            mem[mem[64] + 100] = _2410
                            mem[mem[64] + 132] = _2411
                            require ext_code.size(address(_2406))
                            call address(_2406).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2408, address(_2409), _2410, _2411
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2549] == mem[_2549]
                            require mem[_2549 + 32] == mem[_2549 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2549]
                                continue 
                            if mem[_2549] < mem[_2549]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2205 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2428 = mem[_2205]
                                require 0 < mem[96]
                                mem[128] = mem[_2205 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2205 + 76 len 20]
                                _2458 = mem[_2205 + 96]
                                _2459 = mem[_2205 + 128]
                                _2460 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2458
                                mem[mem[64] + 36] = _2459
                                mem[mem[64] + 68] = 160
                                _2505 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _2505:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2460 + 100] = this.address
                                mem[_2460 + 132] = cd[164]
                                require ext_code.size(address(_2428))
                                call address(_2428).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2460 + (32 * _2505) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2684 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2692 = mem[_2684]
                                require mem[_2684] <= test266151307()
                                require _2684 + mem[_2684] + 31 < _2684 + return_data.size
                                _2700 = mem[_2684 + mem[_2684]]
                                require mem[_2684 + mem[_2684]] <= test266151307()
                                require _2684 + ceil32(return_data.size) + (32 * mem[_2684 + mem[_2684]]) + 32 <= test266151307() and (32 * mem[_2684 + mem[_2684]]) + 32 >= 0
                                mem[64] = _2684 + ceil32(return_data.size) + (32 * mem[_2684 + mem[_2684]]) + 32
                                mem[_2684 + ceil32(return_data.size)] = _2700
                                require _2692 + (32 * _2700) + 32 <= return_data.size
                                s = 0
                                t = _2684 + _2692 + 32
                                u = _2684 + ceil32(return_data.size) + 32
                                while s < _2700:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2700
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2684 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2684 + ceil32(return_data.size) + 64] < mem[_2684 + ceil32(return_data.size) + 64]:
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
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _612 = mem[_607]
            require mem[_607] == mem[_607]
            if mem[_607]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_607]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_607] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _612
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _612
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_686] == bool(mem[_686])
                    if not mem[_686]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _608 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _613 = mem[_608]
            require mem[_608] == mem[_608]
            if mem[_608]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_608]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_608] wei
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
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_303] == bool(mem[_303])
        if not mem[_303]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _568 = mem[96]
        idx = 0
        while idx < _568:
            require idx < mem[96]
            if var250003 >= mem[mem[(32 * idx) + 128]]:
                if var250004 < var250004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2195 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2195] = 0
                mem[_2195 + 32] = 0
                mem[_2195 + 64] = 0
                mem[_2195 + 96] = 0
                mem[_2195 + 128] = 0
                mem[_2195 + 160] = 0
                mem[_2195 + 192] = 0
                require idx < mem[96]
                require var254002 < mem[mem[(32 * idx) + 128]]
                _2203 = mem[(32 * var254002) + mem[(32 * idx) + 128] + 32]
                _2204 = mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32] + 32]
                if var254002 <= 0:
                    _2207 = mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2207)
                    require ext_code.size(address(_2204))
                    staticcall address(_2204).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2207)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2219] == mem[_2219]
                    if mem[_2219] <= 0:
                        _2228 = mem[_2203 + 96]
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = _2228
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2228
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2251] == bool(mem[_2251])
                        if mem[_2203 + 192] == 1:
                            _2274 = mem[_2203]
                            _2276 = mem[_2203 + 96]
                            _2277 = mem[_2203 + 64]
                            _2278 = mem[_2203 + 128]
                            _2279 = mem[_2203 + 160]
                            mem[mem[64] + 4] = mem[_2203 + 44 len 20]
                            mem[mem[64] + 36] = _2276
                            mem[mem[64] + 68] = address(_2277)
                            mem[mem[64] + 100] = _2278
                            mem[mem[64] + 132] = _2279
                            require ext_code.size(address(_2274))
                            call address(_2274).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2276, address(_2277), _2278, _2279
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2415] == mem[_2415]
                            require mem[_2415 + 32] == mem[_2415 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2415]
                                continue 
                            if mem[_2415] < mem[_2415]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2203 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2291 = mem[_2203]
                                require 0 < mem[96]
                                mem[128] = mem[_2203 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2203 + 76 len 20]
                                _2330 = mem[_2203 + 96]
                                _2331 = mem[_2203 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2330
                                mem[mem[64] + 36] = _2331
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2291))
                                call address(_2291).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2330, _2331, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2679 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2687 = mem[_2679]
                                require mem[_2679] <= test266151307()
                                require _2679 + mem[_2679] + 31 < _2679 + return_data.size
                                _2695 = mem[_2679 + mem[_2679]]
                                require mem[_2679 + mem[_2679]] <= test266151307()
                                require _2679 + ceil32(return_data.size) + (32 * mem[_2679 + mem[_2679]]) + 32 <= test266151307() and (32 * mem[_2679 + mem[_2679]]) + 32 >= 0
                                mem[64] = _2679 + ceil32(return_data.size) + (32 * mem[_2679 + mem[_2679]]) + 32
                                mem[_2679 + ceil32(return_data.size)] = _2695
                                require _2687 + (32 * _2695) + 32 <= return_data.size
                                s = 0
                                t = _2679 + _2687 + 32
                                u = _2679 + ceil32(return_data.size) + 32
                                while s < _2695:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2695
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2679 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2679 + ceil32(return_data.size) + 64] < mem[_2679 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2259] == bool(mem[_2259])
                        _2316 = mem[_2203 + 96]
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = _2316
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2316
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2379] == bool(mem[_2379])
                        if mem[_2203 + 192] == 1:
                            _2396 = mem[_2203]
                            _2398 = mem[_2203 + 96]
                            _2399 = mem[_2203 + 64]
                            _2400 = mem[_2203 + 128]
                            _2401 = mem[_2203 + 160]
                            mem[mem[64] + 4] = mem[_2203 + 44 len 20]
                            mem[mem[64] + 36] = _2398
                            mem[mem[64] + 68] = address(_2399)
                            mem[mem[64] + 100] = _2400
                            mem[mem[64] + 132] = _2401
                            require ext_code.size(address(_2396))
                            call address(_2396).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2398, address(_2399), _2400, _2401
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2546] == mem[_2546]
                            require mem[_2546 + 32] == mem[_2546 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2546]
                                continue 
                            if mem[_2546] < mem[_2546]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2203 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2416 = mem[_2203]
                                require 0 < mem[96]
                                mem[128] = mem[_2203 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2203 + 76 len 20]
                                _2452 = mem[_2203 + 96]
                                _2453 = mem[_2203 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2452
                                mem[mem[64] + 36] = _2453
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2416))
                                call address(_2416).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2452, _2453, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2680 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2688 = mem[_2680]
                                require mem[_2680] <= test266151307()
                                require _2680 + mem[_2680] + 31 < _2680 + return_data.size
                                _2696 = mem[_2680 + mem[_2680]]
                                require mem[_2680 + mem[_2680]] <= test266151307()
                                require _2680 + ceil32(return_data.size) + (32 * mem[_2680 + mem[_2680]]) + 32 <= test266151307() and (32 * mem[_2680 + mem[_2680]]) + 32 >= 0
                                mem[64] = _2680 + ceil32(return_data.size) + (32 * mem[_2680 + mem[_2680]]) + 32
                                mem[_2680 + ceil32(return_data.size)] = _2696
                                require _2688 + (32 * _2696) + 32 <= return_data.size
                                s = 0
                                t = _2680 + _2688 + 32
                                u = _2680 + ceil32(return_data.size) + 32
                                while s < _2696:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2696
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2680 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2680 + ceil32(return_data.size) + 64] < mem[_2680 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32] + 96] = var254003
                    _2211 = mem[_2203]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2211)
                    require ext_code.size(address(_2204))
                    staticcall address(_2204).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2211)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2221] == mem[_2221]
                    if mem[_2221] <= 0:
                        _2238 = mem[_2203 + 96]
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = _2238
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2238
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2255] == bool(mem[_2255])
                        if mem[_2203 + 192] == 1:
                            _2295 = mem[_2203]
                            _2297 = mem[_2203 + 96]
                            _2298 = mem[_2203 + 64]
                            _2299 = mem[_2203 + 128]
                            _2300 = mem[_2203 + 160]
                            mem[mem[64] + 4] = mem[_2203 + 44 len 20]
                            mem[mem[64] + 36] = _2297
                            mem[mem[64] + 68] = address(_2298)
                            mem[mem[64] + 100] = _2299
                            mem[mem[64] + 132] = _2300
                            require ext_code.size(address(_2295))
                            call address(_2295).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2297, address(_2298), _2299, _2300
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2441] == mem[_2441]
                            require mem[_2441 + 32] == mem[_2441 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2441]
                                continue 
                            if mem[_2441] < mem[_2441]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2203 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2318 = mem[_2203]
                                require 0 < mem[96]
                                mem[128] = mem[_2203 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2203 + 76 len 20]
                                _2350 = mem[_2203 + 96]
                                _2351 = mem[_2203 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2350
                                mem[mem[64] + 36] = _2351
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2318))
                                call address(_2318).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2350, _2351, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2681 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2689 = mem[_2681]
                                require mem[_2681] <= test266151307()
                                require _2681 + mem[_2681] + 31 < _2681 + return_data.size
                                _2697 = mem[_2681 + mem[_2681]]
                                require mem[_2681 + mem[_2681]] <= test266151307()
                                require _2681 + ceil32(return_data.size) + (32 * mem[_2681 + mem[_2681]]) + 32 <= test266151307() and (32 * mem[_2681 + mem[_2681]]) + 32 >= 0
                                mem[64] = _2681 + ceil32(return_data.size) + (32 * mem[_2681 + mem[_2681]]) + 32
                                mem[_2681 + ceil32(return_data.size)] = _2697
                                require _2689 + (32 * _2697) + 32 <= return_data.size
                                s = 0
                                t = _2681 + _2689 + 32
                                u = _2681 + ceil32(return_data.size) + 32
                                while s < _2697:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2697
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2681 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2681 + ceil32(return_data.size) + 64] < mem[_2681 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2262] == bool(mem[_2262])
                        _2336 = mem[_2203 + 96]
                        mem[mem[64] + 4] = mem[_2203 + 12 len 20]
                        mem[mem[64] + 36] = _2336
                        require ext_code.size(address(_2204))
                        call address(_2204).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2336
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2381] == bool(mem[_2381])
                        if mem[_2203 + 192] == 1:
                            _2420 = mem[_2203]
                            _2422 = mem[_2203 + 96]
                            _2423 = mem[_2203 + 64]
                            _2424 = mem[_2203 + 128]
                            _2425 = mem[_2203 + 160]
                            mem[mem[64] + 4] = mem[_2203 + 44 len 20]
                            mem[mem[64] + 36] = _2422
                            mem[mem[64] + 68] = address(_2423)
                            mem[mem[64] + 100] = _2424
                            mem[mem[64] + 132] = _2425
                            require ext_code.size(address(_2420))
                            call address(_2420).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2422, address(_2423), _2424, _2425
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2553 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2553] == mem[_2553]
                            require mem[_2553 + 32] == mem[_2553 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2553]
                                continue 
                            if mem[_2553] < mem[_2553]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2203 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2442 = mem[_2203]
                                require 0 < mem[96]
                                mem[128] = mem[_2203 + 44 len 20]
                                require 1 < mem[96]
                                mem[160] = mem[_2203 + 76 len 20]
                                _2467 = mem[_2203 + 96]
                                _2468 = mem[_2203 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2467
                                mem[mem[64] + 36] = _2468
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < mem[96]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = cd[164]
                                require ext_code.size(address(_2442))
                                call address(_2442).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2467, _2468, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2682 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2690 = mem[_2682]
                                require mem[_2682] <= test266151307()
                                require _2682 + mem[_2682] + 31 < _2682 + return_data.size
                                _2698 = mem[_2682 + mem[_2682]]
                                require mem[_2682 + mem[_2682]] <= test266151307()
                                require _2682 + ceil32(return_data.size) + (32 * mem[_2682 + mem[_2682]]) + 32 <= test266151307() and (32 * mem[_2682 + mem[_2682]]) + 32 >= 0
                                mem[64] = _2682 + ceil32(return_data.size) + (32 * mem[_2682 + mem[_2682]]) + 32
                                mem[_2682 + ceil32(return_data.size)] = _2698
                                require _2690 + (32 * _2698) + 32 <= return_data.size
                                s = 0
                                t = _2682 + _2690 + 32
                                u = _2682 + ceil32(return_data.size) + 32
                                while s < _2698:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2698
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2682 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2682 + ceil32(return_data.size) + 64] < mem[_2682 + ceil32(return_data.size) + 64]:
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
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _609 = mem[_605]
            require mem[_605] == mem[_605]
            if mem[_605]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_605]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_605] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _609
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _609
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_683] == bool(mem[_683])
                    if not mem[_683]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _610 = mem[_606]
            require mem[_606] == mem[_606]
            if mem[_606]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_606]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_606] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _610
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _610
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_684] == bool(mem[_684])
                    if not mem[_684]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
