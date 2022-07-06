contract main {




// =====================  Runtime code  =====================


address WETHAddress;
address factoryAddress;

function WETH() payable {
    return WETHAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}



}
