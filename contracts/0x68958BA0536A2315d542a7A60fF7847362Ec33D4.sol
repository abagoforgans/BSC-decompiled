contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address address;

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not address[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734164647265737353746f726167653a2041646472657373206e6f7420666f756e,
                    mem[197 len 31]
    return address[arg1]
}

function getPoolRepository() payable {
    if not address['POOL_REPOSITORY']:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734164647265737353746f726167653a2041646472657373206e6f7420666f756e,
                    mem[197 len 31]
    return address['POOL_REPOSITORY']
}

function owner() payable {
    return owner
}

function getPositionRepository() payable {
    if not address['POSITION_REPOSITORY']:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734164647265737353746f726167653a2041646472657373206e6f7420666f756e,
                    mem[197 len 31]
    return address['POSITION_REPOSITORY']
}

function getPriceRepository() payable {
    if not address['PRICE_REPOSITORY']:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734164647265737353746f726167653a2041646472657373206e6f7420666f756e,
                    mem[197 len 31]
    return address['PRICE_REPOSITORY']
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPoolRepository(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    address['POOL_REPOSITORY'] = arg1
}

function setPriceRepository(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    address['PRICE_REPOSITORY'] = arg1
}

function setPositionRepository(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    address['POSITION_REPOSITORY'] = arg1
}

function sub_e152fc2b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg2.length:
        revert with 0, 'Empty string'
    address[mem[128]] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fc518b4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        revert with 0, 'Empty string'
    if not address[mem[128]]:
        revert with 0, 32, 33, 0x734164647265737353746f726167653a2041646472657373206e6f7420666f756e, mem[ceil32(arg1.length) + 229 len 31]
    mem[ceil32(arg1.length) + 128] = address[mem[128]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
