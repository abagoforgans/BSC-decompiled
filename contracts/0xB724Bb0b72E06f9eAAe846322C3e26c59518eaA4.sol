contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address testAddress;

function owner() payable {
    return owner
}

function router() payable {
    return routerAddress
}

function test() payable {
    return testAddress
}

function _fallback() payable {
    revert
}



}
