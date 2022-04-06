contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
uint256 stor2;
address stor3;

function getTokenAddress() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getUnlockTimeLeft() {
    return (stor2 - block.timestamp)
}

function getLockAmount() {
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function unlockLPTokens() {
    if stor0 != msg.sender:
        revert with 0, 'You is not owner'
    if block.timestamp <= stor2:
        revert with 0, 'Is not unlock time now'
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
