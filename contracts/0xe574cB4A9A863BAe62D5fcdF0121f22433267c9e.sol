contract main {




// =====================  Runtime code  =====================


#
#  - sub_00c2b87b(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint8 stor101;
uint8 paused;
mapping of uint8 stor103;
uint256 minStake;
uint256 maxStake;
uint256 rewardRate;
uint256 currentRound;
uint256 stor108;
mapping of struct lastClaimTime;
mapping of uint256 stor111;
address routerContractAddress;
address stor113;

function sub_062774fb(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    return stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768
}

function minStake() {
    return minStake
}

function sub_3900295c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    return stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256, 
           stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0,
           stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512,
           stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor101[address(arg1)])
}

function routerContract() {
    return routerContractAddress
}

function paused() {
    return bool(paused)
}

function sub_6f731284(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    return stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0
}

function rewardRate() {
    return rewardRate
}

function currentRound() {
    return currentRound
}

function owner() {
    return owner
}

function sub_ae6b813a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    return stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256
}

function lastClaimTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTime[address(arg1)].field_0
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor103[address(arg1)])
}

function sub_d6a54067(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    return stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512
}

function maxStake() {
    return maxStake
}

function _fallback() payable {
    revert
}

function sub_1a769456(?) {
    if sub_3900295c[stor107].field_512:
        return not bool(sub_3900295c[stor107].field_512)
    return (currentRound > 0)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function renouncePauser() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor101[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor101[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function sub_7bc05a10(?) {
    require calldata.size - 4 >= 32
    if stor108 < arg1:
        return sub_3900295c[arg1].field_1024
    require ext_code.size(stor113)
    staticcall stor113.0x7bc05a10 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor103[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function pause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor101[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PauserRole: caller does not have the Pauser role'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor101[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PauserRole: caller does not have the Pauser role'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function totalSpend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if lastClaimTime[address(arg1)].field_0:
        return lastClaimTime[address(arg1)].field_512
    require ext_code.size(stor113)
    staticcall stor113.0x72a6f951 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalEarned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if lastClaimTime[address(arg1)].field_0:
        return lastClaimTime[address(arg1)].field_256
    require ext_code.size(stor113)
    staticcall stor113.0x649aca4a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6e6c84d8(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if stor108 < arg1:
        return sub_3900295c[arg1][3][address(arg2)][arg3].field_768
    require ext_code.size(stor113)
    staticcall stor113.0x6e6c84d8 with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_825a5620(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if stor108 < arg1:
        return sub_3900295c[arg1][3][address(arg2)][arg3].field_512
    require ext_code.size(stor113)
    staticcall stor113.0x825a5620 with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setRewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if arg1 <= 0:
        revert with 0, 'Reward rate too low'
    rewardRate = arg1
}

function sub_ed518bd2(?) {
    require calldata.size - 4 >= 64
    if stor108 < arg1:
        if arg2 >= sub_3900295c[arg1].field_1024:
            revert with 0, 50
        return stor[(2 * arg2) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_3900295c', 109)))].field_256
    require ext_code.size(stor113)
    staticcall stor113.0xed518bd2 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_83acb522(?) {
    require calldata.size - 4 >= 64
    if stor108 < arg1:
        if arg2 >= sub_3900295c[arg1].field_1024:
            revert with 0, 50
        return stor[(2 * arg2) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_3900295c', 109)))].field_0
    require ext_code.size(stor113)
    staticcall stor113.0x83acb522 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor101[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PauserRole: caller does not have the Pauser role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor101[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor101[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_8d802cac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(routerContractAddress)
    staticcall routerContractAddress.0x864a11f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8b90a904 with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor103[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor103[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function setMinMaxStake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Problem with min and max stake setup'
    if arg2 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Problem with min and max stake setup'
    minStake = arg1
    maxStake = arg2
}

function getPendingRewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(routerContractAddress)
    staticcall routerContractAddress.0x864a11f7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7a27db57 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(routerContractAddress)
    staticcall routerContractAddress.0xbba48a90 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < minStake:
        return 0
    if ext_call.return_data[0] <= maxStake:
        return ext_call.return_data[0]
    return maxStake
}

function startRound() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_3900295c[stor107].field_512:
        if currentRound:
            if currentRound == -1:
                revert with 0, 17
            currentRound++
        else:
            if 1 > !stor108:
                revert with 0, 17
            currentRound = stor108 + 1
    else:
        if currentRound:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Rounds is currently running! Close it and then create new one.'
        if 1 > !stor108:
            revert with 0, 17
        currentRound = stor108 + 1
    sub_3900295c[stor107].field_256 = block.timestamp
    sub_3900295c[stor107].field_0 = currentRound
}

function sub_08891bfc(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if arg2 <= 0:
        revert with 0, 'Invalid token id'
    if arg4 <= 0:
        revert with 0, 'Fee cannot be 0'
    if sub_3900295c[stor107].field_512:
        revert with 0, 'No round running right now'
    if currentRound <= 0:
        revert with 0, 'No round running right now'
    sub_3900295c[stor107][3][address(arg1)][arg2].field_1024++
    stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0 = arg3
    stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_256 = arg4
    stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_512 = arg5
    stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_768 = 0
    stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_1024 = arg6
}

function getRewardTokens() {
    require ext_code.size(routerContractAddress)
    staticcall routerContractAddress.0x864a11f7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xc4f59f9b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc4f59f9b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require (32 * _9) + _8 + 32 <= return_data.size
    s = (2 * ceil32(return_data.size)) + 128
    idx = ceil32(return_data.size) + _8 + 128
    while idx < (32 * _9) + ceil32(return_data.size) + _8 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    idx = 0
    s = mem[64] + 64
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _17 + (32 * _9) + -mem[64] + 64
}

function endRound() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_3900295c[stor107].field_512:
        revert with 0, 'No round running right now'
    if currentRound <= 0:
        revert with 0, 'No round running right now'
    mem[0] = currentRound
    mem[32] = 109
    idx = 0
    while idx < sub_3900295c[stor107].field_1024:
        mem[32] = 109
        if idx >= sub_3900295c[stor107].field_1024:
            revert with 0, 50
        mem[0] = sha3(currentRound, 109) + 4
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_256
        require ext_code.size(stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_0)
        staticcall stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_0.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        if mem[_27]:
            mem[mem[64]] = 0xb390c0ab00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_256
            mem[mem[64] + 36] = _28
            require ext_code.size(stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_0)
            call stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_0.burn(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[(2 * idx) + ('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))].field_256, _28
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = currentRound
        mem[32] = 109
        idx = idx + 1
        continue 
    sub_3900295c[stor107].field_512 = block.timestamp
}

function sub_42e78b27(?) {
    require calldata.size - 4 >= 224
    require arg5 == address(arg5)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_3900295c[stor107].field_512:
        revert with 0, 'No round running right now'
    if currentRound <= 0:
        revert with 0, 'No round running right now'
    if arg6 <= 0:
        revert with 0, 'Invalid token id'
    if arg7 <= 0:
        revert with 0, 'Invalid card amount'
    if not sub_3900295c[stor107][3][address(arg5)][arg6].field_512:
        sub_3900295c[stor107].field_1024++
        stor[('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))) + (2 * sub_3900295c[stor107].field_1024)].field_0 = address(arg5)
        stor[('array', 4, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))) + (2 * sub_3900295c[stor107].field_1024)].field_256 = arg6
    sub_3900295c[stor107][3][address(arg5)][arg6].field_0 = address(arg5)
    sub_3900295c[stor107][3][address(arg5)][arg6].field_256 = arg6
    if sub_3900295c[stor107][3][address(arg5)][arg6].field_512 > !arg7:
        revert with 0, 17
    sub_3900295c[stor107][3][address(arg5)][arg6].field_512 += arg7
    sub_3900295c[stor107][3][address(arg5)][arg6].field_1024++
    stor[(5 * sub_3900295c[stor107][3][address(arg5)][arg6].field_1024) + ('array', 4, ('map', ('param', 'arg6'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = arg1
    stor[(5 * sub_3900295c[stor107][3][address(arg5)][arg6].field_1024) + ('array', 4, ('map', ('param', 'arg6'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 = arg2
    stor[(5 * sub_3900295c[stor107][3][address(arg5)][arg6].field_1024) + ('array', 4, ('map', ('param', 'arg6'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg5)][arg6].field_1024) + ('array', 4, ('map', ('param', 'arg6'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg5)][arg6].field_1024) + ('array', 4, ('map', ('param', 'arg6'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 = arg3
    require ext_code.size(address(arg5))
    call address(arg5).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg6, arg7, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x47fc21a8: arg1, arg2, arg4, address(arg5), arg6
    return arg6
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Min stake should be greater than 0'
    if arg4 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max stake should be greater than min stake!'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
        if stor103[address(msg.sender)]:
            revert with 0, 'Roles: account already has role'
        stor103[address(msg.sender)] = 1
        emit WhitelistAdminAdded(msg.sender);
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            uint8(stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor101[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor101[address(msg.sender)] = 1
    emit PauserAdded(msg.sender);
    if uint8(stor0.field_8):
        paused = 0
    else:
        uint8(stor0.field_8) = 0
        paused = 0
        uint8(stor0.field_8) = 0
    minStake = arg3
    maxStake = arg4
    rewardRate = 24 * 3600
    routerContractAddress = arg1
    stor113 = arg2
    require ext_code.size(arg2)
    staticcall arg2.0x8a19c8bc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor108 = ext_call.return_data[0]
    currentRound = ext_call.return_data[0]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function points(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not lastClaimTime[address(arg1)].field_0:
        require ext_code.size(stor113)
        staticcall stor113.0x358b8166 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if not lastClaimTime[address(arg1)].field_0:
        if lastClaimTime[address(arg1)].field_256 > -1:
            revert with 0, 17
        if lastClaimTime[address(arg1)].field_256 < lastClaimTime[address(arg1)].field_512:
            revert with 0, 17
        return (lastClaimTime[address(arg1)].field_256 - lastClaimTime[address(arg1)].field_512)
    require ext_code.size(routerContractAddress)
    staticcall routerContractAddress.0xbba48a90 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < lastClaimTime[address(arg1)].field_0:
        revert with 0, 17
    if block.timestamp - lastClaimTime[address(arg1)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(arg1)].field_0:
        revert with 0, 17
    if not rewardRate:
        revert with 0, 18
    if ext_call.return_data[0] < minStake:
        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
            revert with 0, 17
        if lastClaimTime[address(arg1)].field_256 > -1:
            revert with 0, 17
        if lastClaimTime[address(arg1)].field_256 < lastClaimTime[address(arg1)].field_512:
            revert with 0, 17
        return (lastClaimTime[address(arg1)].field_256 - lastClaimTime[address(arg1)].field_512)
    if ext_call.return_data[0] <= maxStake:
        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
            revert with 0, 17
        if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
            revert with 0, 17
        if lastClaimTime[address(arg1)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) < lastClaimTime[address(arg1)].field_512:
            revert with 0, 17
        return (lastClaimTime[address(arg1)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) - lastClaimTime[address(arg1)].field_512)
    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
        revert with 0, 17
    if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12):
        revert with 0, 17
    if lastClaimTime[address(arg1)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12) < lastClaimTime[address(arg1)].field_512:
        revert with 0, 17
    return (lastClaimTime[address(arg1)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12) - lastClaimTime[address(arg1)].field_512)
}

function sub_b928cf5d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if not lastClaimTime[address(arg1)].field_0:
        require ext_code.size(stor113)
        staticcall stor113.0x358b8166 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lastClaimTime[address(arg1)].field_256 = ext_call.return_data[0]
        require ext_code.size(stor113)
        staticcall stor113.0x72a6f951 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        lastClaimTime[address(arg1)].field_512 = ext_call.return_data[0]
    else:
        if not lastClaimTime[address(arg1)].field_0:
            if lastClaimTime[address(arg1)].field_256 > -1:
                revert with 0, 17
        else:
            require ext_code.size(routerContractAddress)
            staticcall routerContractAddress.0xbba48a90 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < lastClaimTime[address(arg1)].field_0:
                revert with 0, 17
            if block.timestamp - lastClaimTime[address(arg1)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(arg1)].field_0:
                revert with 0, 17
            if not rewardRate:
                revert with 0, 18
            if ext_call.return_data[0] < minStake:
                if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                    revert with 0, 17
                if lastClaimTime[address(arg1)].field_256 > -1:
                    revert with 0, 17
            else:
                if ext_call.return_data[0] <= maxStake:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
                        revert with 0, 17
                    lastClaimTime[address(arg1)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12
                else:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12):
                        revert with 0, 17
                    lastClaimTime[address(arg1)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12
    lastClaimTime[address(arg1)].field_0 = block.timestamp
}

function sub_8454ba1e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_3900295c[stor107].field_512:
        revert with 0, 'No round running right now'
    if currentRound <= 0:
        revert with 0, 'No round running right now'
    if arg2 <= 0:
        revert with 0, 'Invalid token id'
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Id is not valid or level is already disabled'
    if sub_3900295c[stor107][3][address(arg1)][arg2].field_1024 < 1:
        revert with 0, 17
    if sub_3900295c[stor107][3][address(arg1)][arg2].field_1024 - 1 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 = stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512 = stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 = stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 = stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024)].field_0
    if not sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 49
    stor[(5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = 0
    stor[(5 * sub_3900295c[stor107][3][address(arg1)][arg2].field_1024) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0 = 0
    sub_3900295c[stor107][3][address(arg1)][arg2].field_1024--
}

function transferPoints(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender:
        if not lastClaimTime[address(msg.sender)].field_0:
            require ext_code.size(stor113)
            staticcall stor113.0x358b8166 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastClaimTime[address(msg.sender)].field_256 = ext_call.return_data[0]
            require ext_code.size(stor113)
            staticcall stor113.0x72a6f951 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastClaimTime[address(msg.sender)].field_512 = ext_call.return_data[0]
        else:
            if not lastClaimTime[address(msg.sender)].field_0:
                if lastClaimTime[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
            else:
                require ext_code.size(routerContractAddress)
                staticcall routerContractAddress.0xbba48a90 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < lastClaimTime[address(msg.sender)].field_0:
                    revert with 0, 17
                if block.timestamp - lastClaimTime[address(msg.sender)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(msg.sender)].field_0:
                    revert with 0, 17
                if not rewardRate:
                    revert with 0, 18
                if ext_call.return_data[0] < minStake:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 > -1:
                        revert with 0, 17
                else:
                    if ext_call.return_data[0] <= maxStake:
                        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                            revert with 0, 17
                        if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
                            revert with 0, 17
                        lastClaimTime[address(msg.sender)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12
                    else:
                        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                            revert with 0, 17
                        if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12):
                            revert with 0, 17
                        lastClaimTime[address(msg.sender)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12
        lastClaimTime[address(msg.sender)].field_0 = block.timestamp
    if arg1:
        if not lastClaimTime[address(arg1)].field_0:
            require ext_code.size(stor113)
            staticcall stor113.0x358b8166 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastClaimTime[address(arg1)].field_256 = ext_call.return_data[0]
            require ext_code.size(stor113)
            staticcall stor113.0x72a6f951 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastClaimTime[address(arg1)].field_512 = ext_call.return_data[0]
        else:
            if not lastClaimTime[address(arg1)].field_0:
                if lastClaimTime[address(arg1)].field_256 > -1:
                    revert with 0, 17
            else:
                require ext_code.size(routerContractAddress)
                staticcall routerContractAddress.0xbba48a90 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < lastClaimTime[address(arg1)].field_0:
                    revert with 0, 17
                if block.timestamp - lastClaimTime[address(arg1)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(arg1)].field_0:
                    revert with 0, 17
                if not rewardRate:
                    revert with 0, 18
                if ext_call.return_data[0] < minStake:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(arg1)].field_256 > -1:
                        revert with 0, 17
                else:
                    if ext_call.return_data[0] <= maxStake:
                        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                            revert with 0, 17
                        if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
                            revert with 0, 17
                        lastClaimTime[address(arg1)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * ext_call.return_data[0] / 10^12
                    else:
                        if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate:
                            revert with 0, 17
                        if lastClaimTime[address(arg1)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12):
                            revert with 0, 17
                        lastClaimTime[address(arg1)].field_256 += (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(arg1)].field_0) / rewardRate * maxStake / 10^12
        lastClaimTime[address(arg1)].field_0 = block.timestamp
    if not lastClaimTime[address(msg.sender)].field_0:
        require ext_code.size(stor113)
        staticcall stor113.0x358b8166 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Amount exceeds point balance'
    else:
        if not lastClaimTime[address(msg.sender)].field_0:
            if lastClaimTime[address(msg.sender)].field_256 > -1:
                revert with 0, 17
            if lastClaimTime[address(msg.sender)].field_256 < lastClaimTime[address(msg.sender)].field_512:
                revert with 0, 17
            if lastClaimTime[address(msg.sender)].field_256 - lastClaimTime[address(msg.sender)].field_512 < arg2:
                revert with 0, 'Amount exceeds point balance'
        else:
            require ext_code.size(routerContractAddress)
            staticcall routerContractAddress.0xbba48a90 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < lastClaimTime[address(msg.sender)].field_0:
                revert with 0, 17
            if block.timestamp - lastClaimTime[address(msg.sender)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(msg.sender)].field_0:
                revert with 0, 17
            if not rewardRate:
                revert with 0, 18
            if ext_call.return_data[0] < minStake:
                if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 < lastClaimTime[address(msg.sender)].field_512:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 - lastClaimTime[address(msg.sender)].field_512 < arg2:
                    revert with 0, 'Amount exceeds point balance'
            else:
                if ext_call.return_data[0] <= maxStake:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) < lastClaimTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) - lastClaimTime[address(msg.sender)].field_512 < arg2:
                        revert with 0, 'Amount exceeds point balance'
                else:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12):
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12) < lastClaimTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12) - lastClaimTime[address(msg.sender)].field_512 < arg2:
                        revert with 0, 'Amount exceeds point balance'
    if lastClaimTime[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    lastClaimTime[address(arg1)].field_256 += arg2
    if lastClaimTime[msg.sender].field_512 > !arg2:
        revert with 0, 17
    lastClaimTime[msg.sender].field_512 += arg2
}

function redeem(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if sub_3900295c[stor107].field_512:
        revert with 0, 'No round running right now'
    if currentRound <= 0:
        revert with 0, 'No round running right now'
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if not lastClaimTime[address(msg.sender)].field_0:
        require ext_code.size(stor113)
        staticcall stor113.0x358b8166 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0:
            revert with 0, 'Redemption exceeds point balance'
        if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
            revert with 0, 50
        if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
            revert with 0, 50
        if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
            revert with 0, 50
        if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512 != 0:
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 >= stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512:
                revert with 0, 'Cannot redeem on this level more than limit'
        if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 != 0:
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 >= stor111[stor107][address(arg1)][arg2][arg3][msg.sender]:
                revert with 0, 'Cannot redeem on this level more than the maxinum per wallet!'
        if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 != msg.value:
            revert with 0, 'Send the proper ETH for the fees'
        if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 > 0:
            require ext_code.size(routerContractAddress)
            staticcall routerContractAddress.0x864a11f7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x5a6cada4 with:
               value stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
            revert with 0, 50
        if lastClaimTime[msg.sender].field_512 > !stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0:
            revert with 0, 17
        lastClaimTime[msg.sender].field_512 += stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0
        require ext_code.size(sub_3900295c[stor107][3][address(arg1)][arg2].field_0)
        call sub_3900295c[stor107][3][address(arg1)][arg2].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg2, 1, 160, 0
    else:
        if not lastClaimTime[address(msg.sender)].field_0:
            if lastClaimTime[address(msg.sender)].field_256 > -1:
                revert with 0, 17
            if lastClaimTime[address(msg.sender)].field_256 < lastClaimTime[address(msg.sender)].field_512:
                revert with 0, 17
            if lastClaimTime[address(msg.sender)].field_256 - lastClaimTime[address(msg.sender)].field_512 < stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0:
                revert with 0, 'Redemption exceeds point balance'
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512 != 0:
                if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 >= stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot redeem on this level more than limit'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 != 0:
                if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 >= stor111[stor107][address(arg1)][arg2][arg3][msg.sender]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Cannot redeem on this level more than the maxinum per wallet!'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 != msg.value:
                revert with 0, 'Send the proper ETH for the fees'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 <= 0:
                if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                    revert with 0, 50
                if lastClaimTime[msg.sender].field_512 > !stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0:
                    revert with 0, 17
                lastClaimTime[msg.sender].field_512 += stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0
                require ext_code.size(sub_3900295c[stor107][3][address(arg1)][arg2].field_0)
                call sub_3900295c[stor107][3][address(arg1)][arg2].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args 0, 0, msg.sender, arg2, 1, 160, 0
            else:
                require ext_code.size(routerContractAddress)
                staticcall routerContractAddress.0x864a11f7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x5a6cada4 with:
                   value stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                    revert with 0, 50
                if lastClaimTime[msg.sender].field_512 > !stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0:
                    revert with 0, 17
                lastClaimTime[msg.sender].field_512 += stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0
                require ext_code.size(sub_3900295c[stor107][3][address(arg1)][arg2].field_0)
                call sub_3900295c[stor107][3][address(arg1)][arg2].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, arg2, 1, 160, 0
        else:
            require ext_code.size(routerContractAddress)
            staticcall routerContractAddress.0xbba48a90 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < lastClaimTime[address(msg.sender)].field_0:
                revert with 0, 17
            if block.timestamp - lastClaimTime[address(msg.sender)].field_0 and 10^12 > -1 / block.timestamp - lastClaimTime[address(msg.sender)].field_0:
                revert with 0, 17
            if not rewardRate:
                revert with 0, 18
            if ext_call.return_data[0] < minStake:
                if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and 0 > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 > -1:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 < lastClaimTime[address(msg.sender)].field_512:
                    revert with 0, 17
                if lastClaimTime[address(msg.sender)].field_256 - lastClaimTime[address(msg.sender)].field_512 < stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0:
                    revert with 0, 'Redemption exceeds point balance'
            else:
                if ext_call.return_data[0] <= maxStake:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and ext_call.return_data[0] > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12):
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) < lastClaimTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * ext_call.return_data[0] / 10^12) - lastClaimTime[address(msg.sender)].field_512 < stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0:
                        revert with 0, 'Redemption exceeds point balance'
                else:
                    if (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate and maxStake > -1 / (10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 > !((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12):
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12) < lastClaimTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    if lastClaimTime[address(msg.sender)].field_256 + ((10^12 * block.timestamp) - (10^12 * lastClaimTime[address(msg.sender)].field_0) / rewardRate * maxStake / 10^12) - lastClaimTime[address(msg.sender)].field_512 < stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0:
                        revert with 0, 'Redemption exceeds point balance'
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512 != 0:
                if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 >= stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_512:
                    revert with 0, 'Cannot redeem on this level more than limit'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 != 0:
                if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_1024 >= stor111[stor107][address(arg1)][arg2][arg3][msg.sender]:
                    revert with 0, 'Cannot redeem on this level more than the maxinum per wallet!'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 != msg.value:
                revert with 0, 'Send the proper ETH for the fees'
            if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 > 0:
                require ext_code.size(routerContractAddress)
                staticcall routerContractAddress.0x864a11f7 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x5a6cada4 with:
                   value stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
                revert with 0, 50
            if lastClaimTime[msg.sender].field_512 > !stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0:
                revert with 0, 17
            lastClaimTime[msg.sender].field_512 += stor[('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109)))))) + (5 * arg3)].field_0
            require ext_code.size(sub_3900295c[stor107][3][address(arg1)][arg2].field_0)
            call sub_3900295c[stor107][3][address(arg1)][arg2].field_0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg2, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_3900295c[stor107][3][address(arg1)][arg2].field_768 > -2:
        revert with 0, 17
    sub_3900295c[stor107][3][address(arg1)][arg2].field_768++
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    if stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768 > -2:
        revert with 0, 17
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_768++
    if stor111[stor107][address(arg1)][arg2][arg3][msg.sender] > -2:
        revert with 0, 17
    stor111[stor107][address(arg1)][arg2][arg3][msg.sender]++
    if arg3 >= sub_3900295c[stor107][3][address(arg1)][arg2].field_1024:
        revert with 0, 50
    emit Redeemed(stor[(5 * arg3) + ('array', 4, ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('stor', ('name', 'stor107', 107)), ('name', 'sub_3900295c', 109))))))].field_0, msg.sender, sub_3900295c[stor107][3][address(arg1)][arg2].field_0, arg2);
}



}
