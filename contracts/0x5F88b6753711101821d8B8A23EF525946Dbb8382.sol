contract main {




// =====================  Runtime code  =====================


#
#  - sub_07f5d633(?)
#  - _fallback()
#
const DEFAULT_ADMIN_ROLE = 0


address owner;
mapping of struct roleAdmin;
uint256 startTime;
uint256 duration;
uint256 sub_34dadad5;
uint256 registerDuration;
uint256 stor7; offset 2
uint256 sub_3d7faab9;
uint8 stor8;
uint128 stor8; offset 168
address fundTokenAddress; offset 8
uint256 sub_7624388e;
address fundsReceiverAddress;
array of struct stor12;
mapping of uint256 balances;
mapping of uint256 contributed;
uint256 participants;
uint256 sub_2b888f69;
uint256 sub_75c33e0b;
uint8 whitelistEnabled;
mapping of uint8 stor19;
mapping of uint8 stor20;
array of struct sub_aa6d4b9d;
array of address sub_493566e9;
uint256 stor23;
uint256 stor24;
uint256 maxSell;
uint256 sub_2e82e8ae;
uint8 sub_e1b318c2; offset 160
uint8 stor27; offset 168
uint8 stor27; offset 176
uint128 stor27; offset 176
uint128 stor27; offset 168
uint128 stor27; offset 160
address stor27;
uint256 totalWeights;
uint256 sub_c4bfce18;
uint256 stor30;
uint256 sub_10ff2dcf;
mapping of struct sub_da007349;
mapping of struct stor33;
mapping of uint8 stor34;
array of struct stor36;
uint256 rate;
array of address stor38878206584692966203415385907871375197469080758325516314230789535345649042549;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function sub_00fed700(?) {
    return bool(uint8(stor8.field_0))
}

function duration() {
    return duration
}

function sub_10ff2dcf(?) {
    return sub_10ff2dcf
}

function balances(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return balances[arg1][arg2]
}

function fundsReceiver() {
    return fundsReceiverAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2b888f69(?) {
    return sub_2b888f69
}

function rate() {
    return rate
}

function sub_2e82e8ae(?) {
    return sub_2e82e8ae
}

function sub_34dadad5(?) {
    return sub_34dadad5
}

function sub_3d7faab9(?) {
    return sub_3d7faab9
}

function sub_493566e9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_493566e9.length
    return sub_493566e9[arg1]
}

function sub_4bc39c51(?) {
    return maxSell
}

function balanceOf(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return balances[address(arg1)][arg2]
}

function fundToken() {
    return fundTokenAddress
}

function whitelistEnabled() {
    return bool(whitelistEnabled)
}

function participants() {
    return participants
}

function registerDuration() {
    return registerDuration
}

function sub_75c33e0b(?) {
    return sub_75c33e0b
}

function sub_7624388e(?) {
    return sub_7624388e
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_8e2b3ab7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor20[arg1])
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function totalWeights() {
    return totalWeights
}

function contributed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributed[arg1]
}

function sub_aa6d4b9d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa6d4b9d.length
    return address(sub_aa6d4b9d[arg1].field_0)
}

function maxSell() {
    return maxSell
}

function sub_c4bfce18(?) {
    return sub_c4bfce18
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function sub_da007349(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_da007349[arg1[all]].field_0
}

function sub_e1b318c2(?) {
    return bool(sub_e1b318c2)
}

function getMinMaxLimits() {
    return 0, maxSell
}

function getEndTime() {
    if startTime > !duration:
        revert with 0, 17
    return (startTime + duration)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isLive() {
    if block.timestamp <= startTime:
        return (block.timestamp > startTime)
    if startTime > !duration:
        revert with 0, 17
    return (block.timestamp < startTime + duration)
}

function sub_3540edca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor19[address(arg1)]:
        return 0
    if stor20[address(arg1)]:
        return sub_2e82e8ae
    return maxSell
}

function getUserLevelAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor34[address(arg1)] and sub_c4bfce18 > -1 / stor34[address(arg1)]:
        revert with 0, 17
    return (stor34[address(arg1)] * sub_c4bfce18)
}

function whitelistAllocation() {
    if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
        revert with 0, 17
    if maxSell and stor23 > -1 / maxSell:
        revert with 0, 17
    if maxSell * stor23 > !(sub_2e82e8ae * stor24):
        revert with 0, 17
    return ((maxSell * stor23) + (sub_2e82e8ae * stor24))
}

function setBaseAllocation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_c4bfce18 = arg1
}

function setMinBaseAllocation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_10ff2dcf = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setMinAllowedLevelMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    stor30 = arg1
}

function setDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    duration = arg1
    emit DurationChanged(arg1);
}

function setLevelManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    address(stor27.field_0) = arg1
}

function setFCFSDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_3d7faab9 = arg1
    emit FCFSDurationChanged(duration);
}

function raised() {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x9a0dd720 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function toggleLevels(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    Mask(96, 0, stor27.field_160) = Mask(96, 0, arg1)
}

function tokensSold() {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0xf91aa982 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function totalRaised() {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x9a0dd720 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function openForAllLevels(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    Mask(88, 0, stor27.field_168) = Mask(88, 0, arg1)
}

function tokensForSale() {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0xbd8c0fee with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_28e5d54f(?) {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0xf91aa982 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_80211356(?) {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0xbd8c0fee with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_9545c30c(?) {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function isFcfsTime() {
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp > !sub_3d7faab9:
        revert with 0, 17
    if block.timestamp + sub_3d7faab9 <= startTime + duration:
        return (block.timestamp + sub_3d7faab9 > startTime + duration)
    if startTime > !duration:
        revert with 0, 17
    return (block.timestamp < startTime + duration)
}

function toggleLockOnRegister(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    Mask(80, 0, stor27.field_176) = Mask(80, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function toggleWhitelist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    whitelistEnabled = uint8(arg1)
    emit WhitelistEnabled(arg1);
}

function sub_297ab1bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    fundsReceiverAddress = address(arg1)
    emit FundsReceiverChanged(address(arg1));
}

function sub_07f9bcd2(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0xa9e2285 with:
         gas gas_remaining wei
        args 11, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_98ee2881(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if not arg2:
        maxSell = arg1
    else:
        sub_2e82e8ae = arg1
    emit 0x84d2f32a: arg1, bool(arg2)
}

function levelsOpenAll() {
    if uint8(stor27.field_168):
        return bool(uint8(stor27.field_168))
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp > !sub_3d7faab9:
        revert with 0, 17
    if block.timestamp + sub_3d7faab9 <= startTime + duration:
        return (block.timestamp + sub_3d7faab9 > startTime + duration)
    if startTime > !duration:
        revert with 0, 17
    return (block.timestamp < startTime + duration)
}

function setFundToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    uint8(stor8.field_0) = uint8(bool(arg1))
    fundTokenAddress = arg1
    Mask(88, 0, stor8.field_168) = Mask(88, 168, bool(arg1)) >> 168
    emit FundTokenChanged(arg1);
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg1 <= sub_34dadad5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: start time must be after the register time'
    startTime = arg1
    emit StartChanged(arg1);
}

function setRegisterTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg1 >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: register time must be before the start time'
    sub_34dadad5 = arg1
    emit RegisterTimeChanged(arg1);
}

function setRegisterDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if sub_34dadad5 > !arg1:
        revert with 0, 17
    if sub_34dadad5 + arg1 >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: register end must be before the start time'
    registerDuration = arg1
    emit RegisterDurationChanged(arg1);
}

function getItem(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x7d2099c5 with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
        revert with 0, 65
    return delegate.return_data[0], 
           delegate.return_data[32],
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128],
           delegate.return_data[160]
}

function deleteItem(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x3d9e7a97 with:
         gas gas_remaining wei
        args 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if delegate.return_data[0]:
        emit 0x14881872: arg1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawable: amount should be greater than zero'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args fundsReceiverAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_62a84b0c(?) {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
        revert with 0, 17
    if maxSell and stor23 > -1 / maxSell:
        revert with 0, 17
    if maxSell * stor23 > !(sub_2e82e8ae * stor24):
        revert with 0, 17
    if delegate.return_data[0] < (maxSell * stor23) + (sub_2e82e8ae * stor24):
        revert with 0, 17
    if totalWeights <= 0:
        return (delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24))
    if not totalWeights:
        revert with 0, 18
    return (delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24) / totalWeights)
}

function reachedMinBaseAllocation() {
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
        revert with 0, 17
    if maxSell and stor23 > -1 / maxSell:
        revert with 0, 17
    if maxSell * stor23 > !(sub_2e82e8ae * stor24):
        revert with 0, 17
    require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
    delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
         gas gas_remaining wei
        args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function withdrawBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawable: amount should be greater than zero'
    if not uint8(stor8.field_0):
        call fundsReceiverAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(fundTokenAddress)
        call fundTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args fundsReceiverAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_87789492(?) {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = stor12[idx].field_0
        mem[_15 + 32] = stor12[idx].field_256
        mem[_15 + 64] = stor12[idx].field_512
        mem[_15 + 96] = stor12[idx].field_768
        mem[_15 + 128] = stor12[idx].field_1024
        mem[_15 + 160] = stor12[idx].field_1280
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _17:
        _26 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_26 + 32]
        mem[s + 64] = mem[_26 + 64]
        mem[s + 96] = mem[_26 + 96]
        mem[s + 128] = mem[_26 + 128]
        mem[s + 160] = mem[_26 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function sub_538a13f3(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 33
    mem[64] = (32 * stor33[arg1[all]].field_0) + 128
    mem[96] = stor33[arg1[all]].field_0
    if stor33[arg1[all]].field_0:
        mem[128] = address(stor33[arg1[all]].field_0)
        idx = 128
        s = 0
        while (32 * stor33[arg1[all]].field_0) + 96 > idx:
            mem[idx + 32] = address(stor33[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor33[arg1[all]].field_0) + 128] = 32
    mem[(32 * stor33[arg1[all]].field_0) + 160] = stor33[arg1[all]].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor33[arg1[all]].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor33[arg1[all]].field_0) + -mem[64] + 192
}

function sub_7afc56f5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 32
    mem[64] = (32 * sub_da007349[arg1[all]].field_0) + 128
    mem[96] = sub_da007349[arg1[all]].field_0
    if sub_da007349[arg1[all]].field_0:
        mem[128] = address(sub_da007349[arg1[all]].field_0)
        idx = 128
        s = 0
        while (32 * sub_da007349[arg1[all]].field_0) + 96 > idx:
            mem[idx + 32] = address(sub_da007349[arg1[all]][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_da007349[arg1[all]].field_0) + 128] = 32
    mem[(32 * sub_da007349[arg1[all]].field_0) + 160] = sub_da007349[arg1[all]].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_da007349[arg1[all]].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_da007349[arg1[all]].field_0) + -mem[64] + 192
}

function getWhitelistedAddresses() {
    mem[64] = (32 * sub_aa6d4b9d.length) + 128
    mem[96] = sub_aa6d4b9d.length
    if not sub_aa6d4b9d.length:
        mem[(32 * sub_aa6d4b9d.length) + 128] = 32
        mem[(32 * sub_aa6d4b9d.length) + 160] = sub_aa6d4b9d.length
        idx = 0
        s = (32 * sub_aa6d4b9d.length) + 192
        t = 128
        while idx < sub_aa6d4b9d.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_aa6d4b9d.length) + 128
           len (96 * sub_aa6d4b9d.length) + 64
    mem[128] = address(sub_aa6d4b9d.field_0)
    idx = 128
    s = 0
    while (32 * sub_aa6d4b9d.length) + 96 > idx:
        mem[idx + 32] = address(sub_aa6d4b9d[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_aa6d4b9d.length) + 128] = 32
    mem[(32 * sub_aa6d4b9d.length) + 160] = sub_aa6d4b9d.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_aa6d4b9d.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_aa6d4b9d.length) + -mem[64] + 192
}

function getFcfsAllocationMultiplier() {
    if uint8(stor27.field_168):
        return 100
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp > !sub_3d7faab9:
        revert with 0, 17
    if block.timestamp + sub_3d7faab9 <= startTime + duration:
        return 0
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp >= startTime + duration:
        return 0
    if startTime > !duration:
        revert with 0, 17
    if startTime + duration < sub_3d7faab9:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !stor7:
        revert with 0, 17
    if block.timestamp < startTime + duration - sub_3d7faab9 + stor7:
        return 35
    if stor7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !(2 * stor7):
        revert with 0, 17
    if block.timestamp < startTime + duration - sub_3d7faab9 + (2 * stor7):
        return 80
    if stor7 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !(3 * stor7):
        revert with 0, 17
    if block.timestamp >= startTime + duration - sub_3d7faab9 + (3 * stor7):
        return 10000
    return 200
}

function isRegistering() {
    if block.timestamp <= sub_34dadad5:
        return (block.timestamp > sub_34dadad5)
    if sub_34dadad5 > !registerDuration:
        revert with 0, 17
    if block.timestamp >= sub_34dadad5 + registerDuration:
        return (block.timestamp < sub_34dadad5 + registerDuration)
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
        revert with 0, 17
    if maxSell and stor23 > -1 / maxSell:
        revert with 0, 17
    if maxSell * stor23 > !(sub_2e82e8ae * stor24):
        revert with 0, 17
    require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
    delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
         gas gas_remaining wei
        args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return not bool(delegate.return_data[0])
}

function getItemIds() {
    mem[96] = 0x5412b63800000000000000000000000000000000000000000000000000000000
    mem[100] = 11
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x5412b638 with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], 0 + 127
    _5 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function updateBaseAllocation() {
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
    delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
         gas gas_remaining wei
        args 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
        revert with 0, 17
    if maxSell and stor23 > -1 / maxSell:
        revert with 0, 17
    if maxSell * stor23 > !(sub_2e82e8ae * stor24):
        revert with 0, 17
    if delegate.return_data[0] < (maxSell * stor23) + (sub_2e82e8ae * stor24):
        revert with 0, 17
    if totalWeights <= 0:
        sub_c4bfce18 = delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24)
        emit BaseAllocationCalculated((delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24)));
    else:
        if not totalWeights:
            revert with 0, 18
        sub_c4bfce18 = delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24) / totalWeights
        emit BaseAllocationCalculated((delegate.return_data[0] - (maxSell * stor23) - (sub_2e82e8ae * stor24) / totalWeights));
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_e165d891(?) {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 19
        if not stor19[address(cd[((32 * idx) + cd[36] + 36)])]:
            mem[32] = 19
            stor19[address(cd[((32 * idx) + cd[36] + 36)])] = 1
            if not cd[4]:
                sub_aa6d4b9d.length++
                mem[0] = 21
                stor55F4[stor21.length] = address(cd[((32 * idx) + cd[36] + 36)])
                if stor23 > -2:
                    revert with 0, 17
                stor23++
            else:
                mem[32] = 20
                stor20[address(cd[((32 * idx) + cd[36] + 36)])] = 1
                sub_493566e9.length++
                mem[0] = 22
                storD833[stor22.length] = address(cd[((32 * idx) + cd[36] + 36)])
                if stor24 > -2:
                    revert with 0, 17
                stor24++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setTimeline(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
        if owner != msg.sender:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if arg1 >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: register time must be before the start time'
    sub_34dadad5 = arg1
    emit RegisterTimeChanged(arg1);
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if sub_34dadad5 > !arg2:
        revert with 0, 17
    if sub_34dadad5 + arg2 >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: register end must be before the start time'
    registerDuration = arg2
    emit RegisterDurationChanged(arg2);
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    sub_3d7faab9 = arg3
    emit FCFSDurationChanged(duration);
}

function withdrawAll() {
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if eth.balance(this.address):
        call fundsReceiverAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor8.field_0):
        require ext_code.size(fundTokenAddress)
        staticcall fundTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(fundTokenAddress)
            staticcall fundTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(fundTokenAddress)
            call fundTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args fundsReceiverAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = stor12[idx].field_0
        mem[32] = sha3(address(arg1), 13)
        if s > !balances[address(arg1)][stor12[idx].field_0]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + balances[address(arg1)][stor12[idx].field_0]
        continue 
    return (s * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length * stor12.length)
}

function sub_577174e9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    mem[ceil32(('cd', 4).length) + 228] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = ceil32(('cd', 4).length) + 260
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
    delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xb609071d with:
         gas gas_remaining wei
        args 0, 27, 96, ceil32(('cd', 4).length) + 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], 0, mem[('cd', 4).length + 260 len ceil32(('cd', 4).length) + (32 * ('cd', 36).length) - ('cd', 4).length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(('cd', 4).length) + 256] = ('cd', 36).length
    idx = 0
    s = ceil32(('cd', 4).length) + 288
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit WinnersPicked(string arg1, uint256 arg2, uint256 arg3, address[] arg4):
                       128,
                       sub_da007349[call.data[cd[4] + 36 len ('cd', 4).length]].field_0,
                       ('cd', 36).length,
                       ceil32(('cd', 4).length) + 160,
                       ('cd', 4).length,
                       call.data[cd[4] + 36 len ('cd', 4).length],
                       0,
                       mem[('cd', 4).length + 288 len ceil32(('cd', 4).length) + (32 * ('cd', 36).length) - ('cd', 4).length],
}

function sub_50ba7598(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0, 'Adminable: caller is not the owner or admin'
    if ceil32(('cd', 4).length) <= ('cd', 4).length:
        idx = 0
        s = cd[68] + 36
        t = ceil32(('cd', 4).length) + ceil32(ceil32(('cd', 4).length)) + 293
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0x7b3572c7 with:
             gas gas_remaining wei
            args 27, Array(len=('cd', 4).length, data=Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 27) + 256, 27) >> -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 27) + 256) << (8 * ceil32(('cd', 4).length)) - 256, ('cd', 68).length, mem[ceil32(ceil32(('cd', 4).length)) + ceil32(('cd', 4).length) + 293 len 32 * ('cd', 68).length]), cd[36], ceil32(('cd', 4).length) + 160
    else:
        mem[ceil32(('cd', 4).length) + ceil32(ceil32(('cd', 4).length)) + 261] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = ceil32(('cd', 4).length) + ceil32(ceil32(('cd', 4).length)) + 293
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0x7b3572c7 with:
             gas gas_remaining wei
            args 27, Array(len=('cd', 4).length, data=Mask(8 * ceil32(('cd', 4).length), -(8 * ceil32(('cd', 4).length)) + 256, call.data[cd[4] + 36 len ('cd', 4).length], Mask(8 * ceil32(('cd', 4).length) - ('cd', 4).length, -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 27) + 256, 27) >> -(8 * ceil32(('cd', 4).length) + -ceil32(ceil32(('cd', 4).length)) + 27) + 256) << (8 * ceil32(('cd', 4).length)) - 256, Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 4).length)) + ('cd', 4).length + 293 len (32 * ('cd', 68).length) - ('cd', 4).length + ceil32(('cd', 4).length)]), cd[36], ceil32(('cd', 4).length) + 160
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_766daf7b(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        s = 0
        while s < sub_aa6d4b9d.length:
            mem[0] = 21
            if address(sub_aa6d4b9d[s].field_0) == address(cd[((32 * idx) + cd[4] + 36)]):
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = s
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        s = 0
        while s < sub_493566e9.length:
            mem[0] = 22
            if sub_493566e9[s] == address(cd[((32 * idx) + cd[4] + 36)]):
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = s
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 19
        if stor19[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor19[address(cd[((32 * idx) + cd[4] + 36)])] = 0
            mem[32] = 20
            stor20[address(cd[((32 * idx) + cd[4] + 36)])] = 0
            if not stor20[address(cd[((32 * idx) + cd[4] + 36)])]:
                if stor23 < 1:
                    revert with 0, 17
                stor23--
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if mem[(32 * idx) + 128] >= sub_493566e9.length:
                    revert with 0, 50
                mem[0] = 22
                sub_493566e9[mem[(32 * idx) + 128]] = 0
            else:
                if stor24 < 1:
                    revert with 0, 17
                stor24--
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] >= sub_493566e9.length:
                    revert with 0, 50
                mem[0] = 22
                sub_493566e9[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function id() {
    if bool(stor36.length):
        if bool(stor36.length) == uint255(stor36.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor36.length):
            if bool(stor36.length) == uint255(stor36.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor36.length):
                if 31 < uint255(stor36.length) * 0.5:
                    mem[128] = uint256(stor36.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor36.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor36[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor36.length), data=mem[128 len ceil32(uint255(stor36.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor36.length.field_8)
        else:
            if bool(stor36.length) == stor36.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor36.length.field_1 % 128:
                if 31 < stor36.length.field_1 % 128:
                    mem[128] = uint256(stor36.field_0)
                    idx = 128
                    s = 0
                    while stor36.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor36[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor36.length), data=mem[128 len ceil32(uint255(stor36.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor36.length.field_8)
        mem[ceil32(uint255(stor36.length) * 0.5) + 192 len ceil32(uint255(stor36.length) * 0.5)] = mem[128 len ceil32(uint255(stor36.length) * 0.5)]
        if ceil32(uint255(stor36.length) * 0.5) > uint255(stor36.length) * 0.5:
            mem[(uint255(stor36.length) * 0.5) + ceil32(uint255(stor36.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor36.length), data=mem[128 len ceil32(uint255(stor36.length) * 0.5)], mem[(2 * ceil32(uint255(stor36.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor36.length) * 0.5)]), 
    if bool(stor36.length) == stor36.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor36.length):
        if bool(stor36.length) == uint255(stor36.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor36.length):
            if 31 < uint255(stor36.length) * 0.5:
                mem[128] = uint256(stor36.field_0)
                idx = 128
                s = 0
                while (uint255(stor36.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor36[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor36.length % 128, data=mem[128 len ceil32(stor36.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor36.length.field_8)
    else:
        if bool(stor36.length) == stor36.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor36.length.field_1 % 128:
            if 31 < stor36.length.field_1 % 128:
                mem[128] = uint256(stor36.field_0)
                idx = 128
                s = 0
                while stor36.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor36[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor36.length % 128, data=mem[128 len ceil32(stor36.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor36.length.field_8)
    mem[ceil32(stor36.length.field_1 % 128) + 192 len ceil32(stor36.length.field_1 % 128)] = mem[128 len ceil32(stor36.length.field_1 % 128)]
    if ceil32(stor36.length.field_1 % 128) > stor36.length.field_1 % 128:
        mem[stor36.length.field_1 % 128 + ceil32(stor36.length.field_1 % 128) + 192] = 0
    return Array(len=stor36.length % 128, data=mem[128 len ceil32(stor36.length.field_1 % 128)], mem[(2 * ceil32(stor36.length.field_1 % 128)) + 192 len 2 * ceil32(stor36.length.field_1 % 128)]), 
}

function sub_9ac6dc41(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
            delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x8f18201a with:
                 gas gas_remaining wei
                args 11, cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)]
            mem[mem[64] len 192] = delegate.return_data[0 len 192]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _43 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 192
            mem[_43] = mem[_41]
            mem[_43 + 32] = mem[_41 + 32]
            mem[_43 + 64] = mem[_41 + 64]
            mem[_43 + 96] = mem[_41 + 96]
            mem[_43 + 128] = mem[_41 + 128]
            mem[_43 + 160] = mem[_41 + 160]
            _57 = mem[_43]
            _59 = mem[_43 + 64]
            _60 = mem[_43 + 96]
            mem[mem[64]] = mem[_43 + 32]
            mem[mem[64] + 32] = _59
            mem[mem[64] + 64] = _60
            emit 0x470fb8ba: mem[mem[64]], _59, _60, _57
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0, 1)
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adminable: caller is not the owner or admin'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
            delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x8f18201a with:
                 gas gas_remaining wei
                args 11, cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)]
            mem[mem[64] len 192] = delegate.return_data[0 len 192]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _44 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 192
            mem[_44] = mem[_42]
            mem[_44 + 32] = mem[_42 + 32]
            mem[_44 + 64] = mem[_42 + 64]
            mem[_44 + 96] = mem[_42 + 96]
            mem[_44 + 128] = mem[_42 + 128]
            mem[_44 + 160] = mem[_42 + 160]
            _62 = mem[_44]
            _64 = mem[_44 + 64]
            _65 = mem[_44 + 96]
            mem[mem[64]] = mem[_44 + 32]
            mem[mem[64] + 32] = _64
            mem[mem[64] + 64] = _65
            emit 0x470fb8ba: mem[mem[64]], _64, _65, _62
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function getLevelNumbers() {
    mem[96] = 0xd8cde1c600000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor27.field_0))
    staticcall address(stor27.field_0).getTierIds() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _53 = mem[s]
        require mem[s] <= test266151307()
        require _4 + mem[s] + 159 < return_data.size + 96
        _56 = mem[_4 + mem[s] + 128]
        if mem[_4 + mem[s] + 128] > test266151307():
            revert with 0, 65
        _69 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + mem[s] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + mem[s] + 128])) + 1
        mem[_69] = _56
        require _4 + _53 + _56 + 64 <= return_data.size
        u = 0
        while u < _56:
            mem[u + _69 + 32] = mem[u + _4 + _53 + 160]
            u = u + 32
            continue 
        if ceil32(_56) > _56:
            mem[_56 + _69 + 32] = 0
        mem[t] = _69
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[ceil32(return_data.size) + 96]
    if mem[ceil32(return_data.size) + 96] > test266151307():
        revert with 0, 65
    _55 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _99 = mem[ceil32(return_data.size) + 96]
        s = 0
        while s < _99:
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _105 = mem[(32 * s) + ceil32(return_data.size) + 128]
            _106 = mem[64]
            _111 = mem[mem[(32 * s) + ceil32(return_data.size) + 128]]
            idx = 0
            while idx < _111:
                mem[idx + _106] = mem[idx + _105 + 32]
                idx = idx + 32
                continue 
            mem[_111 + _106] = 32
            if s >= mem[_55]:
                revert with 0, 50
            mem[(32 * s) + _55 + 32] = stor[sha3(mem[mem[64] len _111 + _106 + -mem[64] + 32])]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 64
        _110 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
        t = 0
        s = ceil32(return_data.size) + 128
        u = mem[64] + 96
        v = mem[64] + (32 * _110) + 96
        while t < _110:
            mem[u] = v + -_104 - 96
            _140 = mem[s]
            _145 = mem[mem[s]]
            mem[v] = mem[mem[s]]
            w = 0
            while w < _145:
                mem[w + v + 32] = mem[w + _140 + 32]
                w = w + 32
                continue 
            if ceil32(_145) > _145:
                mem[_145 + v + 32] = 0
            t = t + 1
            s = s + 32
            u = u + 32
            v = ceil32(_145) + v + 32
            continue 
        mem[_104 + 32] = v - _104
        _144 = mem[_55]
        mem[v] = mem[_55]
        mem[v + 32 len 32 * _144] = mem[_55 + 32 len 32 * _144]
        return memory
          from mem[64]
           len v + (32 * _144) + -mem[64] + 32
    mem[_55 + 32 len 32 * _54] = call.data[calldata.size len 32 * _54]
    _100 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _100:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _108 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _109 = mem[64]
        _113 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        s = 0
        while s < _113:
            mem[s + _109] = mem[s + _108 + 32]
            s = s + 32
            continue 
        mem[_113 + _109] = 32
        if idx >= mem[_55]:
            revert with 0, 50
        mem[(32 * idx) + _55 + 32] = stor[sha3(mem[mem[64] len _113 + _109 + -mem[64] + 32])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _107 = mem[64]
    mem[mem[64]] = 64
    _112 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 96]
    s = 0
    t = ceil32(return_data.size) + 128
    u = mem[64] + 96
    v = mem[64] + (32 * _112) + 96
    while s < _112:
        mem[u] = v + -_107 - 96
        _142 = mem[t]
        _147 = mem[mem[t]]
        mem[v] = mem[mem[t]]
        idx = 0
        while idx < _147:
            mem[idx + v + 32] = mem[idx + _142 + 32]
            idx = idx + 32
            continue 
        if ceil32(_147) > _147:
            mem[_147 + v + 32] = 0
        s = s + 1
        t = t + 32
        u = u + 32
        v = ceil32(_147) + v + 32
        continue 
    mem[_107 + 32] = v - _107
    _146 = mem[_55]
    mem[v] = mem[_55]
    mem[v + 32 len 32 * _146] = mem[_55 + 32 len 32 * _146]
    return memory
      from mem[64]
       len v + (32 * _146) + -mem[64] + 32
}

function sub_0f0b47dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12.length > test266151307():
        revert with 0, 65
    mem[96] = stor12.length
    if not stor12.length:
        if stor12.length > test266151307():
            revert with 0, 65
        mem[(32 * stor12.length) + 128] = stor12.length
        mem[64] = (64 * stor12.length) + 160
        if not stor12.length:
            idx = 0
            while idx < stor12.length:
                if idx >= stor12.length:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor12[idx].field_0
                mem[0] = stor12[idx].field_0
                mem[32] = sha3(address(arg1), 13)
                if idx >= mem[(32 * stor12.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor12.length) + 160] = balances[address(arg1)][stor12[idx].field_0]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * stor12.length) + 160] = 64
            mem[(64 * stor12.length) + 224] = stor12.length
            s = 0
            s = 128
            t = mem[64] + 96
            while stor12.length < stor12.length:
                mem[t] = mem[s]
                s = stor12.length + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(64 * stor12.length) + 192] = t + -(64 * stor12.length) - 160
            _96 = mem[(32 * stor12.length) + 128]
            mem[t] = mem[(32 * stor12.length) + 128]
            mem[t + 32 len 32 * _96] = mem[(32 * stor12.length) + 160 len 32 * _96]
            return memory
              from mem[64]
               len t + (32 * _96) + -mem[64] + 32
        mem[(32 * stor12.length) + 160 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
        idx = 0
        while idx < stor12.length:
            if idx >= stor12.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor12[idx].field_0
            mem[0] = stor12[idx].field_0
            mem[32] = sha3(address(arg1), 13)
            if idx >= mem[(32 * stor12.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor12.length) + 160] = balances[address(arg1)][stor12[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * stor12.length) + 160] = 64
        mem[(64 * stor12.length) + 224] = stor12.length
        s = 0
        s = 128
        t = mem[64] + 96
        while stor12.length < stor12.length:
            mem[t] = mem[s]
            s = stor12.length + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * stor12.length) + 192] = t + -(64 * stor12.length) - 160
        _97 = mem[(32 * stor12.length) + 128]
        mem[t] = mem[(32 * stor12.length) + 128]
        mem[t + 32 len 32 * _97] = mem[(32 * stor12.length) + 160 len 32 * _97]
        return memory
          from mem[64]
           len t + (32 * _97) + -mem[64] + 32
    mem[128 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
    if stor12.length > test266151307():
        revert with 0, 65
    mem[(32 * stor12.length) + 128] = stor12.length
    mem[64] = (64 * stor12.length) + 160
    if not stor12.length:
        idx = 0
        while idx < stor12.length:
            if idx >= stor12.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor12[idx].field_0
            mem[0] = stor12[idx].field_0
            mem[32] = sha3(address(arg1), 13)
            if idx >= mem[(32 * stor12.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor12.length) + 160] = balances[address(arg1)][stor12[idx].field_0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * stor12.length) + 160] = 64
        mem[(64 * stor12.length) + 224] = stor12.length
        s = 0
        s = 128
        t = mem[64] + 96
        while stor12.length < stor12.length:
            mem[t] = mem[s]
            s = stor12.length + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * stor12.length) + 192] = t + -(64 * stor12.length) - 160
        _98 = mem[(32 * stor12.length) + 128]
        mem[t] = mem[(32 * stor12.length) + 128]
        mem[t + 32 len 32 * _98] = mem[(32 * stor12.length) + 160 len 32 * _98]
        return memory
          from mem[64]
           len t + (32 * _98) + -mem[64] + 32
    mem[(32 * stor12.length) + 160 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
    idx = 0
    while idx < stor12.length:
        if idx >= stor12.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor12[idx].field_0
        mem[0] = stor12[idx].field_0
        mem[32] = sha3(address(arg1), 13)
        if idx >= mem[(32 * stor12.length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor12.length) + 160] = balances[address(arg1)][stor12[idx].field_0]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * stor12.length) + 160] = 64
    mem[(64 * stor12.length) + 224] = stor12.length
    s = 0
    s = 128
    t = mem[64] + 96
    while stor12.length < stor12.length:
        mem[t] = mem[s]
        s = stor12.length + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(64 * stor12.length) + 192] = t + -(64 * stor12.length) - 160
    _99 = mem[(32 * stor12.length) + 128]
    mem[t] = mem[(32 * stor12.length) + 128]
    mem[t + 32 len 32 * _99] = mem[(32 * stor12.length) + 160 len 32 * _99]
    return memory
      from mem[64]
       len t + (32 * _99) + -mem[64] + 32
}

function register() {
    if block.timestamp <= startTime:
        mem[100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = 27
        mem[ceil32(return_data.size) + 132] = delegate.return_data[0]
        mem[ceil32(return_data.size) + 164] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
             gas gas_remaining wei
            args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if delegate.return_data[0]:
            revert with 0, 'Sale: Min base allocation reached, registration closed'
        if block.timestamp <= sub_34dadad5:
            revert with 0, 'Sale: Not open for registration'
        if sub_34dadad5 > !registerDuration:
            revert with 0, 17
        if block.timestamp >= sub_34dadad5 + registerDuration:
            revert with 0, 'Sale: Not open for registration'
        mem[(2 * ceil32(return_data.size)) + 100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[(2 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 100] = 27
        mem[(4 * ceil32(return_data.size)) + 132] = delegate.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 164] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
             gas gas_remaining wei
            args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        mem[(4 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if delegate.return_data[0]:
            revert with 0, 'Sale: Not open for registration'
        mem[(6 * ceil32(return_data.size)) + 100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[(6 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x990cdf2900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = 27
        mem[(7 * ceil32(return_data.size)) + 132] = startTime
        mem[(7 * ceil32(return_data.size)) + 164] = delegate.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0x990cdf29 with:
             gas gas_remaining wei
            args 27, startTime, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _62 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require return_data.size - mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 >= 224
        if not bool((8 * ceil32(return_data.size)) + 320 <= test266151307()):
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + 320
        _67 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _69 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 225 < 224 or (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 321 > test266151307():
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 321
        mem[(8 * ceil32(return_data.size)) + 320] = _69
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + _67 + _69 + 32 <= return_data.size
        mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_69)] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + _67 + 128 len ceil32(_69)]
        if ceil32(_69) <= _69:
            mem[(8 * ceil32(return_data.size)) + 96] = (8 * ceil32(return_data.size)) + 320
            require mem[(7 * ceil32(return_data.size)) + _62 + 128] == mem[(7 * ceil32(return_data.size)) + _62 + 159 len 1]
            mem[(8 * ceil32(return_data.size)) + 128] = mem[(7 * ceil32(return_data.size)) + _62 + 128]
            mem[(8 * ceil32(return_data.size)) + 160] = mem[(7 * ceil32(return_data.size)) + _62 + 160]
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + _62 + 192]
            require mem[(7 * ceil32(return_data.size)) + _62 + 224] == bool(mem[(7 * ceil32(return_data.size)) + _62 + 224])
            mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + _62 + 224]
            require mem[(7 * ceil32(return_data.size)) + _62 + 256] == mem[(7 * ceil32(return_data.size)) + _62 + 287 len 1]
            mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + _62 + 256]
            require mem[(7 * ceil32(return_data.size)) + _62 + 288] == bool(mem[(7 * ceil32(return_data.size)) + _62 + 288])
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + _62 + 288]
            _156 = mem[(8 * ceil32(return_data.size)) + 128]
            _157 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = _69
            mem[mem[64] + 128 len ceil32(_69)] = mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_69)]
            if ceil32(_69) > _69:
                mem[_69 + _157 + 128] = 0
            mem[_157 + 32] = uint8(_156)
            mem[_157 + 64] = bool(uint8(stor27.field_176))
            emit Registered(address arg1, string arg2, uint256 arg3, bool arg4):
                            mem[mem[64] len ceil32(_69) + _157 + -mem[64] + 128],
                            msg.sender,
        else:
            mem[_69 + (8 * ceil32(return_data.size)) + 352] = 0
            mem[(8 * ceil32(return_data.size)) + 96] = (8 * ceil32(return_data.size)) + 320
            require mem[(7 * ceil32(return_data.size)) + _62 + 128] == mem[(7 * ceil32(return_data.size)) + _62 + 159 len 1]
            mem[(8 * ceil32(return_data.size)) + 128] = mem[(7 * ceil32(return_data.size)) + _62 + 128]
            mem[(8 * ceil32(return_data.size)) + 160] = mem[(7 * ceil32(return_data.size)) + _62 + 160]
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + _62 + 192]
            require mem[(7 * ceil32(return_data.size)) + _62 + 224] == bool(mem[(7 * ceil32(return_data.size)) + _62 + 224])
            mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + _62 + 224]
            require mem[(7 * ceil32(return_data.size)) + _62 + 256] == mem[(7 * ceil32(return_data.size)) + _62 + 287 len 1]
            mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + _62 + 256]
            require mem[(7 * ceil32(return_data.size)) + _62 + 288] == bool(mem[(7 * ceil32(return_data.size)) + _62 + 288])
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + _62 + 288]
            _159 = mem[(8 * ceil32(return_data.size)) + 128]
            _160 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = _69
            mem[mem[64] + 128 len ceil32(_69)] = mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_69)]
            if ceil32(_69) > _69:
                mem[_69 + mem[64] + 128] = 0
            mem[mem[64] + 32] = uint8(_159)
            mem[_160 + 64] = bool(uint8(stor27.field_176))
            emit Registered(address arg1, string arg2, uint256 arg3, bool arg4):
                            mem[mem[64] len ceil32(_69) + _160 + -mem[64] + 128],
                            msg.sender,
    else:
        if startTime > !duration:
            revert with 0, 17
        if block.timestamp < startTime + duration:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale: Cannot register, sale is live'
        mem[100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = 27
        mem[ceil32(return_data.size) + 132] = delegate.return_data[0]
        mem[ceil32(return_data.size) + 164] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
             gas gas_remaining wei
            args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        mem[ceil32(return_data.size) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if delegate.return_data[0]:
            revert with 0, 'Sale: Min base allocation reached, registration closed'
        if block.timestamp <= sub_34dadad5:
            revert with 0, 'Sale: Not open for registration'
        if sub_34dadad5 > !registerDuration:
            revert with 0, 17
        if block.timestamp >= sub_34dadad5 + registerDuration:
            revert with 0, 'Sale: Not open for registration'
        mem[(2 * ceil32(return_data.size)) + 100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[(2 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 100] = 27
        mem[(4 * ceil32(return_data.size)) + 132] = delegate.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 164] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xd0e2f833 with:
             gas gas_remaining wei
            args 27, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        mem[(4 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        if delegate.return_data[0]:
            revert with 0, 'Sale: Not open for registration'
        mem[(6 * ceil32(return_data.size)) + 100] = 11
        require ext_code.size(0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6)
        delegate 0x1b7752a5812f58fd1c4b7dc3eef206ff084cccb6.0x37ec363b with:
             gas gas_remaining wei
            args 11
        mem[(6 * ceil32(return_data.size)) + 96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_2e82e8ae and stor24 > -1 / sub_2e82e8ae:
            revert with 0, 17
        if maxSell and stor23 > -1 / maxSell:
            revert with 0, 17
        if maxSell * stor23 > !(sub_2e82e8ae * stor24):
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x990cdf2900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = 27
        mem[(7 * ceil32(return_data.size)) + 132] = startTime
        mem[(7 * ceil32(return_data.size)) + 164] = delegate.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 196] = (maxSell * stor23) + (sub_2e82e8ae * stor24)
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0x990cdf29 with:
             gas gas_remaining wei
            args 27, startTime, delegate.return_data[0], (maxSell * stor23) + (sub_2e82e8ae * stor24)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _68 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
        require return_data.size - mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 >= 224
        if not bool((8 * ceil32(return_data.size)) + 320 <= test266151307()):
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + 320
        _71 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _73 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 225 < 224 or (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 321 > test266151307():
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] + 96])) + 321
        mem[(8 * ceil32(return_data.size)) + 320] = _73
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + _71 + _73 + 32 <= return_data.size
        mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_73)] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + _71 + 128 len ceil32(_73)]
        if ceil32(_73) <= _73:
            mem[(8 * ceil32(return_data.size)) + 96] = (8 * ceil32(return_data.size)) + 320
            require mem[(7 * ceil32(return_data.size)) + _68 + 128] == mem[(7 * ceil32(return_data.size)) + _68 + 159 len 1]
            mem[(8 * ceil32(return_data.size)) + 128] = mem[(7 * ceil32(return_data.size)) + _68 + 128]
            mem[(8 * ceil32(return_data.size)) + 160] = mem[(7 * ceil32(return_data.size)) + _68 + 160]
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + _68 + 192]
            require mem[(7 * ceil32(return_data.size)) + _68 + 224] == bool(mem[(7 * ceil32(return_data.size)) + _68 + 224])
            mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + _68 + 224]
            require mem[(7 * ceil32(return_data.size)) + _68 + 256] == mem[(7 * ceil32(return_data.size)) + _68 + 287 len 1]
            mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + _68 + 256]
            require mem[(7 * ceil32(return_data.size)) + _68 + 288] == bool(mem[(7 * ceil32(return_data.size)) + _68 + 288])
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + _68 + 288]
            _162 = mem[(8 * ceil32(return_data.size)) + 128]
            _163 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = _73
            mem[mem[64] + 128 len ceil32(_73)] = mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_73)]
            if ceil32(_73) > _73:
                mem[_73 + _163 + 128] = 0
            mem[_163 + 32] = uint8(_162)
            mem[_163 + 64] = bool(uint8(stor27.field_176))
            emit Registered(address arg1, string arg2, uint256 arg3, bool arg4):
                            mem[mem[64] len ceil32(_73) + _163 + -mem[64] + 128],
                            msg.sender,
        else:
            mem[_73 + (8 * ceil32(return_data.size)) + 352] = 0
            mem[(8 * ceil32(return_data.size)) + 96] = (8 * ceil32(return_data.size)) + 320
            require mem[(7 * ceil32(return_data.size)) + _68 + 128] == mem[(7 * ceil32(return_data.size)) + _68 + 159 len 1]
            mem[(8 * ceil32(return_data.size)) + 128] = mem[(7 * ceil32(return_data.size)) + _68 + 128]
            mem[(8 * ceil32(return_data.size)) + 160] = mem[(7 * ceil32(return_data.size)) + _68 + 160]
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + _68 + 192]
            require mem[(7 * ceil32(return_data.size)) + _68 + 224] == bool(mem[(7 * ceil32(return_data.size)) + _68 + 224])
            mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + _68 + 224]
            require mem[(7 * ceil32(return_data.size)) + _68 + 256] == mem[(7 * ceil32(return_data.size)) + _68 + 287 len 1]
            mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + _68 + 256]
            require mem[(7 * ceil32(return_data.size)) + _68 + 288] == bool(mem[(7 * ceil32(return_data.size)) + _68 + 288])
            mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + _68 + 288]
            _165 = mem[(8 * ceil32(return_data.size)) + 128]
            _166 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = _73
            mem[mem[64] + 128 len ceil32(_73)] = mem[(8 * ceil32(return_data.size)) + 352 len ceil32(_73)]
            if ceil32(_73) > _73:
                mem[_73 + _166 + 128] = 0
            mem[_166 + 32] = uint8(_165)
            mem[_166 + 64] = bool(uint8(stor27.field_176))
            emit Registered(address arg1, string arg2, uint256 arg3, bool arg4):
                            mem[mem[64] len ceil32(_73) + _166 + -mem[64] + 128],
                            msg.sender,
}

function getUserLevelState(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor27.field_168):
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = bool(uint8(stor27.field_168))
        mem[196] = 100
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), bool(uint8(stor27.field_168)), 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _4 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _5 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _5
        require _4 + _5 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_5 + ceil32(return_data.size) + 128] = 0
        require uint32(bool(uint8(stor27.field_168))), 0 == bool(uint32(bool(uint8(stor27.field_168))), 0)
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_5 + mem[64] + 160] = 0
        mem[mem[64] + 64] = 0, Mask(224, 32, bool(uint8(stor27.field_168))) >> 32
        mem[mem[64] + 96] = bool(uint32(bool(uint8(stor27.field_168))), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, bool(uint8(stor27.field_168))) >> 32,
               bool(uint32(bool(uint8(stor27.field_168))), 0),
               _5,
               mem[mem[64] + 160 len ceil32(_5)]
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp > !sub_3d7faab9:
        revert with 0, 17
    if block.timestamp + sub_3d7faab9 > startTime + duration:
        if startTime > !duration:
            revert with 0, 17
        if uint8(stor27.field_168):
            mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
            mem[100] = 27
            mem[132] = arg1
            mem[164] = block.timestamp < startTime + duration
            mem[196] = 100
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 100
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _22 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _26 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _26
            require _22 + _26 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_26)] = mem[_22 + 128 len ceil32(_26)]
            if ceil32(_26) <= _26:
                require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
                _479 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _26
                mem[mem[64] + 160 len ceil32(_26)] = mem[ceil32(return_data.size) + 128 len ceil32(_26)]
                if ceil32(_26) <= _26:
                    mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                    mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                    return 128, 
                           27,
                           address(arg1) << 64,
                           0,
                           Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                           bool(uint32(block.timestamp < startTime + duration), 0),
                           _26,
                           mem[mem[64] + 160 len ceil32(_26)]
                mem[_26 + mem[64] + 160] = 0
                mem[mem[64] + 32] = 27, address(arg1) << 64
                mem[_479 + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                mem[_479 + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                return memory
                  from mem[64]
                   len ceil32(_26) + _479 + -mem[64] + 160
            mem[_26 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            _480 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _26
            mem[mem[64] + 160 len ceil32(_26)] = mem[ceil32(return_data.size) + 128 len ceil32(_26)]
            if ceil32(_26) <= _26:
                mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                return 128, 
                       27,
                       address(arg1) << 64,
                       0,
                       Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                       bool(uint32(block.timestamp < startTime + duration), 0),
                       _26,
                       mem[mem[64] + 160 len ceil32(_26)]
            mem[_26 + mem[64] + 160] = 0
            mem[mem[64] + 32] = 27, address(arg1) << 64
            mem[_480 + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[_480 + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return memory
              from mem[64]
               len ceil32(_26) + _480 + -mem[64] + 160
        if startTime > !duration:
            revert with 0, 17
        if block.timestamp > !sub_3d7faab9:
            revert with 0, 17
        if block.timestamp + sub_3d7faab9 <= startTime + duration:
            mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
            mem[100] = 27
            mem[132] = arg1
            mem[164] = block.timestamp < startTime + duration
            mem[196] = 0
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _51 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _63 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _63
            require _51 + _63 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_63)] = mem[_51 + 128 len ceil32(_63)]
            if ceil32(_63) <= _63:
                require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
                _467 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _63
                mem[mem[64] + 160 len ceil32(_63)] = mem[ceil32(return_data.size) + 128 len ceil32(_63)]
                if ceil32(_63) <= _63:
                    mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                    mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                    return 128, 
                           27,
                           address(arg1) << 64,
                           0,
                           Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                           bool(uint32(block.timestamp < startTime + duration), 0),
                           _63,
                           mem[mem[64] + 160 len ceil32(_63)]
                mem[_63 + mem[64] + 160] = 0
                mem[mem[64] + 32] = 27, address(arg1) << 64
                mem[_467 + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                mem[_467 + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                return memory
                  from mem[64]
                   len ceil32(_63) + _467 + -mem[64] + 160
            mem[_63 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            _468 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _63
            mem[mem[64] + 160 len ceil32(_63)] = mem[ceil32(return_data.size) + 128 len ceil32(_63)]
            if ceil32(_63) <= _63:
                mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
                mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
                return 128, 
                       27,
                       address(arg1) << 64,
                       0,
                       Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                       bool(uint32(block.timestamp < startTime + duration), 0),
                       _63,
                       mem[mem[64] + 160 len ceil32(_63)]
            mem[_63 + mem[64] + 160] = 0
            mem[mem[64] + 32] = 27, address(arg1) << 64
            mem[_468 + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[_468 + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return memory
              from mem[64]
               len ceil32(_63) + _468 + -mem[64] + 160
        if startTime > !duration:
            revert with 0, 17
        if block.timestamp >= startTime + duration:
            mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
            mem[100] = 27
            mem[132] = arg1
            mem[164] = block.timestamp < startTime + duration
            mem[196] = 0
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _73 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _79 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _79
            require _73 + _79 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_79)] = mem[_73 + 128 len ceil32(_79)]
            if ceil32(_79) > _79:
                mem[_79 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _79
            mem[mem[64] + 160 len ceil32(_79)] = mem[ceil32(return_data.size) + 128 len ceil32(_79)]
            if ceil32(_79) > _79:
                mem[_79 + mem[64] + 160] = 0
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                   bool(uint32(block.timestamp < startTime + duration), 0),
                   _79,
                   mem[mem[64] + 160 len ceil32(_79)]
        if startTime > !duration:
            revert with 0, 17
        if startTime + duration < sub_3d7faab9:
            revert with 0, 17
        if startTime + duration - sub_3d7faab9 > !stor7:
            revert with 0, 17
        if block.timestamp < startTime + duration - sub_3d7faab9 + stor7:
            mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
            mem[100] = 27
            mem[132] = arg1
            mem[164] = block.timestamp < startTime + duration
            mem[196] = 35
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 35
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _137 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _156 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _156
            require _137 + _156 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_156)] = mem[_137 + 128 len ceil32(_156)]
            if ceil32(_156) > _156:
                mem[_156 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _156
            mem[mem[64] + 160 len ceil32(_156)] = mem[ceil32(return_data.size) + 128 len ceil32(_156)]
            if ceil32(_156) > _156:
                mem[_156 + mem[64] + 160] = 0
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                   bool(uint32(block.timestamp < startTime + duration), 0),
                   _156,
                   mem[mem[64] + 160 len ceil32(_156)]
        if stor7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if startTime + duration - sub_3d7faab9 > !(2 * stor7):
            revert with 0, 17
        if block.timestamp < startTime + duration - sub_3d7faab9 + (2 * stor7):
            mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
            mem[100] = 27
            mem[132] = arg1
            mem[164] = block.timestamp < startTime + duration
            mem[196] = 80
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 80
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _172 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _197 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _197
            require _172 + _197 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_197)] = mem[_172 + 128 len ceil32(_197)]
            if ceil32(_197) > _197:
                mem[_197 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _197
            mem[mem[64] + 160 len ceil32(_197)] = mem[ceil32(return_data.size) + 128 len ceil32(_197)]
            if ceil32(_197) > _197:
                mem[_197 + mem[64] + 160] = 0
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                   bool(uint32(block.timestamp < startTime + duration), 0),
                   _197,
                   mem[mem[64] + 160 len ceil32(_197)]
        if stor7 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        if startTime + duration - sub_3d7faab9 > !(3 * stor7):
            revert with 0, 17
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp < startTime + duration
        if block.timestamp >= startTime + duration - sub_3d7faab9 + (3 * stor7):
            mem[196] = 10000
            require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
            delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
                 gas gas_remaining wei
                args 0, 27, address(arg1), block.timestamp < startTime + duration, 10000
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            _206 = mem[96 len 4], 0
            require mem[96 len 4], 0 <= test266151307()
            require mem[96 len 4], 0 + 127 < return_data.size + 96
            _231 = mem[mem[96 len 4], 0 + 96]
            if mem[mem[96 len 4], 0 + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _231
            require _206 + _231 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_231)] = mem[_206 + 128 len ceil32(_231)]
            if ceil32(_231) > _231:
                mem[_231 + ceil32(return_data.size) + 128] = 0
            require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _231
            mem[mem[64] + 160 len ceil32(_231)] = mem[ceil32(return_data.size) + 128 len ceil32(_231)]
            if ceil32(_231) > _231:
                mem[_231 + mem[64] + 160] = 0
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp < startTime + duration) >> 32,
                   bool(uint32(block.timestamp < startTime + duration), 0),
                   _231,
                   mem[mem[64] + 160 len ceil32(_231)]
        mem[196] = 200
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp < startTime + duration, 200
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _207 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _232 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _232
        require _207 + _232 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_232)] = mem[_207 + 128 len ceil32(_232)]
        if ceil32(_232) > _232:
            mem[_232 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp < startTime + duration), 0 == bool(uint32(block.timestamp < startTime + duration), 0)
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _232
        mem[mem[64] + 160 len ceil32(_232)] = mem[ceil32(return_data.size) + 128 len ceil32(_232)]
        if ceil32(_232) > _232:
            mem[_232 + mem[64] + 160] = 0
        mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp < startTime + duration) >> 32
        mem[mem[64] + 96] = bool(uint32(block.timestamp < startTime + duration), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, block.timestamp < startTime + duration) >> 32,
               bool(uint32(block.timestamp < startTime + duration), 0),
               _232,
               mem[mem[64] + 160 len ceil32(_232)]
    if uint8(stor27.field_168):
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
        mem[196] = 100
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 100
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _10 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _14 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _14
        require _10 + _14 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_14)] = mem[_10 + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            _465 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _14
            mem[mem[64] + 160 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
            if ceil32(_14) <= _14:
                mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
                mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
                return 128, 
                       27,
                       address(arg1) << 64,
                       0,
                       Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                       bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                       _14,
                       mem[mem[64] + 160 len ceil32(_14)]
            mem[_14 + mem[64] + 160] = 0
            mem[mem[64] + 32] = 27, address(arg1) << 64
            mem[_465 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[_465 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return memory
              from mem[64]
               len ceil32(_14) + _465 + -mem[64] + 160
        mem[_14 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        _466 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _14
        mem[mem[64] + 160 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                   bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                   _14,
                   mem[mem[64] + 160 len ceil32(_14)]
        mem[_14 + mem[64] + 160] = 0
        mem[mem[64] + 32] = 27, address(arg1) << 64
        mem[_466 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[_466 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return memory
          from mem[64]
           len ceil32(_14) + _466 + -mem[64] + 160
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp > !sub_3d7faab9:
        revert with 0, 17
    if block.timestamp + sub_3d7faab9 <= startTime + duration:
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
        mem[196] = 0
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _32 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _41 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _41
        require _32 + _41 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_41)] = mem[_32 + 128 len ceil32(_41)]
        if ceil32(_41) > _41:
            mem[_41 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _41
        mem[mem[64] + 160 len ceil32(_41)] = mem[ceil32(return_data.size) + 128 len ceil32(_41)]
        if ceil32(_41) > _41:
            mem[_41 + mem[64] + 160] = 0
        mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
               bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
               _41,
               mem[mem[64] + 160 len ceil32(_41)]
    if startTime > !duration:
        revert with 0, 17
    if block.timestamp >= startTime + duration:
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
        mem[196] = 0
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _50 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _60 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _60
        require _50 + _60 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_60)] = mem[_50 + 128 len ceil32(_60)]
        if ceil32(_60) <= _60:
            require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            _463 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _60
            mem[mem[64] + 160 len ceil32(_60)] = mem[ceil32(return_data.size) + 128 len ceil32(_60)]
            if ceil32(_60) <= _60:
                mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
                mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
                return 128, 
                       27,
                       address(arg1) << 64,
                       0,
                       Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                       bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                       _60,
                       mem[mem[64] + 160 len ceil32(_60)]
            mem[_60 + mem[64] + 160] = 0
            mem[mem[64] + 32] = 27, address(arg1) << 64
            mem[_463 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[_463 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return memory
              from mem[64]
               len ceil32(_60) + _463 + -mem[64] + 160
        mem[_60 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        _464 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _60
        mem[mem[64] + 160 len ceil32(_60)] = mem[ceil32(return_data.size) + 128 len ceil32(_60)]
        if ceil32(_60) <= _60:
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                   bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                   _60,
                   mem[mem[64] + 160 len ceil32(_60)]
        mem[_60 + mem[64] + 160] = 0
        mem[mem[64] + 32] = 27, address(arg1) << 64
        mem[_464 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[_464 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return memory
          from mem[64]
           len ceil32(_60) + _464 + -mem[64] + 160
    if startTime > !duration:
        revert with 0, 17
    if startTime + duration < sub_3d7faab9:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !stor7:
        revert with 0, 17
    if block.timestamp < startTime + duration - sub_3d7faab9 + stor7:
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
        mem[196] = 35
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 35
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _104 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _123 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _123
        require _104 + _123 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_123)] = mem[_104 + 128 len ceil32(_123)]
        if ceil32(_123) > _123:
            mem[_123 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _123
        mem[mem[64] + 160 len ceil32(_123)] = mem[ceil32(return_data.size) + 128 len ceil32(_123)]
        if ceil32(_123) > _123:
            mem[_123 + mem[64] + 160] = 0
        mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
               bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
               _123,
               mem[mem[64] + 160 len ceil32(_123)]
    if stor7 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !(2 * stor7):
        revert with 0, 17
    if block.timestamp < startTime + duration - sub_3d7faab9 + (2 * stor7):
        mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
        mem[100] = 27
        mem[132] = arg1
        mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
        mem[196] = 80
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 80
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _138 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _161 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _161
        require _138 + _161 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_161)] = mem[_138 + 128 len ceil32(_161)]
        if ceil32(_161) > _161:
            mem[_161 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _161
        mem[mem[64] + 160 len ceil32(_161)] = mem[ceil32(return_data.size) + 128 len ceil32(_161)]
        if ceil32(_161) > _161:
            mem[_161 + mem[64] + 160] = 0
        mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
               bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
               _161,
               mem[mem[64] + 160 len ceil32(_161)]
    if stor7 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if startTime + duration - sub_3d7faab9 > !(3 * stor7):
        revert with 0, 17
    mem[96] = 0xec3f33ae00000000000000000000000000000000000000000000000000000000
    mem[100] = 27
    mem[132] = arg1
    mem[164] = block.timestamp + sub_3d7faab9 > startTime + duration
    if block.timestamp >= startTime + duration - sub_3d7faab9 + (3 * stor7):
        mem[196] = 10000
        require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
        delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
             gas gas_remaining wei
            args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 10000
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _174 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _198 = mem[mem[96 len 4], 0 + 96]
        if mem[mem[96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _198
        require _174 + _198 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_198)] = mem[_174 + 128 len ceil32(_198)]
        if ceil32(_198) <= _198:
            require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            _455 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _198
            mem[mem[64] + 160 len ceil32(_198)] = mem[ceil32(return_data.size) + 128 len ceil32(_198)]
            if ceil32(_198) <= _198:
                mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
                mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
                return 128, 
                       27,
                       address(arg1) << 64,
                       0,
                       Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                       bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                       _198,
                       mem[mem[64] + 160 len ceil32(_198)]
            mem[_198 + mem[64] + 160] = 0
            mem[mem[64] + 32] = 27, address(arg1) << 64
            mem[_455 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[_455 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return memory
              from mem[64]
               len ceil32(_198) + _455 + -mem[64] + 160
        mem[_198 + ceil32(return_data.size) + 128] = 0
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        _456 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _198
        mem[mem[64] + 160 len ceil32(_198)] = mem[ceil32(return_data.size) + 128 len ceil32(_198)]
        if ceil32(_198) <= _198:
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                   bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                   _198,
                   mem[mem[64] + 160 len ceil32(_198)]
        mem[_198 + mem[64] + 160] = 0
        mem[mem[64] + 32] = 27, address(arg1) << 64
        mem[_456 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[_456 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return memory
          from mem[64]
           len ceil32(_198) + _456 + -mem[64] + 160
    mem[196] = 200
    require ext_code.size(0x24465363db62dbb70342b415234380cc2d5d96f1)
    delegate 0x24465363db62dbb70342b415234380cc2d5d96f1.0xec3f33ae with:
         gas gas_remaining wei
        args 0, 27, address(arg1), block.timestamp + sub_3d7faab9 > startTime + duration, 200
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _175 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _199 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _199
    require _175 + _199 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_199)] = mem[_175 + 128 len ceil32(_199)]
    if ceil32(_199) <= _199:
        require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        _457 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _199
        mem[mem[64] + 160 len ceil32(_199)] = mem[ceil32(return_data.size) + 128 len ceil32(_199)]
        if ceil32(_199) <= _199:
            mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
            mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
            return 128, 
                   27,
                   address(arg1) << 64,
                   0,
                   Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
                   bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
                   _199,
                   mem[mem[64] + 160 len ceil32(_199)]
        mem[_199 + mem[64] + 160] = 0
        mem[mem[64] + 32] = 27, address(arg1) << 64
        mem[_457 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[_457 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return memory
          from mem[64]
           len ceil32(_199) + _457 + -mem[64] + 160
    mem[_199 + ceil32(return_data.size) + 128] = 0
    require uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0 == bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
    _458 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _199
    mem[mem[64] + 160 len ceil32(_199)] = mem[ceil32(return_data.size) + 128 len ceil32(_199)]
    if ceil32(_199) <= _199:
        mem[mem[64] + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
        mem[mem[64] + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
        return 128, 
               27,
               address(arg1) << 64,
               0,
               Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32,
               bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0),
               _199,
               mem[mem[64] + 160 len ceil32(_199)]
    mem[_199 + mem[64] + 160] = 0
    mem[mem[64] + 32] = 27, address(arg1) << 64
    mem[_458 + 64] = 0, Mask(224, 32, block.timestamp + sub_3d7faab9 > startTime + duration) >> 32
    mem[_458 + 96] = bool(uint32(block.timestamp + sub_3d7faab9 > startTime + duration), 0)
    return memory
      from mem[64]
       len ceil32(_199) + _458 + -mem[64] + 160
}



}
