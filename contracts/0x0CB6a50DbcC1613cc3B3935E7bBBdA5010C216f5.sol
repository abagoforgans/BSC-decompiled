contract main {




// =====================  Runtime code  =====================


#
#  - sub_fbf46ea7(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor6;
address stor7;
address stor8;
address stor9;
array of address stor10;
array of address stor11;
array of address stor12;
array of address stor13;
uint256 stor14;
uint128 stor18;
uint128 stor18; offset 112
uint128 stor19;

function _fallback() payable {
    revert
}

function sub_f5213f80(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    revert with 0, 'tFMW: Bad boy, go away.'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ae4b8a8e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    revert with 0, 'tTMW: Bad boy, go away.'
    require ext_code.size(address(arg1))
    if arg2:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
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
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_db859abb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    revert with 0, 'sT: Bad boy, go away.'
    require ext_code.size(address(arg1))
    if arg4:
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        stor14 = block.timestamp + 60
        if 0 >= stor11.length:
            revert with 'NH{q', 50
        address(stor11.field_0) = address(arg1)
        if 1 >= stor11.length:
            revert with 'NH{q', 50
        address(stor11.field_256) = address(arg2)
        idx = 0
        s = 0
        t = (2 * ceil32(return_data.size)) + 292
        while idx < stor11.length:
            mem[t] = stor11[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 0, 160, address(this.address), stor14, stor11.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        stor14 = block.timestamp + 60
        if 0 >= stor11.length:
            revert with 'NH{q', 50
        address(stor11.field_0) = address(arg1)
        if 1 >= stor11.length:
            revert with 'NH{q', 50
        address(stor11.field_256) = address(arg2)
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < stor11.length:
            mem[t] = stor11[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), stor14, stor11.length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_097d0895(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == Mask(112, 0, arg5)
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    revert with 0, 'sTWC: Bad boy, go away.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        stor9 = stor7
        if address(arg3) == stor6:
            stor9 = stor8
        require ext_code.size(stor9)
        staticcall stor9.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        stor19 = ext_call.return_data[50 len 14]
        Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
        require ext_code.size(stor9)
        staticcall stor9.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(arg1):
            Mask(112, 0, stor18.field_0) = stor19
        else:
            Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
        if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg5):
            if arg4:
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                stor14 = block.timestamp + 60
                if address(arg2) == stor4:
                    if 0 >= stor11.length:
                        revert with 'NH{q', 50
                    address(stor11.field_0) = address(arg2)
                    if 1 >= stor11.length:
                        revert with 'NH{q', 50
                    address(stor11.field_256) = stor4
                    idx = 0
                    s = 0
                    t = (7 * ceil32(return_data.size)) + 292
                    while idx < stor11.length:
                        mem[t] = stor11[s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), stor14, stor11.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
                else:
                    if 0 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_0) = address(arg2)
                    if 1 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_256) = address(arg1)
                    if 2 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_512) = stor4
                    idx = 0
                    s = 0
                    t = (7 * ceil32(return_data.size)) + 292
                    while idx < stor13.length:
                        mem[t] = stor13[s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), stor14, stor13.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor13.length]
            else:
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                stor14 = block.timestamp + 60
                if address(arg2) == stor4:
                    if 0 >= stor11.length:
                        revert with 'NH{q', 50
                    address(stor11.field_0) = address(arg2)
                    if 1 >= stor11.length:
                        revert with 'NH{q', 50
                    address(stor11.field_256) = stor4
                    idx = 0
                    s = 0
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < stor11.length:
                        mem[t] = stor11[s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), stor14, stor11.length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
                else:
                    if 0 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_0) = address(arg2)
                    if 1 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_256) = address(arg1)
                    if 2 >= stor13.length:
                        revert with 'NH{q', 50
                    address(stor13.field_512) = stor4
                    idx = 0
                    s = 0
                    t = (8 * ceil32(return_data.size)) + 292
                    while idx < stor13.length:
                        mem[t] = stor13[s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), stor14, stor13.length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * stor13.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not Mask(112, 0, arg5):
                if arg4:
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg2) == stor4:
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_256) = stor4
                        idx = 0
                        s = 0
                        t = (7 * ceil32(return_data.size)) + 292
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), stor14, stor11.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
                    else:
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg1)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_512) = stor4
                        idx = 0
                        s = 0
                        t = (7 * ceil32(return_data.size)) + 292
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), stor14, stor13.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor13.length]
                else:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg2) == stor4:
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_256) = stor4
                        idx = 0
                        s = 0
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), stor14, stor11.length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * stor11.length]
                    else:
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg1)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_512) = stor4
                        idx = 0
                        s = 0
                        t = (8 * ceil32(return_data.size)) + 292
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        call address(arg3).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), stor14, stor13.length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * stor13.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_e344a4e0(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == Mask(112, 0, arg7)
    if msg.sender == stor0:
        stor9 = stor7
        if address(arg5) != stor6:
            mem[100] = address(arg3)
            mem[132] = address(arg2)
            require ext_code.size(stor9)
            staticcall stor9.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            stor19 = ext_call.return_data[50 len 14]
            Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
            require ext_code.size(stor9)
            staticcall stor9.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(arg3):
                Mask(112, 0, stor18.field_0) = stor19
                if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg1) == stor4:
                        if 0 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_0) = address(arg1)
                        if 1 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_256) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                        mem[0] = 10
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor10.length:
                            mem[t] = stor10[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2835 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2931 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2931
                        require _2835 + (32 * _2931) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2835 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2931:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        mem[0] = 11
                        address(stor11.field_256) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4755 = mem[_4659]
                        require mem[_4659] == mem[_4659]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4755, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                    else:
                        if 0 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_0) = stor4
                        if 1 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_256) = address(arg1)
                        if 2 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_512) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                        mem[0] = 12
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor12.length:
                            mem[t] = stor12[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2836 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2932 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2932
                        require _2836 + (32 * _2932) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2836 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2932:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg3)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        address(stor13.field_512) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4803 = mem[_4707]
                        require mem[_4707] == mem[_4707]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4803, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2837 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2933 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2933
                            require _2837 + (32 * _2933) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2837 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2933:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4756 = mem[_4660]
                            require mem[_4660] == mem[_4660]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4756, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2838 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2934 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2934
                            require _2838 + (32 * _2934) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2838 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2934:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4804 = mem[_4708]
                            require mem[_4708] == mem[_4708]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4804, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2839 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2935 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2935
                                require _2839 + (32 * _2935) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2839 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2935:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4661 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4757 = mem[_4661]
                                require mem[_4661] == mem[_4661]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4757, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2840 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2936 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2936
                                require _2840 + (32 * _2936) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2840 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2936:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4709 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4805 = mem[_4709]
                                require mem[_4709] == mem[_4709]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4805, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg1) == stor4:
                        if 0 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_0) = address(arg1)
                        if 1 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_256) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                        mem[0] = 10
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor10.length:
                            mem[t] = stor10[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2841 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2937 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2937
                        require _2841 + (32 * _2937) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2841 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2937:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        mem[0] = 11
                        address(stor11.field_256) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4758 = mem[_4662]
                        require mem[_4662] == mem[_4662]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4758, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                    else:
                        if 0 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_0) = stor4
                        if 1 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_256) = address(arg1)
                        if 2 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_512) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                        mem[0] = 12
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor12.length:
                            mem[t] = stor12[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2842 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2938 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2938
                        require _2842 + (32 * _2938) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2842 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2938:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg3)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        address(stor13.field_512) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4806 = mem[_4710]
                        require mem[_4710] == mem[_4710]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4806, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2843 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2939 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2939
                            require _2843 + (32 * _2939) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2843 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2939:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4759 = mem[_4663]
                            require mem[_4663] == mem[_4663]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4759, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2844 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2940 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2940
                            require _2844 + (32 * _2940) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2844 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2940:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4711 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4807 = mem[_4711]
                            require mem[_4711] == mem[_4711]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4807, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2845 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2941 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2941
                                require _2845 + (32 * _2941) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2845 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2941:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4664 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4760 = mem[_4664]
                                require mem[_4664] == mem[_4664]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4760, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2846 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2942 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2942
                                require _2846 + (32 * _2942) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2846 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2942:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4712 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4808 = mem[_4712]
                                require mem[_4712] == mem[_4712]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4808, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            stor9 = stor8
            mem[100] = address(arg3)
            mem[132] = address(arg2)
            require ext_code.size(stor9)
            staticcall stor9.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            stor19 = ext_call.return_data[50 len 14]
            Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
            require ext_code.size(stor9)
            staticcall stor9.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(arg3):
                Mask(112, 0, stor18.field_0) = stor19
                if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg1) == stor4:
                        if 0 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_0) = address(arg1)
                        if 1 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_256) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                        mem[0] = 10
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor10.length:
                            mem[t] = stor10[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2847 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2943 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2943
                        require _2847 + (32 * _2943) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2847 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2943:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        mem[0] = 11
                        address(stor11.field_256) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4761 = mem[_4665]
                        require mem[_4665] == mem[_4665]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4761, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                    else:
                        if 0 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_0) = stor4
                        if 1 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_256) = address(arg1)
                        if 2 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_512) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                        mem[0] = 12
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor12.length:
                            mem[t] = stor12[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2848 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2944 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2944
                        require _2848 + (32 * _2944) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2848 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2944:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg3)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        address(stor13.field_512) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4713 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4809 = mem[_4713]
                        require mem[_4713] == mem[_4713]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4809, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2849 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2945 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2945
                            require _2849 + (32 * _2945) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2849 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2945:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4762 = mem[_4666]
                            require mem[_4666] == mem[_4666]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4762, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2850 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2946 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2946
                            require _2850 + (32 * _2946) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2850 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2946:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4810 = mem[_4714]
                            require mem[_4714] == mem[_4714]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4810, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2851 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2947 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2947
                                require _2851 + (32 * _2947) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2851 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2947:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4763 = mem[_4667]
                                require mem[_4667] == mem[_4667]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4763, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2852 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2948 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2948
                                require _2852 + (32 * _2948) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2852 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2948:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4715 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4811 = mem[_4715]
                                require mem[_4715] == mem[_4715]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4811, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(address(arg3))
                    call address(arg3).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    stor14 = block.timestamp + 60
                    if address(arg1) == stor4:
                        if 0 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_0) = address(arg1)
                        if 1 >= stor10.length:
                            revert with 'NH{q', 50
                        address(stor10.field_256) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                        mem[0] = 10
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor10.length:
                            mem[t] = stor10[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2853 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2949 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2949
                        require _2853 + (32 * _2949) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2853 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2949:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor11.length:
                            revert with 'NH{q', 50
                        address(stor11.field_0) = address(arg2)
                        if 1 >= stor11.length:
                            revert with 'NH{q', 50
                        mem[0] = 11
                        address(stor11.field_256) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4764 = mem[_4668]
                        require mem[_4668] == mem[_4668]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor11.length:
                            mem[t] = stor11[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4764, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                    else:
                        if 0 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_0) = stor4
                        if 1 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_256) = address(arg1)
                        if 2 >= stor12.length:
                            revert with 'NH{q', 50
                        address(stor12.field_512) = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                        mem[0] = 12
                        idx = 0
                        s = 0
                        t = (10 * ceil32(return_data.size)) + 292
                        while idx < stor12.length:
                            mem[t] = stor12[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                        require ext_code.size(address(arg4))
                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (11 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2854 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                        _2950 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                        mem[(11 * ceil32(return_data.size)) + 96] = _2950
                        require _2854 + (32 * _2950) + 32 <= return_data.size
                        idx = 0
                        s = (10 * ceil32(return_data.size)) + _2854 + 128
                        t = (11 * ceil32(return_data.size)) + 128
                        while idx < _2950:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_0) = address(arg2)
                        if 1 >= stor13.length:
                            revert with 'NH{q', 50
                        address(stor13.field_256) = address(arg3)
                        if 2 >= stor13.length:
                            revert with 'NH{q', 50
                        mem[0] = 13
                        address(stor13.field_512) = stor4
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4812 = mem[_4716]
                        require mem[_4716] == mem[_4716]
                        idx = 0
                        s = 0
                        t = mem[64] + 196
                        while idx < stor13.length:
                            mem[t] = stor13[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg5))
                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4812, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2855 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2951 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2951
                            require _2855 + (32 * _2951) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2855 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2951:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4765 = mem[_4669]
                            require mem[_4669] == mem[_4669]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4765, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2856 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2952 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2952
                            require _2856 + (32 * _2952) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2856 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2952:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4813 = mem[_4717]
                            require mem[_4717] == mem[_4717]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4813, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2857 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2953 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2953
                                require _2857 + (32 * _2953) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2857 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2953:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4670 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4766 = mem[_4670]
                                require mem[_4670] == mem[_4670]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4766, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2858 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2954 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2954
                                require _2858 + (32 * _2954) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2858 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2954:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4814 = mem[_4718]
                                require mem[_4718] == mem[_4718]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4814, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == stor1:
            stor9 = stor7
            if address(arg5) != stor6:
                mem[100] = address(arg3)
                mem[132] = address(arg2)
                require ext_code.size(stor9)
                staticcall stor9.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                stor19 = ext_call.return_data[50 len 14]
                Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                require ext_code.size(stor9)
                staticcall stor9.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(arg3):
                    Mask(112, 0, stor18.field_0) = stor19
                    if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2859 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2955 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2955
                            require _2859 + (32 * _2955) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2859 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2955:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4767 = mem[_4671]
                            require mem[_4671] == mem[_4671]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4767, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2860 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2956 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2956
                            require _2860 + (32 * _2956) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2860 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2956:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4719 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4815 = mem[_4719]
                            require mem[_4719] == mem[_4719]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4815, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2861 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2957 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2957
                                require _2861 + (32 * _2957) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2861 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2957:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4672 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4768 = mem[_4672]
                                require mem[_4672] == mem[_4672]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4768, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2862 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2958 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2958
                                require _2862 + (32 * _2958) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2862 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2958:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4720 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4816 = mem[_4720]
                                require mem[_4720] == mem[_4720]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4816, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2863 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2959 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2959
                                    require _2863 + (32 * _2959) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2863 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2959:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4769 = mem[_4673]
                                    require mem[_4673] == mem[_4673]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4769, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2864 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2960 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2960
                                    require _2864 + (32 * _2960) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2864 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2960:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4721 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4817 = mem[_4721]
                                    require mem[_4721] == mem[_4721]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4817, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                    if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2865 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2961 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2961
                            require _2865 + (32 * _2961) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2865 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2961:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4674 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4770 = mem[_4674]
                            require mem[_4674] == mem[_4674]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4770, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2866 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2962 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2962
                            require _2866 + (32 * _2962) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2866 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2962:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4818 = mem[_4722]
                            require mem[_4722] == mem[_4722]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4818, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2867 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2963 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2963
                                require _2867 + (32 * _2963) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2867 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2963:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4771 = mem[_4675]
                                require mem[_4675] == mem[_4675]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4771, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2868 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2964 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2964
                                require _2868 + (32 * _2964) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2868 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2964:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4723 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4819 = mem[_4723]
                                require mem[_4723] == mem[_4723]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4819, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2869 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2965 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2965
                                    require _2869 + (32 * _2965) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2869 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2965:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4676 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4772 = mem[_4676]
                                    require mem[_4676] == mem[_4676]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4772, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2870 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2966 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2966
                                    require _2870 + (32 * _2966) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2870 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2966:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4724 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4820 = mem[_4724]
                                    require mem[_4724] == mem[_4724]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4820, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                stor9 = stor8
                mem[100] = address(arg3)
                mem[132] = address(arg2)
                require ext_code.size(stor9)
                staticcall stor9.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                stor19 = ext_call.return_data[50 len 14]
                Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                require ext_code.size(stor9)
                staticcall stor9.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(arg3):
                    Mask(112, 0, stor18.field_0) = stor19
                    if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2871 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2967 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2967
                            require _2871 + (32 * _2967) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2871 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2967:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4677 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4773 = mem[_4677]
                            require mem[_4677] == mem[_4677]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4773, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2872 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2968 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2968
                            require _2872 + (32 * _2968) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2872 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2968:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4821 = mem[_4725]
                            require mem[_4725] == mem[_4725]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4821, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2873 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2969 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2969
                                require _2873 + (32 * _2969) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2873 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2969:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4678 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4774 = mem[_4678]
                                require mem[_4678] == mem[_4678]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4774, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2874 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2970 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2970
                                require _2874 + (32 * _2970) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2874 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2970:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4726 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4822 = mem[_4726]
                                require mem[_4726] == mem[_4726]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4822, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2875 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2971 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2971
                                    require _2875 + (32 * _2971) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2875 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2971:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4679 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4775 = mem[_4679]
                                    require mem[_4679] == mem[_4679]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4775, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2876 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2972 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2972
                                    require _2876 + (32 * _2972) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2876 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2972:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4727 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4823 = mem[_4727]
                                    require mem[_4727] == mem[_4727]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4823, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                    if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                        mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg1))
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                        mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(address(arg3))
                        call address(arg3).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        stor14 = block.timestamp + 60
                        if address(arg1) == stor4:
                            if 0 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_0) = address(arg1)
                            if 1 >= stor10.length:
                                revert with 'NH{q', 50
                            address(stor10.field_256) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                            mem[0] = 10
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor10.length:
                                mem[t] = stor10[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2877 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2973 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2973
                            require _2877 + (32 * _2973) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2877 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2973:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor11.length:
                                revert with 'NH{q', 50
                            address(stor11.field_0) = address(arg2)
                            if 1 >= stor11.length:
                                revert with 'NH{q', 50
                            mem[0] = 11
                            address(stor11.field_256) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4776 = mem[_4680]
                            require mem[_4680] == mem[_4680]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor11.length:
                                mem[t] = stor11[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4776, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                        else:
                            if 0 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_0) = stor4
                            if 1 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_256) = address(arg1)
                            if 2 >= stor12.length:
                                revert with 'NH{q', 50
                            address(stor12.field_512) = address(arg2)
                            mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 100] = arg6
                            mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(10 * ceil32(return_data.size)) + 164] = 160
                            mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                            mem[0] = 12
                            idx = 0
                            s = 0
                            t = (10 * ceil32(return_data.size)) + 292
                            while idx < stor12.length:
                                mem[t] = stor12[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 196] = this.address
                            mem[(10 * ceil32(return_data.size)) + 228] = stor14
                            require ext_code.size(address(arg4))
                            call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (11 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _2878 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                            require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                            _2974 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                            mem[(11 * ceil32(return_data.size)) + 96] = _2974
                            require _2878 + (32 * _2974) + 32 <= return_data.size
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + _2878 + 128
                            t = (11 * ceil32(return_data.size)) + 128
                            while idx < _2974:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if 0 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_0) = address(arg2)
                            if 1 >= stor13.length:
                                revert with 'NH{q', 50
                            address(stor13.field_256) = address(arg3)
                            if 2 >= stor13.length:
                                revert with 'NH{q', 50
                            mem[0] = 13
                            address(stor13.field_512) = stor4
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4728 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4824 = mem[_4728]
                            require mem[_4728] == mem[_4728]
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor13.length:
                                mem[t] = stor13[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg5))
                            call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4824, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2879 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2975 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2975
                                require _2879 + (32 * _2975) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2879 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2975:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4777 = mem[_4681]
                                require mem[_4681] == mem[_4681]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4777, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2880 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2976 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2976
                                require _2880 + (32 * _2976) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2880 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2976:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4729 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4825 = mem[_4729]
                                require mem[_4729] == mem[_4729]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4825, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2881 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2977 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2977
                                    require _2881 + (32 * _2977) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2881 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2977:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4682 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4778 = mem[_4682]
                                    require mem[_4682] == mem[_4682]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4778, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2882 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2978 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2978
                                    require _2882 + (32 * _2978) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2882 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2978:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4730 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4826 = mem[_4730]
                                    require mem[_4730] == mem[_4730]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4826, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.sender == stor2:
                stor9 = stor7
                if address(arg5) != stor6:
                    mem[100] = address(arg3)
                    mem[132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    stor19 = ext_call.return_data[50 len 14]
                    Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(arg3):
                        Mask(112, 0, stor18.field_0) = stor19
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2883 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2979 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2979
                                require _2883 + (32 * _2979) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2883 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2979:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4779 = mem[_4683]
                                require mem[_4683] == mem[_4683]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4779, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2884 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2980 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2980
                                require _2884 + (32 * _2980) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2884 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2980:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4731 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4827 = mem[_4731]
                                require mem[_4731] == mem[_4731]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4827, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2885 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2981 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2981
                                    require _2885 + (32 * _2981) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2885 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2981:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4684 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4780 = mem[_4684]
                                    require mem[_4684] == mem[_4684]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4780, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2886 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2982 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2982
                                    require _2886 + (32 * _2982) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2886 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2982:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4732 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4828 = mem[_4732]
                                    require mem[_4732] == mem[_4732]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4828, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2887 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2983 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2983
                                        require _2887 + (32 * _2983) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2887 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2983:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4685 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4781 = mem[_4685]
                                        require mem[_4685] == mem[_4685]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4781, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2888 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2984 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2984
                                        require _2888 + (32 * _2984) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2888 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2984:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4733 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4829 = mem[_4733]
                                        require mem[_4733] == mem[_4733]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4829, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2889 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2985 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2985
                                require _2889 + (32 * _2985) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2889 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2985:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4686 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4782 = mem[_4686]
                                require mem[_4686] == mem[_4686]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4782, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2890 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2986 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2986
                                require _2890 + (32 * _2986) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2890 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2986:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4830 = mem[_4734]
                                require mem[_4734] == mem[_4734]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4830, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2891 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2987 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2987
                                    require _2891 + (32 * _2987) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2891 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2987:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4687 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4783 = mem[_4687]
                                    require mem[_4687] == mem[_4687]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4783, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2892 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2988 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2988
                                    require _2892 + (32 * _2988) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2892 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2988:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4831 = mem[_4735]
                                    require mem[_4735] == mem[_4735]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4831, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2893 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2989 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2989
                                        require _2893 + (32 * _2989) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2893 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2989:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4688 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4784 = mem[_4688]
                                        require mem[_4688] == mem[_4688]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4784, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2894 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2990 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2990
                                        require _2894 + (32 * _2990) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2894 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2990:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4736 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4832 = mem[_4736]
                                        require mem[_4736] == mem[_4736]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4832, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    stor9 = stor8
                    mem[100] = address(arg3)
                    mem[132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    stor19 = ext_call.return_data[50 len 14]
                    Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(arg3):
                        Mask(112, 0, stor18.field_0) = stor19
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2895 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2991 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2991
                                require _2895 + (32 * _2991) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2895 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2991:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4785 = mem[_4689]
                                require mem[_4689] == mem[_4689]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4785, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2896 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2992 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2992
                                require _2896 + (32 * _2992) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2896 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2992:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4737 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4833 = mem[_4737]
                                require mem[_4737] == mem[_4737]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4833, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2897 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2993 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2993
                                    require _2897 + (32 * _2993) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2897 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2993:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4690 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4786 = mem[_4690]
                                    require mem[_4690] == mem[_4690]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4786, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2898 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2994 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2994
                                    require _2898 + (32 * _2994) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2898 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2994:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4738 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4834 = mem[_4738]
                                    require mem[_4738] == mem[_4738]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4834, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2899 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2995 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2995
                                        require _2899 + (32 * _2995) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2899 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2995:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4691 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4787 = mem[_4691]
                                        require mem[_4691] == mem[_4691]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4787, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2900 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _2996 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _2996
                                        require _2900 + (32 * _2996) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2900 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _2996:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4739 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4835 = mem[_4739]
                                        require mem[_4739] == mem[_4739]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4835, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2901 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2997 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2997
                                require _2901 + (32 * _2997) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2901 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2997:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4692 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4788 = mem[_4692]
                                require mem[_4692] == mem[_4692]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4788, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2902 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _2998 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _2998
                                require _2902 + (32 * _2998) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2902 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _2998:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4836 = mem[_4740]
                                require mem[_4740] == mem[_4740]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4836, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2903 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _2999 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _2999
                                    require _2903 + (32 * _2999) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2903 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _2999:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4693 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4789 = mem[_4693]
                                    require mem[_4693] == mem[_4693]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4789, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2904 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3000 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3000
                                    require _2904 + (32 * _3000) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2904 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3000:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4741 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4837 = mem[_4741]
                                    require mem[_4741] == mem[_4741]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4837, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2905 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3001 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3001
                                        require _2905 + (32 * _3001) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2905 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3001:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4694 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4790 = mem[_4694]
                                        require mem[_4694] == mem[_4694]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4790, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2906 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3002 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3002
                                        require _2906 + (32 * _3002) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2906 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3002:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4742 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4838 = mem[_4742]
                                        require mem[_4742] == mem[_4742]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4838, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor3 != msg.sender:
                    revert with 0, 'sTD: Bad boy, go away.'
                stor9 = stor7
                if address(arg5) != stor6:
                    mem[100] = address(arg3)
                    mem[132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    stor19 = ext_call.return_data[50 len 14]
                    Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(arg3):
                        Mask(112, 0, stor18.field_0) = stor19
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2907 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3003 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3003
                                require _2907 + (32 * _3003) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2907 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3003:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4791 = mem[_4695]
                                require mem[_4695] == mem[_4695]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4791, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2908 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3004 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3004
                                require _2908 + (32 * _3004) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2908 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3004:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4743 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4839 = mem[_4743]
                                require mem[_4743] == mem[_4743]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4839, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2909 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3005 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3005
                                    require _2909 + (32 * _3005) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2909 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3005:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4696 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4792 = mem[_4696]
                                    require mem[_4696] == mem[_4696]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4792, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2910 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3006 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3006
                                    require _2910 + (32 * _3006) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2910 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3006:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4744 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4840 = mem[_4744]
                                    require mem[_4744] == mem[_4744]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4840, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2911 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3007 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3007
                                        require _2911 + (32 * _3007) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2911 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3007:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4697 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4793 = mem[_4697]
                                        require mem[_4697] == mem[_4697]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4793, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2912 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3008 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3008
                                        require _2912 + (32 * _3008) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2912 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3008:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4745 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4841 = mem[_4745]
                                        require mem[_4745] == mem[_4745]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4841, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2913 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3009 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3009
                                require _2913 + (32 * _3009) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2913 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3009:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4698 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4794 = mem[_4698]
                                require mem[_4698] == mem[_4698]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4794, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2914 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3010 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3010
                                require _2914 + (32 * _3010) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2914 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3010:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4842 = mem[_4746]
                                require mem[_4746] == mem[_4746]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4842, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2915 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3011 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3011
                                    require _2915 + (32 * _3011) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2915 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3011:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4699 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4795 = mem[_4699]
                                    require mem[_4699] == mem[_4699]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4795, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2916 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3012 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3012
                                    require _2916 + (32 * _3012) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2916 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3012:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4747 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4843 = mem[_4747]
                                    require mem[_4747] == mem[_4747]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4843, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2917 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3013 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3013
                                        require _2917 + (32 * _3013) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2917 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3013:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4700 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4796 = mem[_4700]
                                        require mem[_4700] == mem[_4700]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4796, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2918 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3014 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3014
                                        require _2918 + (32 * _3014) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2918 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3014:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4748 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4844 = mem[_4748]
                                        require mem[_4748] == mem[_4748]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4844, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    stor9 = stor8
                    mem[100] = address(arg3)
                    mem[132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    stor19 = ext_call.return_data[50 len 14]
                    Mask(112, 0, stor18.field_112) = ext_call.return_data[18 len 14]
                    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
                    require ext_code.size(stor9)
                    staticcall stor9.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != address(arg3):
                        Mask(112, 0, stor18.field_0) = stor19
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2919 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3015 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3015
                                require _2919 + (32 * _3015) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2919 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3015:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4797 = mem[_4701]
                                require mem[_4701] == mem[_4701]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4797, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2920 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3016 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3016
                                require _2920 + (32 * _3016) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2920 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3016:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4749 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4845 = mem[_4749]
                                require mem[_4749] == mem[_4749]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4845, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2921 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3017 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3017
                                    require _2921 + (32 * _3017) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2921 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3017:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4702 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4798 = mem[_4702]
                                    require mem[_4702] == mem[_4702]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4798, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2922 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3018 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3018
                                    require _2922 + (32 * _3018) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2922 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3018:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4750 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4846 = mem[_4750]
                                    require mem[_4750] == mem[_4750]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4846, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2923 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3019 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3019
                                        require _2923 + (32 * _3019) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2923 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3019:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4703 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4799 = mem[_4703]
                                        require mem[_4703] == mem[_4703]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4799, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2924 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3020 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3020
                                        require _2924 + (32 * _3020) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2924 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3020:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4751 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4847 = mem[_4751]
                                        require mem[_4751] == mem[_4751]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4847, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        Mask(112, 0, stor18.field_0) = Mask(112, 0, stor18.field_112)
                        if Mask(112, 0, stor18.field_0) == Mask(112, 0, arg7):
                            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg1))
                            call address(arg1).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg2))
                            call address(arg2).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                            mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(address(arg3))
                            call address(arg3).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -61:
                                revert with 'NH{q', 17
                            stor14 = block.timestamp + 60
                            if address(arg1) == stor4:
                                if 0 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_0) = address(arg1)
                                if 1 >= stor10.length:
                                    revert with 'NH{q', 50
                                address(stor10.field_256) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                mem[0] = 10
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor10.length:
                                    mem[t] = stor10[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2925 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3021 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3021
                                require _2925 + (32 * _3021) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2925 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3021:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor11.length:
                                    revert with 'NH{q', 50
                                address(stor11.field_0) = address(arg2)
                                if 1 >= stor11.length:
                                    revert with 'NH{q', 50
                                mem[0] = 11
                                address(stor11.field_256) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4704 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4800 = mem[_4704]
                                require mem[_4704] == mem[_4704]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor11.length:
                                    mem[t] = stor11[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4800, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                            else:
                                if 0 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_0) = stor4
                                if 1 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_256) = address(arg1)
                                if 2 >= stor12.length:
                                    revert with 'NH{q', 50
                                address(stor12.field_512) = address(arg2)
                                mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(10 * ceil32(return_data.size)) + 164] = 160
                                mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                mem[0] = 12
                                idx = 0
                                s = 0
                                t = (10 * ceil32(return_data.size)) + 292
                                while idx < stor12.length:
                                    mem[t] = stor12[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                require ext_code.size(address(arg4))
                                call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (11 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _2926 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                _3022 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                mem[(11 * ceil32(return_data.size)) + 96] = _3022
                                require _2926 + (32 * _3022) + 32 <= return_data.size
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + _2926 + 128
                                t = (11 * ceil32(return_data.size)) + 128
                                while idx < _3022:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if 0 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_0) = address(arg2)
                                if 1 >= stor13.length:
                                    revert with 'NH{q', 50
                                address(stor13.field_256) = address(arg3)
                                if 2 >= stor13.length:
                                    revert with 'NH{q', 50
                                mem[0] = 13
                                address(stor13.field_512) = stor4
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4848 = mem[_4752]
                                require mem[_4752] == mem[_4752]
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor13.length:
                                    mem[t] = stor13[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg5))
                                call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _4848, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if Mask(112, 0, stor18.field_0) > Mask(112, 0, arg7):
                                mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg2))
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(address(arg3))
                                call address(arg3).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -61:
                                    revert with 'NH{q', 17
                                stor14 = block.timestamp + 60
                                if address(arg1) == stor4:
                                    if 0 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_0) = address(arg1)
                                    if 1 >= stor10.length:
                                        revert with 'NH{q', 50
                                    address(stor10.field_256) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                    mem[0] = 10
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor10.length:
                                        mem[t] = stor10[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2927 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3023 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3023
                                    require _2927 + (32 * _3023) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2927 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3023:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor11.length:
                                        revert with 'NH{q', 50
                                    address(stor11.field_0) = address(arg2)
                                    if 1 >= stor11.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 11
                                    address(stor11.field_256) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4705 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4801 = mem[_4705]
                                    require mem[_4705] == mem[_4705]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor11.length:
                                        mem[t] = stor11[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4801, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                else:
                                    if 0 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_0) = stor4
                                    if 1 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_256) = address(arg1)
                                    if 2 >= stor12.length:
                                        revert with 'NH{q', 50
                                    address(stor12.field_512) = address(arg2)
                                    mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                    mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(10 * ceil32(return_data.size)) + 164] = 160
                                    mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                    mem[0] = 12
                                    idx = 0
                                    s = 0
                                    t = (10 * ceil32(return_data.size)) + 292
                                    while idx < stor12.length:
                                        mem[t] = stor12[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                    require ext_code.size(address(arg4))
                                    call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (11 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _2928 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                    require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                    _3024 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                    mem[(11 * ceil32(return_data.size)) + 96] = _3024
                                    require _2928 + (32 * _3024) + 32 <= return_data.size
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + _2928 + 128
                                    t = (11 * ceil32(return_data.size)) + 128
                                    while idx < _3024:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if 0 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_0) = address(arg2)
                                    if 1 >= stor13.length:
                                        revert with 'NH{q', 50
                                    address(stor13.field_256) = address(arg3)
                                    if 2 >= stor13.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 13
                                    address(stor13.field_512) = stor4
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4753 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4849 = mem[_4753]
                                    require mem[_4753] == mem[_4753]
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor13.length:
                                        mem[t] = stor13[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg5))
                                    call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _4849, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not Mask(112, 0, arg7):
                                    mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
                                    mem[(6 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg1))
                                    call address(arg1).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(7 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg2))
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg5)
                                    mem[(8 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    require ext_code.size(address(arg3))
                                    call address(arg3).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg5), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if block.timestamp > -61:
                                        revert with 'NH{q', 17
                                    stor14 = block.timestamp + 60
                                    if address(arg1) == stor4:
                                        if 0 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_0) = address(arg1)
                                        if 1 >= stor10.length:
                                            revert with 'NH{q', 50
                                        address(stor10.field_256) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor10.length
                                        mem[0] = 10
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor10.length:
                                            mem[t] = stor10[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor10.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor10.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2929 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3025 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3025
                                        require _2929 + (32 * _3025) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2929 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3025:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor11.length:
                                            revert with 'NH{q', 50
                                        address(stor11.field_0) = address(arg2)
                                        if 1 >= stor11.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 11
                                        address(stor11.field_256) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4706 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4802 = mem[_4706]
                                        require mem[_4706] == mem[_4706]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor11.length:
                                            mem[t] = stor11[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4802, 0, 160, address(this.address), stor14, stor11.length, mem[mem[64] + 196 len 32 * stor11.length]
                                    else:
                                        if 0 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_0) = stor4
                                        if 1 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_256) = address(arg1)
                                        if 2 >= stor12.length:
                                            revert with 'NH{q', 50
                                        address(stor12.field_512) = address(arg2)
                                        mem[(10 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 100] = arg6
                                        mem[(10 * ceil32(return_data.size)) + 132] = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(10 * ceil32(return_data.size)) + 164] = 160
                                        mem[(10 * ceil32(return_data.size)) + 260] = stor12.length
                                        mem[0] = 12
                                        idx = 0
                                        s = 0
                                        t = (10 * ceil32(return_data.size)) + 292
                                        while idx < stor12.length:
                                            mem[t] = stor12[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 196] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 228] = stor14
                                        require ext_code.size(address(arg4))
                                        call address(arg4).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg6, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Array(len=stor12.length, data=mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor12.length]), address(this.address), stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (11 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _2930 = mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32
                                        require mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                                        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
                                        _3026 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]
                                        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg6) >> 32 + 96]) + 97
                                        mem[(11 * ceil32(return_data.size)) + 96] = _3026
                                        require _2930 + (32 * _3026) + 32 <= return_data.size
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + _2930 + 128
                                        t = (11 * ceil32(return_data.size)) + 128
                                        while idx < _3026:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if 0 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_0) = address(arg2)
                                        if 1 >= stor13.length:
                                            revert with 'NH{q', 50
                                        address(stor13.field_256) = address(arg3)
                                        if 2 >= stor13.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 13
                                        address(stor13.field_512) = stor4
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4754 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4850 = mem[_4754]
                                        require mem[_4754] == mem[_4754]
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 196
                                        while idx < stor13.length:
                                            mem[t] = stor13[s].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(arg5))
                                        call address(arg5).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _4850, 0, 160, address(this.address), stor14, stor13.length, mem[mem[64] + 196 len 32 * stor13.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
}



}
