contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
#
address owner;
address factoryAddress;
address sub_56fa50d0Address;
uint256 creationCode;

function getCreationCode() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    return creationCode
}

function sub_56fa50d0(?) {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    return sub_56fa50d0Address
}

function owner() {
    return owner
}

function getFactoryAddress() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWBNBAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_56fa50d0Address = arg1
    return 1
}

function sub_a7573874(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    factoryAddress = arg1
    creationCode = arg2
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
