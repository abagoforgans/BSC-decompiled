contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
uint8 stor3;

function paused() payable {
    return bool(stor3)
}

function owner() payable {
    return owner
}

function geUnlockTime() payable {
    return geUnlockTime
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require not stor3
    stor3 = 1
    emit Pause()
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1 = owner
    owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xe0596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: owner, stor1
    owner = stor1
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
    emit 0x728be007: owner, arg1
    owner = arg1
}



}
