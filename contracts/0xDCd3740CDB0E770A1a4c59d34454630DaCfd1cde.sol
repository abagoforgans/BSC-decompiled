contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address sub_740a63e2;

function sub_6d7a810e(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_740a63e2(?) payable {
    require calldata.size - 4 >= 32
    return sub_740a63e2[arg1]
}

function owner() payable {
    return owner
}

function hasUserReferee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_740a63e2[address(arg1)])
}

function getUserReferee(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_740a63e2[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateReferralAnchor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_740a63e2[address(arg1)] = arg2
    emit ReferralAnchorUpdated(arg1, arg2);
}

function updateAnchorManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1[address(arg1)] = uint8(arg2)
    emit AnchorManagerUpdated(address(arg1), arg2);
}

function createReferralAnchor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'ReferralRegistry: FORBIDDEN'
    if sub_740a63e2[address(arg1)]:
        revert with 0, 'ReferralRegistry: ANCHOR_EXISTS'
    sub_740a63e2[address(arg1)] = arg2
    emit ReferralAnchorCreated(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
