contract main {




// =====================  Runtime code  =====================


address farmTokenAddress;

function farmToken() payable {
    return farmTokenAddress
}

function _fallback() payable {
    revert
}



}
