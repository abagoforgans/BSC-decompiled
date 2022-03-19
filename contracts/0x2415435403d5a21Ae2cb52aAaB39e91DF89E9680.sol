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
            _604 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            require cd[v] == address(cd[v])
            mem[_604] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_604 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == address(cd[(v + 64)])
            mem[_604 + 64] = cd[(v + 64)]
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_604 + 96] = cd[(v + 96)]
            require cd[(v + 128)] == cd[(v + 128)]
            mem[_604 + 128] = cd[(v + 128)]
            require cd[(v + 160)] == cd[(v + 160)]
            mem[_604 + 160] = cd[(v + 160)]
            require cd[(v + 192)] == cd[(v + 192)]
            mem[_604 + 192] = cd[(v + 192)]
            mem[w] = _604
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
        _595 = mem[96]
        idx = 0
        while idx < _595:
            require idx < mem[96]
            if var209003 >= mem[mem[(32 * idx) + 128]]:
                if var209004 < var209004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2612 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2612] = 0
                mem[_2612 + 32] = 0
                mem[_2612 + 64] = 0
                mem[_2612 + 96] = 0
                mem[_2612 + 128] = 0
                mem[_2612 + 160] = 0
                mem[_2612 + 192] = 0
                require idx < mem[96]
                require var213002 < mem[mem[(32 * idx) + 128]]
                _2621 = mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]
                _2622 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 32]
                if var213002 <= 0:
                    _2625 = mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2625)
                    require ext_code.size(address(_2622))
                    staticcall address(_2622).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2625)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2636] == mem[_2636]
                    if mem[_2636] <= 0:
                        _2649 = mem[_2621 + 96]
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = _2649
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2649
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2669 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2669] == bool(mem[_2669])
                        if mem[_2621 + 192] == 1:
                            _2699 = mem[_2621]
                            _2701 = mem[_2621 + 96]
                            _2702 = mem[_2621 + 64]
                            _2703 = mem[_2621 + 128]
                            _2704 = mem[_2621 + 160]
                            mem[mem[64] + 4] = mem[_2621 + 44 len 20]
                            mem[mem[64] + 36] = _2701
                            mem[mem[64] + 68] = address(_2702)
                            mem[mem[64] + 100] = _2703
                            mem[mem[64] + 132] = _2704
                            require ext_code.size(address(_2699))
                            call address(_2699).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2701, address(_2702), _2703, _2704
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2842] == mem[_2842]
                            require mem[_2842 + 32] == mem[_2842 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2842]
                                continue 
                            if mem[_2842] < mem[_2842]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2621 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2719 = mem[_2621 + 64]
                                _2721 = mem[_2621 + 96]
                                mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                                mem[mem[64] + 36] = _2721
                                require ext_code.size(address(_2719))
                                call address(_2719).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2721
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2779 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2779] == bool(mem[_2779])
                                _2796 = mem[_2621]
                                _2801 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2801]
                                mem[_2801 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2801]
                                mem[_2801 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2874 = mem[_2621]
                                _2875 = mem[_2621 + 96]
                                mem[_2801 + 100] = mem[_2621 + 12 len 20]
                                mem[_2801 + 132] = _2875
                                require ext_code.size(address(_2622))
                                call address(_2622).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2874), _2875
                                mem[_2801 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2801 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _2964 = mem[_2621]
                                _2965 = mem[_2621 + 96]
                                mem[_2801 + ceil32(return_data.size) + 100] = mem[_2621 + 12 len 20]
                                mem[_2801 + ceil32(return_data.size) + 132] = _2965
                                require ext_code.size(address(_2719))
                                call address(_2719).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2964), _2965
                                mem[_2801 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2801 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3051 = mem[_2621 + 96]
                                _3052 = mem[_2621 + 128]
                                mem[_2801 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2801 + (2 * ceil32(return_data.size)) + 100] = _3051
                                mem[_2801 + (2 * ceil32(return_data.size)) + 132] = _3052
                                mem[_2801 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2801 + (2 * ceil32(return_data.size)) + 260] = mem[_2801]
                                s = 0
                                t = _2801 + 32
                                u = _2801 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2801]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2801 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2801 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2796))
                                call address(_2796).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2801 + (2 * ceil32(return_data.size)) + (32 * mem[_2801]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3207 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3215 = mem[_3207]
                                require mem[_3207] <= test266151307()
                                require _3207 + mem[_3207] + 31 < _3207 + return_data.size
                                _3223 = mem[_3207 + mem[_3207]]
                                require mem[_3207 + mem[_3207]] <= test266151307()
                                require _3207 + ceil32(return_data.size) + (32 * mem[_3207 + mem[_3207]]) + 32 <= test266151307() and (32 * mem[_3207 + mem[_3207]]) + 32 >= 0
                                mem[64] = _3207 + ceil32(return_data.size) + (32 * mem[_3207 + mem[_3207]]) + 32
                                mem[_3207 + ceil32(return_data.size)] = _3223
                                require _3215 + (32 * _3223) + 32 <= return_data.size
                                s = 0
                                t = _3207 + _3215 + 32
                                u = _3207 + ceil32(return_data.size) + 32
                                while s < _3223:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3223
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3207 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3207 + ceil32(return_data.size) + 64] < mem[_3207 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2676] == bool(mem[_2676])
                        _2739 = mem[_2621 + 96]
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = _2739
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2739
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2783] == bool(mem[_2783])
                        if mem[_2621 + 192] == 1:
                            _2817 = mem[_2621]
                            _2819 = mem[_2621 + 96]
                            _2820 = mem[_2621 + 64]
                            _2821 = mem[_2621 + 128]
                            _2822 = mem[_2621 + 160]
                            mem[mem[64] + 4] = mem[_2621 + 44 len 20]
                            mem[mem[64] + 36] = _2819
                            mem[mem[64] + 68] = address(_2820)
                            mem[mem[64] + 100] = _2821
                            mem[mem[64] + 132] = _2822
                            require ext_code.size(address(_2817))
                            call address(_2817).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2819, address(_2820), _2821, _2822
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2975 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2975] == mem[_2975]
                            require mem[_2975 + 32] == mem[_2975 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2975]
                                continue 
                            if mem[_2975] < mem[_2975]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2621 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2843 = mem[_2621 + 64]
                                _2845 = mem[_2621 + 96]
                                mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                                mem[mem[64] + 36] = _2845
                                require ext_code.size(address(_2843))
                                call address(_2843).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2845
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2918 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2918] == bool(mem[_2918])
                                _2951 = mem[_2621]
                                _2956 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2956]
                                mem[_2956 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2956]
                                mem[_2956 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2991 = mem[_2621]
                                _2992 = mem[_2621 + 96]
                                mem[_2956 + 100] = mem[_2621 + 12 len 20]
                                mem[_2956 + 132] = _2992
                                require ext_code.size(address(_2622))
                                call address(_2622).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2991), _2992
                                mem[_2956 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2956 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3066 = mem[_2621]
                                _3067 = mem[_2621 + 96]
                                mem[_2956 + ceil32(return_data.size) + 100] = mem[_2621 + 12 len 20]
                                mem[_2956 + ceil32(return_data.size) + 132] = _3067
                                require ext_code.size(address(_2843))
                                call address(_2843).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_3066), _3067
                                mem[_2956 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2956 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3102 = mem[_2621 + 96]
                                _3103 = mem[_2621 + 128]
                                mem[_2956 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2956 + (2 * ceil32(return_data.size)) + 100] = _3102
                                mem[_2956 + (2 * ceil32(return_data.size)) + 132] = _3103
                                mem[_2956 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2956 + (2 * ceil32(return_data.size)) + 260] = mem[_2956]
                                s = 0
                                t = _2956 + 32
                                u = _2956 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2956]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2956 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2956 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2951))
                                call address(_2951).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3102, _3103, 160, address(this.address), cd[164], mem[_2956 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2956]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2956 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2956 + (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3216 = mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32
                                require mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 <= test266151307()
                                require _2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 127 < _2956 + (2 * ceil32(return_data.size)) + return_data.size + 96
                                _3224 = mem[_2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 96]
                                require mem[_2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 96] <= test266151307()
                                require _2956 + (4 * ceil32(return_data.size)) + (32 * mem[_2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 96]) + 32 >= 0
                                mem[64] = _2956 + (4 * ceil32(return_data.size)) + (32 * mem[_2956 + (2 * ceil32(return_data.size)) + mem[_2956 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3102) >> 32 + 96]) + 128
                                mem[_2956 + (4 * ceil32(return_data.size)) + 96] = _3224
                                require _3216 + (32 * _3224) + 32 <= return_data.size
                                s = 0
                                t = _2956 + (2 * ceil32(return_data.size)) + _3216 + 128
                                u = _2956 + (4 * ceil32(return_data.size)) + 128
                                while s < _3224:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3224
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2956 + (4 * ceil32(return_data.size)) + 160]
                                    continue 
                                if mem[_2956 + (4 * ceil32(return_data.size)) + 160] < mem[_2956 + (4 * ceil32(return_data.size)) + 160]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var213002) + mem[(32 * idx) + 128] + 32] + 96] = var213003
                    _2629 = mem[_2621]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2629)
                    require ext_code.size(address(_2622))
                    staticcall address(_2622).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2629)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2638] == mem[_2638]
                    if mem[_2638] <= 0:
                        _2659 = mem[_2621 + 96]
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2673] == bool(mem[_2673])
                        if mem[_2621 + 192] == 1:
                            _2724 = mem[_2621]
                            _2726 = mem[_2621 + 96]
                            _2727 = mem[_2621 + 64]
                            _2728 = mem[_2621 + 128]
                            _2729 = mem[_2621 + 160]
                            mem[mem[64] + 4] = mem[_2621 + 44 len 20]
                            mem[mem[64] + 36] = _2726
                            mem[mem[64] + 68] = address(_2727)
                            mem[mem[64] + 100] = _2728
                            mem[mem[64] + 132] = _2729
                            require ext_code.size(address(_2724))
                            call address(_2724).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2726, address(_2727), _2728, _2729
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2864] == mem[_2864]
                            require mem[_2864 + 32] == mem[_2864 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2864]
                                continue 
                            if mem[_2864] < mem[_2864]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2621 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2741 = mem[_2621 + 64]
                                _2743 = mem[_2621 + 96]
                                mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                                mem[mem[64] + 36] = _2743
                                require ext_code.size(address(_2741))
                                call address(_2741).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2743
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2784] == bool(mem[_2784])
                                _2804 = mem[_2621]
                                _2824 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2824]
                                mem[_2824 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2824]
                                mem[_2824 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2889 = mem[_2621]
                                _2890 = mem[_2621 + 96]
                                mem[_2824 + 100] = mem[_2621 + 12 len 20]
                                mem[_2824 + 132] = _2890
                                require ext_code.size(address(_2622))
                                call address(_2622).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2889), _2890
                                mem[_2824 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2824 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _2976 = mem[_2621]
                                _2977 = mem[_2621 + 96]
                                mem[_2824 + ceil32(return_data.size) + 100] = mem[_2621 + 12 len 20]
                                mem[_2824 + ceil32(return_data.size) + 132] = _2977
                                require ext_code.size(address(_2741))
                                call address(_2741).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2976), _2977
                                mem[_2824 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2824 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3059 = mem[_2621 + 96]
                                _3060 = mem[_2621 + 128]
                                mem[_2824 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2824 + (2 * ceil32(return_data.size)) + 100] = _3059
                                mem[_2824 + (2 * ceil32(return_data.size)) + 132] = _3060
                                mem[_2824 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2824 + (2 * ceil32(return_data.size)) + 260] = mem[_2824]
                                s = 0
                                t = _2824 + 32
                                u = _2824 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2824]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2824 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2824 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2804))
                                call address(_2804).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2824 + (2 * ceil32(return_data.size)) + (32 * mem[_2824]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3209 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3217 = mem[_3209]
                                require mem[_3209] <= test266151307()
                                require _3209 + mem[_3209] + 31 < _3209 + return_data.size
                                _3225 = mem[_3209 + mem[_3209]]
                                require mem[_3209 + mem[_3209]] <= test266151307()
                                require _3209 + ceil32(return_data.size) + (32 * mem[_3209 + mem[_3209]]) + 32 <= test266151307() and (32 * mem[_3209 + mem[_3209]]) + 32 >= 0
                                mem[64] = _3209 + ceil32(return_data.size) + (32 * mem[_3209 + mem[_3209]]) + 32
                                mem[_3209 + ceil32(return_data.size)] = _3225
                                require _3217 + (32 * _3225) + 32 <= return_data.size
                                s = 0
                                t = _3209 + _3217 + 32
                                u = _3209 + ceil32(return_data.size) + 32
                                while s < _3225:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3225
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_3209 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3209 + ceil32(return_data.size) + 64] < mem[_3209 + ceil32(return_data.size) + 64]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2680] == bool(mem[_2680])
                        _2751 = mem[_2621 + 96]
                        mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                        mem[mem[64] + 36] = _2751
                        require ext_code.size(address(_2622))
                        call address(_2622).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2751
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2786 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2786] == bool(mem[_2786])
                        if mem[_2621 + 192] == 1:
                            _2848 = mem[_2621]
                            _2850 = mem[_2621 + 96]
                            _2851 = mem[_2621 + 64]
                            _2852 = mem[_2621 + 128]
                            _2853 = mem[_2621 + 160]
                            mem[mem[64] + 4] = mem[_2621 + 44 len 20]
                            mem[mem[64] + 36] = _2850
                            mem[mem[64] + 68] = address(_2851)
                            mem[mem[64] + 100] = _2852
                            mem[mem[64] + 132] = _2853
                            require ext_code.size(address(_2848))
                            call address(_2848).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2850, address(_2851), _2852, _2853
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2984] == mem[_2984]
                            require mem[_2984 + 32] == mem[_2984 + 32]
                            require idx < mem[96]
                            if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var213002 = var213002 + 1
                                var213003 = mem[_2984]
                                continue 
                            if mem[_2984] < mem[_2984]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2621 + 192] != 2:
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = var213003
                                    continue 
                                if var213003 < var213003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2865 = mem[_2621 + 64]
                                _2867 = mem[_2621 + 96]
                                mem[mem[64] + 4] = mem[_2621 + 12 len 20]
                                mem[mem[64] + 36] = _2867
                                require ext_code.size(address(_2865))
                                call address(_2865).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2867
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2922] == bool(mem[_2922])
                                _2958 = mem[_2621]
                                _2967 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2967]
                                mem[_2967 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2967]
                                mem[_2967 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _3002 = mem[_2621]
                                _3003 = mem[_2621 + 96]
                                mem[_2967 + 100] = mem[_2621 + 12 len 20]
                                mem[_2967 + 132] = _3003
                                require ext_code.size(address(_2622))
                                call address(_2622).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_3002), _3003
                                mem[_2967 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2967 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3072 = mem[_2621]
                                _3073 = mem[_2621 + 96]
                                mem[_2967 + ceil32(return_data.size) + 100] = mem[_2621 + 12 len 20]
                                mem[_2967 + ceil32(return_data.size) + 132] = _3073
                                require ext_code.size(address(_2865))
                                call address(_2865).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_3072), _3073
                                mem[_2967 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2967 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3108 = mem[_2621 + 96]
                                _3109 = mem[_2621 + 128]
                                mem[_2967 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2967 + (2 * ceil32(return_data.size)) + 100] = _3108
                                mem[_2967 + (2 * ceil32(return_data.size)) + 132] = _3109
                                mem[_2967 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2967 + (2 * ceil32(return_data.size)) + 260] = mem[_2967]
                                s = 0
                                t = _2967 + 32
                                u = _2967 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2967]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2967 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2967 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2958))
                                call address(_2958).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3108, _3109, 160, address(this.address), cd[164], mem[_2967 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2967]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2967 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2967 + (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3218 = mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32
                                require mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 <= test266151307()
                                require _2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 127 < _2967 + (2 * ceil32(return_data.size)) + return_data.size + 96
                                _3226 = mem[_2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 96]
                                require mem[_2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 96] <= test266151307()
                                require _2967 + (4 * ceil32(return_data.size)) + (32 * mem[_2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 96]) + 32 >= 0
                                mem[64] = _2967 + (4 * ceil32(return_data.size)) + (32 * mem[_2967 + (2 * ceil32(return_data.size)) + mem[_2967 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3108) >> 32 + 96]) + 128
                                mem[_2967 + (4 * ceil32(return_data.size)) + 96] = _3226
                                require _3218 + (32 * _3226) + 32 <= return_data.size
                                s = 0
                                t = _2967 + (2 * ceil32(return_data.size)) + _3218 + 128
                                u = _2967 + (4 * ceil32(return_data.size)) + 128
                                while s < _3226:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3226
                                require idx < mem[96]
                                if var213002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var213002 = var213002 + 1
                                    var213003 = mem[_2967 + (4 * ceil32(return_data.size)) + 160]
                                    continue 
                                if mem[_2967 + (4 * ceil32(return_data.size)) + 160] < mem[_2967 + (4 * ceil32(return_data.size)) + 160]:
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
            _633 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _638 = mem[_633]
            require mem[_633] == mem[_633]
            if mem[_633]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_633]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_633] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _638
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _638
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_712] == bool(mem[_712])
                    if not mem[_712]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _639 = mem[_634]
            require mem[_634] == mem[_634]
            if mem[_634]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_634]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_634] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _639
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _639
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_713] == bool(mem[_713])
                    if not mem[_713]:
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
        _594 = mem[96]
        idx = 0
        while idx < _594:
            require idx < mem[96]
            if var242003 >= mem[mem[(32 * idx) + 128]]:
                if var242004 < var242004:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                _2611 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2611] = 0
                mem[_2611 + 32] = 0
                mem[_2611 + 64] = 0
                mem[_2611 + 96] = 0
                mem[_2611 + 128] = 0
                mem[_2611 + 160] = 0
                mem[_2611 + 192] = 0
                require idx < mem[96]
                require var246002 < mem[mem[(32 * idx) + 128]]
                _2619 = mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]
                _2620 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 32]
                if var246002 <= 0:
                    _2623 = mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32]]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2623)
                    require ext_code.size(address(_2620))
                    staticcall address(_2620).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2623)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2635] == mem[_2635]
                    if mem[_2635] <= 0:
                        _2644 = mem[_2619 + 96]
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = _2644
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2644
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2667] == bool(mem[_2667])
                        if mem[_2619 + 192] == 1:
                            _2690 = mem[_2619]
                            _2692 = mem[_2619 + 96]
                            _2693 = mem[_2619 + 64]
                            _2694 = mem[_2619 + 128]
                            _2695 = mem[_2619 + 160]
                            mem[mem[64] + 4] = mem[_2619 + 44 len 20]
                            mem[mem[64] + 36] = _2692
                            mem[mem[64] + 68] = address(_2693)
                            mem[mem[64] + 100] = _2694
                            mem[mem[64] + 132] = _2695
                            require ext_code.size(address(_2690))
                            call address(_2690).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2692, address(_2693), _2694, _2695
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2828] == mem[_2828]
                            require mem[_2828 + 32] == mem[_2828 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2828]
                                continue 
                            if mem[_2828] < mem[_2828]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2619 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2707 = mem[_2619 + 64]
                                _2709 = mem[_2619 + 96]
                                mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                                mem[mem[64] + 36] = _2709
                                require ext_code.size(address(_2707))
                                call address(_2707).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2709
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2777 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2777] == bool(mem[_2777])
                                _2795 = mem[_2619]
                                _2797 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2797]
                                mem[_2797 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2797]
                                mem[_2797 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2869 = mem[_2619]
                                _2870 = mem[_2619 + 96]
                                mem[_2797 + 100] = mem[_2619 + 12 len 20]
                                mem[_2797 + 132] = _2870
                                require ext_code.size(address(_2620))
                                call address(_2620).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2869), _2870
                                mem[_2797 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2797 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _2959 = mem[_2619]
                                _2960 = mem[_2619 + 96]
                                mem[_2797 + ceil32(return_data.size) + 100] = mem[_2619 + 12 len 20]
                                mem[_2797 + ceil32(return_data.size) + 132] = _2960
                                require ext_code.size(address(_2707))
                                call address(_2707).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2959), _2960
                                mem[_2797 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2797 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3047 = mem[_2619 + 96]
                                _3048 = mem[_2619 + 128]
                                mem[_2797 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2797 + (2 * ceil32(return_data.size)) + 100] = _3047
                                mem[_2797 + (2 * ceil32(return_data.size)) + 132] = _3048
                                mem[_2797 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2797 + (2 * ceil32(return_data.size)) + 260] = mem[_2797]
                                s = 0
                                t = _2797 + 32
                                u = _2797 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2797]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2797 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2797 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2795))
                                call address(_2795).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3047, _3048, 160, address(this.address), cd[164], mem[_2797 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2797]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2797 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2797 + (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3211 = mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32
                                require mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 <= test266151307()
                                require _2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 127 < _2797 + (2 * ceil32(return_data.size)) + return_data.size + 96
                                _3219 = mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96]
                                require mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96] <= test266151307()
                                require _2797 + (4 * ceil32(return_data.size)) + (32 * mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96]) + 32 >= 0
                                mem[64] = _2797 + (4 * ceil32(return_data.size)) + (32 * mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96]) + 128
                                mem[_2797 + (4 * ceil32(return_data.size)) + 96] = mem[_2797 + (2 * ceil32(return_data.size)) + mem[_2797 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3047) >> 32 + 96]
                                require _3211 + (32 * _3219) + 32 <= return_data.size
                                s = 0
                                t = _2797 + (2 * ceil32(return_data.size)) + _3211 + 128
                                u = _2797 + (4 * ceil32(return_data.size)) + 128
                                while s < _3219:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3219
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2797 + (4 * ceil32(return_data.size)) + 160]
                                    continue 
                                if mem[_2797 + (4 * ceil32(return_data.size)) + 160] < mem[_2797 + (4 * ceil32(return_data.size)) + 160]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2675 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2675] == bool(mem[_2675])
                        _2732 = mem[_2619 + 96]
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = _2732
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2732
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2781 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2781] == bool(mem[_2781])
                        if mem[_2619 + 192] == 1:
                            _2806 = mem[_2619]
                            _2808 = mem[_2619 + 96]
                            _2809 = mem[_2619 + 64]
                            _2810 = mem[_2619 + 128]
                            _2811 = mem[_2619 + 160]
                            mem[mem[64] + 4] = mem[_2619 + 44 len 20]
                            mem[mem[64] + 36] = _2808
                            mem[mem[64] + 68] = address(_2809)
                            mem[mem[64] + 100] = _2810
                            mem[mem[64] + 132] = _2811
                            require ext_code.size(address(_2806))
                            call address(_2806).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2808, address(_2809), _2810, _2811
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2970 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2970] == mem[_2970]
                            require mem[_2970 + 32] == mem[_2970 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2970]
                                continue 
                            if mem[_2970] < mem[_2970]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2619 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2829 = mem[_2619 + 64]
                                _2831 = mem[_2619 + 96]
                                mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                                mem[mem[64] + 36] = _2831
                                require ext_code.size(address(_2829))
                                call address(_2829).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2831
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2916 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2916] == bool(mem[_2916])
                                _2949 = mem[_2619]
                                _2953 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2953]
                                mem[_2953 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2953]
                                mem[_2953 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2986 = mem[_2619]
                                _2987 = mem[_2619 + 96]
                                mem[_2953 + 100] = mem[_2619 + 12 len 20]
                                mem[_2953 + 132] = _2987
                                require ext_code.size(address(_2620))
                                call address(_2620).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2986), _2987
                                mem[_2953 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2953 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3063 = mem[_2619]
                                _3064 = mem[_2619 + 96]
                                mem[_2953 + ceil32(return_data.size) + 100] = mem[_2619 + 12 len 20]
                                mem[_2953 + ceil32(return_data.size) + 132] = _3064
                                require ext_code.size(address(_2829))
                                call address(_2829).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_3063), _3064
                                mem[_2953 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2953 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3099 = mem[_2619 + 96]
                                _3100 = mem[_2619 + 128]
                                mem[_2953 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2953 + (2 * ceil32(return_data.size)) + 100] = _3099
                                mem[_2953 + (2 * ceil32(return_data.size)) + 132] = _3100
                                mem[_2953 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2953 + (2 * ceil32(return_data.size)) + 260] = mem[_2953]
                                s = 0
                                t = _2953 + 32
                                u = _2953 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2953]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2953 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2953 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2949))
                                call address(_2949).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3099, _3100, 160, address(this.address), cd[164], mem[_2953 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2953]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2953 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2953 + (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3212 = mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32
                                require mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 <= test266151307()
                                require _2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 127 < _2953 + (2 * ceil32(return_data.size)) + return_data.size + 96
                                _3220 = mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96]
                                require mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96] <= test266151307()
                                require _2953 + (4 * ceil32(return_data.size)) + (32 * mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96]) + 32 >= 0
                                mem[64] = _2953 + (4 * ceil32(return_data.size)) + (32 * mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96]) + 128
                                mem[_2953 + (4 * ceil32(return_data.size)) + 96] = mem[_2953 + (2 * ceil32(return_data.size)) + mem[_2953 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3099) >> 32 + 96]
                                require _3212 + (32 * _3220) + 32 <= return_data.size
                                s = 0
                                t = _2953 + (2 * ceil32(return_data.size)) + _3212 + 128
                                u = _2953 + (4 * ceil32(return_data.size)) + 128
                                while s < _3220:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3220
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2953 + (4 * ceil32(return_data.size)) + 160]
                                    continue 
                                if mem[_2953 + (4 * ceil32(return_data.size)) + 160] < mem[_2953 + (4 * ceil32(return_data.size)) + 160]:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[mem[(32 * var246002) + mem[(32 * idx) + 128] + 32] + 96] = var246003
                    _2627 = mem[_2619]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_2627)
                    require ext_code.size(address(_2620))
                    staticcall address(_2620).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(_2627)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2637] == mem[_2637]
                    if mem[_2637] <= 0:
                        _2654 = mem[_2619 + 96]
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = _2654
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2654
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2671] == bool(mem[_2671])
                        if mem[_2619 + 192] == 1:
                            _2712 = mem[_2619]
                            _2714 = mem[_2619 + 96]
                            _2715 = mem[_2619 + 64]
                            _2716 = mem[_2619 + 128]
                            _2717 = mem[_2619 + 160]
                            mem[mem[64] + 4] = mem[_2619 + 44 len 20]
                            mem[mem[64] + 36] = _2714
                            mem[mem[64] + 68] = address(_2715)
                            mem[mem[64] + 100] = _2716
                            mem[mem[64] + 132] = _2717
                            require ext_code.size(address(_2712))
                            call address(_2712).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2714, address(_2715), _2716, _2717
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2857] == mem[_2857]
                            require mem[_2857 + 32] == mem[_2857 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2857]
                                continue 
                            if mem[_2857] < mem[_2857]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2619 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2734 = mem[_2619 + 64]
                                _2736 = mem[_2619 + 96]
                                mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                                mem[mem[64] + 36] = _2736
                                require ext_code.size(address(_2734))
                                call address(_2734).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2736
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2782 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2782] == bool(mem[_2782])
                                _2800 = mem[_2619]
                                _2813 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2813]
                                mem[_2813 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2813]
                                mem[_2813 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2882 = mem[_2619]
                                _2883 = mem[_2619 + 96]
                                mem[_2813 + 100] = mem[_2619 + 12 len 20]
                                mem[_2813 + 132] = _2883
                                require ext_code.size(address(_2620))
                                call address(_2620).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2882), _2883
                                mem[_2813 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2813 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _2971 = mem[_2619]
                                _2972 = mem[_2619 + 96]
                                mem[_2813 + ceil32(return_data.size) + 100] = mem[_2619 + 12 len 20]
                                mem[_2813 + ceil32(return_data.size) + 132] = _2972
                                require ext_code.size(address(_2734))
                                call address(_2734).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2971), _2972
                                mem[_2813 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2813 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3055 = mem[_2619 + 96]
                                _3056 = mem[_2619 + 128]
                                mem[_2813 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2813 + (2 * ceil32(return_data.size)) + 100] = _3055
                                mem[_2813 + (2 * ceil32(return_data.size)) + 132] = _3056
                                mem[_2813 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2813 + (2 * ceil32(return_data.size)) + 260] = mem[_2813]
                                s = 0
                                t = _2813 + 32
                                u = _2813 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2813]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2813 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2813 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2800))
                                call address(_2800).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args _3055, _3056, 160, address(this.address), cd[164], mem[_2813 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2813]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2813 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _2813 + (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _3213 = mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32
                                require mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 <= test266151307()
                                require _2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 127 < _2813 + (2 * ceil32(return_data.size)) + return_data.size + 96
                                _3221 = mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96]
                                require mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96] <= test266151307()
                                require _2813 + (4 * ceil32(return_data.size)) + (32 * mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96]) + 32 >= 0
                                mem[64] = _2813 + (4 * ceil32(return_data.size)) + (32 * mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96]) + 128
                                mem[_2813 + (4 * ceil32(return_data.size)) + 96] = mem[_2813 + (2 * ceil32(return_data.size)) + mem[_2813 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _3055) >> 32 + 96]
                                require _3213 + (32 * _3221) + 32 <= return_data.size
                                s = 0
                                t = _2813 + (2 * ceil32(return_data.size)) + _3213 + 128
                                u = _2813 + (4 * ceil32(return_data.size)) + 128
                                while s < _3221:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3221
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_2813 + (4 * ceil32(return_data.size)) + 160]
                                    continue 
                                if mem[_2813 + (4 * ceil32(return_data.size)) + 160] < mem[_2813 + (4 * ceil32(return_data.size)) + 160]:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2678] == bool(mem[_2678])
                        _2747 = mem[_2619 + 96]
                        mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                        mem[mem[64] + 36] = _2747
                        require ext_code.size(address(_2620))
                        call address(_2620).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _2747
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2785] == bool(mem[_2785])
                        if mem[_2619 + 192] == 1:
                            _2834 = mem[_2619]
                            _2836 = mem[_2619 + 96]
                            _2837 = mem[_2619 + 64]
                            _2838 = mem[_2619 + 128]
                            _2839 = mem[_2619 + 160]
                            mem[mem[64] + 4] = mem[_2619 + 44 len 20]
                            mem[mem[64] + 36] = _2836
                            mem[mem[64] + 68] = address(_2837)
                            mem[mem[64] + 100] = _2838
                            mem[mem[64] + 132] = _2839
                            require ext_code.size(address(_2834))
                            call address(_2834).swapExactAmountIn(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2836, address(_2837), _2838, _2839
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2981 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2981] == mem[_2981]
                            require mem[_2981 + 32] == mem[_2981 + 32]
                            require idx < mem[96]
                            if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                var246002 = var246002 + 1
                                var246003 = mem[_2981]
                                continue 
                            if mem[_2981] < mem[_2981]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if mem[_2619 + 192] != 2:
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = var246003
                                    continue 
                                if var246003 < var246003:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                _2858 = mem[_2619 + 64]
                                _2860 = mem[_2619 + 96]
                                mem[mem[64] + 4] = mem[_2619 + 12 len 20]
                                mem[mem[64] + 36] = _2860
                                require ext_code.size(address(_2858))
                                call address(_2858).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _2860
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2920 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2920] == bool(mem[_2920])
                                _2955 = mem[_2619]
                                _2962 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require 0 < mem[_2962]
                                mem[_2962 + 32] = 0x55d398326f99059ff775485246999027b3197955
                                require 1 < mem[_2962]
                                mem[_2962 + 64] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                _2997 = mem[_2619]
                                _2998 = mem[_2619 + 96]
                                mem[_2962 + 100] = mem[_2619 + 12 len 20]
                                mem[_2962 + 132] = _2998
                                require ext_code.size(address(_2620))
                                call address(_2620).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_2997), _2998
                                mem[_2962 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2962 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3069 = mem[_2619]
                                _3070 = mem[_2619 + 96]
                                mem[_2962 + ceil32(return_data.size) + 100] = mem[_2619 + 12 len 20]
                                mem[_2962 + ceil32(return_data.size) + 132] = _3070
                                require ext_code.size(address(_2858))
                                call address(_2858).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(_3069), _3070
                                mem[_2962 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2962 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _3105 = mem[_2619 + 96]
                                _3106 = mem[_2619 + 128]
                                mem[_2962 + (2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_2962 + (2 * ceil32(return_data.size)) + 100] = _3105
                                mem[_2962 + (2 * ceil32(return_data.size)) + 132] = _3106
                                mem[_2962 + (2 * ceil32(return_data.size)) + 164] = 160
                                mem[_2962 + (2 * ceil32(return_data.size)) + 260] = mem[_2962]
                                s = 0
                                t = _2962 + 32
                                u = _2962 + (2 * ceil32(return_data.size)) + 292
                                while s < mem[_2962]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_2962 + (2 * ceil32(return_data.size)) + 196] = this.address
                                mem[_2962 + (2 * ceil32(return_data.size)) + 228] = cd[164]
                                require ext_code.size(address(_2955))
                                call address(_2955).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2962 + (2 * ceil32(return_data.size)) + (32 * mem[_2962]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3206 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3214 = mem[_3206]
                                require mem[_3206] <= test266151307()
                                require _3206 + mem[_3206] + 31 < _3206 + return_data.size
                                _3222 = mem[_3206 + mem[_3206]]
                                require mem[_3206 + mem[_3206]] <= test266151307()
                                require _3206 + ceil32(return_data.size) + (32 * mem[_3206 + mem[_3206]]) + 32 <= test266151307() and (32 * mem[_3206 + mem[_3206]]) + 32 >= 0
                                mem[64] = _3206 + ceil32(return_data.size) + (32 * mem[_3206 + mem[_3206]]) + 32
                                mem[_3206 + ceil32(return_data.size)] = _3222
                                require _3214 + (32 * _3222) + 32 <= return_data.size
                                s = 0
                                t = _3206 + _3214 + 32
                                u = _3206 + ceil32(return_data.size) + 32
                                while s < _3222:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require 1 < _3222
                                require idx < mem[96]
                                if var246002 + 1 < mem[mem[(32 * idx) + 128]]:
                                    var246002 = var246002 + 1
                                    var246003 = mem[_3206 + ceil32(return_data.size) + 64]
                                    continue 
                                if mem[_3206 + ceil32(return_data.size) + 64] < mem[_3206 + ceil32(return_data.size) + 64]:
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
            _631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _635 = mem[_631]
            require mem[_631] == mem[_631]
            if mem[_631]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_631]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_631] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _635
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _635
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _709 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_709] == bool(mem[_709])
                    if not mem[_709]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _632 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_632]
            require mem[_632] == mem[_632]
            if mem[_632]:
                if address(cd[36]) == 4100:
                    require ext_code.size(stor1)
                    call stor1.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_632]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_632] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'ERR_ETH_FAILED'
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _636
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _636
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_710] == bool(mem[_710])
                    if not mem[_710]:
                        revert with 0, 'ERR_TRANSFER_FAILED'
    return 0
}



}
