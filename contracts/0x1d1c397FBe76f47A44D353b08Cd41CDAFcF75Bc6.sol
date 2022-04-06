contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}



}
