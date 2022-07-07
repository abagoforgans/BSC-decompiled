contract main {




// =====================  Runtime code  =====================


#
#  - withdrawBEP20(address arg1)
#
const EXECUTOR_ROLE = 0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;
mapping of uint256 timestamp;
uint256 minDelay;
uint256 minDelayReduced;
address devWalletAddress;
array of address beneficiary;
array of struct stor7;

function beneficiaryAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < beneficiary.length
    return beneficiary[arg1]
}

function devWalletAddress() {
    return devWalletAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function beneficiaryRewardFactors(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    return beneficiaryRewardFactors[uint8(arg1)]
}

function minDelayReduced() {
    return minDelayReduced
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function minDelay() {
    return minDelay
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timestamp[arg1]
}

function _fallback() payable {
    revert
}

function isOperationDone(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (1 == timestamp[arg1])
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (1 < timestamp[arg1])
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if 1 >= timestamp[arg1]:
        return (1 < timestamp[arg1])
    return block.timestamp >= timestamp[arg1]
}

function updateMinDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function withdrawBNB() payable {
    if devWalletAddress != msg.sender:
        revert with 0, '!devWalletAddress'
    call devWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateMinDelayReduced(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayReducedChange(minDelayReduced, arg1);
    minDelayReduced = arg1
}

function setDevWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    if devWalletAddress != tx.origin:
        revert with 0, 'tx.origin != devWalletAddress'
    devWalletAddress = arg1
}

function hashOperation(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 320] = sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]
}

function farm(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.farm() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function earn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrapBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.wrapBNB() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if 1 >= timestamp[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
    timestamp[arg1] = 0
    emit Cancelled(arg1);
}

function leverageOnce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.leverageOnce() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deleverageOnce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.deleverageOnce() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc2() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function noTimeLockFunc3(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.noTimeLockFunc3() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function rebalance(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(arg1)
    call arg1.rebalance(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_879f7a34(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    require arg7 == uint16(arg7)
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    require ext_code.size(address(arg1))
    call address(arg1).0xcf78fae2 with:
         gas gas_remaining wei
        args 0, 0, bool(arg3), address(arg4), arg5, arg6, arg7 << 240, bool(arg8), bool(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_1728eb0e(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6][arg7][arg8][arg9]:
        revert with 0, 'TimelockController: operation already scheduled'
    if minDelayReduced + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6][arg7][arg8][arg9] = minDelayReduced + block.timestamp
    emit 0x9f1b2a97: arg2, arg3, arg4, arg5, arg6, arg7, sha3(address(arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9), address(arg1)
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_148a55b8(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg6 == uint16(arg6)
    require arg7 == bool(arg7)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6 << 240][bool(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation already scheduled'
    if minDelayReduced + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6 << 240][bool(arg7)][arg8][arg9] = minDelayReduced + block.timestamp
    emit 0x54daca7f: arg2, arg3, arg4, arg5, arg6 << 240, bool(arg7), arg8, minDelayReduced, sha3(address(arg1), arg2, arg3, arg4, arg5, arg6 << 240, bool(arg7), arg8, arg9), 0, address(arg1)
}

function sub_4376dd94(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2 << 240][arg3 << 240][address(arg4)][address(arg5)][address(arg6)][address(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation already scheduled'
    if minDelayReduced + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2 << 240][arg3 << 240][address(arg4)][address(arg5)][address(arg6)][address(arg7)][arg8][arg9] = minDelayReduced + block.timestamp
    emit 0x66701b5c: address(arg1), arg2 << 240, arg3 << 240, address(arg4), address(arg5), address(arg6), address(arg7), sha3(address(arg1), arg2 << 240, arg3 << 240, address(arg4), address(arg5), address(arg6), address(arg7), arg8, arg9), 0
}

function sub_dc2cbba5(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg8:
        if timestamp[arg8] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(address(arg1))
    call address(arg1).setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
         gas gas_remaining wei
        args arg2, arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6][arg7][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6][arg7][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6][arg7][arg8][arg9] = 1
    stor1 = 1
}

function sub_0c16dbb9(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg6 == uint16(arg6)
    require arg7 == bool(arg7)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg8:
        if timestamp[arg8] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(address(arg1))
    call address(arg1).set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint16 arg5, bool arg6) with:
         gas gas_remaining wei
        args arg2, arg3, arg4, arg5, arg6 << 240, bool(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6 << 240][bool(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6 << 240][bool(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][arg3][arg4][arg5][arg6 << 240][bool(arg7)][arg8][arg9] = 1
    stor1 = 1
}

function sub_aa8962a9(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if arg8:
        if timestamp[arg8] != 1:
            revert with 0, 'TimelockController: missing dependency'
    require ext_code.size(address(arg1))
    call address(arg1).0x9dd7e066 with:
         gas gas_remaining wei
        args arg2 << 240, arg3 << 240, address(arg4), address(arg5), address(arg6), address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= timestamp[address(arg1)][arg2 << 240][arg3 << 240][address(arg4)][address(arg5)][address(arg6)][address(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2 << 240][arg3 << 240][address(arg4)][address(arg5)][address(arg6)][address(arg7)][arg8][arg9]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2 << 240][arg3 << 240][address(arg4)][address(arg5)][address(arg6)][address(arg7)][arg8][arg9] = 1
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if arg6 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = arg6 + block.timestamp
    mem[ceil32(arg3.length) + 320] = arg1
    mem[ceil32(arg3.length) + 352] = arg2
    mem[ceil32(arg3.length) + 384] = 160
    mem[ceil32(arg3.length) + 480] = arg3.length
    mem[ceil32(arg3.length) + 416] = arg4
    mem[ceil32(arg3.length) + 448] = arg6
    emit CallScheduled(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5, bytes32 arg6, uint256 arg7):
                       Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                       mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 160],
                       sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                       0,
}

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128] = 160
    mem[288] = arg1.length
    idx = 0
    s = 320
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[224] = arg4
    mem[256] = arg5
    _12 = mem[64]
    mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
    mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
    mem[(64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384] = sha3(mem[_12 + 32 len mem[_12]])
    return memory
      from (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
       len 32
}

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[arg3.length + 320] = 0
    if arg4:
        if timestamp[arg4] != 1:
            revert with 0, 'TimelockController: missing dependency'
    mem[ceil32(arg3.length) + 320 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + 320] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 324 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'TimelockController: underlying transaction reverted'
    if return_data.size:
        emit CallExecuted(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5), 0);
    else:
        mem[ceil32(arg3.length) + 320] = arg1
        mem[ceil32(arg3.length) + 352] = arg2
        mem[ceil32(arg3.length) + 384] = 96
        mem[ceil32(arg3.length) + 416] = arg3.length
        emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 352 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
                          sha3(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5),
                          0,
    if 1 >= timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation is not ready'
    if block.timestamp < timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5]:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
    stor1 = 1
}

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c, 0) + 1
    if roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][address(msg.sender)].field_0:
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _71 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _73 = sha3(mem[_71 + 32 len mem[_71]])
        mem[0] = sha3(mem[_71 + 32 len mem[_71]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if arg6 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_73] = arg6 + block.timestamp
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < arg3.length
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = 160
            mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 192] = 0
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg6
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _73, idx);
            idx = idx + 1
            continue 
    else:
        mem[0] = 0
        mem[32] = sha3(0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c, 0) + 1
        if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _74 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _76 = sha3(mem[_74 + 32 len mem[_74]])
        mem[0] = sha3(mem[_74 + 32 len mem[_74]])
        if timestamp[mem[0]]:
            revert with 0, 'TimelockController: operation already scheduled'
        if arg6 < minDelay:
            revert with 0, 'TimelockController: insufficient delay'
        if arg6 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        timestamp[_76] = arg6 + block.timestamp
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < arg3.length
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = 160
            mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 192] = 0
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg6
            emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _76, idx);
            idx = idx + 1
            continue 
}

function sub_0a574f50(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender != this.address:
        revert with 0, 'TimelockController: caller must be timelock'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'TimelockController: arrays diff length'
    idx = 0
    s = 0
    while uint8(idx) < ('cd', 36).length:
        require uint8(idx) < ('cd', 36).length
        _308 = mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 160]
        if mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 190 len 2] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + (32 * ('cd', 4).length) + 190 len 2] + s
        continue 
    if uint16(_308) * None > 10000:
        revert with 0, 'TimelockController: rewardFactorsTotal must be max 1000'
    beneficiary.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            beneficiary[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while beneficiary.length > idx:
            beneficiary[idx] = 0
            idx = idx + 1
            continue 
    stor7.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor7.length + 15 / 16 > idx:
            uint16(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 4).length) + 160
        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
            uint256(stor7.field_0) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor7.field_0)
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(('cd', 36).length) >> 4
        s = sha3(7)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(('cd', 36).length) >> 4) + Mask(254, 1, None + -(floor32(('cd', 36).length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(('cd', 36).length) >> 4) + 3) >> 1
        while stor7.length + 15 / 16 > idx:
            uint16(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 64
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = beneficiary.length
    idx = 0
    s = 0
    t = mem[64] + 96
    while idx < beneficiary.length:
        mem[t] = beneficiary[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = (32 * beneficiary.length) + 96
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + 256] = stor7.length
    idx = 0
    s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + 288
    t = 0
    while idx + 15 < stor7.length:
        mem[s] = uint16(stor7[t].field_0)
        mem[s + 32] = uint16(stor7[t].field_16)
        mem[s + 64] = uint16(stor7[t].field_32)
        mem[s + 96] = uint16(stor7[t].field_48)
        mem[s + 128] = uint16(stor7[t].field_64)
        mem[s + 160] = uint16(stor7[t].field_80)
        mem[s + 192] = uint16(stor7[t].field_96)
        mem[s + 224] = uint16(stor7[t].field_112)
        mem[s + 256] = 0
        mem[s + 288] = 0
        mem[s + 320] = 0
        mem[s + 352] = 0
        mem[s + 384] = 0
        mem[s + 416] = 0
        mem[s + 448] = 0
        mem[s + 480] = 0
        idx = idx + 16
        s = s + 512
        t = t + 1
        continue 
    if 16 * Mask(252, 0, stor7.length.field_4) >= stor7.length:
        emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 288]
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 288] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_0)
        if (16 * Mask(252, 0, stor7.length.field_4)) + 1 >= stor7.length:
            emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 320]
        else:
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 320] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_16)
            if (16 * Mask(252, 0, stor7.length.field_4)) + 2 >= stor7.length:
                emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 352]
            else:
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 352] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_32)
                if (16 * Mask(252, 0, stor7.length.field_4)) + 3 >= stor7.length:
                    emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 384]
                else:
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 384] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_48)
                    if (16 * Mask(252, 0, stor7.length.field_4)) + 4 >= stor7.length:
                        emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 416]
                    else:
                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 416] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_64)
                        if (16 * Mask(252, 0, stor7.length.field_4)) + 5 >= stor7.length:
                            emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 448]
                        else:
                            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 448] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_80)
                            if (16 * Mask(252, 0, stor7.length.field_4)) + 6 >= stor7.length:
                                emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 480]
                            else:
                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 480] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_96)
                                if (16 * Mask(252, 0, stor7.length.field_4)) + 7 >= stor7.length:
                                    emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 512]
                                else:
                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 512] = uint16(stor7[Mask(252, 0, stor7.length.field_4)].field_112)
                                    if (16 * Mask(252, 0, stor7.length.field_4)) + 8 >= stor7.length:
                                        emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 544]
                                    else:
                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 544] = 0
                                        if (16 * Mask(252, 0, stor7.length.field_4)) + 9 >= stor7.length:
                                            emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 576]
                                        else:
                                            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 576] = 0
                                            if (16 * Mask(252, 0, stor7.length.field_4)) + 10 >= stor7.length:
                                                emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 608]
                                            else:
                                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 608] = 0
                                                if (16 * Mask(252, 0, stor7.length.field_4)) + 11 >= stor7.length:
                                                    emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 640]
                                                else:
                                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 640] = 0
                                                    if (16 * Mask(252, 0, stor7.length.field_4)) + 12 >= stor7.length:
                                                        emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 672]
                                                    else:
                                                        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 672] = 0
                                                        if (16 * Mask(252, 0, stor7.length.field_4)) + 13 >= stor7.length:
                                                            emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 704]
                                                        else:
                                                            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 704] = 0
                                                            if (16 * Mask(252, 0, stor7.length.field_4)) + 14 >= stor7.length:
                                                                emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 736]
                                                            else:
                                                                mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 736] = 0
                                                                if (16 * Mask(252, 0, stor7.length.field_4)) + 15 >= stor7.length:
                                                                    emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 768]
                                                                else:
                                                                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + 768] = 0
                                                                    emit 0x3652bfe9: mem[mem[64] len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * beneficiary.length) + (512 * Mask(252, 0, stor7.length.field_4)) + -mem[64] + 800]
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, 0) + 1
    if roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][address(msg.sender)].field_0:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _191 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _193 = sha3(mem[_191 + 32 len mem[_191]])
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _303 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _303 + -mem[64] - 4]
                if return_data.size:
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_311] = return_data.size
                    mem[_311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _193, idx);
                idx = idx + 1
                continue 
        else:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_312] = return_data.size
                    mem[_312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _193, idx);
                idx = idx + 1
                continue 
        if 1 >= timestamp[_193]:
            revert with 0, 'TimelockController: operation is not ready'
        if block.timestamp < timestamp[_193]:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_193] = 1
    else:
        mem[0] = 0
        mem[32] = sha3(0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e, 0) + 1
        if not roleAdmin[0xc1d8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e][1][0].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: sender requires permission'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        mem[128] = 160
        mem[288] = arg1.length
        idx = 0
        s = 320
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[160] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[(32 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[192] = (32 * arg1.length) + (32 * arg2.length) + 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 352] = arg3.length
        idx = 0
        s = arg3 + 36
        t = (32 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[t + cd[(arg3 + cd[s] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        _194 = mem[64]
        mem[mem[64]] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 352
        mem[64] = (64 * arg3.length) + (32 * arg1.length) + (32 * arg2.length) + 384
        _196 = sha3(mem[_194 + 32 len mem[_194]])
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]) with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                if return_data.size:
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_313] = return_data.size
                    mem[_313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _196, idx);
                idx = idx + 1
                continue 
        else:
            mem[0] = arg4
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                require idx < arg2.length
                require idx < arg3.length
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _306 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _306 + -mem[64] - 4]
                if return_data.size:
                    _314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_314] = return_data.size
                    mem[_314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[mem[64] + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _196, idx);
                idx = idx + 1
                continue 
        if 1 >= timestamp[_196]:
            revert with 0, 'TimelockController: operation is not ready'
        if block.timestamp < timestamp[_196]:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_196] = 1
    stor1 = 1
}



}
