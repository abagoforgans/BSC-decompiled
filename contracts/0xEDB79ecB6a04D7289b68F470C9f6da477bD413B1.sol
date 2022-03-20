contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function a(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return address(arg1), 0, Mask(88, 0, arg1) >> 168
}



}
