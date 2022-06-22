contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;

function canPause() payable {
    return bool(uint8(stor0.field_168))
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function notPausable() payable {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
    Mask(88, 0, stor0.field_168) = 0
    emit NotPausable()
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    require bool(uint8(stor0.field_160)) == 1
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pause() payable {
    require msg.sender == owner
    if uint8(stor0.field_160):
        require msg.sender == owner
    require bool(uint8(stor0.field_168)) == 1
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}



}
