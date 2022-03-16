contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor102;
uint256 stor103;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getData() {
    return stor103, bool(stor102)
}

function storeData(uint256 arg1) {
    require msg.sender == owner
    stor103 = arg1
}

function storeValidity(bool arg1) {
    require msg.sender == owner
    stor102 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
