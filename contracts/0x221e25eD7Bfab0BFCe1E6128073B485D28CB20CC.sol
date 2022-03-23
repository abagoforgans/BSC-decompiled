contract main {




// =====================  Runtime code  =====================


address flapAddress;
address busdAddress;
address stor2;
mapping of uint256 deposited;
mapping of uint8 stor4;

function flap() payable {
    return flapAddress
}

function getDeposited() payable {
    return deposited[address(msg.sender)]
}

function busd() payable {
    return busdAddress
}

function _fallback() payable {
    revert
}

function allow(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    stor4[address(arg1)] = 1
}

function setAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    flapAddress = arg1
    busdAddress = arg2
}

function borrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require bool(stor4[address(msg.sender)]) == 1
    require ext_code.size(flapAddress)
    call flapAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    deposited[address(msg.sender)] += arg1
    require ext_code.size(busdAddress)
    call busdAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 / 800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Borrowed(arg1, arg1 / 800, msg.sender);
}

function withdrawCollateral() payable {
    if bool(stor4[address(msg.sender)]) != 1:
        revert with 0, 'user can not borrow'
    require ext_code.size(busdAddress)
    call busdAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), deposited[address(msg.sender)] / 800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    deposited[address(msg.sender)] = 0
    require ext_code.size(flapAddress)
    call flapAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, deposited[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5b105ecd: deposited[address(msg.sender)] / 800, deposited[address(msg.sender)], msg.sender
}

function finish() payable {
    require msg.sender == stor2
    require ext_code.size(busdAddress)
    staticcall busdAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    call busdAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(flapAddress)
    staticcall flapAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(flapAddress)
    call flapAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
