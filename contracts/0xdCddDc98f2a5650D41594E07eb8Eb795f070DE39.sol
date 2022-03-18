contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address factoryAddress;
address wbnbAddress;
address devaddr;

function wbnb() {
    return wbnbAddress
}

function factory() {
    return factoryAddress
}

function devaddr() {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}



}
