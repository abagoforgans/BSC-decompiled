contract main {




// =====================  Runtime code  =====================


address TOKENAAddress;
address sub_1c6afddcAddress;
address owner;
mapping of uint8 stor3;

function sub_1c6afddc(?) payable {
    return sub_1c6afddcAddress
}

function TOKENA() payable {
    return TOKENAAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    TOKENAAddress = arg1
    sub_1c6afddcAddress = arg2
}

function claim() payable {
    require not stor3[address(msg.sender)]
    require ext_code.size(TOKENAAddress)
    staticcall TOKENAAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(TOKENAAddress)
    call TOKENAAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1c6afddcAddress)
    call sub_1c6afddcAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3[address(msg.sender)] = 1
}



}
