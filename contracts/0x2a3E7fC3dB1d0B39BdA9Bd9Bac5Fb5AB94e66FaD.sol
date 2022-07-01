contract main {




// =====================  Runtime code  =====================


#
#  - sub_7ed1f1dd(?)
#  - sub_d5b99797(?)
#  - DVMFlashLoanCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
address stor22;
address stor24;
address stor25;
address stor26;
address stor27;
address stor28;

function sub_e6433389(?) {
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_a3b788ee(?) {
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    stor0 = 0
}

function sub_8a5731bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    stor0 = address(arg1)
}

function sub_8ea8a419(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5b34da8(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e4767aeb(?) {
    require calldata.size - 4 >= 352
    require arg5 == address(arg5)
    require arg7 == address(arg7)
    if stor0 != msg.sender:
        revert with 0, 'notowner'
    stor1 = arg3
    if stor2 == stor2:
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor2)
        call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor3 == stor2:
            require ext_code.size(stor27)
            staticcall stor27.0x70a08231 with:
                    gas gas_remaining wei
                   args stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor2)
            call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor4 == stor2:
                require ext_code.size(stor27)
                staticcall stor27.0x70a08231 with:
                        gas gas_remaining wei
                       args stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor2)
                call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor5 == stor2:
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor2)
                    call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor6 == stor2:
                        require ext_code.size(stor28)
                        staticcall stor28.0x70a08231 with:
                                gas gas_remaining wei
                               args stor2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor2)
                        call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if stor7 == stor2:
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor28)
                            staticcall stor28.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor2)
                            call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if stor8 == stor2:
                                require ext_code.size(stor25)
                                staticcall stor25.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor28)
                                staticcall stor28.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor9 == stor2:
                                    require ext_code.size(stor24)
                                    staticcall stor24.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor2)
                                    call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if stor10 == stor2:
                                        require ext_code.size(stor28)
                                        staticcall stor28.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor2)
                                        call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if stor11 == stor2:
                                            require ext_code.size(stor24)
                                            staticcall stor24.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args stor2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor2)
                                            call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if stor12 == stor2:
                                                require ext_code.size(stor28)
                                                staticcall stor28.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args stor2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor2)
                                                call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if stor13 == stor2:
                                                    require ext_code.size(stor28)
                                                    staticcall stor28.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args stor2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(stor2)
                                                    call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas gas_remaining wei
                                                        args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if stor14 == stor2:
                                                        require ext_code.size(stor27)
                                                        staticcall stor27.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args stor2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(stor24)
                                                        staticcall stor24.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args stor2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(stor2)
                                                        call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args ext_call.return_data[0], ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor15 == stor2:
                                                            require ext_code.size(stor24)
                                                            staticcall stor24.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args stor2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(stor2)
                                                            call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor16 == stor2:
                                                                require ext_code.size(stor26)
                                                                staticcall stor26.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args stor2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(stor2)
                                                                call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                     gas gas_remaining wei
                                                                    args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if stor17 == stor2:
                                                                    require ext_code.size(stor27)
                                                                    staticcall stor27.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args stor2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(stor2)
                                                                    call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                         gas gas_remaining wei
                                                                        args ext_call.return_data[0], 0, address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if stor18 == stor2:
                                                                        require ext_code.size(stor24)
                                                                        staticcall stor24.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args stor2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(stor2)
                                                                        call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if stor19 == stor2:
                                                                            require ext_code.size(stor24)
                                                                            staticcall stor24.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args stor2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(stor2)
                                                                            call stor2.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, ext_call.return_data[0], address(this.address), 128, 288, arg2, arg4, address(arg5), arg6, address(arg7), arg8, arg9, arg10, arg11
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor24)
    staticcall stor24.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'endChk1'
}



}
