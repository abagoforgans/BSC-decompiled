contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdrawEverything() payable {
  stop
}

function sub_1c205653(?) payable {
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    call 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.claimComp(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(0xc00e94cb662c3520282e6f5717214004a7f26888)
    staticcall 0xc00e94cb662c3520282e6f5717214004a7f26888.0x70a08231 with:
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
    if ext_code.size(0xc00e94cb662c3520282e6f5717214004a7f26888) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), 0xf3c2476fbf0ed09dff00ea7, 0, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call 0xc00e94cb662c3520282e6f5717214004a7f26888.mem[ceil32(return_data.size) + 196 len 4] with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa0712d68 with:
                     gas gas_remaining wei
                    args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_657599c2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    if not arg3:
        require ext_code.size(address(arg1))
        call address(arg1).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        if arg2 <= ext_call.return_data[0]:
            call address(arg1).repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
        else:
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

function sub_07c4902f(?) payable {
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
            call address(arg1).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0]:
                if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
        else:
            if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            if (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            call address(arg1).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0]:
                if arg2 <= (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] <= (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
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
            call address(arg1).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0]:
                if arg2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
        else:
            if (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) / 10^18 != ext_call.return_data[32] - ((10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18):
                revert with 0, 'math-not-safe'
            if ext_call.return_data[0] / 2 < 0:
                revert with 0, 'math-not-safe'
            require ext_call.return_data[0]
            require ext_code.size(address(arg1))
            call address(arg1).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            if arg2 <= ext_call.return_data[0]:
                if arg2 <= (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg2
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                if ext_call.return_data[0] <= (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    call address(arg1).redeemUnderlying(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(arg1))
                    call address(arg1).repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_cb896a05(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x589de0f0ccf905477646599bb3e5c622c84cc0ba)
    staticcall 0x589de0f0ccf905477646599bb3e5c622c84cc0ba.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[64] > 0:
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
                   args address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[32] > ext_call.return_data[32]:
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                if ext_call.return_data[0] - 10000 / 2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 10000 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] - 10000 / 2 wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), Mask(255, 1, ext_call.return_data[0] - 10000), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
                else:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] / 2 / ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), ext_call.return_data[0] / 2 / ext_call.return_data[0], address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
            else:
                if 10^18 * ext_call.return_data[32] / 10^18 != ext_call.return_data[32]:
                    revert with 0, 'math-not-safe'
                if (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[32]:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                if ext_call.return_data[0] - 10000 / 2 <= (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 10000 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] - 10000 / 2 wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), Mask(255, 1, ext_call.return_data[0] - 10000), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
                else:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), (10^18 * ext_call.return_data[32]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
        else:
            require ext_call.return_data[32]
            if 10^16 * ext_call.return_data[32] / ext_call.return_data[32] != 10^16:
                revert with 0, 'math-not-safe'
            if (10^16 * ext_call.return_data[32]) + 5 * 10^17 < 10^16 * ext_call.return_data[32]:
                revert with 0, 'math-not-safe'
            require ext_code.size(0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477)
            staticcall 0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477.getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[32] - ((10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) > ext_call.return_data[32]:
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                if ext_call.return_data[0] - 10000 / 2 <= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 10000 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] - 10000 / 2 wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), Mask(255, 1, ext_call.return_data[0] - 10000), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
                else:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] / 2 / ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), ext_call.return_data[0] / 2 / ext_call.return_data[0], address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
            else:
                if (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) / 10^18 != ext_call.return_data[32] - ((10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18):
                    revert with 0, 'math-not-safe'
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'math-not-safe'
                require ext_call.return_data[0]
                require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                if ext_call.return_data[0] - 10000 / 2 <= (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 10000 / 2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value ext_call.return_data[0] - 10000 / 2 wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), Mask(255, 1, ext_call.return_data[0] - 10000), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
                else:
                    call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).borrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0]:
                        revert with 0, '1'
                    require ext_code.size(address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1))
                    if 0x1ffe17b99b439be0afc831239ddecda2a790ff3a == address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1):
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, address rg2) with:
                           value (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call address(arg1 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args address(arg2 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1), (10^18 * ext_call.return_data[32]) - (10^18 * (10^16 * ext_call.return_data[32]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], address(arg4 xor 0xf3c2476fbf0ed09dff00ea7f4ef252dcc72e6f1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, '2'
}



}
