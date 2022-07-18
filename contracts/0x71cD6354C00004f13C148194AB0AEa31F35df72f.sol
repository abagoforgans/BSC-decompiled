contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isTransferable(address arg1) payable {
    require calldata.size - 4 >= 32
    return not bool(stor1[address(arg1)])
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a823ac39(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '0x is not accepted here'
    if arg2 == bool(stor1[address(arg1)]):
        revert with 0, 'nothing to change'
    stor1[address(arg1)] = uint8(arg2)
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

function sub_2f93ed0c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1.length <= 0:
        revert with 0, '0x is not accepted here'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}



}
