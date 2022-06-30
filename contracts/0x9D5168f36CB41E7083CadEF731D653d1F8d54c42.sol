contract main {




// =====================  Runtime code  =====================


address owner;
array of struct poolById;

function getPoolById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolById.length
    require poolById[arg1].field_160 <= 2
    return poolById[arg1].field_0, poolById[arg1].field_160
}

function owner() payable {
    return owner
}

function getPoolsCount() payable {
    return poolById.length
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

function sub_c47d2f08(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1 < poolById.length
    require arg2 <= 2
    poolById[arg1].field_160 = arg2
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    poolById.length++
    poolById[poolById.length].field_0 = arg1
    poolById[poolById.length].field_0 = arg1
    poolById[poolById.length].field_160 = 0
    poolById[poolById.length].field_256 = 0
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
