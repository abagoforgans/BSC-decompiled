contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e


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
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
