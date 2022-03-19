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
            _576 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_576] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_576 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_576 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_576 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_576 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_576 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_576 + 192] = cd[(v + 192)]
            mem[w] = _576
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
        _567 = mem[96]
        idx = 0
        while idx < _567:
            require idx < mem[96]
            if var213003 >= mem[mem[(32 * idx) + 128]]:
                if var213004 < var213004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2306 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2306] = 0
                mem[_2306 + 32] = 0
                mem[_2306 + 64] = 0
                mem[_2306 + 96] = 0
                mem[_2306 + 128] = 0
                mem[_2306 + 160] = 0
                mem[_2306 + 192] = 0
                require idx < mem[96]
                require var217002 < mem[mem[(32 * idx) + 128]]
                _2315 = mem[(32 * var217002) + mem[(32 * idx) + 128] + 32]
                _2316 = mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32] + 32]
                if var217002 <= 0:
                    _2319 = mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2319)
                    require ext_code.size(address(_2316))
                    staticcall address(_2316).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2319)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2330] == mem[_2330]
                    if mem[_2330] <= 0:
                        _2343 = mem[_2315 + 96]
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = _2343
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2343
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2363] == bool(mem[_2363])
                        if mem[_2315 + 192] == 1:
                            _2393 = mem[_2315]
                            _2395 = mem[_2315 + 96]
                            _2396 = mem[_2315 + 64]
                            _2397 = mem[_2315 + 128]
                            _2398 = mem[_2315 + 160]
                            mem[mem[64] + 4] = mem[_2315 + 44 len 20]
                            mem[mem[64] + 36] = _2395
                            mem[mem[64] + 68] = address(_2396)
                            mem[mem[64] + 100] = _2397
                            mem[mem[64] + 132] = _2398
                            require ext_code.size(address(_2393))
                            call address(_2393).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2395, address(_2396), _2397, _2398
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2541] == mem[_2541]
                            require mem[_2541 + 32] == mem[_2541 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2541]
                                continue 
                            if mem[_2541] < mem[_2541]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2315 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2411 = mem[_2315]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2443 = mem[_2315 + 96]
                                mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                                mem[mem[64] + 36] = _2443
                                require ext_code.size(address(_2316))
                                call address(_2316).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2443
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2485 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2485] == bool(mem[_2485])
                                _2514 = mem[_2315 + 96]
                                _2515 = mem[_2315 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2514
                                mem[mem[64] + 36] = _2515
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
                                require ext_code.size(address(_2411))
                                call address(_2411).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2514, _2515, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2825 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2833 = mem[_2825]
                                require mem[_2825] <= test266151307()
                                require _2825 + mem[_2825] + 31 < _2825 + return_data.size
                                _2841 = mem[_2825 + mem[_2825]]
                                require mem[_2825 + mem[_2825]] <= test266151307()
                                require _2825 + ceil32(return_data.size) + (32 * mem[_2825 + mem[_2825]]) + 32 <= test266151307() and (32 * mem[_2825 + mem[_2825]]) + 32 >= 0
                                mem[64] = _2825 + ceil32(return_data.size) + (32 * mem[_2825 + mem[_2825]]) + 32
                                mem[_2825 + ceil32(return_data.size)] = _2841
                                require _2833 + (32 * _2841) + 32 <= return_data.size
                                s = 0
                                t = _2825 + _2833 + 32
                                u = _2825 + ceil32(return_data.size) + 32
                                while s < _2841:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2841
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2825 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2825 + ceil32(return_data.size) + 64] < mem[_2825 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2370] == bool(mem[_2370])
                        _2429 = mem[_2315 + 96]
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = _2429
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2429
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2481] == bool(mem[_2481])
                        if mem[_2315 + 192] == 1:
                            _2518 = mem[_2315]
                            _2520 = mem[_2315 + 96]
                            _2521 = mem[_2315 + 64]
                            _2522 = mem[_2315 + 128]
                            _2523 = mem[_2315 + 160]
                            mem[mem[64] + 4] = mem[_2315 + 44 len 20]
                            mem[mem[64] + 36] = _2520
                            mem[mem[64] + 68] = address(_2521)
                            mem[mem[64] + 100] = _2522
                            mem[mem[64] + 132] = _2523
                            require ext_code.size(address(_2518))
                            call address(_2518).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2520, address(_2521), _2522, _2523
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2655] == mem[_2655]
                            require mem[_2655 + 32] == mem[_2655 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2655]
                                continue 
                            if mem[_2655] < mem[_2655]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2315 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2542 = mem[_2315]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2570 = mem[_2315 + 96]
                                mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                                mem[mem[64] + 36] = _2570
                                require ext_code.size(address(_2316))
                                call address(_2316).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2570
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2614] == bool(mem[_2614])
                                _2647 = mem[_2315 + 96]
                                _2648 = mem[_2315 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2647
                                mem[mem[64] + 36] = _2648
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
                                require ext_code.size(address(_2542))
                                call address(_2542).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2647, _2648, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2826 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2834 = mem[_2826]
                                require mem[_2826] <= test266151307()
                                require _2826 + mem[_2826] + 31 < _2826 + return_data.size
                                _2842 = mem[_2826 + mem[_2826]]
                                require mem[_2826 + mem[_2826]] <= test266151307()
                                require _2826 + ceil32(return_data.size) + (32 * mem[_2826 + mem[_2826]]) + 32 <= test266151307() and (32 * mem[_2826 + mem[_2826]]) + 32 >= 0
                                mem[64] = _2826 + ceil32(return_data.size) + (32 * mem[_2826 + mem[_2826]]) + 32
                                mem[_2826 + ceil32(return_data.size)] = _2842
                                require _2834 + (32 * _2842) + 32 <= return_data.size
                                s = 0
                                t = _2826 + _2834 + 32
                                u = _2826 + ceil32(return_data.size) + 32
                                while s < _2842:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2842
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2826 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2826 + ceil32(return_data.size) + 64] < mem[_2826 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var217002) + mem[(32 * idx) + 128] + 32] + 96] = var217003
                    _2323 = mem[_2315]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2323)
                    require ext_code.size(address(_2316))
                    staticcall address(_2316).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2323)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2332] == mem[_2332]
                    if mem[_2332] <= 0:
                        _2353 = mem[_2315 + 96]
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = _2353
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2353
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2367 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2367] == bool(mem[_2367])
                        if mem[_2315 + 192] == 1:
                            _2414 = mem[_2315]
                            _2416 = mem[_2315 + 96]
                            _2417 = mem[_2315 + 64]
                            _2418 = mem[_2315 + 128]
                            _2419 = mem[_2315 + 160]
                            mem[mem[64] + 4] = mem[_2315 + 44 len 20]
                            mem[mem[64] + 36] = _2416
                            mem[mem[64] + 68] = address(_2417)
                            mem[mem[64] + 100] = _2418
                            mem[mem[64] + 132] = _2419
                            require ext_code.size(address(_2414))
                            call address(_2414).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2416, address(_2417), _2418, _2419
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2560] == mem[_2560]
                            require mem[_2560 + 32] == mem[_2560 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2560]
                                continue 
                            if mem[_2560] < mem[_2560]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2315 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2431 = mem[_2315]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2459 = mem[_2315 + 96]
                                mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                                mem[mem[64] + 36] = _2459
                                require ext_code.size(address(_2316))
                                call address(_2316).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2459
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2488 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2488] == bool(mem[_2488])
                                _2544 = mem[_2315 + 96]
                                _2545 = mem[_2315 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2544
                                mem[mem[64] + 36] = _2545
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
                                require ext_code.size(address(_2431))
                                call address(_2431).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2544, _2545, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2827 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2835 = mem[_2827]
                                require mem[_2827] <= test266151307()
                                require _2827 + mem[_2827] + 31 < _2827 + return_data.size
                                _2843 = mem[_2827 + mem[_2827]]
                                require mem[_2827 + mem[_2827]] <= test266151307()
                                require _2827 + ceil32(return_data.size) + (32 * mem[_2827 + mem[_2827]]) + 32 <= test266151307() and (32 * mem[_2827 + mem[_2827]]) + 32 >= 0
                                mem[64] = _2827 + ceil32(return_data.size) + (32 * mem[_2827 + mem[_2827]]) + 32
                                mem[_2827 + ceil32(return_data.size)] = _2843
                                require _2835 + (32 * _2843) + 32 <= return_data.size
                                s = 0
                                t = _2827 + _2835 + 32
                                u = _2827 + ceil32(return_data.size) + 32
                                while s < _2843:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2843
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2827 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2827 + ceil32(return_data.size) + 64] < mem[_2827 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2374] == bool(mem[_2374])
                        _2447 = mem[_2315 + 96]
                        mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                        mem[mem[64] + 36] = _2447
                        require ext_code.size(address(_2316))
                        call address(_2316).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2447
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2486] == bool(mem[_2486])
                        if mem[_2315 + 192] == 1:
                            _2548 = mem[_2315]
                            _2550 = mem[_2315 + 96]
                            _2551 = mem[_2315 + 64]
                            _2552 = mem[_2315 + 128]
                            _2553 = mem[_2315 + 160]
                            mem[mem[64] + 4] = mem[_2315 + 44 len 20]
                            mem[mem[64] + 36] = _2550
                            mem[mem[64] + 68] = address(_2551)
                            mem[mem[64] + 100] = _2552
                            mem[mem[64] + 132] = _2553
                            require ext_code.size(address(_2548))
                            call address(_2548).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2550, address(_2551), _2552, _2553
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2660] == mem[_2660]
                            require mem[_2660 + 32] == mem[_2660 + 32]
                            require idx < mem[96]
                            if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var217002 = var217002 + 1
                                var217003 = mem[_2660]
                                continue 
                            if mem[_2660] < mem[_2660]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2315 + 192] != 2:
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = var217003
                                    continue 
                                if var217003 < var217003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2561 = mem[_2315]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2585 = mem[_2315 + 96]
                                mem[mem[64] + 4] = mem[_2315 + 12 len 20]
                                mem[mem[64] + 36] = _2585
                                require ext_code.size(address(_2316))
                                call address(_2316).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2585
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2618 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2618] == bool(mem[_2618])
                                _2656 = mem[_2315 + 96]
                                _2657 = mem[_2315 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2656
                                mem[mem[64] + 36] = _2657
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
                                require ext_code.size(address(_2561))
                                call address(_2561).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2656, _2657, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2828 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2836 = mem[_2828]
                                require mem[_2828] <= test266151307()
                                require _2828 + mem[_2828] + 31 < _2828 + return_data.size
                                _2844 = mem[_2828 + mem[_2828]]
                                require mem[_2828 + mem[_2828]] <= test266151307()
                                require _2828 + ceil32(return_data.size) + (32 * mem[_2828 + mem[_2828]]) + 32 <= test266151307() and (32 * mem[_2828 + mem[_2828]]) + 32 >= 0
                                mem[64] = _2828 + ceil32(return_data.size) + (32 * mem[_2828 + mem[_2828]]) + 32
                                mem[_2828 + ceil32(return_data.size)] = _2844
                                require _2836 + (32 * _2844) + 32 <= return_data.size
                                s = 0
                                t = _2828 + _2836 + 32
                                u = _2828 + ceil32(return_data.size) + 32
                                while s < _2844:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2844
                                require idx < mem[96]
                                if var217002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var217002 = var217002 + 1
                                    var217003 = mem[_2828 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2828 + ceil32(return_data.size) + 64] < mem[_2828 + ceil32(return_data.size) + 64]:
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
            _610 = mem[_605]
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
            _611 = mem[_606]
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
                    mem[mem[64] + 36] = _611
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _611
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_685] == bool(mem[_685])
                    if not mem[_685]:
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
        _566 = mem[96]
        idx = 0
        while idx < _566:
            require idx < mem[96]
            if var250003 >= mem[mem[(32 * idx) + 128]]:
                if var250004 < var250004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2305 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2305] = 0
                mem[_2305 + 32] = 0
                mem[_2305 + 64] = 0
                mem[_2305 + 96] = 0
                mem[_2305 + 128] = 0
                mem[_2305 + 160] = 0
                mem[_2305 + 192] = 0
                require idx < mem[96]
                require var254002 < mem[mem[(32 * idx) + 128]]
                _2313 = mem[(32 * var254002) + mem[(32 * idx) + 128] + 32]
                _2314 = mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32] + 32]
                if var254002 <= 0:
                    _2317 = mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2317)
                    require ext_code.size(address(_2314))
                    staticcall address(_2314).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2317)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2329] == mem[_2329]
                    if mem[_2329] <= 0:
                        _2338 = mem[_2313 + 96]
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = _2338
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2338
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2361] == bool(mem[_2361])
                        if mem[_2313 + 192] == 1:
                            _2384 = mem[_2313]
                            _2386 = mem[_2313 + 96]
                            _2387 = mem[_2313 + 64]
                            _2388 = mem[_2313 + 128]
                            _2389 = mem[_2313 + 160]
                            mem[mem[64] + 4] = mem[_2313 + 44 len 20]
                            mem[mem[64] + 36] = _2386
                            mem[mem[64] + 68] = address(_2387)
                            mem[mem[64] + 100] = _2388
                            mem[mem[64] + 132] = _2389
                            require ext_code.size(address(_2384))
                            call address(_2384).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2386, address(_2387), _2388, _2389
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2527] == mem[_2527]
                            require mem[_2527 + 32] == mem[_2527 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2527]
                                continue 
                            if mem[_2527] < mem[_2527]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2313 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2401 = mem[_2313]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2435 = mem[_2313 + 96]
                                mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                                mem[mem[64] + 36] = _2435
                                require ext_code.size(address(_2314))
                                call address(_2314).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2435
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2483 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2483] == bool(mem[_2483])
                                _2501 = mem[_2313 + 96]
                                _2502 = mem[_2313 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2501
                                mem[mem[64] + 36] = _2502
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
                                require ext_code.size(address(_2401))
                                call address(_2401).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2501, _2502, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2821 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2829 = mem[_2821]
                                require mem[_2821] <= test266151307()
                                require _2821 + mem[_2821] + 31 < _2821 + return_data.size
                                _2837 = mem[_2821 + mem[_2821]]
                                require mem[_2821 + mem[_2821]] <= test266151307()
                                require _2821 + ceil32(return_data.size) + (32 * mem[_2821 + mem[_2821]]) + 32 <= test266151307() and (32 * mem[_2821 + mem[_2821]]) + 32 >= 0
                                mem[64] = _2821 + ceil32(return_data.size) + (32 * mem[_2821 + mem[_2821]]) + 32
                                mem[_2821 + ceil32(return_data.size)] = _2837
                                require _2829 + (32 * _2837) + 32 <= return_data.size
                                s = 0
                                t = _2821 + _2829 + 32
                                u = _2821 + ceil32(return_data.size) + 32
                                while s < _2837:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2837
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2821 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2821 + ceil32(return_data.size) + 64] < mem[_2821 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2369] == bool(mem[_2369])
                        _2423 = mem[_2313 + 96]
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = _2423
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2423
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2479] == bool(mem[_2479])
                        if mem[_2313 + 192] == 1:
                            _2505 = mem[_2313]
                            _2507 = mem[_2313 + 96]
                            _2508 = mem[_2313 + 64]
                            _2509 = mem[_2313 + 128]
                            _2510 = mem[_2313 + 160]
                            mem[mem[64] + 4] = mem[_2313 + 44 len 20]
                            mem[mem[64] + 36] = _2507
                            mem[mem[64] + 68] = address(_2508)
                            mem[mem[64] + 100] = _2509
                            mem[mem[64] + 132] = _2510
                            require ext_code.size(address(_2505))
                            call address(_2505).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2507, address(_2508), _2509, _2510
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2651] == mem[_2651]
                            require mem[_2651 + 32] == mem[_2651 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2651]
                                continue 
                            if mem[_2651] < mem[_2651]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2313 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2528 = mem[_2313]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2565 = mem[_2313 + 96]
                                mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                                mem[mem[64] + 36] = _2565
                                require ext_code.size(address(_2314))
                                call address(_2314).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2565
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2613] == bool(mem[_2613])
                                _2643 = mem[_2313 + 96]
                                _2644 = mem[_2313 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2643
                                mem[mem[64] + 36] = _2644
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
                                require ext_code.size(address(_2528))
                                call address(_2528).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2643, _2644, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2822 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2830 = mem[_2822]
                                require mem[_2822] <= test266151307()
                                require _2822 + mem[_2822] + 31 < _2822 + return_data.size
                                _2838 = mem[_2822 + mem[_2822]]
                                require mem[_2822 + mem[_2822]] <= test266151307()
                                require _2822 + ceil32(return_data.size) + (32 * mem[_2822 + mem[_2822]]) + 32 <= test266151307() and (32 * mem[_2822 + mem[_2822]]) + 32 >= 0
                                mem[64] = _2822 + ceil32(return_data.size) + (32 * mem[_2822 + mem[_2822]]) + 32
                                mem[_2822 + ceil32(return_data.size)] = _2838
                                require _2830 + (32 * _2838) + 32 <= return_data.size
                                s = 0
                                t = _2822 + _2830 + 32
                                u = _2822 + ceil32(return_data.size) + 32
                                while s < _2838:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2838
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2822 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2822 + ceil32(return_data.size) + 64] < mem[_2822 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var254002) + mem[(32 * idx) + 128] + 32] + 96] = var254003
                    _2321 = mem[_2313]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2321)
                    require ext_code.size(address(_2314))
                    staticcall address(_2314).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2321)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2331] == mem[_2331]
                    if mem[_2331] <= 0:
                        _2348 = mem[_2313 + 96]
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = _2348
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2348
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2365 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2365] == bool(mem[_2365])
                        if mem[_2313 + 192] == 1:
                            _2404 = mem[_2313]
                            _2406 = mem[_2313 + 96]
                            _2407 = mem[_2313 + 64]
                            _2408 = mem[_2313 + 128]
                            _2409 = mem[_2313 + 160]
                            mem[mem[64] + 4] = mem[_2313 + 44 len 20]
                            mem[mem[64] + 36] = _2406
                            mem[mem[64] + 68] = address(_2407)
                            mem[mem[64] + 100] = _2408
                            mem[mem[64] + 132] = _2409
                            require ext_code.size(address(_2404))
                            call address(_2404).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2406, address(_2407), _2408, _2409
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2556 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2556] == mem[_2556]
                            require mem[_2556 + 32] == mem[_2556 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2556]
                                continue 
                            if mem[_2556] < mem[_2556]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2313 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2425 = mem[_2313]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2453 = mem[_2313 + 96]
                                mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                                mem[mem[64] + 36] = _2453
                                require ext_code.size(address(_2314))
                                call address(_2314).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2453
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2487 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2487] == bool(mem[_2487])
                                _2530 = mem[_2313 + 96]
                                _2531 = mem[_2313 + 128]
                                _2532 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2530
                                mem[mem[64] + 36] = _2531
                                mem[mem[64] + 68] = 160
                                _2601 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _2601:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2532 + 100] = this.address
                                mem[_2532 + 132] = cd[164]
                                require ext_code.size(address(_2425))
                                call address(_2425).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2532 + (32 * _2601) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2823 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2831 = mem[_2823]
                                require mem[_2823] <= test266151307()
                                require _2823 + mem[_2823] + 31 < _2823 + return_data.size
                                _2839 = mem[_2823 + mem[_2823]]
                                require mem[_2823 + mem[_2823]] <= test266151307()
                                require _2823 + ceil32(return_data.size) + (32 * mem[_2823 + mem[_2823]]) + 32 <= test266151307() and (32 * mem[_2823 + mem[_2823]]) + 32 >= 0
                                mem[64] = _2823 + ceil32(return_data.size) + (32 * mem[_2823 + mem[_2823]]) + 32
                                mem[_2823 + ceil32(return_data.size)] = _2839
                                require _2831 + (32 * _2839) + 32 <= return_data.size
                                s = 0
                                t = _2823 + _2831 + 32
                                u = _2823 + ceil32(return_data.size) + 32
                                while s < _2839:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2839
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2823 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2823 + ceil32(return_data.size) + 64] < mem[_2823 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2372] == bool(mem[_2372])
                        _2439 = mem[_2313 + 96]
                        mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                        mem[mem[64] + 36] = _2439
                        require ext_code.size(address(_2314))
                        call address(_2314).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2439
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2484] == bool(mem[_2484])
                        if mem[_2313 + 192] == 1:
                            _2534 = mem[_2313]
                            _2536 = mem[_2313 + 96]
                            _2537 = mem[_2313 + 64]
                            _2538 = mem[_2313 + 128]
                            _2539 = mem[_2313 + 160]
                            mem[mem[64] + 4] = mem[_2313 + 44 len 20]
                            mem[mem[64] + 36] = _2536
                            mem[mem[64] + 68] = address(_2537)
                            mem[mem[64] + 100] = _2538
                            mem[mem[64] + 132] = _2539
                            require ext_code.size(address(_2534))
                            call address(_2534).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2536, address(_2537), _2538, _2539
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2659] == mem[_2659]
                            require mem[_2659 + 32] == mem[_2659 + 32]
                            require idx < mem[96]
                            if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var254002 = var254002 + 1
                                var254003 = mem[_2659]
                                continue 
                            if mem[_2659] < mem[_2659]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2313 + 192] != 2:
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = var254003
                                    continue 
                                if var254003 < var254003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2557 = mem[_2313]
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2578 = mem[_2313 + 96]
                                mem[mem[64] + 4] = mem[_2313 + 12 len 20]
                                mem[mem[64] + 36] = _2578
                                require ext_code.size(address(_2314))
                                call address(_2314).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2578
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2616] == bool(mem[_2616])
                                _2652 = mem[_2313 + 96]
                                _2653 = mem[_2313 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2652
                                mem[mem[64] + 36] = _2653
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
                                require ext_code.size(address(_2557))
                                call address(_2557).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2652, _2653, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2824 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2832 = mem[_2824]
                                require mem[_2824] <= test266151307()
                                require _2824 + mem[_2824] + 31 < _2824 + return_data.size
                                _2840 = mem[_2824 + mem[_2824]]
                                require mem[_2824 + mem[_2824]] <= test266151307()
                                require _2824 + ceil32(return_data.size) + (32 * mem[_2824 + mem[_2824]]) + 32 <= test266151307() and (32 * mem[_2824 + mem[_2824]]) + 32 >= 0
                                mem[64] = _2824 + ceil32(return_data.size) + (32 * mem[_2824 + mem[_2824]]) + 32
                                mem[_2824 + ceil32(return_data.size)] = _2840
                                require _2832 + (32 * _2840) + 32 <= return_data.size
                                s = 0
                                t = _2824 + _2832 + 32
                                u = _2824 + ceil32(return_data.size) + 32
                                while s < _2840:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _2840
                                require idx < mem[96]
                                if var254002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var254002 = var254002 + 1
                                    var254003 = mem[_2824 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_2824 + ceil32(return_data.size) + 64] < mem[_2824 + ceil32(return_data.size) + 64]:
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
            _603 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _607 = mem[_603]
            require mem[_603] == mem[_603]
            if mem[_603]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_603]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_603] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _607
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _607
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _681 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_681] == bool(mem[_681])
                    if not mem[_681]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _608 = mem[_604]
            require mem[_604] == mem[_604]
            if mem[_604]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_604]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_604] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _608
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _608
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_682] == bool(mem[_682])
                    if not mem[_682]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
