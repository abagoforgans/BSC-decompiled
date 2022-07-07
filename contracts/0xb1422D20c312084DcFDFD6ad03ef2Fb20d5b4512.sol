contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of address sub_2669e274;
uint256 sub_614fe80d;

function sub_2669e274(?) {
    require calldata.size - 4 >= 32
    return sub_2669e274[address(arg1)]
}

function userAddress(address arg1) {
    require calldata.size - 4 >= 32
    return sub_2669e274[arg1]
}

function sub_614fe80d(?) {
    return sub_614fe80d
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_e3f1cba3(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Admin What?'
    sub_614fe80d = arg1
}

function updateAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_614fe80d > msg.value:
        revert with 0, 'MinAmount To Pay!'
    sub_2669e274[address(msg.sender)] = arg1
    call adminAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
