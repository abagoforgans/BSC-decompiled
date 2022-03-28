contract main {




// =====================  Runtime code  =====================


#
#  - convert(address arg1, address arg2)
#
address owner;
address factoryAddress;
address sub_86c2ef68Address;
address wbnbAddress;
uint256 threshold;

function threshold() payable {
    return threshold
}

function sub_86c2ef68(?) payable {
    return sub_86c2ef68Address
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    threshold = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
