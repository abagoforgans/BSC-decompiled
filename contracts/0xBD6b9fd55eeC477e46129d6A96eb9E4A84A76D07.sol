contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address factoryAddress;
address barAddress;
address bambooAddress;
address wbnbAddress;

function bamboo() payable {
    return bambooAddress
}

function wbnb() payable {
    return wbnbAddress
}

function factory() payable {
    return factoryAddress
}

function bar() payable {
    return barAddress
}

function _fallback() payable {
    revert
}



}
