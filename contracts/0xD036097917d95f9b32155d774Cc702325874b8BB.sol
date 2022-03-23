contract main {




// =====================  Runtime code  =====================


address flapAddress;
address busdAddress;
address ethAddress;
address stor3;
uint256 fee;
mapping of uint256 deposited;
mapping of uint8 stor6;

function flap() payable {
    return flapAddress
}

function getDeposited() payable {
    return deposited[address(msg.sender)]
}

function busd() payable {
    return busdAddress
}

function eth() payable {
    return ethAddress
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function allow(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    stor6[address(arg1)] = 1
}

function setAddress(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor3
    flapAddress = arg1
    busdAddress = arg2
    ethAddress = arg3
}

function borrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'user can not borrow'
    require ext_code.size(flapAddress)
    call flapAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), fee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(ethAddress)
    call ethAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    deposited[address(msg.sender)] += arg1
    require ext_code.size(busdAddress)
    call busdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 200 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Borrowed(arg1, 200 * arg1, msg.sender);
}

function withdrawCollateral() payable {
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'user can not borrow'
    require ext_code.size(flapAddress)
    call flapAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), fee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(busdAddress)
    call busdAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 200 * deposited[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    deposited[address(msg.sender)] = 0
    require ext_code.size(flapAddress)
    call flapAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, deposited[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5b105ecd: 200 * deposited[address(msg.sender)], deposited[address(msg.sender)], msg.sender
}

function finish() payable {
    require msg.sender == stor3
    require ext_code.size(busdAddress)
    staticcall busdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(busdAddress)
    call busdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(flapAddress)
    staticcall flapAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(flapAddress)
    call flapAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ethAddress)
    staticcall ethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ethAddress)
    call ethAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
