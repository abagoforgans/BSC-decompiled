contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;

function name() payable {
    return name[0 len name.length]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}



}
