contract main {




// =====================  Runtime code  =====================


#
#  - sub_c62630b7(?)
#
const sub_234a7d20(?) = 0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor2;
address _deadAddress; offset 8
mapping of uint8 stor3;
mapping of uint256 sub_0a98d243;
mapping of uint256 sub_6b2ed190;
mapping of uint256 sub_f04db03e;
mapping of uint256 sub_aca8dbad;
address sub_e15e3673Address;
address sub_0bfda00dAddress;
address sub_570a7cfbAddress;
address stor11;
address stor12;
address stor13;
uint256 sub_fd18cbeb;
uint256 sub_c9c74000;
uint256 sub_7cac95b1;
uint256 sub_c562d3ee;
uint256 sub_e846162c;
uint256 sub_4186f847;
uint256 sub_445cdc9b;
uint256 sub_6a32dbcd;
uint256 sub_621dd8b1;
uint256 sub_b01bea89;
uint256 sub_13dc306b;
address sub_ab4588afAddress;

function sub_0a98d243(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_0a98d243[arg1]
}

function sub_0bfda00d(?) payable {
    return sub_0bfda00dAddress
}

function sub_13dc306b(?) payable {
    return sub_13dc306b
}

function sub_22e2191d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_4186f847(?) payable {
    return sub_4186f847
}

function sub_445cdc9b(?) payable {
    return sub_445cdc9b
}

function sub_570a7cfb(?) payable {
    return sub_570a7cfbAddress
}

function paused() payable {
    return bool(stor2)
}

function sub_621dd8b1(?) payable {
    return sub_621dd8b1
}

function sub_6a32dbcd(?) payable {
    return sub_6a32dbcd
}

function sub_6b2ed190(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6b2ed190[arg1]
}

function sub_7cac95b1(?) payable {
    return sub_7cac95b1
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_ab4588af(?) payable {
    return sub_ab4588afAddress
}

function sub_aca8dbad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_aca8dbad[arg1]
}

function sub_b01bea89(?) payable {
    return sub_b01bea89
}

function isStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_c562d3ee(?) payable {
    return sub_c562d3ee
}

function sub_c9c74000(?) payable {
    return sub_c9c74000
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function _dead() payable {
    return _deadAddress
}

function sub_e15e3673(?) payable {
    return sub_e15e3673Address
}

function sub_e846162c(?) payable {
    return sub_e846162c
}

function sub_f04db03e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f04db03e[arg1]
}

function sub_fd18cbeb(?) payable {
    return sub_fd18cbeb
}

function _fallback() payable {
    revert
}

function isLocked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_6b2ed190[arg1]:
        return 1
    else:
        return 0
}

function sub_3e6df7a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return sub_c562d3ee
    if arg1 == 2:
        return sub_e846162c
    if arg1 != 3:
        return 0
    return sub_4186f847
}

function sub_6526e844(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return sub_fd18cbeb
    if arg1 == 2:
        return sub_c9c74000
    if arg1 != 3:
        return 0
    return sub_7cac95b1
}

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'SETTINGS : Restricted to Admin'
    sub_ab4588afAddress = arg1
}

function sub_05bce673(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'SETTINGS : Restricted to Admin'
    sub_570a7cfbAddress = address(arg1)
    stor11 = sub_570a7cfbAddress
}

function sub_52df0cbb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'SETTINGS : Restricted to Admin'
    sub_e15e3673Address = address(arg1)
    stor13 = sub_e15e3673Address
}

function sub_efa76860(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'SETTINGS : Restricted to Admin'
    sub_0bfda00dAddress = address(arg1)
    stor12 = sub_0bfda00dAddress
}

function sub_5761835d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
        revert with 'NH{q', 17
    if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
        revert with 'NH{q', 17
    return (sub_0a98d243[arg1] + (60 * sub_445cdc9b))
}

function sub_43583cb1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_c9c74000 = arg1
}

function sub_4cdb5792(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_4186f847 = arg1
}

function sub_4cedbbd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_e846162c = arg1
}

function sub_50ac9cce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_7cac95b1 = arg1
}

function sub_6b43fb33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_fd18cbeb = arg1
}

function sub_706d25f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_6a32dbcd = arg1
}

function sub_81fad487(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_c562d3ee = arg1
}

function sub_dc2f8473(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_445cdc9b = arg1
}

function sub_ce2579a3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < sub_0a98d243[arg1]:
        revert with 'NH{q', 17
    if arg2 - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / arg2 - sub_0a98d243[arg1] / 60:
        revert with 'NH{q', 17
    return (arg2 - sub_0a98d243[arg1] / 60 * sub_b01bea89)
}

function sub_a40ff82e(?) payable {
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function sub_f57a34cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < sub_0a98d243[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
        revert with 'NH{q', 17
    return (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89)
}

function sub_f4495c04(?) payable {
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function sub_9aebe5ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_6b2ed190[arg1] = arg2
}

function sub_e88ad457(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_f04db03e[arg1] = arg2
}

function sub_334b0328(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x92b4db71f5a6e6c3b1888b040ea8e4e1019163215239e41e8497a6276cb087d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SETTINGS : Restricted to Settings Admin'
    sub_621dd8b1 = arg1
    sub_b01bea89 = arg1 / 24 / 60
}

function canLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[arg1]) != 1:
        return 0
    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
        revert with 'NH{q', 17
    if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_0a98d243[arg1] + (60 * sub_445cdc9b):
        return 0
    if sub_6b2ed190[arg1]:
        return 0
    return 1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function canClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[arg1]) != 1:
        return 0
    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
        revert with 'NH{q', 17
    if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_0a98d243[arg1] + (60 * sub_445cdc9b):
        return 0
    if sub_6b2ed190[arg1]:
        if block.timestamp < sub_6b2ed190[arg1]:
            return 0
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_f2cc8510(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] == mem[_16]
        mem[0] = mem[_16]
        mem[32] = 3
        if not stor3[mem[0]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _17
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _17
        s = s + 1
        continue 
    return s
}

function sub_f798a4c4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] == mem[_17]
        mem[0] = mem[_17]
        mem[32] = 3
        if not stor3[mem[0]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _18
            s = s
            continue 
        mem[0] = _18
        mem[32] = 7
        if s > -sub_aca8dbad[_18] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _18
        s = s + sub_aca8dbad[_18]
        continue 
    return s
}

function sub_0dcb0557(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    s = 999999999999999999
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        require mem[_19] == mem[_19]
        mem[0] = mem[_19]
        mem[32] = 3
        if not stor3[mem[0]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _20
            s = s
            continue 
        if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
            revert with 'NH{q', 17
        if sub_0a98d243[_20] > (-60 * sub_445cdc9b) - 1:
            revert with 'NH{q', 17
        mem[0] = _20
        mem[32] = 5
        if not sub_6b2ed190[_20]:
            if idx == -1:
                revert with 'NH{q', 17
            if sub_0a98d243[_20] + (60 * sub_445cdc9b) >= s:
                idx = idx + 1
                s = _20
                s = s
                continue 
            idx = idx + 1
            s = _20
            s = sub_0a98d243[_20] + (60 * sub_445cdc9b)
            continue 
        mem[0] = _20
        mem[32] = 5
        if idx == -1:
            revert with 'NH{q', 17
        if sub_6b2ed190[_20] >= s:
            idx = idx + 1
            s = _20
            s = s
            continue 
        idx = idx + 1
        s = _20
        s = sub_6b2ed190[_20]
        continue 
    return s
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
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

function sub_3e56fb52(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        require ext_code.size(stor12)
        staticcall stor12.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Stake : Not Owner'
    if bool(stor3[arg1]) != 1:
        revert with 0, 'Stake : Not Eligible for Lock'
    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
        revert with 'NH{q', 17
    if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_0a98d243[arg1] + (60 * sub_445cdc9b):
        revert with 0, 'Stake : Not Eligible for Lock'
    if sub_6b2ed190[arg1]:
        revert with 0, 'Stake : Not Eligible for Lock'
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg2 < 1:
        revert with 0, 'Lock : Invalid Stake Value'
    if arg2 > 3:
        revert with 0, 'Lock : Invalid Stake Value'
    if arg2 == 1:
        if sub_fd18cbeb and 168 * 24 * 3600 > -1 / sub_fd18cbeb:
            revert with 'NH{q', 17
        if block.timestamp > (-604800 * sub_fd18cbeb) - 1:
            revert with 'NH{q', 17
        sub_6b2ed190[arg1] = block.timestamp + (168 * 24 * 3600 * sub_fd18cbeb)
        sub_f04db03e[arg1] = sub_c562d3ee
    else:
        if arg2 == 2:
            if sub_c9c74000 and 168 * 24 * 3600 > -1 / sub_c9c74000:
                revert with 'NH{q', 17
            if block.timestamp > (-604800 * sub_c9c74000) - 1:
                revert with 'NH{q', 17
            sub_6b2ed190[arg1] = block.timestamp + (168 * 24 * 3600 * sub_c9c74000)
            if arg2 == 1:
                sub_f04db03e[arg1] = sub_c562d3ee
            else:
                if arg2 == 2:
                    sub_f04db03e[arg1] = sub_e846162c
                else:
                    if arg2 != 3:
                        sub_f04db03e[arg1] = 0
                    else:
                        sub_f04db03e[arg1] = sub_4186f847
        else:
            if arg2 != 3:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                sub_6b2ed190[arg1] = block.timestamp
                if arg2 == 1:
                    sub_f04db03e[arg1] = sub_c562d3ee
                else:
                    if arg2 == 2:
                        sub_f04db03e[arg1] = sub_e846162c
                    else:
                        if arg2 != 3:
                            sub_f04db03e[arg1] = 0
                        else:
                            sub_f04db03e[arg1] = sub_4186f847
            else:
                if sub_7cac95b1 and 168 * 24 * 3600 > -1 / sub_7cac95b1:
                    revert with 'NH{q', 17
                if block.timestamp > (-604800 * sub_7cac95b1) - 1:
                    revert with 'NH{q', 17
                sub_6b2ed190[arg1] = block.timestamp + (168 * 24 * 3600 * sub_7cac95b1)
                if arg2 == 1:
                    sub_f04db03e[arg1] = sub_c562d3ee
                else:
                    if arg2 == 2:
                        sub_f04db03e[arg1] = sub_e846162c
                    else:
                        if arg2 != 3:
                            sub_f04db03e[arg1] = 0
                        else:
                            sub_f04db03e[arg1] = sub_4186f847
}

function sub_b0e3ad18(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(stor12)
    staticcall stor12.0x2c59bac7 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(stor12)
    staticcall stor12.0xf601b6a0 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
    if not bool((2 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + 160
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
    mem[(2 * ceil32(return_data.size)) + 160] = _11
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_11)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _10 + 128 len ceil32(_11)]
    if ceil32(_11) > _11:
        mem[(2 * ceil32(return_data.size)) + _11 + 192] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 160
    require mem[ceil32(return_data.size) + _8 + 128] == mem[ceil32(return_data.size) + _8 + 128]
    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + _8 + 128]
    if arg2 < sub_0a98d243[arg1]:
        revert with 'NH{q', 17
    if arg2 - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / arg2 - sub_0a98d243[arg1] / 60:
        revert with 'NH{q', 17
    if arg2 - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(2 * ceil32(return_data.size)) + 128] > -1 / arg2 - sub_0a98d243[arg1] / 60 * sub_b01bea89:
        revert with 'NH{q', 17
    mem[mem[64]] = arg2 - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(2 * ceil32(return_data.size)) + 128] / 100
    return memory
      from mem[64]
       len 32
}

function sub_b80883bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor12)
    staticcall stor12.0x2c59bac7 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(stor12)
    staticcall stor12.0xf601b6a0 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
    if not bool((2 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + 160
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
    mem[(2 * ceil32(return_data.size)) + 160] = _11
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_11)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _10 + 128 len ceil32(_11)]
    if ceil32(_11) > _11:
        mem[(2 * ceil32(return_data.size)) + _11 + 192] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 160
    require mem[ceil32(return_data.size) + _8 + 128] == mem[ceil32(return_data.size) + _8 + 128]
    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + _8 + 128]
    if block.timestamp < sub_0a98d243[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(2 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
        revert with 'NH{q', 17
    mem[mem[64]] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(2 * ceil32(return_data.size)) + 128] / 100
    return memory
      from mem[64]
       len 32
}

function sub_50fd4dc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    mem[0] = msg.sender
    mem[32] = sha3(0)
    mem[100] = arg1
    require ext_code.size(stor12)
    staticcall stor12.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if roleAdmin[address(msg.sender)].field_0:
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = idx
            require ext_code.size(stor12)
            staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _93 = mem[_91]
            require mem[_91] == mem[_91]
            mem[0] = mem[_91]
            mem[32] = 3
            if not stor3[mem[0]]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _93
                s = s
                continue 
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _93
            s = s + 1
            continue 
    else:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Stake : Not Owner'
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(stor12)
        staticcall stor12.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = idx
            require ext_code.size(stor12)
            staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_92]
            require mem[_92] == mem[_92]
            mem[0] = mem[_92]
            mem[32] = 3
            if not stor3[mem[0]]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _94
                s = s
                continue 
            if s > -2:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _94
            s = s + 1
            continue 
    if bool(arg2) != 1:
        if sub_6b2ed190[arg1]:
            revert with 0, 'Staking : This Hero is Locked'
    else:
        if s >= sub_6a32dbcd:
            revert with 0, 'Staking : Max Heroes Staked'
    sub_6b2ed190[arg1] = 0
    sub_f04db03e[arg1] = 0
    stor3[arg1] = uint8(bool(arg2))
    sub_0a98d243[arg1] = block.timestamp
}

function sub_805473e4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 5
    if not sub_6b2ed190[arg1]:
        return 0
    mem[100] = arg1
    require ext_code.size(stor12)
    staticcall stor12.0x2c59bac7 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(stor12)
    staticcall stor12.0xf601b6a0 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _11 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
    if not bool((2 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + 160
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
    mem[(2 * ceil32(return_data.size)) + 160] = _14
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _13 + _14 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_14)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _13 + 128 len ceil32(_14)]
    if ceil32(_14) > _14:
        mem[(2 * ceil32(return_data.size)) + _14 + 192] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 160
    require mem[ceil32(return_data.size) + _11 + 128] == mem[ceil32(return_data.size) + _11 + 128]
    mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + _11 + 128]
    if block.timestamp < sub_0a98d243[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(2 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
        revert with 'NH{q', 17
    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(2 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(2 * ceil32(return_data.size)) + 128] / 100:
        revert with 'NH{q', 17
    mem[mem[64]] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(2 * ceil32(return_data.size)) + 128] / 100 * sub_f04db03e[arg1] / 100
    return memory
      from mem[64]
       len 32
}

function sub_d3751bf4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_106]
        require mem[_106] == mem[_106]
        mem[0] = mem[_106]
        mem[32] = 3
        if bool(stor3[mem[0]]) == 1:
            if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                revert with 'NH{q', 17
            mem[0] = _107
            mem[32] = 4
            if sub_0a98d243[_107] > (-60 * sub_445cdc9b) - 1:
                revert with 'NH{q', 17
            if block.timestamp >= sub_0a98d243[_107] + (60 * sub_445cdc9b):
                mem[0] = _107
                mem[32] = 5
                if not sub_6b2ed190[_107]:
                    mem[0] = msg.sender
                    mem[32] = sha3(0)
                    if not roleAdmin[address(msg.sender)].field_0:
                        mem[mem[64] + 4] = _107
                        require ext_code.size(stor12)
                        staticcall stor12.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args _107
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_117] == mem[_117 + 12 len 20]
                        if mem[_117 + 12 len 20] != msg.sender:
                            revert with 0, 'Stake : Not Owner'
                    if bool(stor3[_107]) != 1:
                        revert with 0, 'Stake : Not Eligible for Lock'
                    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                        revert with 'NH{q', 17
                    if sub_0a98d243[_107] > (-60 * sub_445cdc9b) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_0a98d243[_107] + (60 * sub_445cdc9b):
                        revert with 0, 'Stake : Not Eligible for Lock'
                    if sub_6b2ed190[_107]:
                        revert with 0, 'Stake : Not Eligible for Lock'
                    if stor2:
                        revert with 0, 'Pausable: paused'
                    if arg1 < 1:
                        revert with 0, 'Lock : Invalid Stake Value'
                    if arg1 > 3:
                        revert with 0, 'Lock : Invalid Stake Value'
                    if arg1 == 1:
                        if sub_fd18cbeb and 168 * 24 * 3600 > -1 / sub_fd18cbeb:
                            revert with 'NH{q', 17
                        if block.timestamp > (-604800 * sub_fd18cbeb) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[_107] = block.timestamp + (168 * 24 * 3600 * sub_fd18cbeb)
                        mem[0] = _107
                        mem[32] = 6
                        sub_f04db03e[_107] = sub_c562d3ee
                    else:
                        if arg1 == 2:
                            if sub_c9c74000 and 168 * 24 * 3600 > -1 / sub_c9c74000:
                                revert with 'NH{q', 17
                            if block.timestamp > (-604800 * sub_c9c74000) - 1:
                                revert with 'NH{q', 17
                            sub_6b2ed190[_107] = block.timestamp + (168 * 24 * 3600 * sub_c9c74000)
                            mem[0] = _107
                            mem[32] = 6
                            if arg1 == 1:
                                sub_f04db03e[_107] = sub_c562d3ee
                            else:
                                if arg1 == 2:
                                    sub_f04db03e[_107] = sub_e846162c
                                else:
                                    if arg1 != 3:
                                        sub_f04db03e[_107] = 0
                                    else:
                                        sub_f04db03e[_107] = sub_4186f847
                        else:
                            if arg1 != 3:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                sub_6b2ed190[_107] = block.timestamp
                                mem[0] = _107
                                mem[32] = 6
                                if arg1 == 1:
                                    sub_f04db03e[_107] = sub_c562d3ee
                                else:
                                    if arg1 == 2:
                                        sub_f04db03e[_107] = sub_e846162c
                                    else:
                                        if arg1 != 3:
                                            sub_f04db03e[_107] = 0
                                        else:
                                            sub_f04db03e[_107] = sub_4186f847
                            else:
                                if sub_7cac95b1 and 168 * 24 * 3600 > -1 / sub_7cac95b1:
                                    revert with 'NH{q', 17
                                if block.timestamp > (-604800 * sub_7cac95b1) - 1:
                                    revert with 'NH{q', 17
                                sub_6b2ed190[_107] = block.timestamp + (168 * 24 * 3600 * sub_7cac95b1)
                                mem[0] = _107
                                mem[32] = 6
                                if arg1 == 1:
                                    sub_f04db03e[_107] = sub_c562d3ee
                                else:
                                    if arg1 == 2:
                                        sub_f04db03e[_107] = sub_e846162c
                                    else:
                                        if arg1 != 3:
                                            sub_f04db03e[_107] = 0
                                        else:
                                            sub_f04db03e[_107] = sub_4186f847
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _107
        continue 
}

function sub_84188da9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'SETTINGS : Restricted to Admin'
    idx = arg1
    while idx <= arg2:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor11)
        staticcall stor11.0x22e2191d with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == bool(mem[_66])
        if bool(mem[_66]) != 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor11)
            staticcall stor11.0xa98d243 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_73] == mem[_73]
            mem[mem[64] + 4] = idx
            require ext_code.size(stor11)
            if not mem[_73]:
                staticcall stor11.0xaca8dbad with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_85] == mem[_85]
                if mem[_85]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor11)
                    staticcall stor11.0xaca8dbad with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_103]
                    require mem[_103] == mem[_103]
                    mem[0] = idx
                    mem[32] = 7
                    sub_aca8dbad[idx] = _107
            else:
                staticcall stor11.0xa98d243 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _90 = mem[_86]
                require mem[_86] == mem[_86]
                mem[0] = idx
                mem[32] = 4
                sub_0a98d243[idx] = _90
                mem[mem[64] + 4] = idx
                require ext_code.size(stor11)
                staticcall stor11.0xaca8dbad with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_104] == mem[_104]
                if mem[_104]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor11)
                    staticcall stor11.0xaca8dbad with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _117 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _119 = mem[_117]
                    require mem[_117] == mem[_117]
                    mem[0] = idx
                    mem[32] = 7
                    sub_aca8dbad[idx] = _119
        else:
            mem[0] = idx
            mem[32] = 3
            stor3[idx] = 1
            mem[mem[64] + 4] = idx
            require ext_code.size(stor11)
            staticcall stor11.0xa98d243 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_74] == mem[_74]
            mem[mem[64] + 4] = idx
            require ext_code.size(stor11)
            if not mem[_74]:
                staticcall stor11.0xaca8dbad with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_87] == mem[_87]
                if mem[_87]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor11)
                    staticcall stor11.0xaca8dbad with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _105 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _109 = mem[_105]
                    require mem[_105] == mem[_105]
                    mem[0] = idx
                    mem[32] = 7
                    sub_aca8dbad[idx] = _109
            else:
                staticcall stor11.0xa98d243 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _92 = mem[_88]
                require mem[_88] == mem[_88]
                mem[0] = idx
                mem[32] = 4
                sub_0a98d243[idx] = _92
                mem[mem[64] + 4] = idx
                require ext_code.size(stor11)
                staticcall stor11.0xaca8dbad with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_106] == mem[_106]
                if mem[_106]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(stor11)
                    staticcall stor11.0xaca8dbad with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _120 = mem[_118]
                    require mem[_118] == mem[_118]
                    mem[0] = idx
                    mem[32] = 7
                    sub_aca8dbad[idx] = _120
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ffd70a27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_78]
        require mem[_78] == mem[_78]
        mem[0] = mem[_78]
        mem[32] = 3
        if stor3[mem[0]]:
            mem[0] = _79
            mem[32] = 5
            if sub_6b2ed190[_79]:
                mem[0] = _79
                mem[32] = 3
                if bool(stor3[_79]) != 1:
                    mem[mem[64] + 4] = _79
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args _79
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _86 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _87 = mem[_86]
                    require mem[_86] == mem[_86]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _87
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _87
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _96 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _98 = mem[_96]
                    require mem[_96] <= test266151307()
                    require return_data.size - mem[_96] >= 64
                    if not bool(_96 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _96 + ceil32(return_data.size) + 64
                    _104 = mem[_96 + _98]
                    require mem[_96 + _98] <= test266151307()
                    require _96 + _98 + mem[_96 + _98] + 31 < _96 + return_data.size
                    _108 = mem[_96 + _98 + mem[_96 + _98]]
                    if mem[_96 + _98 + mem[_96 + _98]] > test266151307():
                        revert with 'NH{q', 65
                    if _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + _98 + mem[_96 + _98]])) + 65 > test266151307() or ceil32(ceil32(mem[_96 + _98 + mem[_96 + _98]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + _98 + mem[_96 + _98]])) + 65
                    mem[_96 + ceil32(return_data.size) + 64] = _108
                    require _98 + _104 + _108 + 32 <= return_data.size
                    s = 0
                    while s < _108:
                        mem[_96 + ceil32(return_data.size) + s + 96] = mem[_96 + _98 + _104 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_108) <= _108:
                        mem[_96 + ceil32(return_data.size)] = _96 + ceil32(return_data.size) + 64
                        require mem[_96 + _98 + 32] == mem[_96 + _98 + 32]
                        mem[_96 + ceil32(return_data.size) + 32] = mem[_96 + _98 + 32]
                        _152 = mem[_96 + ceil32(return_data.size) + 32]
                        mem[0] = _79
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_79]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _152 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _152 / 100) - 1:
                            revert with 'NH{q', 17
                    else:
                        mem[_96 + ceil32(return_data.size) + _108 + 96] = 0
                        mem[_96 + ceil32(return_data.size)] = _96 + ceil32(return_data.size) + 64
                        require mem[_96 + _98 + 32] == mem[_96 + _98 + 32]
                        mem[_96 + ceil32(return_data.size) + 32] = mem[_96 + _98 + 32]
                        _156 = mem[_96 + ceil32(return_data.size) + 32]
                        mem[0] = _79
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_79]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _156 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _156 / 100) - 1:
                            revert with 'NH{q', 17
                else:
                    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                        revert with 'NH{q', 17
                    mem[0] = _79
                    mem[32] = 4
                    if sub_0a98d243[_79] > (-60 * sub_445cdc9b) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_0a98d243[_79] + (60 * sub_445cdc9b):
                        mem[mem[64] + 4] = _79
                        require ext_code.size(stor12)
                        staticcall stor12.0x2c59bac7 with:
                                gas gas_remaining wei
                               args _79
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _93 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _97 = mem[_93]
                        require mem[_93] == mem[_93]
                        mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _97
                        require ext_code.size(stor12)
                        staticcall stor12.0xf601b6a0 with:
                                gas gas_remaining wei
                               args _97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _106 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _109 = mem[_106]
                        require mem[_106] <= test266151307()
                        require return_data.size - mem[_106] >= 64
                        if not bool(_106 + ceil32(return_data.size) + 64 <= test266151307()):
                            revert with 'NH{q', 65
                        mem[64] = _106 + ceil32(return_data.size) + 64
                        _115 = mem[_106 + _109]
                        require mem[_106 + _109] <= test266151307()
                        require _106 + _109 + mem[_106 + _109] + 31 < _106 + return_data.size
                        _117 = mem[_106 + _109 + mem[_106 + _109]]
                        if mem[_106 + _109 + mem[_106 + _109]] > test266151307():
                            revert with 'NH{q', 65
                        if _106 + ceil32(return_data.size) + ceil32(ceil32(mem[_106 + _109 + mem[_106 + _109]])) + 65 > test266151307() or ceil32(ceil32(mem[_106 + _109 + mem[_106 + _109]])) + 65 < 64:
                            revert with 'NH{q', 65
                        mem[64] = _106 + ceil32(return_data.size) + ceil32(ceil32(mem[_106 + _109 + mem[_106 + _109]])) + 65
                        mem[_106 + ceil32(return_data.size) + 64] = _117
                        require _109 + _115 + _117 + 32 <= return_data.size
                        s = 0
                        while s < _117:
                            mem[_106 + ceil32(return_data.size) + s + 96] = mem[_106 + _109 + _115 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_117) <= _117:
                            mem[_106 + ceil32(return_data.size)] = _106 + ceil32(return_data.size) + 64
                            require mem[_106 + _109 + 32] == mem[_106 + _109 + 32]
                            mem[_106 + ceil32(return_data.size) + 32] = mem[_106 + _109 + 32]
                            _153 = mem[_106 + ceil32(return_data.size) + 32]
                            mem[0] = _79
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_79]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _153 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _153 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            mem[_106 + ceil32(return_data.size) + _117 + 96] = 0
                            mem[_106 + ceil32(return_data.size)] = _106 + ceil32(return_data.size) + 64
                            require mem[_106 + _109 + 32] == mem[_106 + _109 + 32]
                            mem[_106 + ceil32(return_data.size) + 32] = mem[_106 + _109 + 32]
                            _158 = mem[_106 + ceil32(return_data.size) + 32]
                            mem[0] = _79
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_79]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _158 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _158 / 100) - 1:
                                revert with 'NH{q', 17
                    else:
                        mem[0] = _79
                        mem[32] = 5
                        if sub_6b2ed190[_79]:
                            mem[0] = _79
                            mem[32] = 5
                            if block.timestamp < sub_6b2ed190[_79]:
                                mem[mem[64] + 4] = _79
                                require ext_code.size(stor12)
                                staticcall stor12.0x2c59bac7 with:
                                        gas gas_remaining wei
                                       args _79
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _103 = mem[_100]
                                require mem[_100] == mem[_100]
                                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _103
                                require ext_code.size(stor12)
                                staticcall stor12.0xf601b6a0 with:
                                        gas gas_remaining wei
                                       args _103
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _112 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _114 = mem[_112]
                                require mem[_112] <= test266151307()
                                require return_data.size - mem[_112] >= 64
                                if not bool(_112 + ceil32(return_data.size) + 64 <= test266151307()):
                                    revert with 'NH{q', 65
                                mem[64] = _112 + ceil32(return_data.size) + 64
                                _119 = mem[_112 + _114]
                                require mem[_112 + _114] <= test266151307()
                                require _112 + _114 + mem[_112 + _114] + 31 < _112 + return_data.size
                                _122 = mem[_112 + _114 + mem[_112 + _114]]
                                if mem[_112 + _114 + mem[_112 + _114]] > test266151307():
                                    revert with 'NH{q', 65
                                if _112 + ceil32(return_data.size) + ceil32(ceil32(mem[_112 + _114 + mem[_112 + _114]])) + 65 > test266151307() or ceil32(ceil32(mem[_112 + _114 + mem[_112 + _114]])) + 65 < 64:
                                    revert with 'NH{q', 65
                                mem[64] = _112 + ceil32(return_data.size) + ceil32(ceil32(mem[_112 + _114 + mem[_112 + _114]])) + 65
                                mem[_112 + ceil32(return_data.size) + 64] = _122
                                require _114 + _119 + _122 + 32 <= return_data.size
                                s = 0
                                while s < _122:
                                    mem[_112 + ceil32(return_data.size) + s + 96] = mem[_112 + _114 + _119 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_122) <= _122:
                                    mem[_112 + ceil32(return_data.size)] = _112 + ceil32(return_data.size) + 64
                                    require mem[_112 + _114 + 32] == mem[_112 + _114 + 32]
                                    mem[_112 + ceil32(return_data.size) + 32] = mem[_112 + _114 + 32]
                                    _154 = mem[_112 + ceil32(return_data.size) + 32]
                                    mem[0] = _79
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_79]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _154 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _154 / 100) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    mem[_112 + ceil32(return_data.size) + _122 + 96] = 0
                                    mem[_112 + ceil32(return_data.size)] = _112 + ceil32(return_data.size) + 64
                                    require mem[_112 + _114 + 32] == mem[_112 + _114 + 32]
                                    mem[_112 + ceil32(return_data.size) + 32] = mem[_112 + _114 + 32]
                                    _160 = mem[_112 + ceil32(return_data.size) + 32]
                                    mem[0] = _79
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_79]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_79] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_79] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 and _160 > -1 / block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_79] / 60 * sub_b01bea89 * _160 / 100) - 1:
                                        revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _79
        continue 
    return 0
}

function sub_6a5fc5d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _140 = mem[_139]
        require mem[_139] == mem[_139]
        mem[0] = mem[_139]
        mem[32] = 3
        if stor3[mem[0]]:
            mem[0] = _140
            mem[32] = 5
            if not sub_6b2ed190[_140]:
                mem[0] = _140
                mem[32] = 3
                if bool(stor3[_140]) != 1:
                    mem[mem[64] + 4] = _140
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args _140
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _155 = mem[_152]
                    require mem[_152] == mem[_152]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _155
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _155
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _173 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _176 = mem[_173]
                    require mem[_173] <= test266151307()
                    require return_data.size - mem[_173] >= 64
                    if not bool(_173 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _173 + ceil32(return_data.size) + 64
                    _189 = mem[_173 + _176]
                    require mem[_173 + _176] <= test266151307()
                    require _173 + _176 + mem[_173 + _176] + 31 < _173 + return_data.size
                    _196 = mem[_173 + _176 + mem[_173 + _176]]
                    if mem[_173 + _176 + mem[_173 + _176]] > test266151307():
                        revert with 'NH{q', 65
                    if _173 + ceil32(return_data.size) + ceil32(ceil32(mem[_173 + _176 + mem[_173 + _176]])) + 65 > test266151307() or ceil32(ceil32(mem[_173 + _176 + mem[_173 + _176]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _173 + ceil32(return_data.size) + ceil32(ceil32(mem[_173 + _176 + mem[_173 + _176]])) + 65
                    mem[_173 + ceil32(return_data.size) + 64] = _196
                    require _176 + _189 + _196 + 32 <= return_data.size
                    s = 0
                    while s < _196:
                        mem[_173 + ceil32(return_data.size) + s + 96] = mem[_173 + _176 + _189 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_196) <= _196:
                        mem[_173 + ceil32(return_data.size)] = _173 + ceil32(return_data.size) + 64
                        require mem[_173 + _176 + 32] == mem[_173 + _176 + 32]
                        mem[_173 + ceil32(return_data.size) + 32] = mem[_173 + _176 + 32]
                        _286 = mem[_173 + ceil32(return_data.size) + 32]
                        mem[0] = _140
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_140]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _286 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _286 / 100) - 1:
                            revert with 'NH{q', 17
                    else:
                        mem[_173 + ceil32(return_data.size) + _196 + 96] = 0
                        mem[_173 + ceil32(return_data.size)] = _173 + ceil32(return_data.size) + 64
                        require mem[_173 + _176 + 32] == mem[_173 + _176 + 32]
                        mem[_173 + ceil32(return_data.size) + 32] = mem[_173 + _176 + 32]
                        _296 = mem[_173 + ceil32(return_data.size) + 32]
                        mem[0] = _140
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_140]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _296 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _296 / 100) - 1:
                            revert with 'NH{q', 17
                else:
                    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                        revert with 'NH{q', 17
                    mem[0] = _140
                    mem[32] = 4
                    if sub_0a98d243[_140] > (-60 * sub_445cdc9b) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_0a98d243[_140] + (60 * sub_445cdc9b):
                        mem[mem[64] + 4] = _140
                        require ext_code.size(stor12)
                        staticcall stor12.0x2c59bac7 with:
                                gas gas_remaining wei
                               args _140
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _174 = mem[_167]
                        require mem[_167] == mem[_167]
                        mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _174
                        require ext_code.size(stor12)
                        staticcall stor12.0xf601b6a0 with:
                                gas gas_remaining wei
                               args _174
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _193 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _198 = mem[_193]
                        require mem[_193] <= test266151307()
                        require return_data.size - mem[_193] >= 64
                        if not bool(_193 + ceil32(return_data.size) + 64 <= test266151307()):
                            revert with 'NH{q', 65
                        mem[64] = _193 + ceil32(return_data.size) + 64
                        _210 = mem[_193 + _198]
                        require mem[_193 + _198] <= test266151307()
                        require _193 + _198 + mem[_193 + _198] + 31 < _193 + return_data.size
                        _214 = mem[_193 + _198 + mem[_193 + _198]]
                        if mem[_193 + _198 + mem[_193 + _198]] > test266151307():
                            revert with 'NH{q', 65
                        if _193 + ceil32(return_data.size) + ceil32(ceil32(mem[_193 + _198 + mem[_193 + _198]])) + 65 > test266151307() or ceil32(ceil32(mem[_193 + _198 + mem[_193 + _198]])) + 65 < 64:
                            revert with 'NH{q', 65
                        mem[64] = _193 + ceil32(return_data.size) + ceil32(ceil32(mem[_193 + _198 + mem[_193 + _198]])) + 65
                        mem[_193 + ceil32(return_data.size) + 64] = _214
                        require _198 + _210 + _214 + 32 <= return_data.size
                        s = 0
                        while s < _214:
                            mem[_193 + ceil32(return_data.size) + s + 96] = mem[_193 + _198 + _210 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_214) <= _214:
                            mem[_193 + ceil32(return_data.size)] = _193 + ceil32(return_data.size) + 64
                            require mem[_193 + _198 + 32] == mem[_193 + _198 + 32]
                            mem[_193 + ceil32(return_data.size) + 32] = mem[_193 + _198 + 32]
                            _287 = mem[_193 + ceil32(return_data.size) + 32]
                            mem[0] = _140
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_140]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _287 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _287 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            mem[_193 + ceil32(return_data.size) + _214 + 96] = 0
                            mem[_193 + ceil32(return_data.size)] = _193 + ceil32(return_data.size) + 64
                            require mem[_193 + _198 + 32] == mem[_193 + _198 + 32]
                            mem[_193 + ceil32(return_data.size) + 32] = mem[_193 + _198 + 32]
                            _298 = mem[_193 + ceil32(return_data.size) + 32]
                            mem[0] = _140
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_140]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _298 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _298 / 100) - 1:
                                revert with 'NH{q', 17
                    else:
                        mem[0] = _140
                        mem[32] = 5
                        if sub_6b2ed190[_140]:
                            mem[0] = _140
                            mem[32] = 5
                            if block.timestamp < sub_6b2ed190[_140]:
                                mem[mem[64] + 4] = _140
                                require ext_code.size(stor12)
                                staticcall stor12.0x2c59bac7 with:
                                        gas gas_remaining wei
                                       args _140
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _186 = mem[_180]
                                require mem[_180] == mem[_180]
                                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _186
                                require ext_code.size(stor12)
                                staticcall stor12.0xf601b6a0 with:
                                        gas gas_remaining wei
                                       args _186
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _204 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _208 = mem[_204]
                                require mem[_204] <= test266151307()
                                require return_data.size - mem[_204] >= 64
                                if not bool(_204 + ceil32(return_data.size) + 64 <= test266151307()):
                                    revert with 'NH{q', 65
                                mem[64] = _204 + ceil32(return_data.size) + 64
                                _218 = mem[_204 + _208]
                                require mem[_204 + _208] <= test266151307()
                                require _204 + _208 + mem[_204 + _208] + 31 < _204 + return_data.size
                                _224 = mem[_204 + _208 + mem[_204 + _208]]
                                if mem[_204 + _208 + mem[_204 + _208]] > test266151307():
                                    revert with 'NH{q', 65
                                if _204 + ceil32(return_data.size) + ceil32(ceil32(mem[_204 + _208 + mem[_204 + _208]])) + 65 > test266151307() or ceil32(ceil32(mem[_204 + _208 + mem[_204 + _208]])) + 65 < 64:
                                    revert with 'NH{q', 65
                                mem[64] = _204 + ceil32(return_data.size) + ceil32(ceil32(mem[_204 + _208 + mem[_204 + _208]])) + 65
                                mem[_204 + ceil32(return_data.size) + 64] = _224
                                require _208 + _218 + _224 + 32 <= return_data.size
                                s = 0
                                while s < _224:
                                    mem[_204 + ceil32(return_data.size) + s + 96] = mem[_204 + _208 + _218 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_224) <= _224:
                                    mem[_204 + ceil32(return_data.size)] = _204 + ceil32(return_data.size) + 64
                                    require mem[_204 + _208 + 32] == mem[_204 + _208 + 32]
                                    mem[_204 + ceil32(return_data.size) + 32] = mem[_204 + _208 + 32]
                                    _288 = mem[_204 + ceil32(return_data.size) + 32]
                                    mem[0] = _140
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_140]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _288 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _288 / 100) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    mem[_204 + ceil32(return_data.size) + _224 + 96] = 0
                                    mem[_204 + ceil32(return_data.size)] = _204 + ceil32(return_data.size) + 64
                                    require mem[_204 + _208 + 32] == mem[_204 + _208 + 32]
                                    mem[_204 + ceil32(return_data.size) + 32] = mem[_204 + _208 + 32]
                                    _300 = mem[_204 + ceil32(return_data.size) + 32]
                                    mem[0] = _140
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_140]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_140] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_140] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 and _300 > -1 / block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_140] / 60 * sub_b01bea89 * _300 / 100) - 1:
                                        revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _140
        continue 
    return 0
}

function sub_0299d9e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _84 = mem[_83]
        require mem[_83] == mem[_83]
        mem[0] = mem[_83]
        mem[32] = 3
        if stor3[mem[0]]:
            mem[0] = _84
            mem[32] = 5
            if sub_6b2ed190[_84]:
                if bool(stor3[_84]) != 1:
                    mem[0] = _84
                    mem[32] = 5
                    if sub_6b2ed190[_84]:
                        mem[mem[64] + 4] = _84
                        require ext_code.size(stor12)
                        staticcall stor12.0x2c59bac7 with:
                                gas gas_remaining wei
                               args _84
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _92 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _94 = mem[_92]
                        require mem[_92] == mem[_92]
                        mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _94
                        require ext_code.size(stor12)
                        staticcall stor12.0xf601b6a0 with:
                                gas gas_remaining wei
                               args _94
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _104 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _106 = mem[_104]
                        require mem[_104] <= test266151307()
                        require return_data.size - mem[_104] >= 64
                        if not bool(_104 + ceil32(return_data.size) + 64 <= test266151307()):
                            revert with 'NH{q', 65
                        mem[64] = _104 + ceil32(return_data.size) + 64
                        _112 = mem[_104 + _106]
                        require mem[_104 + _106] <= test266151307()
                        require _104 + _106 + mem[_104 + _106] + 31 < _104 + return_data.size
                        _116 = mem[_104 + _106 + mem[_104 + _106]]
                        if mem[_104 + _106 + mem[_104 + _106]] > test266151307():
                            revert with 'NH{q', 65
                        if _104 + ceil32(return_data.size) + ceil32(ceil32(mem[_104 + _106 + mem[_104 + _106]])) + 65 > test266151307() or ceil32(ceil32(mem[_104 + _106 + mem[_104 + _106]])) + 65 < 64:
                            revert with 'NH{q', 65
                        mem[64] = _104 + ceil32(return_data.size) + ceil32(ceil32(mem[_104 + _106 + mem[_104 + _106]])) + 65
                        mem[_104 + ceil32(return_data.size) + 64] = _116
                        require _106 + _112 + _116 + 32 <= return_data.size
                        s = 0
                        while s < _116:
                            mem[_104 + ceil32(return_data.size) + s + 96] = mem[_104 + _106 + _112 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_116) <= _116:
                            mem[_104 + ceil32(return_data.size)] = _104 + ceil32(return_data.size) + 64
                            require mem[_104 + _106 + 32] == mem[_104 + _106 + 32]
                            mem[_104 + ceil32(return_data.size) + 32] = mem[_104 + _106 + 32]
                            _166 = mem[_104 + ceil32(return_data.size) + 32]
                            if block.timestamp < sub_0a98d243[_84]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_104 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            mem[0] = _84
                            mem[32] = 6
                            if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _166 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _166 / 100:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _166 / 100 * sub_f04db03e[_84] / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            mem[_104 + ceil32(return_data.size) + _116 + 96] = 0
                            mem[_104 + ceil32(return_data.size)] = _104 + ceil32(return_data.size) + 64
                            require mem[_104 + _106 + 32] == mem[_104 + _106 + 32]
                            mem[_104 + ceil32(return_data.size) + 32] = mem[_104 + _106 + 32]
                            _170 = mem[_104 + ceil32(return_data.size) + 32]
                            if block.timestamp < sub_0a98d243[_84]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_104 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            mem[0] = _84
                            mem[32] = 6
                            if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _170 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _170 / 100:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _170 / 100 * sub_f04db03e[_84] / 100) - 1:
                                revert with 'NH{q', 17
                else:
                    if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                        revert with 'NH{q', 17
                    if sub_0a98d243[_84] > (-60 * sub_445cdc9b) - 1:
                        revert with 'NH{q', 17
                    mem[0] = _84
                    mem[32] = 5
                    if block.timestamp < sub_0a98d243[_84] + (60 * sub_445cdc9b):
                        if sub_6b2ed190[_84]:
                            mem[mem[64] + 4] = _84
                            require ext_code.size(stor12)
                            staticcall stor12.0x2c59bac7 with:
                                    gas gas_remaining wei
                                   args _84
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _105 = mem[_101]
                            require mem[_101] == mem[_101]
                            mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _105
                            require ext_code.size(stor12)
                            staticcall stor12.0xf601b6a0 with:
                                    gas gas_remaining wei
                                   args _105
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _114 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _117 = mem[_114]
                            require mem[_114] <= test266151307()
                            require return_data.size - mem[_114] >= 64
                            if not bool(_114 + ceil32(return_data.size) + 64 <= test266151307()):
                                revert with 'NH{q', 65
                            mem[64] = _114 + ceil32(return_data.size) + 64
                            _123 = mem[_114 + _117]
                            require mem[_114 + _117] <= test266151307()
                            require _114 + _117 + mem[_114 + _117] + 31 < _114 + return_data.size
                            _125 = mem[_114 + _117 + mem[_114 + _117]]
                            if mem[_114 + _117 + mem[_114 + _117]] > test266151307():
                                revert with 'NH{q', 65
                            if _114 + ceil32(return_data.size) + ceil32(ceil32(mem[_114 + _117 + mem[_114 + _117]])) + 65 > test266151307() or ceil32(ceil32(mem[_114 + _117 + mem[_114 + _117]])) + 65 < 64:
                                revert with 'NH{q', 65
                            mem[64] = _114 + ceil32(return_data.size) + ceil32(ceil32(mem[_114 + _117 + mem[_114 + _117]])) + 65
                            mem[_114 + ceil32(return_data.size) + 64] = _125
                            require _117 + _123 + _125 + 32 <= return_data.size
                            s = 0
                            while s < _125:
                                mem[_114 + ceil32(return_data.size) + s + 96] = mem[_114 + _117 + _123 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_125) <= _125:
                                mem[_114 + ceil32(return_data.size)] = _114 + ceil32(return_data.size) + 64
                                require mem[_114 + _117 + 32] == mem[_114 + _117 + 32]
                                mem[_114 + ceil32(return_data.size) + 32] = mem[_114 + _117 + 32]
                                _167 = mem[_114 + ceil32(return_data.size) + 32]
                                if block.timestamp < sub_0a98d243[_84]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_114 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                mem[0] = _84
                                mem[32] = 6
                                if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _167 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _167 / 100:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _167 / 100 * sub_f04db03e[_84] / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                mem[_114 + ceil32(return_data.size) + _125 + 96] = 0
                                mem[_114 + ceil32(return_data.size)] = _114 + ceil32(return_data.size) + 64
                                require mem[_114 + _117 + 32] == mem[_114 + _117 + 32]
                                mem[_114 + ceil32(return_data.size) + 32] = mem[_114 + _117 + 32]
                                _172 = mem[_114 + ceil32(return_data.size) + 32]
                                if block.timestamp < sub_0a98d243[_84]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_114 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                mem[0] = _84
                                mem[32] = 6
                                if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _172 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _172 / 100:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _172 / 100 * sub_f04db03e[_84] / 100) - 1:
                                    revert with 'NH{q', 17
                    else:
                        if sub_6b2ed190[_84]:
                            mem[0] = _84
                            mem[32] = 5
                            if block.timestamp < sub_6b2ed190[_84]:
                                mem[0] = _84
                                mem[32] = 5
                                if sub_6b2ed190[_84]:
                                    mem[mem[64] + 4] = _84
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x2c59bac7 with:
                                            gas gas_remaining wei
                                           args _84
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _108 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _111 = mem[_108]
                                    require mem[_108] == mem[_108]
                                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _111
                                    require ext_code.size(stor12)
                                    staticcall stor12.0xf601b6a0 with:
                                            gas gas_remaining wei
                                           args _111
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _120 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _122 = mem[_120]
                                    require mem[_120] <= test266151307()
                                    require return_data.size - mem[_120] >= 64
                                    if not bool(_120 + ceil32(return_data.size) + 64 <= test266151307()):
                                        revert with 'NH{q', 65
                                    mem[64] = _120 + ceil32(return_data.size) + 64
                                    _127 = mem[_120 + _122]
                                    require mem[_120 + _122] <= test266151307()
                                    require _120 + _122 + mem[_120 + _122] + 31 < _120 + return_data.size
                                    _130 = mem[_120 + _122 + mem[_120 + _122]]
                                    if mem[_120 + _122 + mem[_120 + _122]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _120 + ceil32(return_data.size) + ceil32(ceil32(mem[_120 + _122 + mem[_120 + _122]])) + 65 > test266151307() or ceil32(ceil32(mem[_120 + _122 + mem[_120 + _122]])) + 65 < 64:
                                        revert with 'NH{q', 65
                                    mem[64] = _120 + ceil32(return_data.size) + ceil32(ceil32(mem[_120 + _122 + mem[_120 + _122]])) + 65
                                    mem[_120 + ceil32(return_data.size) + 64] = _130
                                    require _122 + _127 + _130 + 32 <= return_data.size
                                    s = 0
                                    while s < _130:
                                        mem[_120 + ceil32(return_data.size) + s + 96] = mem[_120 + _122 + _127 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_130) <= _130:
                                        mem[_120 + ceil32(return_data.size)] = _120 + ceil32(return_data.size) + 64
                                        require mem[_120 + _122 + 32] == mem[_120 + _122 + 32]
                                        mem[_120 + ceil32(return_data.size) + 32] = mem[_120 + _122 + 32]
                                        _168 = mem[_120 + ceil32(return_data.size) + 32]
                                        if block.timestamp < sub_0a98d243[_84]:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_120 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                            revert with 'NH{q', 17
                                        mem[0] = _84
                                        mem[32] = 6
                                        if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _168 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _168 / 100:
                                            revert with 'NH{q', 17
                                        if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _168 / 100 * sub_f04db03e[_84] / 100) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        mem[_120 + ceil32(return_data.size) + _130 + 96] = 0
                                        mem[_120 + ceil32(return_data.size)] = _120 + ceil32(return_data.size) + 64
                                        require mem[_120 + _122 + 32] == mem[_120 + _122 + 32]
                                        mem[_120 + ceil32(return_data.size) + 32] = mem[_120 + _122 + 32]
                                        _174 = mem[_120 + ceil32(return_data.size) + 32]
                                        if block.timestamp < sub_0a98d243[_84]:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_0a98d243[_84] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_84] / 60:
                                            revert with 'NH{q', 17
                                        if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 and mem[_120 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89:
                                            revert with 'NH{q', 17
                                        mem[0] = _84
                                        mem[32] = 6
                                        if block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _174 / 100 and sub_f04db03e[_84] > -1 / block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _174 / 100:
                                            revert with 'NH{q', 17
                                        if 0 > -(block.timestamp - sub_0a98d243[_84] / 60 * sub_b01bea89 * _174 / 100 * sub_f04db03e[_84] / 100) - 1:
                                            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _84
        continue 
    return 0
}

function sub_e74e7068(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _59 = mem[_58]
        require mem[_58] == mem[_58]
        mem[0] = mem[_58]
        mem[32] = 3
        if stor3[mem[0]]:
            mem[0] = _59
            mem[32] = 5
            mem[mem[64] + 4] = _59
            require ext_code.size(stor12)
            staticcall stor12.0x2c59bac7 with:
                    gas gas_remaining wei
                   args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not sub_6b2ed190[_59]:
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _69 = mem[_67]
                require mem[_67] == mem[_67]
                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _69
                require ext_code.size(stor12)
                staticcall stor12.0xf601b6a0 with:
                        gas gas_remaining wei
                       args _69
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _76 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _77 = mem[_76]
                require mem[_76] <= test266151307()
                require return_data.size - mem[_76] >= 64
                if not bool(_76 + ceil32(return_data.size) + 64 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = _76 + ceil32(return_data.size) + 64
                _81 = mem[_76 + _77]
                require mem[_76 + _77] <= test266151307()
                require _76 + _77 + mem[_76 + _77] + 31 < _76 + return_data.size
                _83 = mem[_76 + _77 + mem[_76 + _77]]
                if mem[_76 + _77 + mem[_76 + _77]] > test266151307():
                    revert with 'NH{q', 65
                if _76 + ceil32(return_data.size) + ceil32(ceil32(mem[_76 + _77 + mem[_76 + _77]])) + 65 > test266151307() or ceil32(ceil32(mem[_76 + _77 + mem[_76 + _77]])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = _76 + ceil32(return_data.size) + ceil32(ceil32(mem[_76 + _77 + mem[_76 + _77]])) + 65
                mem[_76 + ceil32(return_data.size) + 64] = _83
                require _77 + _81 + _83 + 32 <= return_data.size
                s = 0
                while s < _83:
                    mem[_76 + ceil32(return_data.size) + s + 96] = mem[_76 + _77 + _81 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_83) <= _83:
                    mem[_76 + ceil32(return_data.size)] = _76 + ceil32(return_data.size) + 64
                    require mem[_76 + _77 + 32] == mem[_76 + _77 + 32]
                    mem[_76 + ceil32(return_data.size) + 32] = mem[_76 + _77 + 32]
                    _126 = mem[_76 + ceil32(return_data.size) + 32]
                    mem[0] = _59
                    mem[32] = 4
                    if block.timestamp < sub_0a98d243[_59]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _126 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _126 / 100) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _126 / 100 > -1:
                        revert with 'NH{q', 17
                else:
                    mem[_76 + ceil32(return_data.size) + _83 + 96] = 0
                    mem[_76 + ceil32(return_data.size)] = _76 + ceil32(return_data.size) + 64
                    require mem[_76 + _77 + 32] == mem[_76 + _77 + 32]
                    mem[_76 + ceil32(return_data.size) + 32] = mem[_76 + _77 + 32]
                    _130 = mem[_76 + ceil32(return_data.size) + 32]
                    mem[0] = _59
                    mem[32] = 4
                    if block.timestamp < sub_0a98d243[_59]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _130 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _130 / 100) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _130 / 100 > -1:
                        revert with 'NH{q', 17
            else:
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _68 = mem[_65]
                require mem[_65] == mem[_65]
                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _68
                require ext_code.size(stor12)
                staticcall stor12.0xf601b6a0 with:
                        gas gas_remaining wei
                       args _68
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _73 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _75 = mem[_73]
                require mem[_73] <= test266151307()
                require return_data.size - mem[_73] >= 64
                if not bool(_73 + ceil32(return_data.size) + 64 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = _73 + ceil32(return_data.size) + 64
                _80 = mem[_73 + _75]
                require mem[_73 + _75] <= test266151307()
                require _73 + _75 + mem[_73 + _75] + 31 < _73 + return_data.size
                _82 = mem[_73 + _75 + mem[_73 + _75]]
                if mem[_73 + _75 + mem[_73 + _75]] > test266151307():
                    revert with 'NH{q', 65
                if _73 + ceil32(return_data.size) + ceil32(ceil32(mem[_73 + _75 + mem[_73 + _75]])) + 65 > test266151307() or ceil32(ceil32(mem[_73 + _75 + mem[_73 + _75]])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = _73 + ceil32(return_data.size) + ceil32(ceil32(mem[_73 + _75 + mem[_73 + _75]])) + 65
                mem[_73 + ceil32(return_data.size) + 64] = _82
                require _75 + _80 + _82 + 32 <= return_data.size
                s = 0
                while s < _82:
                    mem[_73 + ceil32(return_data.size) + s + 96] = mem[_73 + _75 + _80 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_82) <= _82:
                    mem[_73 + ceil32(return_data.size)] = _73 + ceil32(return_data.size) + 64
                    require mem[_73 + _75 + 32] == mem[_73 + _75 + 32]
                    mem[_73 + ceil32(return_data.size) + 32] = mem[_73 + _75 + 32]
                    _125 = mem[_73 + ceil32(return_data.size) + 32]
                    if block.timestamp < sub_0a98d243[_59]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and mem[_73 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = _59
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _125 / 100 and sub_f04db03e[_59] > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _125 / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = _59
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args _59
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _141 = mem[_139]
                    require mem[_139] == mem[_139]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _141
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _141
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _147 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _149 = mem[_147]
                    require mem[_147] <= test266151307()
                    require return_data.size - mem[_147] >= 64
                    if not bool(_147 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _147 + ceil32(return_data.size) + 64
                    _153 = mem[_147 + _149]
                    require mem[_147 + _149] <= test266151307()
                    require _147 + _149 + mem[_147 + _149] + 31 < _147 + return_data.size
                    _155 = mem[_147 + _149 + mem[_147 + _149]]
                    if mem[_147 + _149 + mem[_147 + _149]] > test266151307():
                        revert with 'NH{q', 65
                    if _147 + ceil32(return_data.size) + ceil32(ceil32(mem[_147 + _149 + mem[_147 + _149]])) + 65 > test266151307() or ceil32(ceil32(mem[_147 + _149 + mem[_147 + _149]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _147 + ceil32(return_data.size) + ceil32(ceil32(mem[_147 + _149 + mem[_147 + _149]])) + 65
                    mem[_147 + ceil32(return_data.size) + 64] = _155
                    require _149 + _153 + _155 + 32 <= return_data.size
                    s = 0
                    while s < _155:
                        mem[_147 + ceil32(return_data.size) + s + 96] = mem[_147 + _149 + _153 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_155) <= _155:
                        mem[_147 + ceil32(return_data.size)] = _147 + ceil32(return_data.size) + 64
                        require mem[_147 + _149 + 32] == mem[_147 + _149 + 32]
                        mem[_147 + ceil32(return_data.size) + 32] = mem[_147 + _149 + 32]
                        _179 = mem[_147 + ceil32(return_data.size) + 32]
                        mem[0] = _59
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_59]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _179 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _179 / 100) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _179 / 100 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _125 / 100 * sub_f04db03e[_59] / 100) - 1:
                            revert with 'NH{q', 17
                    else:
                        mem[_147 + ceil32(return_data.size) + _155 + 96] = 0
                        mem[_147 + ceil32(return_data.size)] = _147 + ceil32(return_data.size) + 64
                        require mem[_147 + _149 + 32] == mem[_147 + _149 + 32]
                        mem[_147 + ceil32(return_data.size) + 32] = mem[_147 + _149 + 32]
                        _182 = mem[_147 + ceil32(return_data.size) + 32]
                        mem[0] = _59
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_59]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _182 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _182 / 100) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _182 / 100 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _125 / 100 * sub_f04db03e[_59] / 100) - 1:
                            revert with 'NH{q', 17
                else:
                    mem[_73 + ceil32(return_data.size) + _82 + 96] = 0
                    mem[_73 + ceil32(return_data.size)] = _73 + ceil32(return_data.size) + 64
                    require mem[_73 + _75 + 32] == mem[_73 + _75 + 32]
                    mem[_73 + ceil32(return_data.size) + 32] = mem[_73 + _75 + 32]
                    _128 = mem[_73 + ceil32(return_data.size) + 32]
                    if block.timestamp < sub_0a98d243[_59]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and mem[_73 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = _59
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _128 / 100 and sub_f04db03e[_59] > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _128 / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = _59
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args _59
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _142 = mem[_140]
                    require mem[_140] == mem[_140]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _142
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _142
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _148 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _150 = mem[_148]
                    require mem[_148] <= test266151307()
                    require return_data.size - mem[_148] >= 64
                    if not bool(_148 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _148 + ceil32(return_data.size) + 64
                    _154 = mem[_148 + _150]
                    require mem[_148 + _150] <= test266151307()
                    require _148 + _150 + mem[_148 + _150] + 31 < _148 + return_data.size
                    _156 = mem[_148 + _150 + mem[_148 + _150]]
                    if mem[_148 + _150 + mem[_148 + _150]] > test266151307():
                        revert with 'NH{q', 65
                    if _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + _150 + mem[_148 + _150]])) + 65 > test266151307() or ceil32(ceil32(mem[_148 + _150 + mem[_148 + _150]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + _150 + mem[_148 + _150]])) + 65
                    mem[_148 + ceil32(return_data.size) + 64] = _156
                    require _150 + _154 + _156 + 32 <= return_data.size
                    s = 0
                    while s < _156:
                        mem[_148 + ceil32(return_data.size) + s + 96] = mem[_148 + _150 + _154 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_156) <= _156:
                        mem[_148 + ceil32(return_data.size)] = _148 + ceil32(return_data.size) + 64
                        require mem[_148 + _150 + 32] == mem[_148 + _150 + 32]
                        mem[_148 + ceil32(return_data.size) + 32] = mem[_148 + _150 + 32]
                        _180 = mem[_148 + ceil32(return_data.size) + 32]
                        mem[0] = _59
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_59]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _180 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _180 / 100) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _180 / 100 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _128 / 100 * sub_f04db03e[_59] / 100) - 1:
                            revert with 'NH{q', 17
                    else:
                        mem[_148 + ceil32(return_data.size) + _156 + 96] = 0
                        mem[_148 + ceil32(return_data.size)] = _148 + ceil32(return_data.size) + 64
                        require mem[_148 + _150 + 32] == mem[_148 + _150 + 32]
                        mem[_148 + ceil32(return_data.size) + 32] = mem[_148 + _150 + 32]
                        _184 = mem[_148 + ceil32(return_data.size) + 32]
                        mem[0] = _59
                        mem[32] = 4
                        if block.timestamp < sub_0a98d243[_59]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_59] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 and _184 > -1 / block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if 0 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _184 / 100) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _184 / 100 > -(block.timestamp - sub_0a98d243[_59] / 60 * sub_b01bea89 * _128 / 100 * sub_f04db03e[_59] / 100) - 1:
                            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _59
        continue 
    return 0
}

function sub_e4e5731a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor12)
        staticcall stor12.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_97]
        require mem[_97] == mem[_97]
        mem[0] = mem[_97]
        mem[32] = 3
        if bool(stor3[mem[0]]) == 1:
            if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
                revert with 'NH{q', 17
            mem[0] = _98
            mem[32] = 4
            if sub_0a98d243[_98] > (-60 * sub_445cdc9b) - 1:
                revert with 'NH{q', 17
            if block.timestamp >= sub_0a98d243[_98] + (60 * sub_445cdc9b):
                mem[0] = _98
                mem[32] = 5
                if not sub_6b2ed190[_98]:
                    mem[mem[64] + 4] = _98
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args _98
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_6b2ed190[_98]:
                        _115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _119 = mem[_115]
                        require mem[_115] == mem[_115]
                        mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _119
                        require ext_code.size(stor12)
                        staticcall stor12.0xf601b6a0 with:
                                gas gas_remaining wei
                               args _119
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _132 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _135 = mem[_132]
                        require mem[_132] <= test266151307()
                        require return_data.size - mem[_132] >= 64
                        if not bool(_132 + ceil32(return_data.size) + 64 <= test266151307()):
                            revert with 'NH{q', 65
                        mem[64] = _132 + ceil32(return_data.size) + 64
                        _143 = mem[_132 + _135]
                        require mem[_132 + _135] <= test266151307()
                        require _132 + _135 + mem[_132 + _135] + 31 < _132 + return_data.size
                        _147 = mem[_132 + _135 + mem[_132 + _135]]
                        if mem[_132 + _135 + mem[_132 + _135]] > test266151307():
                            revert with 'NH{q', 65
                        if _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _135 + mem[_132 + _135]])) + 65 > test266151307() or ceil32(ceil32(mem[_132 + _135 + mem[_132 + _135]])) + 65 < 64:
                            revert with 'NH{q', 65
                        mem[64] = _132 + ceil32(return_data.size) + ceil32(ceil32(mem[_132 + _135 + mem[_132 + _135]])) + 65
                        mem[_132 + ceil32(return_data.size) + 64] = _147
                        require _135 + _143 + _147 + 32 <= return_data.size
                        s = 0
                        while s < _147:
                            mem[_132 + ceil32(return_data.size) + s + 96] = mem[_132 + _135 + _143 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_147) <= _147:
                            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 64
                            require mem[_132 + _135 + 32] == mem[_132 + _135 + 32]
                            mem[_132 + ceil32(return_data.size) + 32] = mem[_132 + _135 + 32]
                            _211 = mem[_132 + ceil32(return_data.size) + 32]
                            mem[0] = _98
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_98]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _211 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _211 / 100) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _211 / 100 > -1:
                                revert with 'NH{q', 17
                        else:
                            mem[_132 + ceil32(return_data.size) + _147 + 96] = 0
                            mem[_132 + ceil32(return_data.size)] = _132 + ceil32(return_data.size) + 64
                            require mem[_132 + _135 + 32] == mem[_132 + _135 + 32]
                            mem[_132 + ceil32(return_data.size) + 32] = mem[_132 + _135 + 32]
                            _219 = mem[_132 + ceil32(return_data.size) + 32]
                            mem[0] = _98
                            mem[32] = 4
                            if block.timestamp < sub_0a98d243[_98]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _219 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _219 / 100) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _219 / 100 > -1:
                                revert with 'NH{q', 17
                    else:
                        _111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _116 = mem[_111]
                        require mem[_111] == mem[_111]
                        mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _116
                        require ext_code.size(stor12)
                        staticcall stor12.0xf601b6a0 with:
                                gas gas_remaining wei
                               args _116
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _127 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _131 = mem[_127]
                        require mem[_127] <= test266151307()
                        require return_data.size - mem[_127] >= 64
                        if not bool(_127 + ceil32(return_data.size) + 64 <= test266151307()):
                            revert with 'NH{q', 65
                        mem[64] = _127 + ceil32(return_data.size) + 64
                        _141 = mem[_127 + _131]
                        require mem[_127 + _131] <= test266151307()
                        require _127 + _131 + mem[_127 + _131] + 31 < _127 + return_data.size
                        _144 = mem[_127 + _131 + mem[_127 + _131]]
                        if mem[_127 + _131 + mem[_127 + _131]] > test266151307():
                            revert with 'NH{q', 65
                        if _127 + ceil32(return_data.size) + ceil32(ceil32(mem[_127 + _131 + mem[_127 + _131]])) + 65 > test266151307() or ceil32(ceil32(mem[_127 + _131 + mem[_127 + _131]])) + 65 < 64:
                            revert with 'NH{q', 65
                        mem[64] = _127 + ceil32(return_data.size) + ceil32(ceil32(mem[_127 + _131 + mem[_127 + _131]])) + 65
                        mem[_127 + ceil32(return_data.size) + 64] = _144
                        require _131 + _141 + _144 + 32 <= return_data.size
                        s = 0
                        while s < _144:
                            mem[_127 + ceil32(return_data.size) + s + 96] = mem[_127 + _131 + _141 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_144) <= _144:
                            mem[_127 + ceil32(return_data.size)] = _127 + ceil32(return_data.size) + 64
                            require mem[_127 + _131 + 32] == mem[_127 + _131 + 32]
                            mem[_127 + ceil32(return_data.size) + 32] = mem[_127 + _131 + 32]
                            _210 = mem[_127 + ceil32(return_data.size) + 32]
                            if block.timestamp < sub_0a98d243[_98]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and mem[_127 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            mem[0] = _98
                            mem[32] = 6
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _210 / 100 and sub_f04db03e[_98] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _210 / 100:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = _98
                            require ext_code.size(stor12)
                            staticcall stor12.0x2c59bac7 with:
                                    gas gas_remaining wei
                                   args _98
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _241 = mem[_237]
                            require mem[_237] == mem[_237]
                            mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _241
                            require ext_code.size(stor12)
                            staticcall stor12.0xf601b6a0 with:
                                    gas gas_remaining wei
                                   args _241
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _253 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _257 = mem[_253]
                            require mem[_253] <= test266151307()
                            require return_data.size - mem[_253] >= 64
                            if not bool(_253 + ceil32(return_data.size) + 64 <= test266151307()):
                                revert with 'NH{q', 65
                            mem[64] = _253 + ceil32(return_data.size) + 64
                            _265 = mem[_253 + _257]
                            require mem[_253 + _257] <= test266151307()
                            require _253 + _257 + mem[_253 + _257] + 31 < _253 + return_data.size
                            _269 = mem[_253 + _257 + mem[_253 + _257]]
                            if mem[_253 + _257 + mem[_253 + _257]] > test266151307():
                                revert with 'NH{q', 65
                            if _253 + ceil32(return_data.size) + ceil32(ceil32(mem[_253 + _257 + mem[_253 + _257]])) + 65 > test266151307() or ceil32(ceil32(mem[_253 + _257 + mem[_253 + _257]])) + 65 < 64:
                                revert with 'NH{q', 65
                            mem[64] = _253 + ceil32(return_data.size) + ceil32(ceil32(mem[_253 + _257 + mem[_253 + _257]])) + 65
                            mem[_253 + ceil32(return_data.size) + 64] = _269
                            require _257 + _265 + _269 + 32 <= return_data.size
                            s = 0
                            while s < _269:
                                mem[_253 + ceil32(return_data.size) + s + 96] = mem[_253 + _257 + _265 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_269) <= _269:
                                mem[_253 + ceil32(return_data.size)] = _253 + ceil32(return_data.size) + 64
                                require mem[_253 + _257 + 32] == mem[_253 + _257 + 32]
                                mem[_253 + ceil32(return_data.size) + 32] = mem[_253 + _257 + 32]
                                _318 = mem[_253 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _318 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _318 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _318 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _210 / 100 * sub_f04db03e[_98] / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                mem[_253 + ceil32(return_data.size) + _269 + 96] = 0
                                mem[_253 + ceil32(return_data.size)] = _253 + ceil32(return_data.size) + 64
                                require mem[_253 + _257 + 32] == mem[_253 + _257 + 32]
                                mem[_253 + ceil32(return_data.size) + 32] = mem[_253 + _257 + 32]
                                _325 = mem[_253 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _325 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _325 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _325 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _210 / 100 * sub_f04db03e[_98] / 100) - 1:
                                    revert with 'NH{q', 17
                        else:
                            mem[_127 + ceil32(return_data.size) + _144 + 96] = 0
                            mem[_127 + ceil32(return_data.size)] = _127 + ceil32(return_data.size) + 64
                            require mem[_127 + _131 + 32] == mem[_127 + _131 + 32]
                            mem[_127 + ceil32(return_data.size) + 32] = mem[_127 + _131 + 32]
                            _217 = mem[_127 + ceil32(return_data.size) + 32]
                            if block.timestamp < sub_0a98d243[_98]:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                revert with 'NH{q', 17
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and mem[_127 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                revert with 'NH{q', 17
                            mem[0] = _98
                            mem[32] = 6
                            if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _217 / 100 and sub_f04db03e[_98] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _217 / 100:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = _98
                            require ext_code.size(stor12)
                            staticcall stor12.0x2c59bac7 with:
                                    gas gas_remaining wei
                                   args _98
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _239 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _243 = mem[_239]
                            require mem[_239] == mem[_239]
                            mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _243
                            require ext_code.size(stor12)
                            staticcall stor12.0xf601b6a0 with:
                                    gas gas_remaining wei
                                   args _243
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _255 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _259 = mem[_255]
                            require mem[_255] <= test266151307()
                            require return_data.size - mem[_255] >= 64
                            if not bool(_255 + ceil32(return_data.size) + 64 <= test266151307()):
                                revert with 'NH{q', 65
                            mem[64] = _255 + ceil32(return_data.size) + 64
                            _267 = mem[_255 + _259]
                            require mem[_255 + _259] <= test266151307()
                            require _255 + _259 + mem[_255 + _259] + 31 < _255 + return_data.size
                            _271 = mem[_255 + _259 + mem[_255 + _259]]
                            if mem[_255 + _259 + mem[_255 + _259]] > test266151307():
                                revert with 'NH{q', 65
                            if _255 + ceil32(return_data.size) + ceil32(ceil32(mem[_255 + _259 + mem[_255 + _259]])) + 65 > test266151307() or ceil32(ceil32(mem[_255 + _259 + mem[_255 + _259]])) + 65 < 64:
                                revert with 'NH{q', 65
                            mem[64] = _255 + ceil32(return_data.size) + ceil32(ceil32(mem[_255 + _259 + mem[_255 + _259]])) + 65
                            mem[_255 + ceil32(return_data.size) + 64] = _271
                            require _259 + _267 + _271 + 32 <= return_data.size
                            s = 0
                            while s < _271:
                                mem[_255 + ceil32(return_data.size) + s + 96] = mem[_255 + _259 + _267 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_271) <= _271:
                                mem[_255 + ceil32(return_data.size)] = _255 + ceil32(return_data.size) + 64
                                require mem[_255 + _259 + 32] == mem[_255 + _259 + 32]
                                mem[_255 + ceil32(return_data.size) + 32] = mem[_255 + _259 + 32]
                                _319 = mem[_255 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _319 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _319 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _319 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _217 / 100 * sub_f04db03e[_98] / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                mem[_255 + ceil32(return_data.size) + _271 + 96] = 0
                                mem[_255 + ceil32(return_data.size)] = _255 + ceil32(return_data.size) + 64
                                require mem[_255 + _259 + 32] == mem[_255 + _259 + 32]
                                mem[_255 + ceil32(return_data.size) + 32] = mem[_255 + _259 + 32]
                                _327 = mem[_255 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _327 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _327 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _327 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _217 / 100 * sub_f04db03e[_98] / 100) - 1:
                                    revert with 'NH{q', 17
                else:
                    if block.timestamp >= sub_6b2ed190[_98]:
                        mem[0] = _98
                        mem[32] = 5
                        mem[mem[64] + 4] = _98
                        require ext_code.size(stor12)
                        staticcall stor12.0x2c59bac7 with:
                                gas gas_remaining wei
                               args _98
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_6b2ed190[_98]:
                            _117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _120 = mem[_117]
                            require mem[_117] == mem[_117]
                            mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _120
                            require ext_code.size(stor12)
                            staticcall stor12.0xf601b6a0 with:
                                    gas gas_remaining wei
                                   args _120
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _134 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _136 = mem[_134]
                            require mem[_134] <= test266151307()
                            require return_data.size - mem[_134] >= 64
                            if not bool(_134 + ceil32(return_data.size) + 64 <= test266151307()):
                                revert with 'NH{q', 65
                            mem[64] = _134 + ceil32(return_data.size) + 64
                            _145 = mem[_134 + _136]
                            require mem[_134 + _136] <= test266151307()
                            require _134 + _136 + mem[_134 + _136] + 31 < _134 + return_data.size
                            _148 = mem[_134 + _136 + mem[_134 + _136]]
                            if mem[_134 + _136 + mem[_134 + _136]] > test266151307():
                                revert with 'NH{q', 65
                            if _134 + ceil32(return_data.size) + ceil32(ceil32(mem[_134 + _136 + mem[_134 + _136]])) + 65 > test266151307() or ceil32(ceil32(mem[_134 + _136 + mem[_134 + _136]])) + 65 < 64:
                                revert with 'NH{q', 65
                            mem[64] = _134 + ceil32(return_data.size) + ceil32(ceil32(mem[_134 + _136 + mem[_134 + _136]])) + 65
                            mem[_134 + ceil32(return_data.size) + 64] = _148
                            require _136 + _145 + _148 + 32 <= return_data.size
                            s = 0
                            while s < _148:
                                mem[_134 + ceil32(return_data.size) + s + 96] = mem[_134 + _136 + _145 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_148) <= _148:
                                mem[_134 + ceil32(return_data.size)] = _134 + ceil32(return_data.size) + 64
                                require mem[_134 + _136 + 32] == mem[_134 + _136 + 32]
                                mem[_134 + ceil32(return_data.size) + 32] = mem[_134 + _136 + 32]
                                _209 = mem[_134 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _209 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _209 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _209 / 100 > -1:
                                    revert with 'NH{q', 17
                            else:
                                mem[_134 + ceil32(return_data.size) + _148 + 96] = 0
                                mem[_134 + ceil32(return_data.size)] = _134 + ceil32(return_data.size) + 64
                                require mem[_134 + _136 + 32] == mem[_134 + _136 + 32]
                                mem[_134 + ceil32(return_data.size) + 32] = mem[_134 + _136 + 32]
                                _215 = mem[_134 + ceil32(return_data.size) + 32]
                                mem[0] = _98
                                mem[32] = 4
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _215 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _215 / 100) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _215 / 100 > -1:
                                    revert with 'NH{q', 17
                        else:
                            _113 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _118 = mem[_113]
                            require mem[_113] == mem[_113]
                            mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _118
                            require ext_code.size(stor12)
                            staticcall stor12.0xf601b6a0 with:
                                    gas gas_remaining wei
                                   args _118
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _129 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _133 = mem[_129]
                            require mem[_129] <= test266151307()
                            require return_data.size - mem[_129] >= 64
                            if not bool(_129 + ceil32(return_data.size) + 64 <= test266151307()):
                                revert with 'NH{q', 65
                            mem[64] = _129 + ceil32(return_data.size) + 64
                            _142 = mem[_129 + _133]
                            require mem[_129 + _133] <= test266151307()
                            require _129 + _133 + mem[_129 + _133] + 31 < _129 + return_data.size
                            _146 = mem[_129 + _133 + mem[_129 + _133]]
                            if mem[_129 + _133 + mem[_129 + _133]] > test266151307():
                                revert with 'NH{q', 65
                            if _129 + ceil32(return_data.size) + ceil32(ceil32(mem[_129 + _133 + mem[_129 + _133]])) + 65 > test266151307() or ceil32(ceil32(mem[_129 + _133 + mem[_129 + _133]])) + 65 < 64:
                                revert with 'NH{q', 65
                            mem[64] = _129 + ceil32(return_data.size) + ceil32(ceil32(mem[_129 + _133 + mem[_129 + _133]])) + 65
                            mem[_129 + ceil32(return_data.size) + 64] = _146
                            require _133 + _142 + _146 + 32 <= return_data.size
                            s = 0
                            while s < _146:
                                mem[_129 + ceil32(return_data.size) + s + 96] = mem[_129 + _133 + _142 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_146) <= _146:
                                mem[_129 + ceil32(return_data.size)] = _129 + ceil32(return_data.size) + 64
                                require mem[_129 + _133 + 32] == mem[_129 + _133 + 32]
                                mem[_129 + ceil32(return_data.size) + 32] = mem[_129 + _133 + 32]
                                _208 = mem[_129 + ceil32(return_data.size) + 32]
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and mem[_129 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                mem[0] = _98
                                mem[32] = 6
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _208 / 100 and sub_f04db03e[_98] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _208 / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = _98
                                require ext_code.size(stor12)
                                staticcall stor12.0x2c59bac7 with:
                                        gas gas_remaining wei
                                       args _98
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _236 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _240 = mem[_236]
                                require mem[_236] == mem[_236]
                                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _240
                                require ext_code.size(stor12)
                                staticcall stor12.0xf601b6a0 with:
                                        gas gas_remaining wei
                                       args _240
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _252 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _256 = mem[_252]
                                require mem[_252] <= test266151307()
                                require return_data.size - mem[_252] >= 64
                                if not bool(_252 + ceil32(return_data.size) + 64 <= test266151307()):
                                    revert with 'NH{q', 65
                                mem[64] = _252 + ceil32(return_data.size) + 64
                                _264 = mem[_252 + _256]
                                require mem[_252 + _256] <= test266151307()
                                require _252 + _256 + mem[_252 + _256] + 31 < _252 + return_data.size
                                _268 = mem[_252 + _256 + mem[_252 + _256]]
                                if mem[_252 + _256 + mem[_252 + _256]] > test266151307():
                                    revert with 'NH{q', 65
                                if _252 + ceil32(return_data.size) + ceil32(ceil32(mem[_252 + _256 + mem[_252 + _256]])) + 65 > test266151307() or ceil32(ceil32(mem[_252 + _256 + mem[_252 + _256]])) + 65 < 64:
                                    revert with 'NH{q', 65
                                mem[64] = _252 + ceil32(return_data.size) + ceil32(ceil32(mem[_252 + _256 + mem[_252 + _256]])) + 65
                                mem[_252 + ceil32(return_data.size) + 64] = _268
                                require _256 + _264 + _268 + 32 <= return_data.size
                                s = 0
                                while s < _268:
                                    mem[_252 + ceil32(return_data.size) + s + 96] = mem[_252 + _256 + _264 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_268) <= _268:
                                    mem[_252 + ceil32(return_data.size)] = _252 + ceil32(return_data.size) + 64
                                    require mem[_252 + _256 + 32] == mem[_252 + _256 + 32]
                                    mem[_252 + ceil32(return_data.size) + 32] = mem[_252 + _256 + 32]
                                    _316 = mem[_252 + ceil32(return_data.size) + 32]
                                    mem[0] = _98
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_98]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _316 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _316 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _316 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _208 / 100 * sub_f04db03e[_98] / 100) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    mem[_252 + ceil32(return_data.size) + _268 + 96] = 0
                                    mem[_252 + ceil32(return_data.size)] = _252 + ceil32(return_data.size) + 64
                                    require mem[_252 + _256 + 32] == mem[_252 + _256 + 32]
                                    mem[_252 + ceil32(return_data.size) + 32] = mem[_252 + _256 + 32]
                                    _321 = mem[_252 + ceil32(return_data.size) + 32]
                                    mem[0] = _98
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_98]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _321 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _321 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _321 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _208 / 100 * sub_f04db03e[_98] / 100) - 1:
                                        revert with 'NH{q', 17
                            else:
                                mem[_129 + ceil32(return_data.size) + _146 + 96] = 0
                                mem[_129 + ceil32(return_data.size)] = _129 + ceil32(return_data.size) + 64
                                require mem[_129 + _133 + 32] == mem[_129 + _133 + 32]
                                mem[_129 + ceil32(return_data.size) + 32] = mem[_129 + _133 + 32]
                                _213 = mem[_129 + ceil32(return_data.size) + 32]
                                if block.timestamp < sub_0a98d243[_98]:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                    revert with 'NH{q', 17
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and mem[_129 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                    revert with 'NH{q', 17
                                mem[0] = _98
                                mem[32] = 6
                                if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _213 / 100 and sub_f04db03e[_98] > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _213 / 100:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = _98
                                require ext_code.size(stor12)
                                staticcall stor12.0x2c59bac7 with:
                                        gas gas_remaining wei
                                       args _98
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _242 = mem[_238]
                                require mem[_238] == mem[_238]
                                mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _242
                                require ext_code.size(stor12)
                                staticcall stor12.0xf601b6a0 with:
                                        gas gas_remaining wei
                                       args _242
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _258 = mem[_254]
                                require mem[_254] <= test266151307()
                                require return_data.size - mem[_254] >= 64
                                if not bool(_254 + ceil32(return_data.size) + 64 <= test266151307()):
                                    revert with 'NH{q', 65
                                mem[64] = _254 + ceil32(return_data.size) + 64
                                _266 = mem[_254 + _258]
                                require mem[_254 + _258] <= test266151307()
                                require _254 + _258 + mem[_254 + _258] + 31 < _254 + return_data.size
                                _270 = mem[_254 + _258 + mem[_254 + _258]]
                                if mem[_254 + _258 + mem[_254 + _258]] > test266151307():
                                    revert with 'NH{q', 65
                                if _254 + ceil32(return_data.size) + ceil32(ceil32(mem[_254 + _258 + mem[_254 + _258]])) + 65 > test266151307() or ceil32(ceil32(mem[_254 + _258 + mem[_254 + _258]])) + 65 < 64:
                                    revert with 'NH{q', 65
                                mem[64] = _254 + ceil32(return_data.size) + ceil32(ceil32(mem[_254 + _258 + mem[_254 + _258]])) + 65
                                mem[_254 + ceil32(return_data.size) + 64] = _270
                                require _258 + _266 + _270 + 32 <= return_data.size
                                s = 0
                                while s < _270:
                                    mem[_254 + ceil32(return_data.size) + s + 96] = mem[_254 + _258 + _266 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_270) <= _270:
                                    mem[_254 + ceil32(return_data.size)] = _254 + ceil32(return_data.size) + 64
                                    require mem[_254 + _258 + 32] == mem[_254 + _258 + 32]
                                    mem[_254 + ceil32(return_data.size) + 32] = mem[_254 + _258 + 32]
                                    _317 = mem[_254 + ceil32(return_data.size) + 32]
                                    mem[0] = _98
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_98]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _317 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _317 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _317 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _213 / 100 * sub_f04db03e[_98] / 100) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    mem[_254 + ceil32(return_data.size) + _270 + 96] = 0
                                    mem[_254 + ceil32(return_data.size)] = _254 + ceil32(return_data.size) + 64
                                    require mem[_254 + _258 + 32] == mem[_254 + _258 + 32]
                                    mem[_254 + ceil32(return_data.size) + 32] = mem[_254 + _258 + 32]
                                    _323 = mem[_254 + ceil32(return_data.size) + 32]
                                    mem[0] = _98
                                    mem[32] = 4
                                    if block.timestamp < sub_0a98d243[_98]:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[_98] / 60:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 and _323 > -1 / block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89:
                                        revert with 'NH{q', 17
                                    if 0 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _323 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _323 / 100 > -(block.timestamp - sub_0a98d243[_98] / 60 * sub_b01bea89 * _213 / 100 * sub_f04db03e[_98] / 100) - 1:
                                        revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _98
        continue 
    return 0
}

function sub_d48a8b36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        if bool(stor3[arg1]) != 1:
            revert with 0, 'Stake : Not Eligible for Claim'
        if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
            revert with 'NH{q', 17
        if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
            revert with 'NH{q', 17
        if block.timestamp < sub_0a98d243[arg1] + (60 * sub_445cdc9b):
            revert with 0, 'Stake : Not Eligible for Claim'
        if not sub_6b2ed190[arg1]:
            if stor2:
                revert with 0, 'Pausable: paused'
            mem[100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 5
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x2c59bac7 with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(stor12)
            staticcall stor12.0xf601b6a0 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_6b2ed190[arg1]:
                _95 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((4 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 160
                _112 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _119 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(4 * ceil32(return_data.size)) + 160] = _119
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _112 + _119 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_119)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _112 + 128 len ceil32(_119)]
                if ceil32(_119) <= _119:
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _95 + 128] == mem[(2 * ceil32(return_data.size)) + _95 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _95 + 128]
                    _256 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _256 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _256 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_382] == bool(mem[_382])
                else:
                    mem[(4 * ceil32(return_data.size)) + _119 + 192] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _95 + 128] == mem[(2 * ceil32(return_data.size)) + _95 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _95 + 128]
                    _268 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _268 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _268 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_386] == bool(mem[_386])
            else:
                _88 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((4 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 160
                _109 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _115 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(4 * ceil32(return_data.size)) + 160] = _115
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _109 + _115 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_115)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _109 + 128 len ceil32(_115)]
                if ceil32(_115) <= _115:
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _88 + 128] == mem[(2 * ceil32(return_data.size)) + _88 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _88 + 128]
                    _255 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _366 = mem[_358]
                    require mem[_358] == mem[_358]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _366
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _366
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _414 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _422 = mem[_414]
                    require mem[_414] <= test266151307()
                    require return_data.size - mem[_414] >= 64
                    if not bool(_414 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _414 + ceil32(return_data.size) + 64
                    _438 = mem[_414 + _422]
                    require mem[_414 + _422] <= test266151307()
                    require _414 + _422 + mem[_414 + _422] + 31 < _414 + return_data.size
                    _446 = mem[_414 + _422 + mem[_414 + _422]]
                    if mem[_414 + _422 + mem[_414 + _422]] > test266151307():
                        revert with 'NH{q', 65
                    if _414 + ceil32(return_data.size) + ceil32(ceil32(mem[_414 + _422 + mem[_414 + _422]])) + 65 > test266151307() or ceil32(ceil32(mem[_414 + _422 + mem[_414 + _422]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _414 + ceil32(return_data.size) + ceil32(ceil32(mem[_414 + _422 + mem[_414 + _422]])) + 65
                    mem[_414 + ceil32(return_data.size) + 64] = _446
                    require _422 + _438 + _446 + 32 <= return_data.size
                    mem[_414 + ceil32(return_data.size) + 96 len ceil32(_446)] = mem[_414 + _422 + _438 + 32 len ceil32(_446)]
                    if ceil32(_446) <= _446:
                        mem[_414 + ceil32(return_data.size)] = _414 + ceil32(return_data.size) + 64
                        require mem[_414 + _422 + 32] == mem[_414 + _422 + 32]
                        mem[_414 + ceil32(return_data.size) + 32] = mem[_414 + _422 + 32]
                        _639 = mem[_414 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_414 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_414 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_414 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _639 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _639 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _639 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_783] == bool(mem[_783])
                    else:
                        mem[_414 + ceil32(return_data.size) + _446 + 96] = 0
                        mem[_414 + ceil32(return_data.size)] = _414 + ceil32(return_data.size) + 64
                        require mem[_414 + _422 + 32] == mem[_414 + _422 + 32]
                        mem[_414 + ceil32(return_data.size) + 32] = mem[_414 + _422 + 32]
                        _650 = mem[_414 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_414 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_414 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_414 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _650 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _650 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _650 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _255 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_791] == bool(mem[_791])
                else:
                    mem[(4 * ceil32(return_data.size)) + _115 + 192] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _88 + 128] == mem[(2 * ceil32(return_data.size)) + _88 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _88 + 128]
                    _266 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _362 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _370 = mem[_362]
                    require mem[_362] == mem[_362]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _370
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _370
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _426 = mem[_418]
                    require mem[_418] <= test266151307()
                    require return_data.size - mem[_418] >= 64
                    if not bool(_418 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _418 + ceil32(return_data.size) + 64
                    _442 = mem[_418 + _426]
                    require mem[_418 + _426] <= test266151307()
                    require _418 + _426 + mem[_418 + _426] + 31 < _418 + return_data.size
                    _450 = mem[_418 + _426 + mem[_418 + _426]]
                    if mem[_418 + _426 + mem[_418 + _426]] > test266151307():
                        revert with 'NH{q', 65
                    if _418 + ceil32(return_data.size) + ceil32(ceil32(mem[_418 + _426 + mem[_418 + _426]])) + 65 > test266151307() or ceil32(ceil32(mem[_418 + _426 + mem[_418 + _426]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _418 + ceil32(return_data.size) + ceil32(ceil32(mem[_418 + _426 + mem[_418 + _426]])) + 65
                    mem[_418 + ceil32(return_data.size) + 64] = _450
                    require _426 + _442 + _450 + 32 <= return_data.size
                    mem[_418 + ceil32(return_data.size) + 96 len ceil32(_450)] = mem[_418 + _426 + _442 + 32 len ceil32(_450)]
                    if ceil32(_450) <= _450:
                        mem[_418 + ceil32(return_data.size)] = _418 + ceil32(return_data.size) + 64
                        require mem[_418 + _426 + 32] == mem[_418 + _426 + 32]
                        mem[_418 + ceil32(return_data.size) + 32] = mem[_418 + _426 + 32]
                        _640 = mem[_418 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_418 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_418 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_418 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _640 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _640 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _640 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_784] == bool(mem[_784])
                    else:
                        mem[_418 + ceil32(return_data.size) + _450 + 96] = 0
                        mem[_418 + ceil32(return_data.size)] = _418 + ceil32(return_data.size) + 64
                        require mem[_418 + _426 + 32] == mem[_418 + _426 + 32]
                        mem[_418 + ceil32(return_data.size) + 32] = mem[_418 + _426 + 32]
                        _652 = mem[_418 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_418 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_418 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_418 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _652 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _652 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _652 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _266 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_792] == bool(mem[_792])
        else:
            if block.timestamp < sub_6b2ed190[arg1]:
                revert with 0, 'Stake : Not Eligible for Claim'
            if stor2:
                revert with 0, 'Pausable: paused'
            mem[100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 5
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x2c59bac7 with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(stor12)
            staticcall stor12.0xf601b6a0 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_6b2ed190[arg1]:
                _99 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((4 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 160
                _116 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _121 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(4 * ceil32(return_data.size)) + 160] = _121
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _116 + _121 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_121)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _116 + 128 len ceil32(_121)]
                if ceil32(_121) <= _121:
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _99 + 128] == mem[(2 * ceil32(return_data.size)) + _99 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _99 + 128]
                    _254 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _254 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _254 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_381] == bool(mem[_381])
                else:
                    mem[(4 * ceil32(return_data.size)) + _121 + 192] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _99 + 128] == mem[(2 * ceil32(return_data.size)) + _99 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _99 + 128]
                    _264 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _264 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _264 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_385] == bool(mem[_385])
            else:
                _93 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((4 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 160
                _111 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _118 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(4 * ceil32(return_data.size)) + 160] = _118
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _111 + _118 + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 192 len ceil32(_118)] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _111 + 128 len ceil32(_118)]
                if ceil32(_118) <= _118:
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _93 + 128] == mem[(2 * ceil32(return_data.size)) + _93 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _93 + 128]
                    _253 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _365 = mem[_357]
                    require mem[_357] == mem[_357]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _365
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _365
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _421 = mem[_413]
                    require mem[_413] <= test266151307()
                    require return_data.size - mem[_413] >= 64
                    if not bool(_413 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _413 + ceil32(return_data.size) + 64
                    _437 = mem[_413 + _421]
                    require mem[_413 + _421] <= test266151307()
                    require _413 + _421 + mem[_413 + _421] + 31 < _413 + return_data.size
                    _445 = mem[_413 + _421 + mem[_413 + _421]]
                    if mem[_413 + _421 + mem[_413 + _421]] > test266151307():
                        revert with 'NH{q', 65
                    if _413 + ceil32(return_data.size) + ceil32(ceil32(mem[_413 + _421 + mem[_413 + _421]])) + 65 > test266151307() or ceil32(ceil32(mem[_413 + _421 + mem[_413 + _421]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _413 + ceil32(return_data.size) + ceil32(ceil32(mem[_413 + _421 + mem[_413 + _421]])) + 65
                    mem[_413 + ceil32(return_data.size) + 64] = _445
                    require _421 + _437 + _445 + 32 <= return_data.size
                    mem[_413 + ceil32(return_data.size) + 96 len ceil32(_445)] = mem[_413 + _421 + _437 + 32 len ceil32(_445)]
                    if ceil32(_445) <= _445:
                        mem[_413 + ceil32(return_data.size)] = _413 + ceil32(return_data.size) + 64
                        require mem[_413 + _421 + 32] == mem[_413 + _421 + 32]
                        mem[_413 + ceil32(return_data.size) + 32] = mem[_413 + _421 + 32]
                        _637 = mem[_413 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_413 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_413 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_413 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _637 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _637 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _637 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _781 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_781] == bool(mem[_781])
                    else:
                        mem[_413 + ceil32(return_data.size) + _445 + 96] = 0
                        mem[_413 + ceil32(return_data.size)] = _413 + ceil32(return_data.size) + 64
                        require mem[_413 + _421 + 32] == mem[_413 + _421 + 32]
                        mem[_413 + ceil32(return_data.size) + 32] = mem[_413 + _421 + 32]
                        _646 = mem[_413 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_413 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_413 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_413 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _646 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _646 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _646 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _253 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _789 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_789] == bool(mem[_789])
                else:
                    mem[(4 * ceil32(return_data.size)) + _118 + 192] = 0
                    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 160
                    require mem[(2 * ceil32(return_data.size)) + _93 + 128] == mem[(2 * ceil32(return_data.size)) + _93 + 128]
                    mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _93 + 128]
                    _262 = mem[(4 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(4 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(4 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _369 = mem[_361]
                    require mem[_361] == mem[_361]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _369
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _369
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _425 = mem[_417]
                    require mem[_417] <= test266151307()
                    require return_data.size - mem[_417] >= 64
                    if not bool(_417 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _417 + ceil32(return_data.size) + 64
                    _441 = mem[_417 + _425]
                    require mem[_417 + _425] <= test266151307()
                    require _417 + _425 + mem[_417 + _425] + 31 < _417 + return_data.size
                    _449 = mem[_417 + _425 + mem[_417 + _425]]
                    if mem[_417 + _425 + mem[_417 + _425]] > test266151307():
                        revert with 'NH{q', 65
                    if _417 + ceil32(return_data.size) + ceil32(ceil32(mem[_417 + _425 + mem[_417 + _425]])) + 65 > test266151307() or ceil32(ceil32(mem[_417 + _425 + mem[_417 + _425]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _417 + ceil32(return_data.size) + ceil32(ceil32(mem[_417 + _425 + mem[_417 + _425]])) + 65
                    mem[_417 + ceil32(return_data.size) + 64] = _449
                    require _425 + _441 + _449 + 32 <= return_data.size
                    mem[_417 + ceil32(return_data.size) + 96 len ceil32(_449)] = mem[_417 + _425 + _441 + 32 len ceil32(_449)]
                    if ceil32(_449) <= _449:
                        mem[_417 + ceil32(return_data.size)] = _417 + ceil32(return_data.size) + 64
                        require mem[_417 + _425 + 32] == mem[_417 + _425 + 32]
                        mem[_417 + ceil32(return_data.size) + 32] = mem[_417 + _425 + 32]
                        _638 = mem[_417 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_417 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_417 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_417 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _638 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _638 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _638 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _782 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_782] == bool(mem[_782])
                    else:
                        mem[_417 + ceil32(return_data.size) + _449 + 96] = 0
                        mem[_417 + ceil32(return_data.size)] = _417 + ceil32(return_data.size) + 64
                        require mem[_417 + _425 + 32] == mem[_417 + _425 + 32]
                        mem[_417 + ceil32(return_data.size) + 32] = mem[_417 + _425 + 32]
                        _648 = mem[_417 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_417 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_417 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_417 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _648 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _648 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _648 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _262 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _790 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_790] == bool(mem[_790])
    else:
        mem[100] = arg1
        require ext_code.size(stor12)
        staticcall stor12.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Stake : Not Owner'
        if bool(stor3[arg1]) != 1:
            revert with 0, 'Stake : Not Eligible for Claim'
        if sub_445cdc9b and 60 > -1 / sub_445cdc9b:
            revert with 'NH{q', 17
        if sub_0a98d243[arg1] > (-60 * sub_445cdc9b) - 1:
            revert with 'NH{q', 17
        if block.timestamp < sub_0a98d243[arg1] + (60 * sub_445cdc9b):
            revert with 0, 'Stake : Not Eligible for Claim'
        if not sub_6b2ed190[arg1]:
            if stor2:
                revert with 0, 'Pausable: paused'
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 5
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x2c59bac7 with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(stor12)
            staticcall stor12.0xf601b6a0 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_6b2ed190[arg1]:
                _132 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((6 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 160
                _146 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _152 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(6 * ceil32(return_data.size)) + 160] = _152
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _146 + _152 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 192 len ceil32(_152)] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _146 + 128 len ceil32(_152)]
                if ceil32(_152) <= _152:
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _132 + 128] == mem[(4 * ceil32(return_data.size)) + _132 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _132 + 128]
                    _260 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _260 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _260 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_384] == bool(mem[_384])
                else:
                    mem[(6 * ceil32(return_data.size)) + _152 + 192] = 0
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _132 + 128] == mem[(4 * ceil32(return_data.size)) + _132 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _132 + 128]
                    _276 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _276 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _276 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_388] == bool(mem[_388])
            else:
                _127 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((6 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 160
                _142 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _147 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(6 * ceil32(return_data.size)) + 160] = _147
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _142 + _147 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 192 len ceil32(_147)] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _142 + 128 len ceil32(_147)]
                if ceil32(_147) <= _147:
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _127 + 128] == mem[(4 * ceil32(return_data.size)) + _127 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _127 + 128]
                    _259 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _360 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _368 = mem[_360]
                    require mem[_360] == mem[_360]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _368
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _368
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _416 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _424 = mem[_416]
                    require mem[_416] <= test266151307()
                    require return_data.size - mem[_416] >= 64
                    if not bool(_416 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _416 + ceil32(return_data.size) + 64
                    _440 = mem[_416 + _424]
                    require mem[_416 + _424] <= test266151307()
                    require _416 + _424 + mem[_416 + _424] + 31 < _416 + return_data.size
                    _448 = mem[_416 + _424 + mem[_416 + _424]]
                    if mem[_416 + _424 + mem[_416 + _424]] > test266151307():
                        revert with 'NH{q', 65
                    if _416 + ceil32(return_data.size) + ceil32(ceil32(mem[_416 + _424 + mem[_416 + _424]])) + 65 > test266151307() or ceil32(ceil32(mem[_416 + _424 + mem[_416 + _424]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _416 + ceil32(return_data.size) + ceil32(ceil32(mem[_416 + _424 + mem[_416 + _424]])) + 65
                    mem[_416 + ceil32(return_data.size) + 64] = _448
                    require _424 + _440 + _448 + 32 <= return_data.size
                    mem[_416 + ceil32(return_data.size) + 96 len ceil32(_448)] = mem[_416 + _424 + _440 + 32 len ceil32(_448)]
                    if ceil32(_448) <= _448:
                        mem[_416 + ceil32(return_data.size)] = _416 + ceil32(return_data.size) + 64
                        require mem[_416 + _424 + 32] == mem[_416 + _424 + 32]
                        mem[_416 + ceil32(return_data.size) + 32] = mem[_416 + _424 + 32]
                        _643 = mem[_416 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_416 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_416 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_416 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _643 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _643 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _643 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_787] == bool(mem[_787])
                    else:
                        mem[_416 + ceil32(return_data.size) + _448 + 96] = 0
                        mem[_416 + ceil32(return_data.size)] = _416 + ceil32(return_data.size) + 64
                        require mem[_416 + _424 + 32] == mem[_416 + _424 + 32]
                        mem[_416 + ceil32(return_data.size) + 32] = mem[_416 + _424 + 32]
                        _658 = mem[_416 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_416 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_416 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_416 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _658 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _658 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _658 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _259 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _795 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_795] == bool(mem[_795])
                else:
                    mem[(6 * ceil32(return_data.size)) + _147 + 192] = 0
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _127 + 128] == mem[(4 * ceil32(return_data.size)) + _127 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _127 + 128]
                    _274 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _372 = mem[_364]
                    require mem[_364] == mem[_364]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _372
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _372
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _420 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _428 = mem[_420]
                    require mem[_420] <= test266151307()
                    require return_data.size - mem[_420] >= 64
                    if not bool(_420 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _420 + ceil32(return_data.size) + 64
                    _444 = mem[_420 + _428]
                    require mem[_420 + _428] <= test266151307()
                    require _420 + _428 + mem[_420 + _428] + 31 < _420 + return_data.size
                    _452 = mem[_420 + _428 + mem[_420 + _428]]
                    if mem[_420 + _428 + mem[_420 + _428]] > test266151307():
                        revert with 'NH{q', 65
                    if _420 + ceil32(return_data.size) + ceil32(ceil32(mem[_420 + _428 + mem[_420 + _428]])) + 65 > test266151307() or ceil32(ceil32(mem[_420 + _428 + mem[_420 + _428]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _420 + ceil32(return_data.size) + ceil32(ceil32(mem[_420 + _428 + mem[_420 + _428]])) + 65
                    mem[_420 + ceil32(return_data.size) + 64] = _452
                    require _428 + _444 + _452 + 32 <= return_data.size
                    mem[_420 + ceil32(return_data.size) + 96 len ceil32(_452)] = mem[_420 + _428 + _444 + 32 len ceil32(_452)]
                    if ceil32(_452) <= _452:
                        mem[_420 + ceil32(return_data.size)] = _420 + ceil32(return_data.size) + 64
                        require mem[_420 + _428 + 32] == mem[_420 + _428 + 32]
                        mem[_420 + ceil32(return_data.size) + 32] = mem[_420 + _428 + 32]
                        _644 = mem[_420 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_420 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_420 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_420 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _644 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _644 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _644 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_788] == bool(mem[_788])
                    else:
                        mem[_420 + ceil32(return_data.size) + _452 + 96] = 0
                        mem[_420 + ceil32(return_data.size)] = _420 + ceil32(return_data.size) + 64
                        require mem[_420 + _428 + 32] == mem[_420 + _428 + 32]
                        mem[_420 + ceil32(return_data.size) + 32] = mem[_420 + _428 + 32]
                        _660 = mem[_420 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_420 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_420 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_420 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _660 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _660 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _660 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _274 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_796] == bool(mem[_796])
        else:
            if block.timestamp < sub_6b2ed190[arg1]:
                revert with 0, 'Stake : Not Eligible for Claim'
            if stor2:
                revert with 0, 'Pausable: paused'
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[0] = arg1
            mem[32] = 5
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(stor12)
            staticcall stor12.0x2c59bac7 with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
            require ext_code.size(stor12)
            staticcall stor12.0xf601b6a0 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_6b2ed190[arg1]:
                _135 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((6 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 160
                _149 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _156 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(6 * ceil32(return_data.size)) + 160] = _156
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _149 + _156 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 192 len ceil32(_156)] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _149 + 128 len ceil32(_156)]
                if ceil32(_156) <= _156:
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _135 + 128] == mem[(4 * ceil32(return_data.size)) + _135 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _135 + 128]
                    _258 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _258 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _258 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _383 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_383] == bool(mem[_383])
                else:
                    mem[(6 * ceil32(return_data.size)) + _156 + 192] = 0
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _135 + 128] == mem[(4 * ceil32(return_data.size)) + _135 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _135 + 128]
                    _272 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 > -1:
                        revert with 'NH{q', 17
                    sub_6b2ed190[arg1] = 0
                    sub_f04db03e[arg1] = 0
                    sub_0a98d243[arg1] = block.timestamp
                    if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100) - 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 7
                    sub_aca8dbad[arg1] += block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100
                    mem[mem[64] + 4] = sub_ab4588afAddress
                    mem[mem[64] + 36] = address(ext_call.return_data[0])
                    mem[mem[64] + 68] = block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _272 / 100
                    require ext_code.size(stor13)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args sub_ab4588afAddress, address(ext_call.return_data[0]), block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _272 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_387] == bool(mem[_387])
            else:
                _130 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 >= 64
                if not bool((6 * ceil32(return_data.size)) + 160 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 160
                _145 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
                _151 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161 > test266151307() or ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 65 < 64:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] + 96])) + 161
                mem[(6 * ceil32(return_data.size)) + 160] = _151
                require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _145 + _151 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 192 len ceil32(_151)] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + _145 + 128 len ceil32(_151)]
                if ceil32(_151) <= _151:
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _130 + 128] == mem[(4 * ceil32(return_data.size)) + _130 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _130 + 128]
                    _257 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _367 = mem[_359]
                    require mem[_359] == mem[_359]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _367
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _367
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _415 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _423 = mem[_415]
                    require mem[_415] <= test266151307()
                    require return_data.size - mem[_415] >= 64
                    if not bool(_415 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _415 + ceil32(return_data.size) + 64
                    _439 = mem[_415 + _423]
                    require mem[_415 + _423] <= test266151307()
                    require _415 + _423 + mem[_415 + _423] + 31 < _415 + return_data.size
                    _447 = mem[_415 + _423 + mem[_415 + _423]]
                    if mem[_415 + _423 + mem[_415 + _423]] > test266151307():
                        revert with 'NH{q', 65
                    if _415 + ceil32(return_data.size) + ceil32(ceil32(mem[_415 + _423 + mem[_415 + _423]])) + 65 > test266151307() or ceil32(ceil32(mem[_415 + _423 + mem[_415 + _423]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _415 + ceil32(return_data.size) + ceil32(ceil32(mem[_415 + _423 + mem[_415 + _423]])) + 65
                    mem[_415 + ceil32(return_data.size) + 64] = _447
                    require _423 + _439 + _447 + 32 <= return_data.size
                    mem[_415 + ceil32(return_data.size) + 96 len ceil32(_447)] = mem[_415 + _423 + _439 + 32 len ceil32(_447)]
                    if ceil32(_447) <= _447:
                        mem[_415 + ceil32(return_data.size)] = _415 + ceil32(return_data.size) + 64
                        require mem[_415 + _423 + 32] == mem[_415 + _423 + 32]
                        mem[_415 + ceil32(return_data.size) + 32] = mem[_415 + _423 + 32]
                        _641 = mem[_415 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_415 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_415 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_415 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _641 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _641 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _641 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_785] == bool(mem[_785])
                    else:
                        mem[_415 + ceil32(return_data.size) + _447 + 96] = 0
                        mem[_415 + ceil32(return_data.size)] = _415 + ceil32(return_data.size) + 64
                        require mem[_415 + _423 + 32] == mem[_415 + _423 + 32]
                        mem[_415 + ceil32(return_data.size) + 32] = mem[_415 + _423 + 32]
                        _654 = mem[_415 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_415 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_415 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_415 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _654 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _654 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _654 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _257 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_793] == bool(mem[_793])
                else:
                    mem[(6 * ceil32(return_data.size)) + _151 + 192] = 0
                    mem[(6 * ceil32(return_data.size)) + 96] = (6 * ceil32(return_data.size)) + 160
                    require mem[(4 * ceil32(return_data.size)) + _130 + 128] == mem[(4 * ceil32(return_data.size)) + _130 + 128]
                    mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _130 + 128]
                    _270 = mem[(6 * ceil32(return_data.size)) + 128]
                    if block.timestamp < sub_0a98d243[arg1]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[(6 * ceil32(return_data.size)) + 128] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 6
                    if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100 and sub_f04db03e[arg1] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[(6 * ceil32(return_data.size)) + 128] / 100:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor12)
                    staticcall stor12.0x2c59bac7 with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _363 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _371 = mem[_363]
                    require mem[_363] == mem[_363]
                    mem[mem[64]] = 0xf601b6a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _371
                    require ext_code.size(stor12)
                    staticcall stor12.0xf601b6a0 with:
                            gas gas_remaining wei
                           args _371
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _427 = mem[_419]
                    require mem[_419] <= test266151307()
                    require return_data.size - mem[_419] >= 64
                    if not bool(_419 + ceil32(return_data.size) + 64 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = _419 + ceil32(return_data.size) + 64
                    _443 = mem[_419 + _427]
                    require mem[_419 + _427] <= test266151307()
                    require _419 + _427 + mem[_419 + _427] + 31 < _419 + return_data.size
                    _451 = mem[_419 + _427 + mem[_419 + _427]]
                    if mem[_419 + _427 + mem[_419 + _427]] > test266151307():
                        revert with 'NH{q', 65
                    if _419 + ceil32(return_data.size) + ceil32(ceil32(mem[_419 + _427 + mem[_419 + _427]])) + 65 > test266151307() or ceil32(ceil32(mem[_419 + _427 + mem[_419 + _427]])) + 65 < 64:
                        revert with 'NH{q', 65
                    mem[64] = _419 + ceil32(return_data.size) + ceil32(ceil32(mem[_419 + _427 + mem[_419 + _427]])) + 65
                    mem[_419 + ceil32(return_data.size) + 64] = _451
                    require _427 + _443 + _451 + 32 <= return_data.size
                    mem[_419 + ceil32(return_data.size) + 96 len ceil32(_451)] = mem[_419 + _427 + _443 + 32 len ceil32(_451)]
                    if ceil32(_451) <= _451:
                        mem[_419 + ceil32(return_data.size)] = _419 + ceil32(return_data.size) + 64
                        require mem[_419 + _427 + 32] == mem[_419 + _427 + 32]
                        mem[_419 + ceil32(return_data.size) + 32] = mem[_419 + _427 + 32]
                        _642 = mem[_419 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_419 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_419 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_419 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _642 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _642 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _642 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _786 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_786] == bool(mem[_786])
                    else:
                        mem[_419 + ceil32(return_data.size) + _451 + 96] = 0
                        mem[_419 + ceil32(return_data.size)] = _419 + ceil32(return_data.size) + 64
                        require mem[_419 + _427 + 32] == mem[_419 + _427 + 32]
                        mem[_419 + ceil32(return_data.size) + 32] = mem[_419 + _427 + 32]
                        _656 = mem[_419 + ceil32(return_data.size) + 32]
                        if block.timestamp < sub_0a98d243[arg1]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 and sub_b01bea89 > -1 / block.timestamp - sub_0a98d243[arg1] / 60:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 and mem[_419 + ceil32(return_data.size) + 32] > -1 / block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_419 + ceil32(return_data.size) + 32] / 100 > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        sub_6b2ed190[arg1] = 0
                        sub_f04db03e[arg1] = 0
                        sub_0a98d243[arg1] = block.timestamp
                        if sub_aca8dbad[arg1] > -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * mem[_419 + ceil32(return_data.size) + 32] / 100) + -(block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100) - 1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 7
                        sub_aca8dbad[arg1] = sub_aca8dbad[arg1] + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _656 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64] + 4] = sub_ab4588afAddress
                        mem[mem[64] + 36] = address(ext_call.return_data[0])
                        mem[mem[64] + 68] = (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _656 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        require ext_code.size(stor13)
                        call stor13.0x23b872dd with:
                             gas gas_remaining wei
                            args sub_ab4588afAddress, address(ext_call.return_data[0]), (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _656 / 100) + (block.timestamp - sub_0a98d243[arg1] / 60 * sub_b01bea89 * _270 / 100 * sub_f04db03e[arg1] / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_794] == bool(mem[_794])
}



}
