contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address factoryAddress;
address barAddress;
address sushiAddress;
address wethAddress;

function sushi() payable {
    return sushiAddress
}

function weth() payable {
    return wethAddress
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
