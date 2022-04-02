contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, address arg3)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(address arg1, uint256 arg2)
#  - burn(uint256 arg1)
#  - initialize(string arg1, string arg2)
#  - burnFrom(address arg1, uint256 arg2)
#  - initialize()
#  - transfer(address arg1, uint256 arg2)
#
const sub_27b14a4b(?) = sha3(0xef53544f4b454e5f4f574e45525f5452414e534645)

const sub_3722cea5(?) = sha3(0x53544f4b454e5f4f505f524f4c455f4d494e54)

const sub_4bdff6c6(?) = address('DDDDDDDDDDDDDDDDDDDD')

const sub_5df79b9f(?) = sha3(Mask(96, 160, 'FARM_OP_ROLE') >> 160)

const sub_79fd4df7(?) = address('ffffffffffffffffffff')

const sub_7c546ff7(?) = (6875 * 10^9 * 3600 * 24 * 3600)

const sub_a8ce1525(?) = sha3(0x6553544f4b454e5f4f505f524f4c455f4d494e545f415050524f56)

const sub_d02fd21a(?) = 0x8888888888888888888888888888888888888888

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)

const PAUSER_ROLE = sha3(Mask(88, 168, 'PAUSER_ROLE') >> 168)


array of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 paused;
address pendingOwner;
uint32 stor402;
address owner;
uint256 stor402;
mapping of uint256 stor452;
uint8 initialized; offset 160
address devaddr;
uint256 stor454;
array of uint256 icon;
array of uint256 meta;
address sub_43fff4aaAddress;
address sub_3dfd2221Address;
address sub_3c3d3420Address;
address sub_3134fda4Address;
uint256 sub_5b6569e5;
uint256 sub_32838662;
mapping of uint256 stor1858306265855254081882991874959622624881757780;
mapping of uint256 stor349774617726144742495644866721177070313504716834373;
mapping of uint256 stor41682895150863588246931896305685636379633013176892952122187992918;

function name() payable {
    return name[0 len name.length]
}

function initialized() payable {
    return bool(initialized)
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_3134fda4(?) payable {
    return sub_3134fda4Address
}

function decimals() payable {
    return decimals
}

function sub_32838662(?) payable {
    return sub_32838662
}

function sub_3c3d3420(?) payable {
    return sub_3c3d3420Address
}

function sub_3dfd2221(?) payable {
    return sub_3dfd2221Address
}

function sub_43fff4aa(?) payable {
    return sub_43fff4aaAddress
}

function sub_5b6569e5(?) payable {
    return sub_5b6569e5
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x71456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function icon() payable {
    return icon[0 len icon.length]
}

function meta() payable {
    return meta[0 len meta.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function devaddr() payable {
    return devaddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function finishMinting() payable {
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    else:
        return 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wtf?'
    devaddr = arg1
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit 0x728be007: address(owner), pendingOwner
    address(owner) = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    revert with 0, 'renouncing ownership is blocked'
}

function sub_04b1ba1f(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_3c3d3420Address = arg1
}

function sub_39a15d90(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_43fff4aaAddress = arg1
}

function sub_dada4309(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_3dfd2221Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    pendingOwner = arg1
}

function sub_0b5164e2(?) payable {
    if not stor51[('name', 'stor6553', 41682895150863588246931896305685636379633013176892952122187992918)][1][address(msg.sender)]:
        revert with 0, 'eyou don't have this right'
    sub_3134fda4Address = 0
    sub_5b6569e5 = 0
}

function sub_723373ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    meta[] = Array(len=arg1.length, data=arg1[all])
}

function sub_dcc4a192(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    icon[] = Array(len=arg1.length, data=arg1[all])
}

function unLockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if balanceOf[address(arg1)] > stor454:
        revert with 0, 'SupplyLocked'
    stor454 -= balanceOf[address(arg1)]
    stor452[address(arg1)] = 0
    emit UnLock(balanceOf[address(arg1)], arg1);
}

function lockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if balanceOf[address(arg1)] + stor454 < stor454:
        revert with 0, 'SafeMath: addition overflow'
    stor454 += balanceOf[address(arg1)]
    stor452[address(arg1)] = 16
    emit Lock(balanceOf[address(arg1)], arg1);
}

function pause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7345524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[219 len 9]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6545524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[221 len 7]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnershipImmediately(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6e6e6f7420616c6c6f77656420746f207472616e73666572206f776e657220746f20616464726573732830,
                    mem[207 len 21]
    address(owner) = arg1
    emit 0x728be007: arg1, arg1
}

function sub_6cdaee09(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'storEF53', 349774617726144742495644866721177070313504716834373)][1][address(msg.sender)]:
        revert with 0, 'eyou don't have this right'
    if not sub_3c3d3420Address:
        revert with 0, '_stokenContract not inited'
    require ext_code.size(sub_3c3d3420Address)
    call sub_3c3d3420Address.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce229b28(?) payable {
    require calldata.size - 4 >= 64
    if sub_3134fda4Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x6d706c656173652066696e697368206c617374207374617274206d696e7420616374696f6e2066697273742c70656e64696e67206d696e74206163636f756e74206e6f7420,
                    mem[233 len 27]
    if not stor51[('name', 'stor5354', 1858306265855254081882991874959622624881757780)][1][address(msg.sender)]:
        revert with 0, 'eyou don't have this right'
    sub_3134fda4Address = arg1
    sub_5b6569e5 = arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_73e98d0c(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor6553', 41682895150863588246931896305685636379633013176892952122187992918)][1][address(msg.sender)]:
        revert with 0, 'eyou don't have this right'
    if not sub_3134fda4Address:
        revert with 0, 'there is no pending mint action'
    if sub_5b6569e5 <= 0:
        revert with 0, 'pending mint amount should >0'
    if arg1 != sub_5b6569e5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0xfe706c6561736520636865636b207468652070656e64696e67206d696e7420616d6f756e742077697468206d696e742061646d696e2c206e6f742065,
                    mem[224 len 4]
    require ext_code.size(sub_3c3d3420Address)
    call sub_3c3d3420Address.0x53f8fc20 with:
         gas gas_remaining wei
        args sub_3134fda4Address, sub_5b6569e5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3134fda4Address = 0
    sub_5b6569e5 = 0
}

function sub_bbd08ce0(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor6553', 41682895150863588246931896305685636379633013176892952122187992918)][1][address(msg.sender)]:
        revert with 0, 'eyou don't have this right'
    if not sub_3134fda4Address:
        revert with 0, 'there is no pending mint action'
    if sub_5b6569e5 <= 0:
        revert with 0, 'pending mint amount should >0'
    if arg1 != sub_5b6569e5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0xfe706c6561736520636865636b207468652070656e64696e67206d696e7420616d6f756e742077697468206d696e742061646d696e2c206e6f742065,
                    mem[224 len 4]
    require ext_code.size(sub_3c3d3420Address)
    call sub_3c3d3420Address.0x40c10f19 with:
         gas gas_remaining wei
        args sub_3134fda4Address, sub_5b6569e5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3134fda4Address = 0
    sub_5b6569e5 = 0
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
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

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor402)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor402):
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_82039306(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[0] = msg.sender
    mem[32] = sha3(sha3(Mask(168, -(8 * ceil32(arg1.length) + -arg1.length + 21) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 21) + 256), 51) + 1
    if not roleAdmin[Mask(168, -(8 * ceil32(arg1.length) + -arg1.length + 21) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff58 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 'eyou don't have this right'
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(arg1.length) + 298 len 26]
    if not ext_code.size(sub_3c3d3420Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    call sub_3c3d3420Address.mem[ceil32(arg1.length) + 192 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 196 len arg1.length - 4]
    if not return_data.size:
        if ext_call.success:
            if arg1.length:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(arg1.length) + 302 len 22]
        if arg1.length:
            revert with arg1[all]
        mem[ceil32(arg1.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 196] = 32
        mem[ceil32(arg1.length) + 228] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[ceil32(arg1.length) + 260] = 'SafeERC20: low-level call failed'
            mem[ceil32(arg1.length) + 292 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 1)] = mem[ceil32(arg1.length) + 192 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 1)]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            revert with memory
              from ceil32(arg1.length) + 192
               len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 68
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 260] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 292 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        revert with memory
          from ceil32(arg1.length) + 192
           len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 100
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 193
    mem[ceil32(arg1.length) + 192] = return_data.size
    mem[ceil32(arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + 224]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 303 len 22]
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 197] = 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 229] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 261] = 'SafeERC20: low-level call failed'
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 293 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 1)] = mem[ceil32(arg1.length) + 192 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 1)]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        revert with memory
          from ceil32(arg1.length) + ceil32(return_data.size) + 193
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(return_data.size) + 261] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 293 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    revert with memory
      from ceil32(arg1.length) + ceil32(return_data.size) + 193
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 100
}



}
