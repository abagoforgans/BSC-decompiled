contract main {




// =====================  Runtime code  =====================


address stor0;

function attack() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
