contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;

function getUnlockTime() payable {
    return unlockTime
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}



}
