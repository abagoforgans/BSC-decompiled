contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7615e026(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg5)
    if arg1 < arg2:
        if arg1 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        staticcall arg4.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg6)
        if arg1 == arg1:
            staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        else:
            staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if arg2 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg4)
        staticcall arg4.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg6)
        if arg2 == arg1:
            staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        else:
            staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg7, ext_call.return_data[0], ext_call.return_data[0]
}

function sub_e9f2b853(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg4)
    if arg1 < arg2:
        if arg1 == arg1:
            staticcall arg4.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg5, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall arg4.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg5, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[228 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg5) >> 32
        mem[352 len 4] = uint32(arg5)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg5) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            uint32(arg5),
                            mem[356 len 4]
            if not unknown_0x23b872dd(?????), address(this.address) << 64:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            uint32(arg5),
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
        require ext_code.size(arg3)
        if arg1 != arg1:
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, this.address, 128, 0
        else:
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], this.address, 128, 0
    else:
        if arg2 == arg1:
            staticcall arg4.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg5, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall arg4.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg5, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[228 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg5) >> 32
        mem[352 len 4] = uint32(arg5)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg5) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            uint32(arg5),
                            mem[356 len 4]
            if not unknown_0x23b872dd(?????), address(this.address) << 64:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            uint32(arg5),
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
        require ext_code.size(arg3)
        if arg2 != arg1:
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, this.address, 128, 0
        else:
            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], this.address, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe0e3fcd1: ext_call.return_data[0], ext_call.return_data[0]
}

function sub_1675a07f(?) payable {
    require calldata.size - 4 >= 224
    mem[96 len 96] = call.data[calldata.size len 96]
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg5)
    if arg1 < arg2:
        if arg1 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg1 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                mem[448 len 4] = uint32(arg7)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg7) << 480, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                    if call.data[calldata.size]:
                        require call.data[calldata.size] >= 32
                        if not call.data[calldata.size + 32]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[428 len 20],
                                        uint32(arg7),
                                        mem[452 len 4]
                else:
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 429 len 28]
                require ext_code.size(arg3)
                if arg1 != arg1:
                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(arg4), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                else:
                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(arg4), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228] = this.address
                mem[260] = arg3
                mem[292] = arg7
                mem[192] = 100
                mem[228 len 28] = address(this.address) << 64
                mem[224 len 4] = unknown_0x23b872dd(?????)
                mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                mem[448 len 4] = uint32(arg7)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg7) << 480, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                    if call.data[calldata.size]:
                        require call.data[calldata.size] >= 32
                        if not call.data[calldata.size + 32]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[428 len 20],
                                        uint32(arg7),
                                        mem[452 len 4]
                    mem[64] = 356
                    mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if arg1 != arg1:
                        mem[360] = ext_call.return_data[0]
                        mem[392] = 0
                        mem[424] = arg4
                        mem[456] = 128
                        mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                        if not Mask(5, 32, arg7):
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                        else:
                            mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                    else:
                        mem[360] = 0
                        mem[392] = ext_call.return_data[0]
                        mem[424] = arg4
                        mem[456] = 128
                        mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                        if not Mask(5, 32, arg7):
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                        else:
                            mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                else:
                    mem[324] = return_data.size
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 429 len 28]
                    mem[64] = ceil32(return_data.size) + 357
                    mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if arg1 != arg1:
                        mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 393] = 0
                        mem[ceil32(return_data.size) + 425] = arg4
                        mem[ceil32(return_data.size) + 457] = 128
                        mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                        mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                        if not mem[ceil32(return_data.size) + 325] % 32:
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                        else:
                            mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 361] = 0
                        mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 425] = arg4
                        mem[ceil32(return_data.size) + 457] = 128
                        mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                        mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                        if not mem[ceil32(return_data.size) + 325] % 32:
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                        else:
                            mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg1 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228] = this.address
            mem[260] = arg3
            mem[292] = arg7
            mem[192] = 100
            mem[228 len 28] = address(this.address) << 64
            mem[224 len 4] = unknown_0x23b872dd(?????)
            mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
            mem[448 len 4] = uint32(arg7)
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg7) << 480, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[428 len 20],
                                uint32(arg7),
                                mem[452 len 4]
                if call.data[calldata.size]:
                    require call.data[calldata.size] >= 32
                    if not call.data[calldata.size + 32]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                mem[64] = 356
                mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if arg1 != arg1:
                    mem[360] = ext_call.return_data[0]
                    mem[392] = 0
                    mem[424] = arg4
                    mem[456] = 128
                    mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                    mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                    if not Mask(5, 32, arg7):
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                    else:
                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0
                else:
                    mem[360] = 0
                    mem[392] = ext_call.return_data[0]
                    mem[424] = arg4
                    mem[456] = 128
                    mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                    mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                    if not Mask(5, 32, arg7):
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                    else:
                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0
            else:
                mem[324] = return_data.size
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 429 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                mem[64] = ceil32(return_data.size) + 357
                mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if arg1 != arg1:
                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 393] = 0
                    mem[ceil32(return_data.size) + 425] = arg4
                    mem[ceil32(return_data.size) + 457] = 128
                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                    if not mem[ceil32(return_data.size) + 325] % 32:
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                    else:
                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 361] = 0
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = arg4
                    mem[ceil32(return_data.size) + 457] = 128
                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                    if not mem[ceil32(return_data.size) + 325] % 32:
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                    else:
                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0
    else:
        if arg2 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg2 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228] = this.address
            mem[260] = arg3
            mem[292] = arg7
            mem[192] = 100
            mem[228 len 28] = address(this.address) << 64
            mem[224 len 4] = unknown_0x23b872dd(?????)
            mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
            mem[448 len 4] = uint32(arg7)
            call arg1 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg7) << 480, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[428 len 20],
                                uint32(arg7),
                                mem[452 len 4]
                if call.data[calldata.size]:
                    require call.data[calldata.size] >= 32
                    if not call.data[calldata.size + 32]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                mem[64] = 356
                mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if arg2 != arg1:
                    mem[360] = ext_call.return_data[0]
                    mem[392] = 0
                    mem[424] = arg4
                    mem[456] = 128
                    mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                    mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                    if not Mask(5, 32, arg7):
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                    else:
                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0
                else:
                    mem[360] = 0
                    mem[392] = ext_call.return_data[0]
                    mem[424] = arg4
                    mem[456] = 128
                    mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                    mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                    if not Mask(5, 32, arg7):
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                    else:
                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0
            else:
                mem[324] = return_data.size
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                36,
                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 429 len 28]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                mem[64] = ceil32(return_data.size) + 357
                mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if arg2 != arg1:
                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 393] = 0
                    mem[ceil32(return_data.size) + 425] = arg4
                    mem[ceil32(return_data.size) + 457] = 128
                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                    if not mem[ceil32(return_data.size) + 325] % 32:
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                    else:
                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 361] = 0
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = arg4
                    mem[ceil32(return_data.size) + 457] = 128
                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                    if not mem[ceil32(return_data.size) + 325] % 32:
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                    else:
                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                        require ext_code.size(arg3)
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg2 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                mem[448 len 4] = uint32(arg7)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg7) << 480, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                    if call.data[calldata.size]:
                        require call.data[calldata.size] >= 32
                        if not call.data[calldata.size + 32]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[428 len 20],
                                        uint32(arg7),
                                        mem[452 len 4]
                else:
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 429 len 28]
                require ext_code.size(arg3)
                if arg2 != arg1:
                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(arg4), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                else:
                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(arg4), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg4)
                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228] = this.address
                mem[260] = arg3
                mem[292] = arg7
                mem[192] = 100
                mem[228 len 28] = address(this.address) << 64
                mem[224 len 4] = unknown_0x23b872dd(?????)
                mem[324 len 96] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                mem[448 len 4] = uint32(arg7)
                call arg1 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg7) << 480, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[428 len 20],
                                    uint32(arg7),
                                    mem[452 len 4]
                    if call.data[calldata.size]:
                        require call.data[calldata.size] >= 32
                        if not call.data[calldata.size + 32]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[428 len 20],
                                        uint32(arg7),
                                        mem[452 len 4]
                    mem[64] = 356
                    mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if arg2 != arg1:
                        mem[360] = ext_call.return_data[0]
                        mem[392] = 0
                        mem[424] = arg4
                        mem[456] = 128
                        mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                        if not Mask(5, 32, arg7):
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                        else:
                            mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                    else:
                        mem[360] = 0
                        mem[392] = ext_call.return_data[0]
                        mem[424] = arg4
                        mem[456] = 128
                        mem[488] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[520 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32)]
                        if not Mask(5, 32, arg7):
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                        else:
                            mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                else:
                    mem[324] = return_data.size
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                    mem[ceil32(return_data.size) + 429 len 28]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        36,
                                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                        mem[ceil32(return_data.size) + 429 len 28]
                    mem[64] = ceil32(return_data.size) + 357
                    mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if arg2 != arg1:
                        mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 393] = 0
                        mem[ceil32(return_data.size) + 425] = arg4
                        mem[ceil32(return_data.size) + 457] = 128
                        mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                        mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                        if not mem[ceil32(return_data.size) + 325] % 32:
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                        else:
                            mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 361] = 0
                        mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 425] = arg4
                        mem[ceil32(return_data.size) + 457] = 128
                        mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                        mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                        if not mem[ceil32(return_data.size) + 325] % 32:
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                        else:
                            mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                            require ext_code.size(arg3)
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xe0e3fcd1: ext_call.return_data[0], ext_call.return_data[0]
    return arg7, ext_call.return_data[0], ext_call.return_data[0]
}



}
