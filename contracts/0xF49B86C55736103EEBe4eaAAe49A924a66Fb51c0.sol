contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address sub_bce934a9Address;
address owner;
address adminAddress;
uint256 rate;

function rate() {
    return rate
}

function owner() {
    return owner
}

function sub_bce934a9(?) {
    return sub_bce934a9Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    adminAddress = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_bce934a9Address = arg1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == adminAddress
    rate = arg1
}

function sendeth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        require msg.sender == adminAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function deposit() payable {
    if msg.value <= 0:
        return 0
    require ext_code.size(sub_bce934a9Address)
    call sub_bce934a9Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate / 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_4a1ac8b3(?) {
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



}
