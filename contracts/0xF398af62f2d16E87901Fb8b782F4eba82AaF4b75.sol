contract main {




// =====================  Runtime code  =====================


uint256 unlockTime;
uint256 contractBalance;
uint256 sub_35f29f63;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
address stor4;

function unlockTime() {
    return unlockTime
}

function sub_35f29f63(?) {
    return sub_35f29f63
}

function contractBalance() {
    return contractBalance
}

function isPaused() {
    return bool(uint8(stor3.field_160))
}

function _fallback() payable {
    revert
}

function isUnlocked() {
    return (block.timestamp > unlockTime)
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function setUnlockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    unlockTime = block.timestamp + (24 * 3600 * arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor3.field_160):
        revert with 0, 'PAUSED'
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    address(stor3.field_0) = arg1
}

function sub_ad545f75(?) {
    require calldata.size - 4 >= 32
    stor4 = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_35f29f63 = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2963cb61(?) payable {
    if uint8(stor3.field_160):
        revert with 0, 'PAUSED'
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    if block.timestamp <= unlockTime:
        revert with 0, 'Unlock time has not elapsed.'
    call address(stor3.field_0) with:
       value contractBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    contractBalance = 0
}

function reclaimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor3.field_160):
        revert with 0, 'PAUSED'
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'You're not the owner.'
    if block.timestamp <= unlockTime:
        revert with 0, 'Unlock time has not elapsed.'
    stor4 = arg1
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens to retrieve'
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor3.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
