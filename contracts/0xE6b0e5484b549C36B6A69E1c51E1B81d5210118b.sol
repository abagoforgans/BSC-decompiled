contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address factoryAddress;
address wbnbAddress;
address devaddr;

function wbnb() payable {
    return wbnbAddress
}

function factory() payable {
    return factoryAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}



}
