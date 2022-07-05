contract main {




// =====================  Runtime code  =====================


#
#  - unsubscribe(uint256 arg1)
#
const MODERATOR_ROLE = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f

const DEFAULT_ADMIN_ROLE = 0

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


uint8 stor0;
mapping of struct roleAdmin;
address owner;
address stor3;
uint256 poolId;
address poolOwner;
uint256 createdOn;
uint256 sub_54a03503;
uint256 sub_71ff00f8;
uint256 sub_a7164af6;
uint256 sub_aca63162;
uint256 sub_1b5465bc;
uint256 sub_ccd07e1d;
uint256 sub_be016e22;
uint256 sub_129d7b6b;
uint256 sub_003f1833;
mapping of struct stor16;
mapping of uint256 stor17;
array of uint256 stor18;
address poolManagerAddress;
address forwarderAddress;

function sub_003f1833(?) payable {
    return sub_003f1833
}

function sub_129d7b6b(?) payable {
    return sub_129d7b6b
}

function getTotalSubscriptions() payable {
    return stor18.length
}

function sub_1b5465bc(?) payable {
    return sub_1b5465bc
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function poolId() payable {
    return poolId
}

function sub_54a03503(?) payable {
    return sub_54a03503
}

function paused() payable {
    return bool(stor0)
}

function sub_71ff00f8(?) payable {
    return sub_71ff00f8
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function createdOn() payable {
    return createdOn
}

function sub_a7164af6(?) payable {
    return sub_a7164af6
}

function sub_aca63162(?) payable {
    return sub_aca63162
}

function sub_be016e22(?) payable {
    return sub_be016e22
}

function sub_ccd07e1d(?) payable {
    return sub_ccd07e1d
}

function poolOwner() payable {
    return poolOwner
}

function poolManager() payable {
    return poolManagerAddress
}

function forwarder() payable {
    return forwarderAddress
}

function _fallback() payable {
    revert
}

function sub_d01049b1(?) payable {
    return block.timestamp >= sub_71ff00f8
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor3)
}

function sub_93f09769(?) payable {
    if block.timestamp < sub_ccd07e1d:
        return block.timestamp >= sub_ccd07e1d
    return (block.timestamp < sub_be016e22)
}

function isLocked() payable {
    if block.timestamp >= sub_be016e22:
        if block.timestamp < sub_71ff00f8:
            return (block.timestamp < sub_71ff00f8)
    return (sub_1b5465bc == sub_aca63162)
}

function sub_9fe623d9(?) payable {
    if stor0:
        return not bool(stor0)
    if block.timestamp < sub_ccd07e1d:
        return block.timestamp >= sub_ccd07e1d
    return (block.timestamp < sub_be016e22)
}

function sub_238eb176(?) payable {
    if stor0:
        return not bool(stor0)
    if block.timestamp >= sub_ccd07e1d:
        if block.timestamp < sub_be016e22:
            return (block.timestamp < sub_be016e22)
    return block.timestamp >= sub_71ff00f8
}

function sub_e8f382a0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18.length:
        return 0
    if stor17[arg1] >= stor18.length:
        revert with 'NH{q', 50
    if stor18[stor17[arg1]] != arg1:
        return (stor18[stor17[arg1]] == arg1)
    return (stor16[arg1].field_1280 == this.address)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceOwnership() payable {
    if stor3 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e5dea792(?) payable {
    require ext_code.size(forwarderAddress)
    staticcall forwarderAddress.0x8e6e9244 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        if stor3 != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
}

function sub_53e77fd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor18.length:
        revert with 'NH{q', 50
    if not stor18.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FarmBitPool: subscription does not exist!'
    if stor17[stor18[arg1]] >= stor18.length:
        revert with 'NH{q', 50
    if stor18[stor17[stor18[arg1]]] != stor18[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FarmBitPool: subscription does not exist!'
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.receiptToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor18[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return stor16[stor18[arg1]].field_512, 
           stor16[stor18[arg1]].field_768,
           stor16[stor18[arg1]].field_1280,
           address(ext_call.return_data[0])
}

function busdBalance() payable {
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.receiptToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9ef6b728 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).busdToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_74b505dc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(msg.sender)].field_0:
            sub_129d7b6b = cd[4]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    else:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            sub_129d7b6b = cd[4]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_1784ba47(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if roleAdmin[0][address(msg.sender)].field_0:
            sub_003f1833 = cd[4]
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            sub_003f1833 = cd[4]
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function pause() payable {
    if stor3 != msg.sender:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                idx = 65
                s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    if stor3 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function resume() payable {
    if stor3 != msg.sender:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                idx = 65
                s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    if stor3 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function sub_ef225dcf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(msg.sender)].field_0:
            if cd[4] <= 0:
                revert with 0, 'FarmBitPool: Invalid value', 0
            if cd[4] >= sub_be016e22:
                revert with 0, 'FarmBitPool: subscription start date is after end date'
            sub_ccd07e1d = cd[4]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    else:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            if cd[4] <= 0:
                revert with 0, 'FarmBitPool: Invalid value', 0
            if cd[4] >= sub_be016e22:
                revert with 0, 'FarmBitPool: subscription start date is after end date'
            sub_ccd07e1d = cd[4]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_3fb2eeb2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(msg.sender)].field_0:
            if cd[4] <= 0:
                revert with 0, 'FarmBitPool: Invalid value', 0
            if cd[4] <= block.timestamp:
                revert with 0, 'FarmBitPool: asset maturity date is before current date'
            sub_71ff00f8 = cd[4]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    else:
        if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            if cd[4] <= 0:
                revert with 0, 'FarmBitPool: Invalid value', 0
            if cd[4] <= block.timestamp:
                revert with 0, 'FarmBitPool: asset maturity date is before current date'
            sub_71ff00f8 = cd[4]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            idx = 65
            s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_df14f3e1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if not roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                idx = 65
                s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    if cd[4] <= 0:
        revert with 0, 'FarmBitPool: Invalid value', 0
    if sub_1b5465bc >= sub_aca63162:
        revert with 0, 'FarmBitPool: pool is already filled'
    if cd[4] >= sub_aca63162:
        revert with 0, 'FarmBitPool: pool is already filled'
    sub_aca63162 = cd[4]
}

function sub_22c239bc(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == cd[4]
    if stor3 != msg.sender:
        if not roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                idx = 65
                s = 0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
    if cd[4] <= 0:
        revert with 0, 'FarmBitPool: Invalid value', 0
    if cd[4] <= sub_ccd07e1d:
        revert with 0, 'FarmBitPool: subscription end date is before start date'
    if sub_71ff00f8 < sub_be016e22:
        revert with 'NH{q', 17
    sub_71ff00f8 -= sub_be016e22
    sub_be016e22 = cd[4]
    if sub_71ff00f8 > -sub_be016e22 - 1:
        revert with 'NH{q', 17
    sub_71ff00f8 += sub_be016e22
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
            if roleAdmin[arg1][address(arg2)].field_0:
                roleAdmin[arg1][address(arg2)].field_0 = 0
                if stor3 != msg.sender:
                    emit RoleRevoked(arg1, arg2, msg.sender);
                else:
                    emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            if roleAdmin[arg1][address(arg2)].field_0:
                roleAdmin[arg1][address(arg2)].field_0 = 0
                if stor3 != msg.sender:
                    emit RoleRevoked(arg1, arg2, msg.sender);
                else:
                    emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
            if not roleAdmin[arg1][address(arg2)].field_0:
                roleAdmin[arg1][address(arg2)].field_0 = 1
                if stor3 != msg.sender:
                    emit RoleGranted(arg1, arg2, msg.sender);
                else:
                    emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            if not roleAdmin[arg1][address(arg2)].field_0:
                roleAdmin[arg1][address(arg2)].field_0 = 1
                if stor3 != msg.sender:
                    emit RoleGranted(arg1, arg2, msg.sender);
                else:
                    emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function subscribe(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'Pausable: paused'
    if block.timestamp < sub_ccd07e1d:
        revert with 0, 'FarmBitPool: subscription is closed'
    if block.timestamp >= sub_be016e22:
        revert with 0, 'FarmBitPool: subscription is closed'
    if sub_1b5465bc > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_1b5465bc + arg1 > sub_aca63162:
        revert with 0, 'FarmBitPool: subscription amount exceeds the remaining amount for this pool'
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.receiptToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if stor3 != msg.sender:
        call address(ext_call.return_data[0]).0x62bff6f with:
             gas gas_remaining wei
            args msg.sender, arg1, poolId, sub_54a03503, sub_a7164af6, this.address
    else:
        call address(ext_call.return_data[0]).0x62bff6f with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg1, poolId, sub_54a03503, sub_a7164af6, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    if not ext_call.return_data[0]:
        revert with 0, 'UnorderedKeySet(100) - Key cannot be 0x0'
    if stor18.length:
        if stor17[ext_call.return_data[0]] >= stor18.length:
            revert with 'NH{q', 50
        if stor18[stor17[ext_call.return_data[0]]] == ext_call.return_data[0]:
            revert with 0, 'UnorderedKeySet(101) - Key already exists in the set.'
    stor18.length++
    stor18[stor18.length] = ext_call.return_data[0]
    if stor18.length < 1:
        revert with 'NH{q', 17
    stor17[ext_call.return_data[0]] = stor18.length - 1
    stor16[ext_call.return_data[0]].field_0 = ext_call.return_data[0]
    stor16[ext_call.return_data[0]].field_256 = ext_call.return_data[32]
    stor16[ext_call.return_data[0]].field_512 = ext_call.return_data[64]
    stor16[ext_call.return_data[0]].field_768 = ext_call.return_data[96]
    stor16[ext_call.return_data[0]].field_1024 = ext_call.return_data[128]
    stor16[ext_call.return_data[0]].field_1280 = ext_call.return_data[172 len 20]
    if sub_1b5465bc > -ext_call.return_data[64] - 1:
        revert with 'NH{q', 17
    sub_1b5465bc += ext_call.return_data[64]
    if sub_1b5465bc == sub_aca63162:
        if sub_71ff00f8 < sub_be016e22:
            revert with 'NH{q', 17
        sub_71ff00f8 -= sub_be016e22
        sub_be016e22 = block.timestamp
        if sub_71ff00f8 > -sub_be016e22 - 1:
            revert with 'NH{q', 17
        sub_71ff00f8 += sub_be016e22
    emit 0x6a2b70dd: ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[172 len 20]
}

function sub_1d6526ac(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    if stor3 != msg.sender:
        if roleAdmin[0][address(msg.sender)].field_0:
            require ext_code.size(forwarderAddress)
            staticcall forwarderAddress.0x8e6e9244 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            require ext_code.size(forwarderAddress)
            staticcall forwarderAddress.0x8e6e9244 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_291fbf68(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    if stor3 != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[352] = 'AccessControl: account '
            mem[375 len 64] = 0, mem[129 len 63]
            mem[417] = ' is missing role '
            mem[434 len 96] = 0, mem[225 len 95]
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = mem[320]
            mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
            if ceil32(mem[320]) > mem[320]:
                mem[mem[320] + 568] = 0
            revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    else:
        if not roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[352] = 'AccessControl: account '
            mem[375 len 64] = 0, mem[129 len 63]
            mem[417] = ' is missing role '
            mem[434 len 96] = 0, mem[225 len 95]
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = mem[320]
            mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
            if ceil32(mem[320]) > mem[320]:
                mem[mem[320] + 568] = 0
            revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    require ext_code.size(poolManagerAddress)
    staticcall poolManagerAddress.receiptToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x9ef6b728 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).busdToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[4]), cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setup(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    if stor3 != msg.sender:
        if not roleAdmin[0][address(msg.sender)].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[352] = 'AccessControl: account '
            mem[375 len 64] = 0, mem[129 len 63]
            mem[417] = ' is missing role '
            mem[434 len 96] = 0, mem[225 len 95]
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = mem[320]
            mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
            if ceil32(mem[320]) > mem[320]:
                mem[mem[320] + 568] = 0
            revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    else:
        if not roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                continue 
            mem[352] = 'AccessControl: account '
            mem[375 len 64] = 0, mem[129 len 63]
            mem[417] = ' is missing role '
            mem[434 len 96] = 0, mem[225 len 95]
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = mem[320]
            mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
            if ceil32(mem[320]) > mem[320]:
                mem[mem[320] + 568] = 0
            revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
    poolId = arg1
    poolOwner = arg2
    createdOn = arg3
    sub_54a03503 = arg4
    sub_a7164af6 = arg5
    if arg5 and 24 * 3600 > -1 / arg5:
        revert with 'NH{q', 17
    if arg8 > (-86400 * arg5) - 1:
        revert with 'NH{q', 17
    sub_71ff00f8 = arg8 + (24 * 3600 * arg5)
    sub_aca63162 = arg6
    sub_ccd07e1d = arg7
    sub_be016e22 = arg8
    sub_129d7b6b = arg10
    sub_003f1833 = arg9
    if roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(arg2)].field_0:
        if stor3 != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    else:
        roleAdmin[0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f][address(arg2)].field_0 = 1
        if stor3 != msg.sender:
            emit RoleGranted(0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f, arg2, msg.sender);
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            emit RoleGranted(0x71f3d55856e4058ed06ee057d79ada615f65cdf5f9ee88181b914225088f834f, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg2
    emit OwnershipTransferred(owner, arg2);
}

function getData() payable {
    if sub_71ff00f8 <= 0:
        if sub_be016e22 <= 0:
            if sub_ccd07e1d <= 0:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d <= block.timestamp:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d < block.timestamp:
                revert with 'NH{q', 17
            return sub_1b5465bc, sub_aca63162, 0, sub_ccd07e1d - block.timestamp, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_be016e22 <= block.timestamp:
            if sub_ccd07e1d <= 0:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d <= block.timestamp:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d < block.timestamp:
                revert with 'NH{q', 17
            return sub_1b5465bc, sub_aca63162, 0, sub_ccd07e1d - block.timestamp, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_be016e22 < block.timestamp:
            revert with 'NH{q', 17
        if sub_ccd07e1d <= 0:
            return sub_1b5465bc, sub_aca63162, 0, 0, sub_be016e22 - block.timestamp, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d <= block.timestamp:
            return sub_1b5465bc, sub_aca63162, 0, 0, sub_be016e22 - block.timestamp, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d < block.timestamp:
            revert with 'NH{q', 17
        return sub_1b5465bc, 
               sub_aca63162,
               0,
               sub_ccd07e1d - block.timestamp,
               sub_be016e22 - block.timestamp,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_71ff00f8 <= block.timestamp:
        if sub_be016e22 <= 0:
            if sub_ccd07e1d <= 0:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d <= block.timestamp:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d < block.timestamp:
                revert with 'NH{q', 17
            return sub_1b5465bc, sub_aca63162, 0, sub_ccd07e1d - block.timestamp, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_be016e22 <= block.timestamp:
            if sub_ccd07e1d <= 0:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d <= block.timestamp:
                return sub_1b5465bc, sub_aca63162, 0, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
            if sub_ccd07e1d < block.timestamp:
                revert with 'NH{q', 17
            return sub_1b5465bc, sub_aca63162, 0, sub_ccd07e1d - block.timestamp, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_be016e22 < block.timestamp:
            revert with 'NH{q', 17
        if sub_ccd07e1d <= 0:
            return sub_1b5465bc, sub_aca63162, 0, 0, sub_be016e22 - block.timestamp, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d <= block.timestamp:
            return sub_1b5465bc, sub_aca63162, 0, 0, sub_be016e22 - block.timestamp, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d < block.timestamp:
            revert with 'NH{q', 17
        return sub_1b5465bc, 
               sub_aca63162,
               0,
               sub_ccd07e1d - block.timestamp,
               sub_be016e22 - block.timestamp,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_71ff00f8 < block.timestamp:
        revert with 'NH{q', 17
    if sub_be016e22 <= 0:
        if sub_ccd07e1d <= 0:
            return sub_1b5465bc, sub_aca63162, sub_71ff00f8 - block.timestamp, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d <= block.timestamp:
            return sub_1b5465bc, sub_aca63162, sub_71ff00f8 - block.timestamp, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d < block.timestamp:
            revert with 'NH{q', 17
        return sub_1b5465bc, 
               sub_aca63162,
               sub_71ff00f8 - block.timestamp,
               sub_ccd07e1d - block.timestamp,
               0,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_be016e22 <= block.timestamp:
        if sub_ccd07e1d <= 0:
            return sub_1b5465bc, sub_aca63162, sub_71ff00f8 - block.timestamp, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d <= block.timestamp:
            return sub_1b5465bc, sub_aca63162, sub_71ff00f8 - block.timestamp, 0, 0, sub_54a03503, sub_129d7b6b, sub_003f1833
        if sub_ccd07e1d < block.timestamp:
            revert with 'NH{q', 17
        return sub_1b5465bc, 
               sub_aca63162,
               sub_71ff00f8 - block.timestamp,
               sub_ccd07e1d - block.timestamp,
               0,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_be016e22 < block.timestamp:
        revert with 'NH{q', 17
    if sub_ccd07e1d <= 0:
        return sub_1b5465bc, 
               sub_aca63162,
               sub_71ff00f8 - block.timestamp,
               0,
               sub_be016e22 - block.timestamp,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_ccd07e1d <= block.timestamp:
        return sub_1b5465bc, 
               sub_aca63162,
               sub_71ff00f8 - block.timestamp,
               0,
               sub_be016e22 - block.timestamp,
               sub_54a03503,
               sub_129d7b6b,
               sub_003f1833
    if sub_ccd07e1d < block.timestamp:
        revert with 'NH{q', 17
    return sub_1b5465bc, 
           sub_aca63162,
           sub_71ff00f8 - block.timestamp,
           sub_ccd07e1d - block.timestamp,
           sub_be016e22 - block.timestamp,
           sub_54a03503,
           sub_129d7b6b,
           sub_003f1833
}

function sub_386f3662(?) payable {
    if block.timestamp < sub_ccd07e1d:
        if block.timestamp >= sub_be016e22:
            if block.timestamp < sub_71ff00f8:
                if stor0:
                    return not bool(stor0), 
                           not bool(stor0),
                           block.timestamp >= sub_ccd07e1d,
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp < sub_71ff00f8
                if block.timestamp < sub_ccd07e1d:
                    if stor0:
                        return block.timestamp >= sub_ccd07e1d, 
                               not bool(stor0),
                               block.timestamp >= sub_ccd07e1d,
                               block.timestamp >= sub_71ff00f8,
                               block.timestamp < sub_71ff00f8
                    if block.timestamp >= sub_ccd07e1d:
                        if block.timestamp < sub_be016e22:
                            return block.timestamp >= sub_ccd07e1d, 
                                   block.timestamp < sub_be016e22,
                                   block.timestamp >= sub_ccd07e1d,
                                   block.timestamp >= sub_71ff00f8,
                                   block.timestamp < sub_71ff00f8
                    return block.timestamp >= sub_ccd07e1d, 
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp >= sub_ccd07e1d,
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp < sub_71ff00f8
                if stor0:
                    return block.timestamp < sub_be016e22, 
                           not bool(stor0),
                           block.timestamp >= sub_ccd07e1d,
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp < sub_71ff00f8
                if block.timestamp >= sub_ccd07e1d:
                    if block.timestamp < sub_be016e22:
                        return block.timestamp < sub_be016e22, 
                               block.timestamp < sub_be016e22,
                               block.timestamp >= sub_ccd07e1d,
                               block.timestamp >= sub_71ff00f8,
                               block.timestamp < sub_71ff00f8
                return block.timestamp < sub_be016e22, 
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp >= sub_ccd07e1d,
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp < sub_71ff00f8
        if stor0:
            return not bool(stor0), 
                   not bool(stor0),
                   block.timestamp >= sub_ccd07e1d,
                   block.timestamp >= sub_71ff00f8,
                   sub_1b5465bc == sub_aca63162
        if block.timestamp < sub_ccd07e1d:
            if stor0:
                return block.timestamp >= sub_ccd07e1d, 
                       not bool(stor0),
                       block.timestamp >= sub_ccd07e1d,
                       block.timestamp >= sub_71ff00f8,
                       sub_1b5465bc == sub_aca63162
            if block.timestamp >= sub_ccd07e1d:
                if block.timestamp < sub_be016e22:
                    return block.timestamp >= sub_ccd07e1d, 
                           block.timestamp < sub_be016e22,
                           block.timestamp >= sub_ccd07e1d,
                           block.timestamp >= sub_71ff00f8,
                           sub_1b5465bc == sub_aca63162
            return block.timestamp >= sub_ccd07e1d, 
                   block.timestamp >= sub_71ff00f8,
                   block.timestamp >= sub_ccd07e1d,
                   block.timestamp >= sub_71ff00f8,
                   sub_1b5465bc == sub_aca63162
        if stor0:
            return block.timestamp < sub_be016e22, 
                   not bool(stor0),
                   block.timestamp >= sub_ccd07e1d,
                   block.timestamp >= sub_71ff00f8,
                   sub_1b5465bc == sub_aca63162
        if block.timestamp >= sub_ccd07e1d:
            if block.timestamp < sub_be016e22:
                return block.timestamp < sub_be016e22, 
                       block.timestamp < sub_be016e22,
                       block.timestamp >= sub_ccd07e1d,
                       block.timestamp >= sub_71ff00f8,
                       sub_1b5465bc == sub_aca63162
        return block.timestamp < sub_be016e22, 
               block.timestamp >= sub_71ff00f8,
               block.timestamp >= sub_ccd07e1d,
               block.timestamp >= sub_71ff00f8,
               sub_1b5465bc == sub_aca63162
    if block.timestamp >= sub_be016e22:
        if block.timestamp < sub_71ff00f8:
            if stor0:
                return not bool(stor0), 
                       not bool(stor0),
                       block.timestamp < sub_be016e22,
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp < sub_71ff00f8
            if block.timestamp < sub_ccd07e1d:
                if stor0:
                    return block.timestamp >= sub_ccd07e1d, 
                           not bool(stor0),
                           block.timestamp < sub_be016e22,
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp < sub_71ff00f8
                if block.timestamp >= sub_ccd07e1d:
                    if block.timestamp < sub_be016e22:
                        return block.timestamp >= sub_ccd07e1d, 
                               block.timestamp < sub_be016e22,
                               block.timestamp < sub_be016e22,
                               block.timestamp >= sub_71ff00f8,
                               block.timestamp < sub_71ff00f8
                return block.timestamp >= sub_ccd07e1d, 
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp < sub_be016e22,
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp < sub_71ff00f8
            if stor0:
                return block.timestamp < sub_be016e22, 
                       not bool(stor0),
                       block.timestamp < sub_be016e22,
                       block.timestamp >= sub_71ff00f8,
                       block.timestamp < sub_71ff00f8
            if block.timestamp >= sub_ccd07e1d:
                if block.timestamp < sub_be016e22:
                    return block.timestamp < sub_be016e22, 
                           block.timestamp < sub_be016e22,
                           block.timestamp < sub_be016e22,
                           block.timestamp >= sub_71ff00f8,
                           block.timestamp < sub_71ff00f8
            return block.timestamp < sub_be016e22, 
                   block.timestamp >= sub_71ff00f8,
                   block.timestamp < sub_be016e22,
                   block.timestamp >= sub_71ff00f8,
                   block.timestamp < sub_71ff00f8
    if stor0:
        return not bool(stor0), 
               not bool(stor0),
               block.timestamp < sub_be016e22,
               block.timestamp >= sub_71ff00f8,
               sub_1b5465bc == sub_aca63162
    if block.timestamp < sub_ccd07e1d:
        if stor0:
            return block.timestamp >= sub_ccd07e1d, 
                   not bool(stor0),
                   block.timestamp < sub_be016e22,
                   block.timestamp >= sub_71ff00f8,
                   sub_1b5465bc == sub_aca63162
        if block.timestamp >= sub_ccd07e1d:
            if block.timestamp < sub_be016e22:
                return block.timestamp >= sub_ccd07e1d, 
                       block.timestamp < sub_be016e22,
                       block.timestamp < sub_be016e22,
                       block.timestamp >= sub_71ff00f8,
                       sub_1b5465bc == sub_aca63162
        return block.timestamp >= sub_ccd07e1d, 
               block.timestamp >= sub_71ff00f8,
               block.timestamp < sub_be016e22,
               block.timestamp >= sub_71ff00f8,
               sub_1b5465bc == sub_aca63162
    if stor0:
        return block.timestamp < sub_be016e22, 
               not bool(stor0),
               block.timestamp < sub_be016e22,
               block.timestamp >= sub_71ff00f8,
               sub_1b5465bc == sub_aca63162
    if block.timestamp >= sub_ccd07e1d:
        if block.timestamp < sub_be016e22:
            return block.timestamp < sub_be016e22, 
                   block.timestamp < sub_be016e22,
                   block.timestamp < sub_be016e22,
                   block.timestamp >= sub_71ff00f8,
                   sub_1b5465bc == sub_aca63162
    return block.timestamp < sub_be016e22, 
           block.timestamp >= sub_71ff00f8,
           block.timestamp < sub_be016e22,
           block.timestamp >= sub_71ff00f8,
           sub_1b5465bc == sub_aca63162
}

function sub_f345cbfd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if stor18.length > test266151307():
        revert with 'NH{q', 65
    mem[288] = stor18.length
    mem[64] = (32 * stor18.length) + 320
    if not stor18.length:
        s = 96
        s = 0
        idx = 0
        while idx < stor18.length:
            mem[0] = stor18[idx]
            mem[32] = 16
            _56 = mem[64]
            mem[64] = mem[64] + 192
            mem[_56] = stor16[stor18[idx]].field_0
            mem[_56 + 32] = stor16[stor18[idx]].field_256
            mem[_56 + 64] = stor16[stor18[idx]].field_512
            mem[_56 + 96] = stor16[stor18[idx]].field_768
            mem[_56 + 128] = stor16[stor18[idx]].field_1024
            mem[_56 + 160] = stor16[stor18[idx]].field_1280
            require ext_code.size(poolManagerAddress)
            staticcall poolManagerAddress.receiptToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_64]
            require mem[_64] == mem[_64 + 12 len 20]
            mem[mem[64] + 4] = stor16[stor18[idx]].field_0
            require ext_code.size(address(_68))
            staticcall address(_68).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor16[stor18[idx]].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_100] == mem[_100 + 12 len 20]
            if mem[_100 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                s = _56
                s = s
                idx = idx + 1
                continue 
            if s >= mem[288]:
                revert with 'NH{q', 50
            mem[(32 * s) + 320] = _56
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            s = _56
            s = s + 1
            idx = idx + 1
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _53 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[288]:
                    revert with 'NH{q', 50
                if t >= mem[_53]:
                    revert with 'NH{q', 50
                mem[(32 * t) + _53 + 32] = mem[(32 * t) + 320]
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                continue 
            _121 = mem[64]
            mem[mem[64]] = 32
            _124 = mem[_53]
            mem[mem[64] + 32] = mem[_53]
            idx = 0
            s = _53 + 32
            t = mem[64] + 64
            while idx < _124:
                _171 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_171 + 32]
                mem[t + 64] = mem[_171 + 64]
                mem[t + 96] = mem[_171 + 96]
                mem[t + 128] = mem[_171 + 128]
                mem[t + 160] = mem[_171 + 172 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _121 + (192 * _124) + -mem[64] + 64
        mem[64] = _53 + (32 * s) + 224
        mem[_53 + (32 * s) + 32] = 0
        mem[_53 + (32 * s) + 64] = 0
        mem[_53 + (32 * s) + 96] = 0
        mem[_53 + (32 * s) + 128] = 0
        mem[_53 + (32 * s) + 160] = 0
        mem[_53 + (32 * s) + 192] = 0
        mem[var29001] = _53 + (32 * s) + 32
        t = var29001
        idx = var29002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[_53 + (32 * s) + 32] = 0
            mem[_53 + (32 * s) + 64] = 0
            mem[_53 + (32 * s) + 96] = 0
            mem[_53 + (32 * s) + 128] = 0
            mem[_53 + (32 * s) + 160] = 0
            mem[_53 + (32 * s) + 192] = 0
            mem[t + 32] = _53 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[288]:
                revert with 'NH{q', 50
            if t >= mem[_53]:
                revert with 'NH{q', 50
            mem[(32 * t) + _53 + 32] = mem[(32 * t) + 320]
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            continue 
        _236 = mem[64]
        mem[mem[64]] = 32
        _242 = mem[_53]
        mem[mem[64] + 32] = mem[_53]
        idx = 0
        s = _53 + 32
        t = mem[64] + 64
        while idx < _242:
            _274 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_274 + 32]
            mem[t + 64] = mem[_274 + 64]
            mem[t + 96] = mem[_274 + 96]
            mem[t + 128] = mem[_274 + 128]
            mem[t + 160] = mem[_274 + 172 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _236 + (192 * _242) + -mem[64] + 64
    mem[64] = (32 * stor18.length) + 512
    mem[(32 * stor18.length) + 320] = 0
    mem[(32 * stor18.length) + 352] = 0
    mem[(32 * stor18.length) + 384] = 0
    mem[(32 * stor18.length) + 416] = 0
    mem[(32 * stor18.length) + 448] = 0
    mem[(32 * stor18.length) + 480] = 0
    mem[var24001] = (32 * stor18.length) + 320
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * stor18.length) + 320] = 0
        mem[(32 * stor18.length) + 352] = 0
        mem[(32 * stor18.length) + 384] = 0
        mem[(32 * stor18.length) + 416] = 0
        mem[(32 * stor18.length) + 448] = 0
        mem[(32 * stor18.length) + 480] = 0
        mem[s + 32] = (32 * stor18.length) + 320
        s = s + 32
        idx = idx - 1
        continue 
    s = 96
    s = 0
    idx = 0
    while idx < stor18.length:
        mem[0] = stor18[idx]
        mem[32] = 16
        _177 = mem[64]
        mem[64] = mem[64] + 192
        mem[_177] = stor16[stor18[idx]].field_0
        mem[_177 + 32] = stor16[stor18[idx]].field_256
        mem[_177 + 64] = stor16[stor18[idx]].field_512
        mem[_177 + 96] = stor16[stor18[idx]].field_768
        mem[_177 + 128] = stor16[stor18[idx]].field_1024
        mem[_177 + 160] = stor16[stor18[idx]].field_1280
        require ext_code.size(poolManagerAddress)
        staticcall poolManagerAddress.receiptToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _193 = mem[_189]
        require mem[_189] == mem[_189 + 12 len 20]
        mem[mem[64] + 4] = stor16[stor18[idx]].field_0
        require ext_code.size(address(_193))
        staticcall address(_193).ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args stor16[stor18[idx]].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_220] == mem[_220 + 12 len 20]
        if mem[_220 + 12 len 20] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            s = _177
            s = s
            idx = idx + 1
            continue 
        if s >= mem[288]:
            revert with 'NH{q', 50
        mem[(32 * s) + 320] = _177
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = _177
        s = s + 1
        idx = idx + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _172 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[288]:
                revert with 'NH{q', 50
            if t >= mem[_172]:
                revert with 'NH{q', 50
            mem[(32 * t) + _172 + 32] = mem[(32 * t) + 320]
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 32
        _243 = mem[_172]
        mem[mem[64] + 32] = mem[_172]
        idx = 0
        s = _172 + 32
        t = mem[64] + 64
        while idx < _243:
            _275 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_275 + 32]
            mem[t + 64] = mem[_275 + 64]
            mem[t + 96] = mem[_275 + 96]
            mem[t + 128] = mem[_275 + 128]
            mem[t + 160] = mem[_275 + 172 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _239 + (192 * _243) + -mem[64] + 64
    mem[64] = _172 + (32 * s) + 224
    mem[_172 + (32 * s) + 32] = 0
    mem[_172 + (32 * s) + 64] = 0
    mem[_172 + (32 * s) + 96] = 0
    mem[_172 + (32 * s) + 128] = 0
    mem[_172 + (32 * s) + 160] = 0
    mem[_172 + (32 * s) + 192] = 0
    mem[var36001] = _172 + (32 * s) + 32
    t = var36001
    idx = var36002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[_172 + (32 * s) + 32] = 0
        mem[_172 + (32 * s) + 64] = 0
        mem[_172 + (32 * s) + 96] = 0
        mem[_172 + (32 * s) + 128] = 0
        mem[_172 + (32 * s) + 160] = 0
        mem[_172 + (32 * s) + 192] = 0
        mem[t + 32] = _172 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[288]:
            revert with 'NH{q', 50
        if t >= mem[_172]:
            revert with 'NH{q', 50
        mem[(32 * t) + _172 + 32] = mem[(32 * t) + 320]
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    _304 = mem[64]
    mem[mem[64]] = 32
    _307 = mem[_172]
    mem[mem[64] + 32] = mem[_172]
    idx = 0
    s = _172 + 32
    t = mem[64] + 64
    while idx < _307:
        _316 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_316 + 32]
        mem[t + 64] = mem[_316 + 64]
        mem[t + 96] = mem[_316 + 96]
        mem[t + 128] = mem[_316 + 128]
        mem[t + 160] = mem[_316 + 172 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _304 + (192 * _307) + -mem[64] + 64
}



}
