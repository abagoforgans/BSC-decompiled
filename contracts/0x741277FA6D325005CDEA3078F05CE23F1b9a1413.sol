contract main {




// =====================  Runtime code  =====================


address sub_bce934a9Address;
address sub_efa6a7f5Address;
address owner;
address adminAddress;
uint256 rate;

function rate() payable {
    return rate
}

function owner() payable {
    return owner
}

function sub_bce934a9(?) payable {
    return sub_bce934a9Address
}

function sub_efa6a7f5(?) payable {
    return sub_efa6a7f5Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    adminAddress = arg1
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_efa6a7f5Address = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_bce934a9Address = arg1
}

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == adminAddress
    rate = arg1
}

function sub_6ab3ef7f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == adminAddress
    require ext_code.size(sub_efa6a7f5Address)
    call sub_efa6a7f5Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_77fce46b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == adminAddress
    require ext_code.size(sub_bce934a9Address)
    call sub_bce934a9Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function exchange(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_efa6a7f5Address)
    call sub_efa6a7f5Address.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_bce934a9Address)
    call sub_bce934a9Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2 * rate / 10^10 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
