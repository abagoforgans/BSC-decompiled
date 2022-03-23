contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address factoryAddress;
address barAddress;
address kingAddress;
address wbnbAddress;

function wbnb() payable {
    return wbnbAddress
}

function factory() payable {
    return factoryAddress
}

function king() payable {
    return kingAddress
}

function bar() payable {
    return barAddress
}

function _fallback() payable {
    revert
}



}
