contract main {




// =====================  Runtime code  =====================


uint256 sub_2e985100;
address sub_3bdfc367Address;
address adminAddress;

function sub_2e985100(?) {
    return sub_2e985100
}

function sub_3bdfc367(?) {
    return sub_3bdfc367Address
}

function getAdminAddress() {
    return adminAddress
}

function sub_1bb943fd(?) {
    if adminAddress != msg.sender:
        revert with 0, '!Admin'
    selfdestruct(msg.sender)
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, '!Admin'
    adminAddress = arg1
}

function _fallback() payable {
    require calldata.size
    delegate sub_3bdfc367Address with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeProxyTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, '!Admin'
    sub_3bdfc367Address = arg1
    mem[132] = 0, mem[132 len 28]
    delegate sub_3bdfc367Address.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    require delegate.return_code
}

function _initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, '!Admin'
    mem[196 len 96] = unknown_0x485cc955(?????), address(arg1) << 64, 0, address(arg2), mem[196 len 28]
    delegate sub_3bdfc367Address.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    require delegate.return_code
    return 1
}



}
