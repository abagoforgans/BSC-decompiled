contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_9c57e23e(?)
#
address stor6;
address stor13;
mapping of uint8 stor15;
uint256 stor16;

function _fallback() payable {
    revert
}

function sub_aac14d1e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
}

function withdrawBNB() {
    require msg.sender == stor13
    call stor13 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergencyRedeem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
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
        args stor13, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d109406d(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if arg2 <= 0:
        revert with 0, '0 repay'
    else:
        if not stor15[address(arg3)]:
            require ext_code.size(address(arg3))
            call address(arg3).underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 == stor16:
                    revert with 0, '1'
                else:
                    require ext_code.size(stor6)
                    staticcall stor6.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor6)
                        staticcall stor6.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), 0xe9e7cea3dedca5984780bafc599bd69add087d56
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if not address(ext_call.return_data[0]):
                                if not ext_call.return_data[12 len 20]:
                                    if not address(ext_call.return_data[0]):
                                        revert with 0, 'No pair for debt'
                                    else:
                                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                            if 2 == stor16:
                                                revert with 0, '2'
                                            else:
                                                if 3 == stor16:
                                                    revert with 0, '3'
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                        else:
                                            if 2 == stor16:
                                                revert with 0, '2'
                                            else:
                                                if 3 == stor16:
                                                    revert with 0, '3'
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                if address(ext_call.return_data[0]):
                                                    if 0 > ext_call.return_data[50 len 14]:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                else:
                                                    if not address(ext_call.return_data[0]):
                                                        revert with 0, 'No pair for debt'
                                                    else:
                                                        if 0 > ext_call.return_data[50 len 14]:
                                                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                            else:
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                            else:
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 96
                                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                if address(ext_call.return_data[0]):
                                                    if 0 > ext_call.return_data[18 len 14]:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                else:
                                                    if not address(ext_call.return_data[0]):
                                                        revert with 0, 'No pair for debt'
                                                    else:
                                                        if 0 > ext_call.return_data[18 len 14]:
                                                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                            else:
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                        else:
                                                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                            else:
                                                                if 2 == stor16:
                                                                    revert with 0, '2'
                                                                else:
                                                                    if 3 == stor16:
                                                                        revert with 0, '3'
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                                                gas gas_remaining wei
                                                                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                                mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                                mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                                mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                                mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                            if not address(ext_call.return_data[0]):
                                                if not address(ext_call.return_data[0]):
                                                    revert with 0, 'No pair for debt'
                                                else:
                                                    if ext_call.return_data[50 len 14] > 0:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                            if address(ext_call.return_data[0]):
                                                                if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[50 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                            else:
                                                                if not address(ext_call.return_data[0]):
                                                                    revert with 0, 'No pair for debt'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[50 len 14]:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                    else:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                    else:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                            if address(ext_call.return_data[0]):
                                                                if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[18 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                            else:
                                                                if not address(ext_call.return_data[0]):
                                                                    revert with 0, 'No pair for debt'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[18 len 14]:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                    else:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                            if not address(ext_call.return_data[0]):
                                                if not address(ext_call.return_data[0]):
                                                    revert with 0, 'No pair for debt'
                                                else:
                                                    if ext_call.return_data[18 len 14] > 0:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[(8 * ceil32(return_data.size)) + 292] = 0
                                                                            mem[(8 * ceil32(return_data.size)) + 324] = arg2
                                                                            mem[(8 * ceil32(return_data.size)) + 356] = this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 388] = 128
                                                                            mem[(8 * ceil32(return_data.size)) + 420] = 160
                                                                            mem[(8 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(8 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 320]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                            if address(ext_call.return_data[0]):
                                                                if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[50 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                            else:
                                                                if not address(ext_call.return_data[0]):
                                                                    revert with 0, 'No pair for debt'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[50 len 14]:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                    else:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                    else:
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 96
                                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                            if address(ext_call.return_data[0]):
                                                                if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                            else:
                                                                if not address(ext_call.return_data[0]):
                                                                    revert with 0, 'No pair for debt'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                    else:
                                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            if 2 == stor16:
                                                                                revert with 0, '2'
                                                                            else:
                                                                                if 3 == stor16:
                                                                                    revert with 0, '3'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                                            gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                                 gas gas_remaining wei
                                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
        else:
            if 1 == stor16:
                revert with 0, '1'
            else:
                require ext_code.size(stor6)
                staticcall stor6.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor6)
                    staticcall stor6.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not address(ext_call.return_data[0]):
                            if not ext_call.return_data[12 len 20]:
                                if not address(ext_call.return_data[0]):
                                    revert with 0, 'No pair for debt'
                                else:
                                    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                        if 2 == stor16:
                                            revert with 0, '2'
                                        else:
                                            if 3 == stor16:
                                                revert with 0, '3'
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                                        mem[(4 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 320]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 324] = arg2
                                                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                                        mem[(4 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 320]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                    else:
                                        if 2 == stor16:
                                            revert with 0, '2'
                                        else:
                                            if 3 == stor16:
                                                revert with 0, '3'
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                        mem[(4 * ceil32(return_data.size)) + 292] = arg2
                                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                                        mem[(4 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 320]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 324] = arg2
                                                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                                        mem[(4 * ceil32(return_data.size)) + 452 len 160] = address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                             gas gas_remaining wei
                                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 320]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                            if address(ext_call.return_data[0]):
                                                if 0 > ext_call.return_data[50 len 14]:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                            else:
                                                if not address(ext_call.return_data[0]):
                                                    revert with 0, 'No pair for debt'
                                                else:
                                                    if 0 > ext_call.return_data[50 len 14]:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                            if address(ext_call.return_data[0]):
                                                if 0 > ext_call.return_data[18 len 14]:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                            else:
                                                if not address(ext_call.return_data[0]):
                                                    revert with 0, 'No pair for debt'
                                                else:
                                                    if 0 > ext_call.return_data[18 len 14]:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                    else:
                                                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                        else:
                                                            if 2 == stor16:
                                                                revert with 0, '2'
                                                            else:
                                                                if 3 == stor16:
                                                                    revert with 0, '3'
                                                                else:
                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                                            gas gas_remaining wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if not address(ext_call.return_data[0]):
                                            if not address(ext_call.return_data[0]):
                                                revert with 0, 'No pair for debt'
                                            else:
                                                if ext_call.return_data[50 len 14] > 0:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                        if address(ext_call.return_data[0]):
                                                            if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[50 len 14]:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                            else:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                        else:
                                                            if not address(ext_call.return_data[0]):
                                                                revert with 0, 'No pair for debt'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[50 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                        if address(ext_call.return_data[0]):
                                                            if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[18 len 14]:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                            else:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                        else:
                                                            if not address(ext_call.return_data[0]):
                                                                revert with 0, 'No pair for debt'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[18 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if not address(ext_call.return_data[0]):
                                            if not address(ext_call.return_data[0]):
                                                revert with 0, 'No pair for debt'
                                            else:
                                                if ext_call.return_data[18 len 14] > 0:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                else:
                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                    else:
                                                        if 2 == stor16:
                                                            revert with 0, '2'
                                                        else:
                                                            if 3 == stor16:
                                                                revert with 0, '3'
                                                            else:
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                             gas gas_remaining wei
                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                        if address(ext_call.return_data[0]):
                                                            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[50 len 14]:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                            else:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                        else:
                                                            if not address(ext_call.return_data[0]):
                                                                revert with 0, 'No pair for debt'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[50 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                                        if address(ext_call.return_data[0]):
                                                            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                            else:
                                                                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    if 2 == stor16:
                                                                        revert with 0, '2'
                                                                    else:
                                                                        if 3 == stor16:
                                                                            revert with 0, '3'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                         gas gas_remaining wei
                                                                                        args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                        else:
                                                            if not address(ext_call.return_data[0]):
                                                                revert with 0, 'No pair for debt'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                else:
                                                                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                    else:
                                                                        if 2 == stor16:
                                                                            revert with 0, '2'
                                                                        else:
                                                                            if 3 == stor16:
                                                                                revert with 0, '3'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                                    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == ext_call.return_data[12 len 20]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args arg2, 0, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                                                             gas gas_remaining wei
                                                                                            args 0, arg2, address(this.address), 128, 160, address(arg1), address(arg3), address(arg4), arg2, 0xe9e7cea3dedca5984780bafc599bd69add087d56, mem[(10 * ceil32(return_data.size)) + 612 len 17 * ceil32(return_data.size)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
}



}
