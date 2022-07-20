contract main {




// =====================  Runtime code  =====================


uint256 contractBalance;
uint256 sub_35f29f63;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
address stor3;

function sub_35f29f63(?) {
    return sub_35f29f63
}

function contractBalance() {
    return contractBalance
}

function isPaused() {
    return bool(uint8(stor2.field_160))
}

function _fallback() payable {
    revert
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_160):
        revert with 0, 'PAUSED'
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    address(stor2.field_0) = arg1
}

function sub_2963cb61(?) payable {
    if uint8(stor2.field_160):
        revert with 0, 'PAUSED'
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    call address(stor2.field_0) with:
       value contractBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    contractBalance = 0
}

function sub_ad545f75(?) {
    require calldata.size - 4 >= 32
    stor3 = arg1
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_35f29f63 = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function reclaimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_160):
        revert with 0, 'PAUSED'
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    stor3 = arg1
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens to retrieve'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor2.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
