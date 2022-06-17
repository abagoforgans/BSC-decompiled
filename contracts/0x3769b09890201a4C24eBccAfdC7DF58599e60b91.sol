contract main {




// =====================  Runtime code  =====================


const returnNothing = 2


uint8 stor0; offset 160
uint128 stor0; offset 160
address checkAdminAddress;

function sub_088ab302(?) {
    return bool(uint8(stor0.field_160))
}

function checkAdmin() {
    return checkAdminAddress
}

function _fallback() payable {
    revert
}

function sub_ed00e653(?) {
    return (msg.sender == checkAdminAddress)
}

function sub_5a396387(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if checkAdminAddress:
        if checkAdminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ES: Only Admin Can Call This Function!'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if checkAdminAddress:
        if checkAdminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ES: Only Admin Can Call This Function!'
    if not uint8(stor0.field_160):
        revert with 0, 'Please : Enable Changeable'
    checkAdminAddress = arg1
}

function viewBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return eth.balance(this.address)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if checkAdminAddress:
        if checkAdminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ES: Only Admin Can Call This Function!'
    if not arg1:
        call checkAdminAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args checkAdminAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
