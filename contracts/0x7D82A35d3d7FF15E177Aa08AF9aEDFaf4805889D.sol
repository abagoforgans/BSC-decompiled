contract main {




// =====================  Runtime code  =====================


#
#  - sub_26330232(?)
#  - sub_2b5d3e7f(?)
#  - sub_6cc18f47(?)
#
address stor0;
uint256 stor1;
address stor2;
address stor3;

function sub_6255b6ba(?) {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_4d80c3d3(?) {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    return 1
}

function sub_f5d813f8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1 = arg1
}

function sub_ca6c4f6a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = address(arg1)
}

function sub_0ec2e506(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(stor2)
    call stor2.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_81a76cd5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    if not arg4:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6cb6b783(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg3:
        if arg4:
            require ext_code.size(stor3)
            call stor3.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg1) with:
           value arg2 wei
             gas gas_remaining wei
    else:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg4:
            require ext_code.size(stor3)
            call stor3.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'FES'
}

function sub_4713348b(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'ZL - ZR'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'ZL - ZR'
    if not arg2:
        if not arg3:
            if 10000 < arg5:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < arg3:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] - arg3 and -arg5 + 10000 > -1 / ext_call.return_data[50 len 14] - arg3:
                revert with 'NH{q', 17
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3) / -arg5 + 10000 != ext_call.return_data[50 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 'NH{q', 18
            if 0 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3) > -2:
                revert with 'NH{q', 17
            if (0 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 < 0 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 0, 'ds-math-add-overflow'
            if (0 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 <= arg4:
                require ext_code.size(address(arg1))
                if arg2:
                    staticcall address(arg1).0xd21220a7 with:
                            gas gas_remaining wei
                else:
                    staticcall address(arg1).token0() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (0 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg3) + (arg5 * arg3)) + 1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
                mem[(2 * ceil32(return_data.size)) + 264] = 0
                call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 232] = 0
                        mem[(2 * ceil32(return_data.size)) + 264] = arg3
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 232] = arg3
                        mem[(2 * ceil32(return_data.size)) + 264] = 0
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                else:
                    mem[(2 * ceil32(return_data.size)) + 196] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                        if not mem[(2 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[18 len 14] and arg3 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if not arg3:
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] * arg3 / arg3 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] * arg3 and 10000 > -1 / ext_call.return_data[18 len 14] * arg3:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] * arg3 / 10000 != ext_call.return_data[18 len 14] * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 < arg5:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < arg3:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] - arg3 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] - arg3 and -arg5 + 10000 > -1 / ext_call.return_data[50 len 14] - arg3:
                revert with 'NH{q', 17
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3) / -arg5 + 10000 != ext_call.return_data[50 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[18 len 14] * arg3 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3) > -2:
                revert with 'NH{q', 17
            if (10000 * ext_call.return_data[18 len 14] * arg3 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 < 10000 * ext_call.return_data[18 len 14] * arg3 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 0, 'ds-math-add-overflow'
            if (10000 * ext_call.return_data[18 len 14] * arg3 / (10000 * ext_call.return_data[50 len 14]) - (arg5 * ext_call.return_data[50 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 <= arg4:
                require ext_code.size(address(arg1))
                if arg2:
                    staticcall address(arg1).0xd21220a7 with:
                            gas gas_remaining wei
                else:
                    staticcall address(arg1).token0() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (10000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (10000 * Mask(112, 0, ext_call.return_data[32])) - (arg5 * Mask(112, 0, ext_call.return_data[32])) - (10000 * arg3) + (arg5 * arg3)) + 1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
                mem[(2 * ceil32(return_data.size)) + 264] = 0
                call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 232] = 0
                        mem[(2 * ceil32(return_data.size)) + 264] = arg3
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 232] = arg3
                        mem[(2 * ceil32(return_data.size)) + 264] = 0
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                else:
                    mem[(2 * ceil32(return_data.size)) + 196] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                        if not mem[(2 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not arg3:
            if 10000 < arg5:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < arg3:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] - arg3 and -arg5 + 10000 > -1 / ext_call.return_data[18 len 14] - arg3:
                revert with 'NH{q', 17
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3) / -arg5 + 10000 != ext_call.return_data[18 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 'NH{q', 18
            if 0 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3) > -2:
                revert with 'NH{q', 17
            if (0 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 < 0 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 0, 'ds-math-add-overflow'
            if (0 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 <= arg4:
                require ext_code.size(address(arg1))
                if arg2:
                    staticcall address(arg1).0xd21220a7 with:
                            gas gas_remaining wei
                else:
                    staticcall address(arg1).token0() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (0 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (arg5 * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) + (arg5 * arg3)) + 1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
                mem[(2 * ceil32(return_data.size)) + 264] = 0
                call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 232] = 0
                        mem[(2 * ceil32(return_data.size)) + 264] = arg3
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 232] = arg3
                        mem[(2 * ceil32(return_data.size)) + 264] = 0
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                else:
                    mem[(2 * ceil32(return_data.size)) + 196] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                        if not mem[(2 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[50 len 14] and arg3 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if not arg3:
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] * arg3 / arg3 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[50 len 14] * arg3 and 10000 > -1 / ext_call.return_data[50 len 14] * arg3:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] * arg3 / 10000 != ext_call.return_data[50 len 14] * arg3:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 < arg5:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < arg3:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] - arg3 > ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] - arg3 and -arg5 + 10000 > -1 / ext_call.return_data[18 len 14] - arg3:
                revert with 'NH{q', 17
            if not -arg5 + 10000:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3) / -arg5 + 10000 != ext_call.return_data[18 len 14] - arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[50 len 14] * arg3 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3) > -2:
                revert with 'NH{q', 17
            if (10000 * ext_call.return_data[50 len 14] * arg3 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 < 10000 * ext_call.return_data[50 len 14] * arg3 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3):
                revert with 0, 'ds-math-add-overflow'
            if (10000 * ext_call.return_data[50 len 14] * arg3 / (10000 * ext_call.return_data[18 len 14]) - (arg5 * ext_call.return_data[18 len 14]) - (10000 * arg3) + (arg5 * arg3)) + 1 <= arg4:
                require ext_code.size(address(arg1))
                if arg2:
                    staticcall address(arg1).0xd21220a7 with:
                            gas gas_remaining wei
                else:
                    staticcall address(arg1).token0() with:
                            gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (10000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (10000 * Mask(112, 0, ext_call.return_data[0])) - (arg5 * Mask(112, 0, ext_call.return_data[0])) - (10000 * arg3) + (arg5 * arg3)) + 1, mem[(2 * ceil32(return_data.size)) + 196 len 28]
                mem[(2 * ceil32(return_data.size)) + 264] = 0
                call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + 232] = 0
                        mem[(2 * ceil32(return_data.size)) + 264] = arg3
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 232] = arg3
                        mem[(2 * ceil32(return_data.size)) + 264] = 0
                        mem[(2 * ceil32(return_data.size)) + 296] = this.address
                        mem[(2 * ceil32(return_data.size)) + 328] = 128
                        mem[(2 * ceil32(return_data.size)) + 360] = mem[(2 * ceil32(return_data.size)) + 196]
                        mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])] = mem[(2 * ceil32(return_data.size)) + 228 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + 196]) > mem[(2 * ceil32(return_data.size)) + 196]:
                            mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 196] + 392] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 196], mem[(2 * ceil32(return_data.size)) + 392 len ceil32(mem[(2 * ceil32(return_data.size)) + 196])]
                else:
                    mem[(2 * ceil32(return_data.size)) + 196] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'ZL: T_F'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 228] == bool(mem[(2 * ceil32(return_data.size)) + 228])
                        if not mem[(2 * ceil32(return_data.size)) + 228]:
                            revert with 0, 'ZL: T_F'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    if not arg2:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 128
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                        if ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]) > mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 393] = 0
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len ceil32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if block.gasprice >= stor1:
        if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 21000 > -gas_remaining - 1:
            revert with 'NH{q', 17
        if gas_remaining + 21000 < gas_remaining:
            revert with 'NH{q', 17
        if 21000 > -(16 * calldata.size) - 1:
            revert with 'NH{q', 17
        if (16 * calldata.size) + 21000 > -14155:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.freeUpTo(uint256 arg1) with:
             gas gas_remaining wei
            args ((16 * calldata.size) + 35154 / 41947)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
