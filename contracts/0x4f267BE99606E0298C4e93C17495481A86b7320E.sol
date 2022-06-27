contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 rate;
uint256 buyTax;
address sub_09499220Address;

function sub_09499220(?) {
    return sub_09499220Address
}

function rate() {
    return rate
}

function buyTax() {
    return buyTax
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_436d3340(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_09499220Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY_OWNER_CAN_ACCESS_THIS_FUNCTION'
    buyTax = arg1
}

function updateRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_09499220Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY_OWNER_CAN_ACCESS_THIS_FUNCTION'
    rate = arg1
}

function endPreSale() {
    if sub_09499220Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY_OWNER_CAN_ACCESS_THIS_FUNCTION'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_59029103(?) payable {
    if msg.value and rate > -1 / msg.value:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < msg.value * rate / 10^9:
        revert with 0, 'INSUFFICIENT_BALANCE_IN_CONTRACT'
    call sub_09499220Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value * rate / 10^9 and buyTax > -1 / msg.value * rate / 10^9:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_09499220Address, msg.value * rate / 10^9 * buyTax / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.value * rate / 10^9 < msg.value * rate / 10^9 * buyTax / 100:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (msg.value * rate / 10^9) - (msg.value * rate / 10^9 * buyTax / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FAILED_TO_TRANSFER_TOKENS_TO_BUYER'
}



}
