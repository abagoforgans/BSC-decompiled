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
const sub_27b14a4b(?) = sha3(0x53544f4b454e5f4f574e45525f5452414e53464552)

const sub_3722cea5(?) = sha3(0x53544f4b454e5f4f505f524f4c455f4d494e54)

const sub_4bdff6c6(?) = address('DDDDDDDDDDDDDDDDDDDD')

const sub_5df79b9f(?) = sha3(Mask(96, 160, 'FARM_OP_ROLE') >> 160)

const sub_79fd4df7(?) = address('ffffffffffffffffffff')

const sub_7c546ff7(?) = (6875 * 10^9 * 3600 * 24 * 3600)

const sub_a8ce1525(?) = sha3(Mask(216, 40, 'STOKEN_OP_ROLE_MINT_APPROVE') >> 40)

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
mapping of uint256 stor121785959439089931510833075708269725628630800155986;

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
    require arg1 == arg1
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
    require arg1 == arg1
    require arg2 == arg2
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
        revert with 0, 'Ownable: caller is not the owner'
    else:
        return 0
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit 0x658be007: address(owner), pendingOwner
    address(owner) = pendingOwner
    pendingOwner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wtf?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'renouncing ownership is blocked'
}

function sub_b251b241(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_32838662 = arg1
}

function sub_0b5164e2(?) payable {
    if not roleAdmin['STOKEN_OP_ROLE_MINT_APPROVE'][1][address(msg.sender)].field_0:
        revert with 0, 'you don't have this right'
    sub_3134fda4Address = 0
    sub_5b6569e5 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pendingOwner = arg1
}

function sub_04b1ba1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3c3d3420Address = address(arg1)
}

function sub_39a15d90(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_43fff4aaAddress = address(arg1)
}

function sub_dada4309(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3dfd2221Address = address(arg1)
}

function pause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eERC20PresetMinterPauser: must hve pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin['PAUSER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eERC20PresetMinterPauser: must hve pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function unLockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(arg1)] > stor454:
        revert with 0, 'bal>_totalSu', 0
    stor454 -= balanceOf[address(arg1)]
    stor452[address(arg1)] = 0
    emit UnLock(balanceOf[address(arg1)], arg1);
}

function lockAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(arg1)] + stor454 < stor454:
        revert with 0, 'SafeMath: addition overflow'
    stor454 += balanceOf[address(arg1)]
    stor452[address(arg1)] = 16
    emit Lock(balanceOf[address(arg1)], arg1);
}

function transferOwnershipImmediately(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'not allowed to transfer owner to address(0)'
    address(owner) = arg1
    emit 0x658be007: arg1, arg1
}

function sub_723373ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    meta[] = Array(len=arg1.length, data=arg1[all])
}

function sub_dcc4a192(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    icon[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_ce229b28(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_3134fda4Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'please finish last start mint action first,pending mint account not 0'
    if not stor51[('name', 'stor5354', 1858306265855254081882991874959622624881757780)][1][address(msg.sender)]:
        revert with 0, 'you don't have this right'
    sub_3134fda4Address = address(arg1)
    sub_5b6569e5 = arg2
}

function sub_6cdaee09(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor51[('name', 'stor5354', 121785959439089931510833075708269725628630800155986)][1][address(msg.sender)]:
        revert with 0, 'you don't have this right'
    if not sub_3c3d3420Address:
        revert with 0, '_stokenContract not inited'
    require ext_code.size(sub_3c3d3420Address)
    call sub_3c3d3420Address.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xef45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_73e98d0c(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin['STOKEN_OP_ROLE_MINT_APPROVE'][1][address(msg.sender)].field_0:
        revert with 0, 'you don't have this right'
    if not sub_3134fda4Address:
        revert with 0, 'there is no pending mint action'
    if sub_5b6569e5 <= 0:
        revert with 0, 'pending mint amount should >0'
    if arg1 != sub_5b6569e5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'please check the pending mint amount with mint admin, not eq'
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
    if not roleAdmin['STOKEN_OP_ROLE_MINT_APPROVE'][1][address(msg.sender)].field_0:
        revert with 0, 'you don't have this right'
    if not sub_3134fda4Address:
        revert with 0, 'there is no pending mint action'
    if sub_5b6569e5 <= 0:
        revert with 0, 'pending mint amount should >0'
    if arg1 != sub_5b6569e5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'please check the pending mint amount with mint admin, not eq'
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

function revokeRole(bytes32 arg1, address arg2) payable {
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

function sub_ec4f7c10(?) payable {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_3c3d3420Address)
    staticcall sub_3c3d3420Address.name() with:
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
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor402)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor402), uint32(stor402), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_515fa34d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 96
    mem[320] = 0xa37d985000000000000000000000000000000000000000000000000000000000
    mem[324] = address(arg1)
    require ext_code.size(sub_43fff4aaAddress)
    staticcall sub_43fff4aaAddress.0xa37d9850 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[320 len 4], address(arg1) << 64
    require mem[320 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[320 len 4], address(arg1) << 64 >= 224
    require bool(ceil32(return_data.size) + 544 <= test266151307())
    mem[64] = ceil32(return_data.size) + 544
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], address(arg1) << 64 + 320]
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    mem[ceil32(return_data.size) + 384] = mem[_5 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    _12 = mem[_5 + 480]
    require mem[_5 + 480] <= test266151307()
    require _5 + mem[_5 + 480] + 351 < return_data.size + 320
    _13 = mem[_5 + mem[_5 + 480] + 320]
    require mem[_5 + mem[_5 + 480] + 320] <= test266151307()
    require (32 * mem[_5 + mem[_5 + 480] + 320]) + 256 >= 224 and ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 480] + 320]) + 576 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 480] + 320]) + 576
    mem[ceil32(return_data.size) + 544] = _13
    require return_data.size >= _5 + _12 + (160 * _13) + 32
    idx = 0
    s = _5 + _12 + 352
    t = ceil32(return_data.size) + 576
    while idx < _13:
        require return_data.size + -s + 320 >= 160
        _38 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_38] = mem[s]
        mem[_38 + 32] = mem[s + 32]
        mem[_38 + 64] = mem[s + 64]
        mem[_38 + 96] = mem[s + 96]
        mem[_38 + 128] = mem[s + 128]
        mem[t] = _38
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 544
    _37 = mem[_5 + 512]
    require mem[_5 + 512] <= test266151307()
    require _5 + mem[_5 + 512] + 351 < return_data.size + 320
    _39 = mem[_5 + mem[_5 + 512] + 320]
    require mem[_5 + mem[_5 + 512] + 320] <= test266151307()
    _45 = mem[64]
    require mem[64] + (32 * mem[_5 + mem[_5 + 512] + 320]) + 32 >= mem[64] and mem[64] + (32 * mem[_5 + mem[_5 + 512] + 320]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_5 + mem[_5 + 512] + 320]) + 32
    mem[_45] = mem[_5 + mem[_5 + 512] + 320]
    require return_data.size >= _5 + _37 + (32 * _39) + 32
    mem[_45 + 32 len 32 * _39] = mem[_5 + _37 + 352 len 32 * _39]
    mem[ceil32(return_data.size) + 512] = _45
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(sub_3c3d3420Address)
    staticcall sub_3c3d3420Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[ceil32(return_data.size) + 320] + mem[_62] < mem[_62]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[ceil32(return_data.size) + 352] < 0:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = mem[ceil32(return_data.size) + 352] + mem[ceil32(return_data.size) + 320] + mem[_62]
    return memory
      from mem[64]
       len 32
}

function sub_82039306(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not roleAdmin[Mask(168, -(8 * ceil32(arg1.length) + -arg1.length + 21) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff58 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 'you don't have this right'
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_3c3d3420Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 192] = 0
    call sub_3c3d3420Address.mem[ceil32(arg1.length) + 192 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 196 len arg1.length - 4]
    if not return_data.size:
        if ext_call.success:
            if arg1.length:
                require arg1.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if arg1.length:
            revert with arg1[all]
        mem[ceil32(arg1.length) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 196] = 32
        mem[ceil32(arg1.length) + 228] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 260 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 260] = 0
        revert with memory
          from ceil32(arg1.length) + 192
           len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 68
    mem[ceil32(arg1.length) + 192] = return_data.size
    mem[ceil32(arg1.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 224] == bool(mem[ceil32(arg1.length) + 224])
            if not mem[ceil32(arg1.length) + 224]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 193] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 197] = 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 229] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 261 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(return_data.size) + 261] = 0
    revert with memory
      from ceil32(arg1.length) + ceil32(return_data.size) + 193
       len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 68
}



}
