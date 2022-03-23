contract main {




// =====================  Runtime code  =====================


address addr;
address stor1;

function getAddress() {
    return addr
}

function addr() {
    return addr
}

function _fallback() payable {
    revert
}

function setAddr(address arg1) {
    require msg.sender == stor1
    addr = arg1
}

function changeOwner(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}



}
