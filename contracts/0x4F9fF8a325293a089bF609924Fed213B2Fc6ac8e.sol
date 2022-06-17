contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, uint256 arg2)
#
address owner;
address sub_605fd13fAddress;
uint256 decimals;

function decimals() payable {
    return decimals
}

function sub_605fd13f(?) payable {
    return sub_605fd13fAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_03f4e717(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_605fd13fAddress = address(arg1)
    decimals = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e6eade3a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        if arg3 > -2:
            revert with 'NH{q', 17
        if var99002 >= arg3 + 1:
            mem[(32 * arg3 - arg2) + 128] = 32
            mem[(32 * arg3 - arg2) + 160] = arg3 - arg2
            idx = 0
            s = 128
            t = (32 * arg3 - arg2) + 192
            while idx < arg3 - arg2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * arg3 - arg2) + 128
               len (96 * arg3) + (-96 * arg2) + 64
        mem[(32 * arg3 - arg2) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var109003] = var109001
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var115003 len 4] with:
                gas gas_remaining wei
               args mem[var115003 + 4 len var115004 - 4]
        if not ext_call.success:
            # nil
        else:
            require var119002 - var119001 >= 32
            # nil
    else:
        mem[128 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        if arg3 > -2:
            revert with 'NH{q', 17
        if var100002 >= arg3 + 1:
            mem[(32 * arg3 - arg2) + 128] = 32
            mem[(32 * arg3 - arg2) + 160] = arg3 - arg2
            idx = 0
            s = 128
            t = (32 * arg3 - arg2) + 192
            while idx < arg3 - arg2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * arg3 - arg2) + 128
               len (96 * arg3) + (-96 * arg2) + 64
        mem[(32 * arg3 - arg2) + 128] = 0x6352211e00000000000000000000000000000000000000000000000000000000
        mem[var110003] = var110001
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[var116003 len 4] with:
                gas gas_remaining wei
               args mem[var116003 + 4 len var116004 - 4]
        if not ext_call.success:
            # nil
        else:
            require var120002 - var120001 >= 32
            # nil
}

function airdrop(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg1.length:
            revert with 'NH{q', 18
        if arg1.length > -2:
            revert with 'NH{q', 17
        if var146002 >= arg1.length + 1:
        if var148001 >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * var148001) + arg1 + 36)] == address(cd[((32 * var148001) + arg1 + 36)])
        mem[132] = address(cd[((32 * var148001) + arg1 + 36)])
        mem[164] = arg2 / arg1.length
        mem[96] = 68
        mem[132 len 28] = address(cd[((32 * var148001) + arg1 + 36)]) << 64
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = 260
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        s = var148001
        t = var148001
        while eth.balance(this.address) >= 0:
            if ext_code.size(sub_605fd13fAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1910 = mem[64]
            _1915 = mem[96]
            idx = 0
            while idx < _1915:
                mem[_1910 + idx] = mem[idx + 128]
                require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                mem[164] = arg2 / arg1.length
                mem[mem[64]] = -mem[64] + 164
                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = 260
                mem[196] = 32
                mem[228] = 'SafeERC20: low-level call failed'
                idx = idx + 32
                continue 
            if ceil32(_1915) <= _1915:
                call sub_605fd13fAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1910 + _1915 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _2102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _2121 = mem[196]
                        mem[mem[64] + 36] = mem[196]
                        idx = 0
                        while idx < _2121:
                            mem[_2102 + idx + 68] = mem[idx + 228]
                            require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                            mem[164] = arg2 / arg1.length
                            mem[mem[64]] = -mem[64] + 164
                            mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = 260
                            mem[196] = 32
                            mem[228] = 'SafeERC20: low-level call failed'
                            idx = idx + 32
                            continue 
                        if ceil32(_2121) > _2121:
                            mem[_2102 + _2121 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _2102 + ceil32(_2121) + -mem[64] + 68
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _2088 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2088] = return_data.size
                    mem[_2088 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2104 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _2123 = mem[196]
                        mem[mem[64] + 36] = mem[196]
                        idx = 0
                        while idx < _2123:
                            mem[_2104 + idx + 68] = mem[idx + 228]
                            require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                            mem[164] = arg2 / arg1.length
                            mem[mem[64]] = -mem[64] + 164
                            mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = 260
                            mem[196] = 32
                            mem[228] = 'SafeERC20: low-level call failed'
                            idx = idx + 32
                            continue 
                        if ceil32(_2123) > _2123:
                            mem[_2104 + _2123 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _2104 + ceil32(_2123) + -mem[64] + 68
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_2088 + 32] == bool(mem[_2088 + 32])
                        if not mem[_2088 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1910 + _1915] = 0
                call sub_605fd13fAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1910 + _1915 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _2112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _2133 = mem[196]
                        mem[mem[64] + 36] = mem[196]
                        idx = 0
                        while idx < _2133:
                            mem[_2112 + idx + 68] = mem[idx + 228]
                            require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                            mem[164] = arg2 / arg1.length
                            mem[mem[64]] = -mem[64] + 164
                            mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = 260
                            mem[196] = 32
                            mem[228] = 'SafeERC20: low-level call failed'
                            idx = idx + 32
                            continue 
                        if ceil32(_2133) > _2133:
                            mem[_2112 + _2133 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _2112 + ceil32(_2133) + -mem[64] + 68
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _2091 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2091] = return_data.size
                    mem[_2091 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _2135 = mem[196]
                        mem[mem[64] + 36] = mem[196]
                        idx = 0
                        while idx < _2135:
                            mem[_2114 + idx + 68] = mem[idx + 228]
                            require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                            mem[164] = arg2 / arg1.length
                            mem[mem[64]] = -mem[64] + 164
                            mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[64] = 260
                            mem[196] = 32
                            mem[228] = 'SafeERC20: low-level call failed'
                            idx = idx + 32
                            continue 
                        if ceil32(_2135) > _2135:
                            mem[_2114 + _2135 + 68] = 0
                        revert with memory
                          from mem[64]
                           len _2114 + ceil32(_2135) + -mem[64] + 68
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_2091 + 32] == bool(mem[_2091 + 32])
                        if not mem[_2091 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if t == -1:
                revert with 'NH{q', 17
            if arg1.length > -2:
                revert with 'NH{q', 17
            if t >= arg1.length:
            if t + 1 >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * t + 2) + arg1 + 36)] == address(cd[((32 * t + 2) + arg1 + 36)])
            mem[mem[64] + 36] = address(cd[((32 * t + 2) + arg1 + 36)])
            mem[164] = arg2 / arg1.length
            mem[mem[64]] = -mem[64] + 164
            mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = 260
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            s = t + 1
            t = t + 1
            continue 
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg2 and 10^decimals > -1 / arg2:
                revert with 'NH{q', 17
            if not arg1.length:
                revert with 'NH{q', 18
            if arg1.length > -2:
                revert with 'NH{q', 17
            if var152002 >= arg1.length + 1:
            if var154001 >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * var154001) + arg1 + 36)] == address(cd[((32 * var154001) + arg1 + 36)])
            mem[132] = address(cd[((32 * var154001) + arg1 + 36)])
            mem[164] = arg2 * 10^decimals / arg1.length
            mem[96] = 68
            mem[132 len 28] = address(cd[((32 * var154001) + arg1 + 36)]) << 64
            mem[128 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = 260
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            s = var154001
            t = var154001
            while eth.balance(this.address) >= 0:
                if ext_code.size(sub_605fd13fAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1908 = mem[64]
                _1914 = mem[96]
                idx = 0
                while idx < _1914:
                    mem[_1908 + idx] = mem[idx + 128]
                    require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                    mem[164] = arg2 * 10^decimals / arg1.length
                    mem[mem[64]] = -mem[64] + 164
                    mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = 260
                    mem[196] = 32
                    mem[228] = 'SafeERC20: low-level call failed'
                    idx = idx + 32
                    continue 
                if ceil32(_1914) <= _1914:
                    call sub_605fd13fAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1908 + _1914 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2096 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2117 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2117:
                                mem[_2096 + idx + 68] = mem[idx + 228]
                                require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                                mem[164] = arg2 * 10^decimals / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2117) > _2117:
                                mem[_2096 + _2117 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2096 + ceil32(_2117) + -mem[64] + 68
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _2086 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2086] = return_data.size
                        mem[_2086 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2098 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2119 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2119:
                                mem[_2098 + idx + 68] = mem[idx + 228]
                                require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                                mem[164] = arg2 * 10^decimals / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2119) > _2119:
                                mem[_2098 + _2119 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2098 + ceil32(_2119) + -mem[64] + 68
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_2086 + 32] == bool(mem[_2086 + 32])
                            if not mem[_2086 + 32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1908 + _1914] = 0
                    call sub_605fd13fAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1908 + _1914 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2108 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2127 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2127:
                                mem[_2108 + idx + 68] = mem[idx + 228]
                                require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                                mem[164] = arg2 * 10^decimals / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2127) > _2127:
                                mem[_2108 + _2127 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2108 + ceil32(_2127) + -mem[64] + 68
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _2090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2090] = return_data.size
                        mem[_2090 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2110 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2129 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2129:
                                mem[_2110 + idx + 68] = mem[idx + 228]
                                require cd[((32 * s) + arg1 + 36)] == address(cd[((32 * s) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * s) + arg1 + 36)])
                                mem[164] = arg2 * 10^decimals / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2129) > _2129:
                                mem[_2110 + _2129 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2110 + ceil32(_2129) + -mem[64] + 68
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_2090 + 32] == bool(mem[_2090 + 32])
                            if not mem[_2090 + 32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if t == -1:
                    revert with 'NH{q', 17
                if arg1.length > -2:
                    revert with 'NH{q', 17
                if t >= arg1.length:
                if t + 1 >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * t + 2) + arg1 + 36)] == address(cd[((32 * t + 2) + arg1 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t + 2) + arg1 + 36)])
                mem[164] = arg2 * 10^decimals / arg1.length
                mem[mem[64]] = -mem[64] + 164
                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = 260
                mem[196] = 32
                mem[228] = 'SafeERC20: low-level call failed'
                s = t + 1
                t = t + 1
                continue 
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and t * s > -1 / arg2:
                revert with 'NH{q', 17
            if not arg1.length:
                revert with 'NH{q', 18
            if arg1.length > -2:
                revert with 'NH{q', 17
            if var157002 >= arg1.length + 1:
            if var159001 >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * var159001) + arg1 + 36)] == address(cd[((32 * var159001) + arg1 + 36)])
            mem[132] = address(cd[((32 * var159001) + arg1 + 36)])
            mem[164] = arg2 * t * s / arg1.length
            mem[96] = 68
            mem[132 len 28] = address(cd[((32 * var159001) + arg1 + 36)]) << 64
            mem[128 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = 260
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            u = var159001
            v = var159001
            while eth.balance(this.address) >= 0:
                if ext_code.size(sub_605fd13fAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _2185 = mem[64]
                _2195 = mem[96]
                idx = 0
                while idx < _2195:
                    mem[_2185 + idx] = mem[idx + 128]
                    require cd[((32 * u) + arg1 + 36)] == address(cd[((32 * u) + arg1 + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * u) + arg1 + 36)])
                    mem[164] = arg2 * t * s / arg1.length
                    mem[mem[64]] = -mem[64] + 164
                    mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[64] = 260
                    mem[196] = 32
                    mem[228] = 'SafeERC20: low-level call failed'
                    idx = idx + 32
                    continue 
                if ceil32(_2195) <= _2195:
                    call sub_605fd13fAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2185 + _2195 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2282 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2292 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2292:
                                mem[_2282 + idx + 68] = mem[idx + 228]
                                require cd[((32 * u) + arg1 + 36)] == address(cd[((32 * u) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * u) + arg1 + 36)])
                                mem[164] = arg2 * t * s / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2292) > _2292:
                                mem[_2282 + _2292 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2282 + ceil32(_2292) + -mem[64] + 68
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _2261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2261] = return_data.size
                        mem[_2261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2294 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2294:
                                mem[_2284 + idx + 68] = mem[idx + 228]
                                require cd[((32 * u) + arg1 + 36)] == address(cd[((32 * u) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * u) + arg1 + 36)])
                                mem[164] = arg2 * t * s / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2294) > _2294:
                                mem[_2284 + _2294 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2284 + ceil32(_2294) + -mem[64] + 68
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_2261 + 32] == bool(mem[_2261 + 32])
                            if not mem[_2261 + 32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_2185 + _2195] = 0
                    call sub_605fd13fAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2185 + _2195 + -mem[64] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _2288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2298 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2298:
                                mem[_2288 + idx + 68] = mem[idx + 228]
                                require cd[((32 * u) + arg1 + 36)] == address(cd[((32 * u) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * u) + arg1 + 36)])
                                mem[164] = arg2 * t * s / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2298) > _2298:
                                mem[_2288 + _2298 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2288 + ceil32(_2298) + -mem[64] + 68
                        if mem[96] > 0:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        _2263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2263] = return_data.size
                        mem[_2263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2290 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _2300 = mem[196]
                            mem[mem[64] + 36] = mem[196]
                            idx = 0
                            while idx < _2300:
                                mem[_2290 + idx + 68] = mem[idx + 228]
                                require cd[((32 * u) + arg1 + 36)] == address(cd[((32 * u) + arg1 + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * u) + arg1 + 36)])
                                mem[164] = arg2 * t * s / arg1.length
                                mem[mem[64]] = -mem[64] + 164
                                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[64] = 260
                                mem[196] = 32
                                mem[228] = 'SafeERC20: low-level call failed'
                                idx = idx + 32
                                continue 
                            if ceil32(_2300) > _2300:
                                mem[_2290 + _2300 + 68] = 0
                            revert with memory
                              from mem[64]
                               len _2290 + ceil32(_2300) + -mem[64] + 68
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[_2263 + 32] == bool(mem[_2263 + 32])
                            if not mem[_2263 + 32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if v == -1:
                    revert with 'NH{q', 17
                if arg1.length > -2:
                    revert with 'NH{q', 17
                if v >= arg1.length:
                if v + 1 >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * v + 2) + arg1 + 36)] == address(cd[((32 * v + 2) + arg1 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * v + 2) + arg1 + 36)])
                mem[164] = arg2 * t * s / arg1.length
                mem[mem[64]] = -mem[64] + 164
                mem[128] = mem[132 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = 260
                mem[196] = 32
                mem[228] = 'SafeERC20: low-level call failed'
                u = v + 1
                v = v + 1
                continue 
    revert with 0, 'Address: insufficient balance for call'
}



}
