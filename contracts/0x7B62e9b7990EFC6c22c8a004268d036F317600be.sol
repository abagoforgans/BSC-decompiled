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

function sub_a013dec4(?) payable {
    require calldata.size - 4 >= 160
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
        _284 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_284] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (224 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _284 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 224
            _585 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_585] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_585 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_585 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_585 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_585 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_585 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_585 + 192] = cd[(v + 192)]
            mem[w] = _585
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[t] = _284
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if address(cd[36]) == 4100:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _576 = mem[96]
        idx = 0
        while idx < _576:
            require idx < mem[96]
            if var206003 >= mem[mem[(32 * idx) + 128]]:
                if var206004 < var206004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2203 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2203] = 0
                mem[_2203 + 32] = 0
                mem[_2203 + 64] = 0
                mem[_2203 + 96] = 0
                mem[_2203 + 128] = 0
                mem[_2203 + 160] = 0
                mem[_2203 + 192] = 0
                require idx < mem[96]
                require var210002 < mem[mem[(32 * idx) + 128]]
                _2212 = mem[(32 * var210002) + mem[(32 * idx) + 128] + 32]
                _2213 = mem[mem[(32 * var210002) + mem[(32 * idx) + 128] + 32] + 32]
                if var210002 <= 0:
                    _2216 = mem[mem[(32 * var210002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2216)
                    require ext_code.size(address(_2213))
                    staticcall address(_2213).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2216)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2227] == mem[_2227]
                    if mem[_2227] <= 0:
                        _2240 = mem[_2212 + 96]
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = _2240
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2240
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2260] == bool(mem[_2260])
                        if mem[_2212 + 192] == 1:
                            _2290 = mem[_2212]
                            _2292 = mem[_2212 + 96]
                            _2293 = mem[_2212 + 64]
                            _2294 = mem[_2212 + 128]
                            _2295 = mem[_2212 + 160]
                            mem[mem[64] + 4] = mem[_2212 + 44 len 20]
                            mem[mem[64] + 36] = _2292
                            mem[mem[64] + 68] = address(_2293)
                            mem[mem[64] + 100] = _2294
                            mem[mem[64] + 132] = _2295
                            require ext_code.size(address(_2290))
                            call address(_2290).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2292, address(_2293), _2294, _2295
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2432] == mem[_2432]
                            require mem[_2432 + 32] == mem[_2432 + 32]
                            require idx < mem[96]
                            if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var210002 = var210002 + 1
                                var210003 = mem[_2432]
                                continue 
                            if mem[_2432] < mem[_2432]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2212 + 192] != 2:
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = var210003
                                    continue 
                                if var210003 < var210003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2307 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2307 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2307]
                                mem[_2307 + 32] = mem[_2212 + 44 len 20]
                                require 1 < mem[_2307]
                                mem[_2307 + 64] = mem[_2212 + 76 len 20]
                                _2357 = mem[_2212 + 96]
                                _2358 = mem[_2212 + 128]
                                mem[_2307 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2307 + 100] = _2357
                                mem[_2307 + 132] = _2358
                                mem[_2307 + 164] = 160
                                mem[_2307 + 260] = mem[_2307]
                                s = 0
                                t = _2307 + 32
                                u = _2307 + 292
                                while s < mem[_2307]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2307 + 196] = this.address
                                mem[_2307 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2307 + (32 * mem[_2307]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2690 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2698 = mem[_2690]
                                require mem[_2690] <= test266151307()
                                require _2690 + mem[_2690] + 31 < _2690 + return_data.size
                                _2706 = mem[_2690 + mem[_2690]]
                                require mem[_2690 + mem[_2690]] <= test266151307()
                                require _2690 + ceil32(return_data.size) + (32 * mem[_2690 + mem[_2690]]) + 32 <= test266151307() and (32 * mem[_2690 + mem[_2690]]) + 32 >= 0
                                mem[64] = _2690 + ceil32(return_data.size) + (32 * mem[_2690 + mem[_2690]]) + 32
                                mem[_2690 + ceil32(return_data.size)] = _2706
                                require _2698 + (32 * _2706) + 32 <= return_data.size
                                s = 0
                                t = _2690 + _2698 + 32
                                u = _2690 + ceil32(return_data.size) + 32
                                while s < _2706:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2706
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = mem[_2690 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2690 + ceil32(return_data.size) + 64] < mem[_2690 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2267] == bool(mem[_2267])
                        _2321 = mem[_2212 + 96]
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = _2321
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2321
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2385] == bool(mem[_2385])
                        if mem[_2212 + 192] == 1:
                            _2413 = mem[_2212]
                            _2415 = mem[_2212 + 96]
                            _2416 = mem[_2212 + 64]
                            _2417 = mem[_2212 + 128]
                            _2418 = mem[_2212 + 160]
                            mem[mem[64] + 4] = mem[_2212 + 44 len 20]
                            mem[mem[64] + 36] = _2415
                            mem[mem[64] + 68] = address(_2416)
                            mem[mem[64] + 100] = _2417
                            mem[mem[64] + 132] = _2418
                            require ext_code.size(address(_2413))
                            call address(_2413).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2415, address(_2416), _2417, _2418
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2551] == mem[_2551]
                            require mem[_2551 + 32] == mem[_2551 + 32]
                            require idx < mem[96]
                            if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var210002 = var210002 + 1
                                var210003 = mem[_2551]
                                continue 
                            if mem[_2551] < mem[_2551]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2212 + 192] != 2:
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = var210003
                                    continue 
                                if var210003 < var210003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2433 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2433 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2433]
                                mem[_2433 + 32] = mem[_2212 + 44 len 20]
                                require 1 < mem[_2433]
                                mem[_2433 + 64] = mem[_2212 + 76 len 20]
                                _2476 = mem[_2212 + 96]
                                _2477 = mem[_2212 + 128]
                                mem[_2433 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2433 + 100] = _2476
                                mem[_2433 + 132] = _2477
                                mem[_2433 + 164] = 160
                                mem[_2433 + 260] = mem[_2433]
                                s = 0
                                t = _2433 + 32
                                u = _2433 + 292
                                while s < mem[_2433]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2433 + 196] = this.address
                                mem[_2433 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2433 + (32 * mem[_2433]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2691 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2699 = mem[_2691]
                                require mem[_2691] <= test266151307()
                                require _2691 + mem[_2691] + 31 < _2691 + return_data.size
                                _2707 = mem[_2691 + mem[_2691]]
                                require mem[_2691 + mem[_2691]] <= test266151307()
                                require _2691 + ceil32(return_data.size) + (32 * mem[_2691 + mem[_2691]]) + 32 <= test266151307() and (32 * mem[_2691 + mem[_2691]]) + 32 >= 0
                                mem[64] = _2691 + ceil32(return_data.size) + (32 * mem[_2691 + mem[_2691]]) + 32
                                mem[_2691 + ceil32(return_data.size)] = _2707
                                require _2699 + (32 * _2707) + 32 <= return_data.size
                                s = 0
                                t = _2691 + _2699 + 32
                                u = _2691 + ceil32(return_data.size) + 32
                                while s < _2707:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2707
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = mem[_2691 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2691 + ceil32(return_data.size) + 64] < mem[_2691 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var210002) + mem[(32 * idx) + 128] + 32] + 96] = var210003
                    _2220 = mem[_2212]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2220)
                    require ext_code.size(address(_2213))
                    staticcall address(_2213).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2220)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2229] == mem[_2229]
                    if mem[_2229] <= 0:
                        _2250 = mem[_2212 + 96]
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = _2250
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2250
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2264] == bool(mem[_2264])
                        if mem[_2212 + 192] == 1:
                            _2309 = mem[_2212]
                            _2311 = mem[_2212 + 96]
                            _2312 = mem[_2212 + 64]
                            _2313 = mem[_2212 + 128]
                            _2314 = mem[_2212 + 160]
                            mem[mem[64] + 4] = mem[_2212 + 44 len 20]
                            mem[mem[64] + 36] = _2311
                            mem[mem[64] + 68] = address(_2312)
                            mem[mem[64] + 100] = _2313
                            mem[mem[64] + 132] = _2314
                            require ext_code.size(address(_2309))
                            call address(_2309).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2311, address(_2312), _2313, _2314
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2444] == mem[_2444]
                            require mem[_2444 + 32] == mem[_2444 + 32]
                            require idx < mem[96]
                            if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var210002 = var210002 + 1
                                var210003 = mem[_2444]
                                continue 
                            if mem[_2444] < mem[_2444]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2212 + 192] != 2:
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = var210003
                                    continue 
                                if var210003 < var210003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2323 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2323 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2323]
                                mem[_2323 + 32] = mem[_2212 + 44 len 20]
                                require 1 < mem[_2323]
                                mem[_2323 + 64] = mem[_2212 + 76 len 20]
                                _2367 = mem[_2212 + 96]
                                _2368 = mem[_2212 + 128]
                                mem[_2323 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2323 + 100] = _2367
                                mem[_2323 + 132] = _2368
                                mem[_2323 + 164] = 160
                                mem[_2323 + 260] = mem[_2323]
                                s = 0
                                t = _2323 + 32
                                u = _2323 + 292
                                while s < mem[_2323]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2323 + 196] = this.address
                                mem[_2323 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2323 + (32 * mem[_2323]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2692 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2700 = mem[_2692]
                                require mem[_2692] <= test266151307()
                                require _2692 + mem[_2692] + 31 < _2692 + return_data.size
                                _2708 = mem[_2692 + mem[_2692]]
                                require mem[_2692 + mem[_2692]] <= test266151307()
                                require _2692 + ceil32(return_data.size) + (32 * mem[_2692 + mem[_2692]]) + 32 <= test266151307() and (32 * mem[_2692 + mem[_2692]]) + 32 >= 0
                                mem[64] = _2692 + ceil32(return_data.size) + (32 * mem[_2692 + mem[_2692]]) + 32
                                mem[_2692 + ceil32(return_data.size)] = _2708
                                require _2700 + (32 * _2708) + 32 <= return_data.size
                                s = 0
                                t = _2692 + _2700 + 32
                                u = _2692 + ceil32(return_data.size) + 32
                                while s < _2708:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2708
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = mem[_2692 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2692 + ceil32(return_data.size) + 64] < mem[_2692 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2271] == bool(mem[_2271])
                        _2334 = mem[_2212 + 96]
                        mem[mem[64] + 4] = mem[_2212 + 12 len 20]
                        mem[mem[64] + 36] = _2334
                        require ext_code.size(address(_2213))
                        call address(_2213).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2334
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2389] == bool(mem[_2389])
                        if mem[_2212 + 192] == 1:
                            _2435 = mem[_2212]
                            _2437 = mem[_2212 + 96]
                            _2438 = mem[_2212 + 64]
                            _2439 = mem[_2212 + 128]
                            _2440 = mem[_2212 + 160]
                            mem[mem[64] + 4] = mem[_2212 + 44 len 20]
                            mem[mem[64] + 36] = _2437
                            mem[mem[64] + 68] = address(_2438)
                            mem[mem[64] + 100] = _2439
                            mem[mem[64] + 132] = _2440
                            require ext_code.size(address(_2435))
                            call address(_2435).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2437, address(_2438), _2439, _2440
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2553 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2553] == mem[_2553]
                            require mem[_2553 + 32] == mem[_2553 + 32]
                            require idx < mem[96]
                            if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var210002 = var210002 + 1
                                var210003 = mem[_2553]
                                continue 
                            if mem[_2553] < mem[_2553]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2212 + 192] != 2:
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = var210003
                                    continue 
                                if var210003 < var210003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2445 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2445 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2445]
                                mem[_2445 + 32] = mem[_2212 + 44 len 20]
                                require 1 < mem[_2445]
                                mem[_2445 + 64] = mem[_2212 + 76 len 20]
                                _2487 = mem[_2212 + 96]
                                _2488 = mem[_2212 + 128]
                                mem[_2445 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2445 + 100] = _2487
                                mem[_2445 + 132] = _2488
                                mem[_2445 + 164] = 160
                                mem[_2445 + 260] = mem[_2445]
                                s = 0
                                t = _2445 + 32
                                u = _2445 + 292
                                while s < mem[_2445]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2445 + 196] = this.address
                                mem[_2445 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2445 + (32 * mem[_2445]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2693 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2701 = mem[_2693]
                                require mem[_2693] <= test266151307()
                                require _2693 + mem[_2693] + 31 < _2693 + return_data.size
                                _2709 = mem[_2693 + mem[_2693]]
                                require mem[_2693 + mem[_2693]] <= test266151307()
                                require _2693 + ceil32(return_data.size) + (32 * mem[_2693 + mem[_2693]]) + 32 <= test266151307() and (32 * mem[_2693 + mem[_2693]]) + 32 >= 0
                                mem[64] = _2693 + ceil32(return_data.size) + (32 * mem[_2693 + mem[_2693]]) + 32
                                mem[_2693 + ceil32(return_data.size)] = _2709
                                require _2701 + (32 * _2709) + 32 <= return_data.size
                                s = 0
                                t = _2693 + _2701 + 32
                                u = _2693 + ceil32(return_data.size) + 32
                                while s < _2709:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2709
                                require idx < mem[96]
                                if var210002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var210002 = var210002 + 1
                                    var210003 = mem[_2693 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2693 + ceil32(return_data.size) + 64] < mem[_2693 + ceil32(return_data.size) + 64]:
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
            _614 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _619 = mem[_614]
            require mem[_614] == mem[_614]
            if mem[_614]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_614]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_614] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _619
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _619
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_693] == bool(mem[_693])
                    if not mem[_693]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _620 = mem[_615]
            require mem[_615] == mem[_615]
            if mem[_615]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_615]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_615] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _620
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _620
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _694 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_694] == bool(mem[_694])
                    if not mem[_694]:
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
        _308 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_308] == bool(mem[_308])
        if not mem[_308]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _575 = mem[96]
        idx = 0
        while idx < _575:
            require idx < mem[96]
            if var243003 >= mem[mem[(32 * idx) + 128]]:
                if var243004 < var243004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2202 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2202] = 0
                mem[_2202 + 32] = 0
                mem[_2202 + 64] = 0
                mem[_2202 + 96] = 0
                mem[_2202 + 128] = 0
                mem[_2202 + 160] = 0
                mem[_2202 + 192] = 0
                require idx < mem[96]
                require var247002 < mem[mem[(32 * idx) + 128]]
                _2210 = mem[(32 * var247002) + mem[(32 * idx) + 128] + 32]
                _2211 = mem[mem[(32 * var247002) + mem[(32 * idx) + 128] + 32] + 32]
                if var247002 <= 0:
                    _2214 = mem[mem[(32 * var247002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2214)
                    require ext_code.size(address(_2211))
                    staticcall address(_2211).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2214)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2226 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2226] == mem[_2226]
                    if mem[_2226] <= 0:
                        _2235 = mem[_2210 + 96]
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = _2235
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2235
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2258] == bool(mem[_2258])
                        if mem[_2210 + 192] == 1:
                            _2281 = mem[_2210]
                            _2283 = mem[_2210 + 96]
                            _2284 = mem[_2210 + 64]
                            _2285 = mem[_2210 + 128]
                            _2286 = mem[_2210 + 160]
                            mem[mem[64] + 4] = mem[_2210 + 44 len 20]
                            mem[mem[64] + 36] = _2283
                            mem[mem[64] + 68] = address(_2284)
                            mem[mem[64] + 100] = _2285
                            mem[mem[64] + 132] = _2286
                            require ext_code.size(address(_2281))
                            call address(_2281).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2283, address(_2284), _2285, _2286
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2422 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2422] == mem[_2422]
                            require mem[_2422 + 32] == mem[_2422 + 32]
                            require idx < mem[96]
                            if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var247002 = var247002 + 1
                                var247003 = mem[_2422]
                                continue 
                            if mem[_2422] < mem[_2422]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2210 + 192] != 2:
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = var247003
                                    continue 
                                if var247003 < var247003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2298 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2298 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2298]
                                mem[_2298 + 32] = mem[_2210 + 44 len 20]
                                require 1 < mem[_2298]
                                mem[_2298 + 64] = mem[_2210 + 76 len 20]
                                _2350 = mem[_2210 + 96]
                                _2351 = mem[_2210 + 128]
                                mem[_2298 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2298 + 100] = _2350
                                mem[_2298 + 132] = _2351
                                mem[_2298 + 164] = 160
                                mem[_2298 + 260] = mem[_2298]
                                s = 0
                                t = _2298 + 32
                                u = _2298 + 292
                                while s < mem[_2298]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2298 + 196] = this.address
                                mem[_2298 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2298 + (32 * mem[_2298]) + -mem[64] + 288]
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
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = mem[_2686 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2686 + ceil32(return_data.size) + 64] < mem[_2686 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2266] == bool(mem[_2266])
                        _2317 = mem[_2210 + 96]
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = _2317
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2317
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2383] == bool(mem[_2383])
                        if mem[_2210 + 192] == 1:
                            _2403 = mem[_2210]
                            _2405 = mem[_2210 + 96]
                            _2406 = mem[_2210 + 64]
                            _2407 = mem[_2210 + 128]
                            _2408 = mem[_2210 + 160]
                            mem[mem[64] + 4] = mem[_2210 + 44 len 20]
                            mem[mem[64] + 36] = _2405
                            mem[mem[64] + 68] = address(_2406)
                            mem[mem[64] + 100] = _2407
                            mem[mem[64] + 132] = _2408
                            require ext_code.size(address(_2403))
                            call address(_2403).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2405, address(_2406), _2407, _2408
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2550] == mem[_2550]
                            require mem[_2550 + 32] == mem[_2550 + 32]
                            require idx < mem[96]
                            if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var247002 = var247002 + 1
                                var247003 = mem[_2550]
                                continue 
                            if mem[_2550] < mem[_2550]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2210 + 192] != 2:
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = var247003
                                    continue 
                                if var247003 < var247003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2423 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2423 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2423]
                                mem[_2423 + 32] = mem[_2210 + 44 len 20]
                                require 1 < mem[_2423]
                                mem[_2423 + 64] = mem[_2210 + 76 len 20]
                                _2468 = mem[_2210 + 96]
                                _2469 = mem[_2210 + 128]
                                mem[_2423 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2423 + 100] = _2468
                                mem[_2423 + 132] = _2469
                                mem[_2423 + 164] = 160
                                mem[_2423 + 260] = mem[_2423]
                                s = 0
                                t = _2423 + 32
                                u = _2423 + 292
                                while s < mem[_2423]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2423 + 196] = this.address
                                mem[_2423 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2423 + (32 * mem[_2423]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2687 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2695 = mem[_2687]
                                require mem[_2687] <= test266151307()
                                require _2687 + mem[_2687] + 31 < _2687 + return_data.size
                                _2703 = mem[_2687 + mem[_2687]]
                                require mem[_2687 + mem[_2687]] <= test266151307()
                                require _2687 + ceil32(return_data.size) + (32 * mem[_2687 + mem[_2687]]) + 32 <= test266151307() and (32 * mem[_2687 + mem[_2687]]) + 32 >= 0
                                mem[64] = _2687 + ceil32(return_data.size) + (32 * mem[_2687 + mem[_2687]]) + 32
                                mem[_2687 + ceil32(return_data.size)] = _2703
                                require _2695 + (32 * _2703) + 32 <= return_data.size
                                s = 0
                                t = _2687 + _2695 + 32
                                u = _2687 + ceil32(return_data.size) + 32
                                while s < _2703:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2703
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = mem[_2687 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2687 + ceil32(return_data.size) + 64] < mem[_2687 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var247002) + mem[(32 * idx) + 128] + 32] + 96] = var247003
                    _2218 = mem[_2210]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2218)
                    require ext_code.size(address(_2211))
                    staticcall address(_2211).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2218)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2228] == mem[_2228]
                    if mem[_2228] <= 0:
                        _2245 = mem[_2210 + 96]
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = _2245
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2245
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2262] == bool(mem[_2262])
                        if mem[_2210 + 192] == 1:
                            _2300 = mem[_2210]
                            _2302 = mem[_2210 + 96]
                            _2303 = mem[_2210 + 64]
                            _2304 = mem[_2210 + 128]
                            _2305 = mem[_2210 + 160]
                            mem[mem[64] + 4] = mem[_2210 + 44 len 20]
                            mem[mem[64] + 36] = _2302
                            mem[mem[64] + 68] = address(_2303)
                            mem[mem[64] + 100] = _2304
                            mem[mem[64] + 132] = _2305
                            require ext_code.size(address(_2300))
                            call address(_2300).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2302, address(_2303), _2304, _2305
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2442] == mem[_2442]
                            require mem[_2442 + 32] == mem[_2442 + 32]
                            require idx < mem[96]
                            if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var247002 = var247002 + 1
                                var247003 = mem[_2442]
                                continue 
                            if mem[_2442] < mem[_2442]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2210 + 192] != 2:
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = var247003
                                    continue 
                                if var247003 < var247003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2319 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2319 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2319]
                                mem[_2319 + 32] = mem[_2210 + 44 len 20]
                                require 1 < mem[_2319]
                                mem[_2319 + 64] = mem[_2210 + 76 len 20]
                                _2364 = mem[_2210 + 96]
                                _2365 = mem[_2210 + 128]
                                mem[_2319 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2319 + 100] = _2364
                                mem[_2319 + 132] = _2365
                                mem[_2319 + 164] = 160
                                mem[_2319 + 260] = mem[_2319]
                                s = 0
                                t = _2319 + 32
                                u = _2319 + 292
                                while s < mem[_2319]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2319 + 196] = this.address
                                mem[_2319 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2319 + (32 * mem[_2319]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2688 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2696 = mem[_2688]
                                require mem[_2688] <= test266151307()
                                require _2688 + mem[_2688] + 31 < _2688 + return_data.size
                                _2704 = mem[_2688 + mem[_2688]]
                                require mem[_2688 + mem[_2688]] <= test266151307()
                                require _2688 + ceil32(return_data.size) + (32 * mem[_2688 + mem[_2688]]) + 32 <= test266151307() and (32 * mem[_2688 + mem[_2688]]) + 32 >= 0
                                mem[64] = _2688 + ceil32(return_data.size) + (32 * mem[_2688 + mem[_2688]]) + 32
                                mem[_2688 + ceil32(return_data.size)] = _2704
                                require _2696 + (32 * _2704) + 32 <= return_data.size
                                s = 0
                                t = _2688 + _2696 + 32
                                u = _2688 + ceil32(return_data.size) + 32
                                while s < _2704:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2704
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = mem[_2688 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2688 + ceil32(return_data.size) + 64] < mem[_2688 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2269] == bool(mem[_2269])
                        _2328 = mem[_2210 + 96]
                        mem[mem[64] + 4] = mem[_2210 + 12 len 20]
                        mem[mem[64] + 36] = _2328
                        require ext_code.size(address(_2211))
                        call address(_2211).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2328
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2387] == bool(mem[_2387])
                        if mem[_2210 + 192] == 1:
                            _2425 = mem[_2210]
                            _2427 = mem[_2210 + 96]
                            _2428 = mem[_2210 + 64]
                            _2429 = mem[_2210 + 128]
                            _2430 = mem[_2210 + 160]
                            mem[mem[64] + 4] = mem[_2210 + 44 len 20]
                            mem[mem[64] + 36] = _2427
                            mem[mem[64] + 68] = address(_2428)
                            mem[mem[64] + 100] = _2429
                            mem[mem[64] + 132] = _2430
                            require ext_code.size(address(_2425))
                            call address(_2425).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2427, address(_2428), _2429, _2430
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2552 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2552] == mem[_2552]
                            require mem[_2552 + 32] == mem[_2552 + 32]
                            require idx < mem[96]
                            if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var247002 = var247002 + 1
                                var247003 = mem[_2552]
                                continue 
                            if mem[_2552] < mem[_2552]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2210 + 192] != 2:
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = var247003
                                    continue 
                                if var247003 < var247003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2443 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_2443 + 32 len 64] = code.data[7226 len 64]
                                require 0 < mem[_2443]
                                mem[_2443 + 32] = mem[_2210 + 44 len 20]
                                require 1 < mem[_2443]
                                mem[_2443 + 64] = mem[_2210 + 76 len 20]
                                _2484 = mem[_2210 + 96]
                                _2485 = mem[_2210 + 128]
                                mem[_2443 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2443 + 100] = _2484
                                mem[_2443 + 132] = _2485
                                mem[_2443 + 164] = 160
                                mem[_2443 + 260] = mem[_2443]
                                s = 0
                                t = _2443 + 32
                                u = _2443 + 292
                                while s < mem[_2443]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2443 + 196] = this.address
                                mem[_2443 + 228] = 20
                                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2443 + (32 * mem[_2443]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2689 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2697 = mem[_2689]
                                require mem[_2689] <= test266151307()
                                require _2689 + mem[_2689] + 31 < _2689 + return_data.size
                                _2705 = mem[_2689 + mem[_2689]]
                                require mem[_2689 + mem[_2689]] <= test266151307()
                                require _2689 + ceil32(return_data.size) + (32 * mem[_2689 + mem[_2689]]) + 32 <= test266151307() and (32 * mem[_2689 + mem[_2689]]) + 32 >= 0
                                mem[64] = _2689 + ceil32(return_data.size) + (32 * mem[_2689 + mem[_2689]]) + 32
                                mem[_2689 + ceil32(return_data.size)] = _2705
                                require _2697 + (32 * _2705) + 32 <= return_data.size
                                s = 0
                                t = _2689 + _2697 + 32
                                u = _2689 + ceil32(return_data.size) + 32
                                while s < _2705:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2705
                                require idx < mem[96]
                                if var247002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var247002 = var247002 + 1
                                    var247003 = mem[_2689 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2689 + ceil32(return_data.size) + 64] < mem[_2689 + ceil32(return_data.size) + 64]:
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
            _612 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _616 = mem[_612]
            require mem[_612] == mem[_612]
            if mem[_612]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
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
            _613 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _617 = mem[_613]
            require mem[_613] == mem[_613]
            if mem[_613]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args mem[_613]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_613] wei
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
    return 0
}



}
