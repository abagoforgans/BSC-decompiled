contract main {




// =====================  Runtime code  =====================


const test = 1337


address sub_e4c8531aAddress;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function getValue(address arg1) {
    return balances[address(arg1)]
}

function sub_dbd42305(?) {
    return balances[address(msg.sender)]
}

function sub_e4c8531a(?) {
    return sub_e4c8531aAddress
}

function _fallback() payable {
    revert
}

function setStorage(address arg1) {
    sub_e4c8531aAddress = arg1
}

function setValue(uint256 arg1) {
    balances[address(msg.sender)] = arg1
    if not sub_e4c8531aAddress:
        revert with 0, 'INVALID STORAGE'
    require ext_code.size(sub_e4c8531aAddress)
    call sub_e4c8531aAddress.0x17c80e99 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
