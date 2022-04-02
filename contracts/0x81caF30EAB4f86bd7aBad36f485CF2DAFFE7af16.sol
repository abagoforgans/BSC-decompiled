contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
address adminAddress;
address bankAddress;
address bankControllerAddress;
uint32 stor6;
address borrowerAddress;

function bankController() payable {
    return bankControllerAddress
}

function bank() payable {
    return bankAddress
}

function borrower() payable {
    return address(borrowerAddress)
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setBorrower(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    address(borrowerAddress) = arg1
}

function withdrawETH() payable {
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
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
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 192
    require uint8(cd[(arg4 + 36)]) <= 2
    if uint8(cd[(arg4 + 36)]) == 1:
        if cd[(arg4 + 164)]:
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 997 * ext_call.return_data[0]
        require ext_code.size(bankAddress)
        call bankAddress.liquidateBorrow(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, uint32(stor6), 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(bankAddress)
        call bankAddress.tokenOut(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if cd[(arg4 + 196)]:
            require ext_code.size(stor1)
            call stor1.0xd0e30db0 with:
               value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_c10d4062(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin required'
    if stor1 == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'Requested pair is not available.'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if address(ext_call.return_data[0]) == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
            if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1, arg1, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args arg1, 0, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
        else:
            if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, arg1, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
            else:
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor1 == stor1:
            require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
            staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'Requested pair is not available.'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if address(ext_call.return_data[0]) == 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c:
                if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1, arg1, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
                else:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args arg1, 0, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
            else:
                if 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c == ext_call.return_data[12 len 20]:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, arg1, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
                else:
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 192, 1, 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, arg1, stor1, 0, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
