contract main {




// =====================  Runtime code  =====================


#
#  - sub_83922fa9(?)
#
const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address sub_8f584ab9Address;
address owner;

function owner() {
    return owner
}

function sub_8f584ab9(?) {
    return sub_8f584ab9Address
}

function _fallback() payable {
    require msg.sender != tx.origin
}

function sub_c6d9b65e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8f584ab9Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
