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
        _283 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_283] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (224 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _283 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 224
            _589 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_589] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_589 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_589 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_589 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_589 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_589 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_589 + 192] = cd[(v + 192)]
            mem[w] = _589
            u = u + 1
            v = v + 224
            w = w + 32
            continue 
        mem[t] = _283
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
        _580 = mem[96]
        idx = 0
        while idx < _580:
            require idx < mem[96]
            if var209003 >= mem[mem[(32 * idx) + 128]]:
                if var209004 < var209004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2553 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2553] = 0
                mem[_2553 + 32] = 0
                mem[_2553 + 64] = 0
                mem[_2553 + 96] = 0
                mem[_2553 + 128] = 0
                mem[_2553 + 160] = 0
                mem[_2553 + 192] = 0
                require idx < mem[96]
                require var213002 < mem[mem[(32 * idx) + 128]]
                _2562 = mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]
                _2563 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 32]
                if var213002 <= 0:
                    _2566 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2566)
                    require ext_code.size(address(_2563))
                    staticcall address(_2563).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2566)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2577] == mem[_2577]
                    if mem[_2577] <= 0:
                        _2590 = mem[_2562 + 96]
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2610] == bool(mem[_2610])
                        if mem[_2562 + 192] == 1:
                            _2640 = mem[_2562]
                            _2642 = mem[_2562 + 96]
                            _2643 = mem[_2562 + 64]
                            _2644 = mem[_2562 + 128]
                            _2645 = mem[_2562 + 160]
                            mem[mem[64] + 4] = mem[_2562 + 44 len 20]
                            mem[mem[64] + 36] = _2642
                            mem[mem[64] + 68] = address(_2643)
                            mem[mem[64] + 100] = _2644
                            mem[mem[64] + 132] = _2645
                            require ext_code.size(address(_2640))
                            call address(_2640).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2642, address(_2643), _2644, _2645
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2784 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2784] == mem[_2784]
                            require mem[_2784 + 32] == mem[_2784 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2784]
                                continue 
                            if mem[_2784] < mem[_2784]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2562 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2660 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2660
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2660
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2716 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2716] == bool(mem[_2716])
                                _2736 = mem[_2562]
                                _2738 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2738
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2738
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2832] == bool(mem[_2832])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2880 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2880
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2880
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2933 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2933] == bool(mem[_2933])
                                _2960 = mem[_2562 + 96]
                                _2961 = mem[_2562 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2960
                                mem[mem[64] + 36] = _2961
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
                                require ext_code.size(address(_2736))
                                call address(_2736).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2960, _2961, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3134 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3142 = mem[_3134]
                                require mem[_3134] <= test266151307()
                                require _3134 + mem[_3134] + 31 < _3134 + return_data.size
                                _3150 = mem[_3134 + mem[_3134]]
                                require mem[_3134 + mem[_3134]] <= test266151307()
                                require _3134 + ceil32(return_data.size) + (32 * mem[_3134 + mem[_3134]]) + 32 <= test266151307() and (32 * mem[_3134 + mem[_3134]]) + 32 >= 0
                                mem[64] = _3134 + ceil32(return_data.size) + (32 * mem[_3134 + mem[_3134]]) + 32
                                mem[_3134 + ceil32(return_data.size)] = _3150
                                require _3142 + (32 * _3150) + 32 <= return_data.size
                                s = 0
                                t = _3134 + _3142 + 32
                                u = _3134 + ceil32(return_data.size) + 32
                                while s < _3150:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3150
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3134 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3134 + ceil32(return_data.size) + 64] < mem[_3134 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2617] == bool(mem[_2617])
                        _2677 = mem[_2562 + 96]
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = _2677
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2677
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2720] == bool(mem[_2720])
                        if mem[_2562 + 192] == 1:
                            _2763 = mem[_2562]
                            _2765 = mem[_2562 + 96]
                            _2766 = mem[_2562 + 64]
                            _2767 = mem[_2562 + 128]
                            _2768 = mem[_2562 + 160]
                            mem[mem[64] + 4] = mem[_2562 + 44 len 20]
                            mem[mem[64] + 36] = _2765
                            mem[mem[64] + 68] = address(_2766)
                            mem[mem[64] + 100] = _2767
                            mem[mem[64] + 132] = _2768
                            require ext_code.size(address(_2763))
                            call address(_2763).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2765, address(_2766), _2767, _2768
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2913 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2913] == mem[_2913]
                            require mem[_2913 + 32] == mem[_2913 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2913]
                                continue 
                            if mem[_2913] < mem[_2913]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2562 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2786 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2786
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2786
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2847 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2847] == bool(mem[_2847])
                                _2892 = mem[_2562]
                                _2894 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2894
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2894
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2939 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2939] == bool(mem[_2939])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2988 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2988
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2988
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3013] == bool(mem[_3013])
                                _3027 = mem[_2562 + 96]
                                _3028 = mem[_2562 + 128]
                                _3029 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3027
                                mem[mem[64] + 36] = _3028
                                mem[mem[64] + 68] = 160
                                _3052 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _3052:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_3029 + 100] = this.address
                                mem[_3029 + 132] = cd[164]
                                require ext_code.size(address(_2892))
                                call address(_2892).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3029 + (32 * _3052) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3135 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3143 = mem[_3135]
                                require mem[_3135] <= test266151307()
                                require _3135 + mem[_3135] + 31 < _3135 + return_data.size
                                _3151 = mem[_3135 + mem[_3135]]
                                require mem[_3135 + mem[_3135]] <= test266151307()
                                require _3135 + ceil32(return_data.size) + (32 * mem[_3135 + mem[_3135]]) + 32 <= test266151307() and (32 * mem[_3135 + mem[_3135]]) + 32 >= 0
                                mem[64] = _3135 + ceil32(return_data.size) + (32 * mem[_3135 + mem[_3135]]) + 32
                                mem[_3135 + ceil32(return_data.size)] = _3151
                                require _3143 + (32 * _3151) + 32 <= return_data.size
                                s = 0
                                t = _3135 + _3143 + 32
                                u = _3135 + ceil32(return_data.size) + 32
                                while s < _3151:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3151
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3135 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3135 + ceil32(return_data.size) + 64] < mem[_3135 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 96] = var213003
                    _2570 = mem[_2562]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2570)
                    require ext_code.size(address(_2563))
                    staticcall address(_2563).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2570)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2579] == mem[_2579]
                    if mem[_2579] <= 0:
                        _2600 = mem[_2562 + 96]
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = _2600
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2614] == bool(mem[_2614])
                        if mem[_2562 + 192] == 1:
                            _2663 = mem[_2562]
                            _2665 = mem[_2562 + 96]
                            _2666 = mem[_2562 + 64]
                            _2667 = mem[_2562 + 128]
                            _2668 = mem[_2562 + 160]
                            mem[mem[64] + 4] = mem[_2562 + 44 len 20]
                            mem[mem[64] + 36] = _2665
                            mem[mem[64] + 68] = address(_2666)
                            mem[mem[64] + 100] = _2667
                            mem[mem[64] + 132] = _2668
                            require ext_code.size(address(_2663))
                            call address(_2663).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2665, address(_2666), _2667, _2668
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2800] == mem[_2800]
                            require mem[_2800 + 32] == mem[_2800 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2800]
                                continue 
                            if mem[_2800] < mem[_2800]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2562 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2680 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2680
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2680
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2721] == bool(mem[_2721])
                                _2748 = mem[_2562]
                                _2750 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2750
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2750
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2839] == bool(mem[_2839])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2897 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2897
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2897
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2940 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2940] == bool(mem[_2940])
                                _2973 = mem[_2562 + 96]
                                _2974 = mem[_2562 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2973
                                mem[mem[64] + 36] = _2974
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
                                require ext_code.size(address(_2748))
                                call address(_2748).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2973, _2974, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3136 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3144 = mem[_3136]
                                require mem[_3136] <= test266151307()
                                require _3136 + mem[_3136] + 31 < _3136 + return_data.size
                                _3152 = mem[_3136 + mem[_3136]]
                                require mem[_3136 + mem[_3136]] <= test266151307()
                                require _3136 + ceil32(return_data.size) + (32 * mem[_3136 + mem[_3136]]) + 32 <= test266151307() and (32 * mem[_3136 + mem[_3136]]) + 32 >= 0
                                mem[64] = _3136 + ceil32(return_data.size) + (32 * mem[_3136 + mem[_3136]]) + 32
                                mem[_3136 + ceil32(return_data.size)] = _3152
                                require _3144 + (32 * _3152) + 32 <= return_data.size
                                s = 0
                                t = _3136 + _3144 + 32
                                u = _3136 + ceil32(return_data.size) + 32
                                while s < _3152:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3152
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3136 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3136 + ceil32(return_data.size) + 64] < mem[_3136 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2621] == bool(mem[_2621])
                        _2688 = mem[_2562 + 96]
                        mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                        mem[mem[64] + 36] = _2688
                        require ext_code.size(address(_2563))
                        call address(_2563).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2688
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2723 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2723] == bool(mem[_2723])
                        if mem[_2562 + 192] == 1:
                            _2789 = mem[_2562]
                            _2791 = mem[_2562 + 96]
                            _2792 = mem[_2562 + 64]
                            _2793 = mem[_2562 + 128]
                            _2794 = mem[_2562 + 160]
                            mem[mem[64] + 4] = mem[_2562 + 44 len 20]
                            mem[mem[64] + 36] = _2791
                            mem[mem[64] + 68] = address(_2792)
                            mem[mem[64] + 100] = _2793
                            mem[mem[64] + 132] = _2794
                            require ext_code.size(address(_2789))
                            call address(_2789).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2791, address(_2792), _2793, _2794
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2915] == mem[_2915]
                            require mem[_2915 + 32] == mem[_2915 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2915]
                                continue 
                            if mem[_2915] < mem[_2915]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2562 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2802 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2802
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2802
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2851] == bool(mem[_2851])
                                _2906 = mem[_2562]
                                _2908 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2908
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2908
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2943 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2943] == bool(mem[_2943])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2997 = mem[_2562 + 96]
                                mem[mem[64] + 4] = mem[_2562 + 12 len 20]
                                mem[mem[64] + 36] = _2997
                                require ext_code.size(address(_2563))
                                call address(_2563).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2997
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3017] == bool(mem[_3017])
                                _3033 = mem[_2562 + 96]
                                _3034 = mem[_2562 + 128]
                                _3035 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3033
                                mem[mem[64] + 36] = _3034
                                mem[mem[64] + 68] = 160
                                _3055 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _3055:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_3035 + 100] = this.address
                                mem[_3035 + 132] = cd[164]
                                require ext_code.size(address(_2906))
                                call address(_2906).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _3035 + (32 * _3055) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3137 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3145 = mem[_3137]
                                require mem[_3137] <= test266151307()
                                require _3137 + mem[_3137] + 31 < _3137 + return_data.size
                                _3153 = mem[_3137 + mem[_3137]]
                                require mem[_3137 + mem[_3137]] <= test266151307()
                                require _3137 + ceil32(return_data.size) + (32 * mem[_3137 + mem[_3137]]) + 32 <= test266151307() and (32 * mem[_3137 + mem[_3137]]) + 32 >= 0
                                mem[64] = _3137 + ceil32(return_data.size) + (32 * mem[_3137 + mem[_3137]]) + 32
                                mem[_3137 + ceil32(return_data.size)] = _3153
                                require _3145 + (32 * _3153) + 32 <= return_data.size
                                s = 0
                                t = _3137 + _3145 + 32
                                u = _3137 + ceil32(return_data.size) + 32
                                while s < _3153:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3153
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3137 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3137 + ceil32(return_data.size) + 64] < mem[_3137 + ceil32(return_data.size) + 64]:
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
            _618 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _623 = mem[_618]
            require mem[_618] == mem[_618]
            if mem[_618]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_618]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_618] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _623
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _623
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _697 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_697] == bool(mem[_697])
                    if not mem[_697]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _624 = mem[_619]
            require mem[_619] == mem[_619]
            if mem[_619]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_619]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_619] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _624
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _624
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _698 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_698] == bool(mem[_698])
                    if not mem[_698]:
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
        _307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_307] == bool(mem[_307])
        if not mem[_307]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        _579 = mem[96]
        idx = 0
        while idx < _579:
            require idx < mem[96]
            if var242003 >= mem[mem[(32 * idx) + 128]]:
                if var242004 < var242004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2552 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2552] = 0
                mem[_2552 + 32] = 0
                mem[_2552 + 64] = 0
                mem[_2552 + 96] = 0
                mem[_2552 + 128] = 0
                mem[_2552 + 160] = 0
                mem[_2552 + 192] = 0
                require idx < mem[96]
                require var246002 < mem[mem[(32 * idx) + 128]]
                _2560 = mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]
                _2561 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 32]
                if var246002 <= 0:
                    _2564 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2564)
                    require ext_code.size(address(_2561))
                    staticcall address(_2561).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2564)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2576] == mem[_2576]
                    if mem[_2576] <= 0:
                        _2585 = mem[_2560 + 96]
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = _2585
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2608 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2608] == bool(mem[_2608])
                        if mem[_2560 + 192] == 1:
                            _2631 = mem[_2560]
                            _2633 = mem[_2560 + 96]
                            _2634 = mem[_2560 + 64]
                            _2635 = mem[_2560 + 128]
                            _2636 = mem[_2560 + 160]
                            mem[mem[64] + 4] = mem[_2560 + 44 len 20]
                            mem[mem[64] + 36] = _2633
                            mem[mem[64] + 68] = address(_2634)
                            mem[mem[64] + 100] = _2635
                            mem[mem[64] + 132] = _2636
                            require ext_code.size(address(_2631))
                            call address(_2631).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2633, address(_2634), _2635, _2636
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2772] == mem[_2772]
                            require mem[_2772 + 32] == mem[_2772 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2772]
                                continue 
                            if mem[_2772] < mem[_2772]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2560 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2649 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2649
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2649
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2714 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2714] == bool(mem[_2714])
                                _2732 = mem[_2560]
                                _2734 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2734
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2734
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2830] == bool(mem[_2830])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2875 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2875
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2875
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2930 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2930] == bool(mem[_2930])
                                _2954 = mem[_2560 + 96]
                                _2955 = mem[_2560 + 128]
                                _2956 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2954
                                mem[mem[64] + 36] = _2955
                                mem[mem[64] + 68] = 160
                                _3004 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 196
                                while s < _3004:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2956 + 100] = this.address
                                mem[_2956 + 132] = cd[164]
                                require ext_code.size(address(_2732))
                                call address(_2732).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2956 + (32 * _3004) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3130 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3138 = mem[_3130]
                                require mem[_3130] <= test266151307()
                                require _3130 + mem[_3130] + 31 < _3130 + return_data.size
                                _3146 = mem[_3130 + mem[_3130]]
                                require mem[_3130 + mem[_3130]] <= test266151307()
                                require _3130 + ceil32(return_data.size) + (32 * mem[_3130 + mem[_3130]]) + 32 <= test266151307() and (32 * mem[_3130 + mem[_3130]]) + 32 >= 0
                                mem[64] = _3130 + ceil32(return_data.size) + (32 * mem[_3130 + mem[_3130]]) + 32
                                mem[_3130 + ceil32(return_data.size)] = _3146
                                require _3138 + (32 * _3146) + 32 <= return_data.size
                                s = 0
                                t = _3130 + _3138 + 32
                                u = _3130 + ceil32(return_data.size) + 32
                                while s < _3146:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3146
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_3130 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3130 + ceil32(return_data.size) + 64] < mem[_3130 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2616] == bool(mem[_2616])
                        _2671 = mem[_2560 + 96]
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = _2671
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2671
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2718] == bool(mem[_2718])
                        if mem[_2560 + 192] == 1:
                            _2753 = mem[_2560]
                            _2755 = mem[_2560 + 96]
                            _2756 = mem[_2560 + 64]
                            _2757 = mem[_2560 + 128]
                            _2758 = mem[_2560 + 160]
                            mem[mem[64] + 4] = mem[_2560 + 44 len 20]
                            mem[mem[64] + 36] = _2755
                            mem[mem[64] + 68] = address(_2756)
                            mem[mem[64] + 100] = _2757
                            mem[mem[64] + 132] = _2758
                            require ext_code.size(address(_2753))
                            call address(_2753).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2755, address(_2756), _2757, _2758
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2912] == mem[_2912]
                            require mem[_2912 + 32] == mem[_2912 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2912]
                                continue 
                            if mem[_2912] < mem[_2912]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2560 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2774 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2774
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2774
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2845 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2845] == bool(mem[_2845])
                                _2884 = mem[_2560]
                                _2886 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2886
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2886
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2936 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2936] == bool(mem[_2936])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2983 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2983
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2983
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3012 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3012] == bool(mem[_3012])
                                _3024 = mem[_2560 + 96]
                                _3025 = mem[_2560 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3024
                                mem[mem[64] + 36] = _3025
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
                                require ext_code.size(address(_2884))
                                call address(_2884).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3024, _3025, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3131 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3139 = mem[_3131]
                                require mem[_3131] <= test266151307()
                                require _3131 + mem[_3131] + 31 < _3131 + return_data.size
                                _3147 = mem[_3131 + mem[_3131]]
                                require mem[_3131 + mem[_3131]] <= test266151307()
                                require _3131 + ceil32(return_data.size) + (32 * mem[_3131 + mem[_3131]]) + 32 <= test266151307() and (32 * mem[_3131 + mem[_3131]]) + 32 >= 0
                                mem[64] = _3131 + ceil32(return_data.size) + (32 * mem[_3131 + mem[_3131]]) + 32
                                mem[_3131 + ceil32(return_data.size)] = _3147
                                require _3139 + (32 * _3147) + 32 <= return_data.size
                                s = 0
                                t = _3131 + _3139 + 32
                                u = _3131 + ceil32(return_data.size) + 32
                                while s < _3147:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3147
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_3131 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3131 + ceil32(return_data.size) + 64] < mem[_3131 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 96] = var246003
                    _2568 = mem[_2560]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2568)
                    require ext_code.size(address(_2561))
                    staticcall address(_2561).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2568)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2578] == mem[_2578]
                    if mem[_2578] <= 0:
                        _2595 = mem[_2560 + 96]
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = _2595
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2595
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2612] == bool(mem[_2612])
                        if mem[_2560 + 192] == 1:
                            _2652 = mem[_2560]
                            _2654 = mem[_2560 + 96]
                            _2655 = mem[_2560 + 64]
                            _2656 = mem[_2560 + 128]
                            _2657 = mem[_2560 + 160]
                            mem[mem[64] + 4] = mem[_2560 + 44 len 20]
                            mem[mem[64] + 36] = _2654
                            mem[mem[64] + 68] = address(_2655)
                            mem[mem[64] + 100] = _2656
                            mem[mem[64] + 132] = _2657
                            require ext_code.size(address(_2652))
                            call address(_2652).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2654, address(_2655), _2656, _2657
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2796] == mem[_2796]
                            require mem[_2796 + 32] == mem[_2796 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2796]
                                continue 
                            if mem[_2796] < mem[_2796]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2560 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2674 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2674
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2674
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2719] == bool(mem[_2719])
                                _2742 = mem[_2560]
                                _2744 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2744
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2744
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2836] == bool(mem[_2836])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2889 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2889
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2889
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2937 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2937] == bool(mem[_2937])
                                _2967 = mem[_2560 + 96]
                                _2968 = mem[_2560 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _2967
                                mem[mem[64] + 36] = _2968
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
                                require ext_code.size(address(_2742))
                                call address(_2742).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _2967, _2968, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3132 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3140 = mem[_3132]
                                require mem[_3132] <= test266151307()
                                require _3132 + mem[_3132] + 31 < _3132 + return_data.size
                                _3148 = mem[_3132 + mem[_3132]]
                                require mem[_3132 + mem[_3132]] <= test266151307()
                                require _3132 + ceil32(return_data.size) + (32 * mem[_3132 + mem[_3132]]) + 32 <= test266151307() and (32 * mem[_3132 + mem[_3132]]) + 32 >= 0
                                mem[64] = _3132 + ceil32(return_data.size) + (32 * mem[_3132 + mem[_3132]]) + 32
                                mem[_3132 + ceil32(return_data.size)] = _3148
                                require _3140 + (32 * _3148) + 32 <= return_data.size
                                s = 0
                                t = _3132 + _3140 + 32
                                u = _3132 + ceil32(return_data.size) + 32
                                while s < _3148:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3148
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_3132 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3132 + ceil32(return_data.size) + 64] < mem[_3132 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2619] == bool(mem[_2619])
                        _2684 = mem[_2560 + 96]
                        mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                        mem[mem[64] + 36] = _2684
                        require ext_code.size(address(_2561))
                        call address(_2561).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2684
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2722 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2722] == bool(mem[_2722])
                        if mem[_2560 + 192] == 1:
                            _2777 = mem[_2560]
                            _2779 = mem[_2560 + 96]
                            _2780 = mem[_2560 + 64]
                            _2781 = mem[_2560 + 128]
                            _2782 = mem[_2560 + 160]
                            mem[mem[64] + 4] = mem[_2560 + 44 len 20]
                            mem[mem[64] + 36] = _2779
                            mem[mem[64] + 68] = address(_2780)
                            mem[mem[64] + 100] = _2781
                            mem[mem[64] + 132] = _2782
                            require ext_code.size(address(_2777))
                            call address(_2777).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2779, address(_2780), _2781, _2782
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2914] == mem[_2914]
                            require mem[_2914 + 32] == mem[_2914 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2914]
                                continue 
                            if mem[_2914] < mem[_2914]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2560 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2798 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2798
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2798
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2849 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2849] == bool(mem[_2849])
                                _2901 = mem[_2560]
                                _2903 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2903
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2903
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2942 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2942] == bool(mem[_2942])
                                require 0 < mem[96]
                                mem[128] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[96]
                                mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2993 = mem[_2560 + 96]
                                mem[mem[64] + 4] = mem[_2560 + 12 len 20]
                                mem[mem[64] + 36] = _2993
                                require ext_code.size(address(_2561))
                                call address(_2561).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2993
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3015 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3015] == bool(mem[_3015])
                                _3030 = mem[_2560 + 96]
                                _3031 = mem[_2560 + 128]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _3030
                                mem[mem[64] + 36] = _3031
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
                                require ext_code.size(address(_2901))
                                call address(_2901).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3030, _3031, 160, address(this.address), cd[164], mem[mem[64] + 164 len (32 * mem[96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3133 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3141 = mem[_3133]
                                require mem[_3133] <= test266151307()
                                require _3133 + mem[_3133] + 31 < _3133 + return_data.size
                                _3149 = mem[_3133 + mem[_3133]]
                                require mem[_3133 + mem[_3133]] <= test266151307()
                                require _3133 + ceil32(return_data.size) + (32 * mem[_3133 + mem[_3133]]) + 32 <= test266151307() and (32 * mem[_3133 + mem[_3133]]) + 32 >= 0
                                mem[64] = _3133 + ceil32(return_data.size) + (32 * mem[_3133 + mem[_3133]]) + 32
                                mem[_3133 + ceil32(return_data.size)] = _3149
                                require _3141 + (32 * _3149) + 32 <= return_data.size
                                s = 0
                                t = _3133 + _3141 + 32
                                u = _3133 + ceil32(return_data.size) + 32
                                while s < _3149:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3149
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_3133 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3133 + ceil32(return_data.size) + 64] < mem[_3133 + ceil32(return_data.size) + 64]:
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
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _620 = mem[_616]
            require mem[_616] == mem[_616]
            if mem[_616]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_616]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_616] wei
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
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _617 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _621 = mem[_617]
            require mem[_617] == mem[_617]
            if mem[_617]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_617]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_617] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _621
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _621
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _695 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_695] == bool(mem[_695])
                    if not mem[_695]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
