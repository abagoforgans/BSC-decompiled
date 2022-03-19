contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
mapping of bool referralCodeMap;
mapping of address referralCodeOwner;
mapping of address referralShip;
mapping of uint8 stor4;
mapping of uint256 stor5;
uint256 shareSeed;

function getReferralShip(address arg1) {
    return referralShip[address(arg1)]
}

function referralCodeMap(address arg1) {
    return uint256(referralCodeMap[arg1][0 len referralCodeMap[arg1].length])
}

function safeOperator(address arg1) {
    return bool(stor4[arg1])
}

function getReferralCodeByAddr(address arg1) {
    return uint256(referralCodeMap[address(arg1)][0 len referralCodeMap[address(arg1)].length])
}

function isPaused() {
    return bool(uint8(stor0.field_0))
}

function referralCodeOwner(bytes32 arg1) {
    return referralCodeOwner[arg1]
}

function shareSeed() {
    return shareSeed
}

function referralShipMap(address arg1) {
    return referralShip[arg1]
}

function _fallback() payable {
    revert
}

function setCustomerSeed(bytes32 arg1) {
    stor5[address(msg.sender)] = arg1
}

function doPause() {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 1
}

function doUnpause() {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 0
}

function getMySeed() {
    if not stor5[address(msg.sender)]:
        return shareSeed
    return stor5[address(msg.sender)]
}

function setAdmin(address arg1) {
    require msg.sender == address(stor0.field_8)
    require arg1
    address(stor0.field_8) = arg1
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == address(stor0.field_8)
    stor4[address(arg1)] = uint8(arg2)
}

function getCustomerSeed(address arg1) {
    require stor4[address(msg.sender)]
    if not stor5[address(arg1)]:
        return shareSeed
    return stor5[address(arg1)]
}

function setReferralShip(address arg1, address arg2) {
    if not stor4[address(msg.sender)]:
        require msg.sender == address(stor0.field_8)
    referralShip[address(arg1)] = arg2
    emit ReferralShip(arg1, arg2);
}

function getAddrByReferralCode(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + 128] = referralCodeOwner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + floor32(arg1.length) + 128 len arg1.length % 32]]
    return memory
      from arg1.length + 128
       len 32
}

function createReferralCode(string arg1) {
    require not Mask(255, 1, (256 * not bool(referralCodeMap[address(msg.sender)])) - 1 and uint256(referralCodeMap[address(msg.sender)]))
    require arg1.length >= 4
    require arg1.length <= 16
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require not referralCodeOwner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + floor32(arg1.length) + 128 len arg1.length % 32]]
    uint256(referralCodeMap[address(msg.sender)]) = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        uint256(referralCodeMap[address(msg.sender)][s]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while referralCodeMap[address(msg.sender)].length + 31 / 32 > idx:
        uint256(referralCodeMap[address(msg.sender)][idx]) = 0
        idx = idx + 1
        continue 
    referralCodeOwner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + floor32(arg1.length) + 128 len arg1.length % 32]] = msg.sender
    emit CreateReferral(Array(len=arg1.length, data=arg1[all]), msg.sender);
}



}
