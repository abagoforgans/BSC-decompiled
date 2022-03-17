contract main {




// =====================  Runtime code  =====================


#
#  - sub_07c4902f(?)
#  - sub_cb896a05(?)
#
function _fallback() payable {
    revert
}

function sub_1c205653(?) payable {
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    call 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.claimComp(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888)
    staticcall 0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0xf3c2476fbf0ed09dff00ea7f4ef252d
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.size(0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7, 0, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call 0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5afcb01d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[100] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).redeemUnderlying(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg2):
        call 0x0f3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = 0xf3c2476fbf0ed09dff00ea7f4ef252d
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        if ext_code.size(address(arg3)) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7, 0, arg1, mem[ceil32(return_data.size) + 196 len 28]
        call address(arg3).mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(arg1), mem[132 len 28] == bool(uint32(arg1), mem[132 len 28])
                if not uint32(arg1), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function enterMarkets(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    idx = 0
    s = 128
    t = (32 * arg1.length) + 196
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    call 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.0xc2998238 with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _23 = mem[(32 * arg1.length) + 128 len 4], 0
    require mem[(32 * arg1.length) + 128 len 4], 0 <= test266151307()
    require (32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 159 < (32 * arg1.length) + return_data.size + 128
    _24 = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]
    require mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128] <= test266151307()
    require (32 * arg1.length) + ceil32(return_data.size) + (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]) + 160 <= test266151307() and (32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]) + 32 >= 0
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], 0 + 128]
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = 0
    s = (32 * arg1.length) + _23 + 160
    t = (32 * arg1.length) + ceil32(return_data.size) + 160
    while idx < _24:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function withdrawEverything() payable {
    mem[96] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    staticcall 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _18 = mem[64]
    mem[mem[64]] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 68
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    call 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _18 + (32 * _5) + -mem[64] + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _29 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _30 = mem[_29]
    require mem[_29] <= test266151307()
    require _29 + mem[_29] + 31 < _29 + return_data.size
    _31 = mem[_29 + mem[_29]]
    require mem[_29 + mem[_29]] <= test266151307()
    require _29 + ceil32(return_data.size) + (32 * mem[_29 + mem[_29]]) + 32 <= test266151307() and (32 * mem[_29 + mem[_29]]) + 32 >= 0
    mem[64] = _29 + ceil32(return_data.size) + (32 * mem[_29 + mem[_29]]) + 32
    mem[_29 + ceil32(return_data.size)] = _31
    require _30 + (32 * _31) + 32 <= return_data.size
    idx = 0
    s = _29 + _30 + 32
    t = _29 + ceil32(return_data.size) + 32
    while idx < _31:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_657599c2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    if not arg3:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        call address(arg1).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[ceil32(return_data.size) + 196 len 28]
        call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if arg2 <= ext_call.return_data[0]:
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg2:
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 296 len 96] = 0, address(arg1), arg2, mem[ceil32(return_data.size) + 296 len 28]
                    call address(arg1).mem[ceil32(return_data.size) + 296 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 300 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 328] == bool(mem[ceil32(return_data.size) + 328])
                            if not mem[ceil32(return_data.size) + 328]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(2 * ceil32(return_data.size)) + 296 len 28]
                    call address(arg1).mem[(2 * ceil32(return_data.size)) + 296 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 300 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 328] == bool(mem[(2 * ceil32(return_data.size)) + 328])
                            if not mem[(2 * ceil32(return_data.size)) + 328]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg2:
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 28]
                    call address(arg1).mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 301 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 329])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                    call address(arg1).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
        else:
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 296 len 96] = 0, address(arg1), ext_call.return_data[0], mem[ceil32(return_data.size) + 296 len 28]
                    call address(arg1).mem[ceil32(return_data.size) + 296 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 300 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 328] == bool(mem[ceil32(return_data.size) + 328])
                            if not mem[ceil32(return_data.size) + 328]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 296 len 28]
                    call address(arg1).mem[(2 * ceil32(return_data.size)) + 296 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 300 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 328] == bool(mem[(2 * ceil32(return_data.size)) + 328])
                            if not mem[(2 * ceil32(return_data.size)) + 328]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not ext_call.return_data[0]:
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 28]
                    call address(arg1).mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + ceil32(return_data.size) + 301 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 329])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    if ext_code.size(address(arg1)) <= 0:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                    call address(arg1).mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(arg1))
            call address(arg1).repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
    else:
        require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
        staticcall 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[32]:
            require ext_code.size(0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477)
            staticcall 0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[32] > ext_call.return_data[32]:
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1))
                if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
            else:
                if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
                    revert with 0, 'math-not-safe'
                if (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[32]:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1))
                if arg2 <= (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        else:
            require ext_call.return_data[32]
            if 10^17 * ext_call.return_data[32] / ext_call.return_data[32] != 10^17:
                revert with 0, 'math-not-safe'
            if (10^17 * ext_call.return_data[32]) + 5 * 10^17 < 10^17 * ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477)
            staticcall 0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[32] - ((10^17 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) > ext_call.return_data[32]:
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1))
                if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
            else:
                if (10^18 * ext_call.return_data[32]) - (10^18 * (10^17 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) / 10^18 != ext_call.return_data[32] - ((10^17 * ext_call.return_data[32]) + 5 * 10^17 / 10^18):
                    revert with 0, 'math-not-safe'
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1))
                if arg2 <= (10^18 * ext_call.return_data[32]) - (10^18 * (10^17 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^17 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg4:
            if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1):
                call 0x0f3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7, 0, ext_call.return_data[0], mem[(7 * ceil32(return_data.size)) + 196 len 28]
                call address(ext_call.return_data[0]).mem[(7 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(7 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 228] == bool(mem[(7 * ceil32(return_data.size)) + 228])
                        if not mem[(7 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_2ebdc22e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    staticcall 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[32]:
        require ext_code.size(0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477)
        staticcall 0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[32] > ext_call.return_data[32]:
            if ext_call.return_data[0] / 2 < 0:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
            else:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
        else:
            if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            if (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
            else:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    else:
        require ext_call.return_data[32]
        if 10^16 * ext_call.return_data[32] / ext_call.return_data[32] != 10^16:
            revert with 0, 'math-not-safe'
        if (10^16 * ext_call.return_data[32]) + 5 * 10^17 < 10^16 * ext_call.return_data[32]:
            revert with 0, 'math-not-safe'
        require ext_code.size(0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477)
        staticcall 0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477.getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[32] - ((10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) > ext_call.return_data[32]:
            if ext_call.return_data[0] / 2 < 0:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
            else:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), ext_call.return_data[0] / 2 / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
        else:
            if (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) / 10^18 != ext_call.return_data[32] - ((10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18):
                revert with 0, 'math-not-safe'
            if ext_call.return_data[0] / 2 < 0:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not arg2:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), arg2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg2
            else:
                call address(arg1).borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_code.size(address(arg1)) <= 0:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 196 len 96] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0, mem[(4 * ceil32(return_data.size)) + 196 len 28]
                call address(arg1).mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 328] == bool(mem[(4 * ceil32(return_data.size)) + 328])
                                if not mem[(4 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 296 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 296 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + 296 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 300 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 328] == bool(mem[(6 * ceil32(return_data.size)) + 328])
                                if not mem[(6 * ceil32(return_data.size)) + 328]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                        if not mem[(4 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        if ext_code.size(address(arg1)) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 96] = 0, address(arg1), (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28]
                        call address(arg1).mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 301 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0] >= 32
                                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                if not ext_call.return_data[32]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329])
                                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).mint(uint256 rg1) with:
                     gas gas_remaining wei
                    args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
