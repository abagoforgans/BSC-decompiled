contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of struct stor5;
mapping of struct roleAdmin;
array of struct roleMember;
uint8 paused;
uint256 stor251;
uint256 ticketId;
address sub_73afb7bbAddress;
mapping of struct sub_b14962f2;
mapping of struct sub_fed02f66;
array of struct sub_672804e3;
mapping of uint8 stor406;
address feeReceiverAddress;
uint256 stor408; offset 1
uint256 sub_eadf7101;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_319ef2c2(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor406[arg1][arg2])
}

function paused() payable {
    return bool(paused)
}

function sub_672804e3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_672804e3[arg1].field_0
    return sub_672804e3[arg1][arg2].field_0
}

function sub_73afb7bb(?) payable {
    return sub_73afb7bbAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_b14962f2(?) payable {
    require calldata.size - 4 >= 32
    return sub_b14962f2[arg1].field_0, 
           sub_b14962f2[arg1].field_256,
           sub_b14962f2[arg1].field_512,
           sub_b14962f2[arg1].field_768,
           bool(sub_b14962f2[arg1].field_1024)
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_eadf7101(?) payable {
    return sub_eadf7101
}

function ticketId() payable {
    return ticketId
}

function sub_fed02f66(?) payable {
    require calldata.size - 4 >= 32
    return sub_fed02f66[arg1].field_0, 
           sub_fed02f66[arg1].field_256,
           sub_fed02f66[arg1].field_512,
           sub_fed02f66[arg1].field_768,
           sub_fed02f66[arg1].field_1024,
           sub_fed02f66[arg1].field_1280,
           bool(sub_fed02f66[arg1].field_1440),
           bool(sub_fed02f66[arg1].field_1448)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_dda50957(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        sub_eadf7101 = arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
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
    revert with 0, 'Strings: hex length insufficient'
}

function sub_dcb61901(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        stor406[arg1][arg2] = uint8(bool(arg3))
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
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
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
    revert with 0, 'Strings: hex length insufficient'
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_642afbc5(?) payable {
    require calldata.size - 4 >= 160
    require arg5 == bool(arg5)
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
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
        revert with 0, 'Strings: hex length insufficient'
    sub_b14962f2[arg1].field_0 = arg1
    sub_b14962f2[arg1].field_256 = arg2
    sub_b14962f2[arg1].field_512 = arg3
    sub_b14962f2[arg1].field_768 = arg4
    sub_b14962f2[arg1].field_1024 = uint8(bool(arg5))
    emit 0x13c5e192: arg1, sha3(sub_b14962f2[arg1].field_0, sub_b14962f2[arg1].field_256, sub_b14962f2[arg1].field_512, sub_b14962f2[arg1].field_768, bool(sub_b14962f2[arg1].field_1024))
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if floor32(arg3.length) + 97 < 96 or floor32(arg3.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if floor32(arg4.length) + 98 < 97 or floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_1089978b(?) payable {
    require calldata.size - 4 >= 32
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_fed02f66[arg1].field_1280 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPEVOL: You arent the owner of this pet'
    if sub_fed02f66[arg1].field_1448:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MPEVOL: This ticket is already finished'
    if block.timestamp <= sub_fed02f66[arg1].field_768:
        revert with 0, 'MPEVOL: This pet is not ready'
    sub_fed02f66[arg1].field_1448 = 1
    require ext_code.size(sub_73afb7bbAddress)
    call sub_73afb7bbAddress.burn(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, sub_fed02f66[arg1].field_256, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_73afb7bbAddress)
    call sub_73afb7bbAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), sub_b14962f2[stor404[arg1].field_256].field_256, 1, 128, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa08728a3: sub_b14962f2[stor404[arg1].field_256].field_256, block.timestamp, arg1, msg.sender, sha3(sub_fed02f66[arg1].field_0, sub_fed02f66[arg1].field_256, sub_fed02f66[arg1].field_512, sub_fed02f66[arg1].field_768, sub_fed02f66[arg1].field_1024, sub_fed02f66[arg1].field_1280, 0, 0)
    stor251 = 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_335bfbb5(?) payable {
    require calldata.size - 4 >= 32
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(sub_73afb7bbAddress)
    staticcall sub_73afb7bbAddress.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'MPEVOL: need to approve evolution for all '
    if sub_fed02f66[arg1].field_1280 != msg.sender:
        revert with 0, 'MPEVOL: You arent the owner of this pet'
    require ext_code.size(sub_73afb7bbAddress)
    staticcall sub_73afb7bbAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, 43
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MPEVOL: insuffisant treat balance'
    if sub_fed02f66[arg1].field_1440:
        revert with 0, 'MPEVOL: Cannot reduce the evolution time below  50%'
    require ext_code.size(sub_73afb7bbAddress)
    call sub_73afb7bbAddress.burn(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, 43, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_fed02f66[arg1].field_1440 = 1
    if sub_fed02f66[arg1].field_768 < stor408:
        revert with 0, 17
    sub_fed02f66[arg1].field_768 -= stor408
    emit 0x9c9cf4a8: arg1, msg.sender, sha3(sub_fed02f66[arg1].field_0, sub_fed02f66[arg1].field_256, sub_fed02f66[arg1].field_512, sub_fed02f66[arg1].field_768, sub_fed02f66[arg1].field_1024, sub_fed02f66[arg1].field_1280, 0, 0)
    stor251 = 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_3471484d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _64 = mem[(32 * idx) + 128]
        if stor251 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor251 = 2
        if paused:
            revert with 0, 'Pausable: paused'
        if sub_fed02f66[mem[(32 * idx) + 128]].field_1280 != msg.sender:
            revert with 0, 'MPEVOL: You arent the owner of this pet'
        if sub_fed02f66[mem[(32 * idx) + 128]].field_1448:
            revert with 0, 'MPEVOL: This ticket is already finished'
        if block.timestamp <= sub_fed02f66[mem[(32 * idx) + 128]].field_768:
            revert with 0, 'MPEVOL: This pet is not ready'
        sub_fed02f66[mem[(32 * idx) + 128]].field_1448 = 1
        require ext_code.size(sub_73afb7bbAddress)
        call sub_73afb7bbAddress.burn(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, sub_fed02f66[mem[(32 * idx) + 128]].field_256, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = sub_fed02f66[mem[(32 * idx) + 128]].field_256
        require ext_code.size(sub_73afb7bbAddress)
        call sub_73afb7bbAddress.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, sub_b14962f2[stor404[mem[(32 * idx) + 128]].field_256].field_256, 1, 128, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 404
        mem[mem[64] + 32] = sub_fed02f66[mem[(32 * idx) + 128]].field_256
        mem[mem[64] + 64] = sub_fed02f66[_64].field_512
        mem[mem[64] + 96] = sub_fed02f66[_64].field_768
        mem[mem[64] + 128] = sub_fed02f66[_64].field_1024
        mem[mem[64] + 160] = sub_fed02f66[_64].field_1280
        mem[mem[64] + 192] = 0
        mem[mem[64] + 224] = 0
        mem[0] = sub_fed02f66[_64].field_256
        mem[32] = 403
        mem[mem[64]] = sub_b14962f2[stor404[_64].field_256].field_256
        mem[mem[64] + 32] = block.timestamp
        emit 0xa08728a3: sub_b14962f2[stor404[_64].field_256].field_256, block.timestamp, _64, msg.sender, sha3(sub_fed02f66[_64].field_0, sub_fed02f66[_64].field_256, sub_fed02f66[_64].field_512, sub_fed02f66[_64].field_768, sub_fed02f66[_64].field_1024, sub_fed02f66[_64].field_1280, 0, 0)
        stor251 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ac8935cb(?) payable {
    require calldata.size - 4 >= 64
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(sub_73afb7bbAddress)
    staticcall sub_73afb7bbAddress.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'MPEVOL: need to approve evolution for all '
    if not sub_b14962f2[arg1].field_1024:
        revert with 0, 'MPEVOL: Evolution do not accept this pet'
    require ext_code.size(sub_73afb7bbAddress)
    staticcall sub_73afb7bbAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 'MPEVOL: unsufisant pet balance'
    if sub_b14962f2[arg1].field_768 != 5:
        if sub_b14962f2[arg1].field_768 > sub_b14962f2[arg2].field_768:
            revert with 0, 'MPEVOL: Can only evolve pets of same or higher rarity'
        require ext_code.size(sub_73afb7bbAddress)
        staticcall sub_73afb7bbAddress.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'MPEVOL: unsufisant pet balance'
        if sub_b14962f2[arg1].field_512 != sub_b14962f2[arg2].field_512:
            if not stor406[stor403[arg1].field_512][stor403[arg2].field_512]:
                revert with 0, 'MPEVOL: These collections are not compatible'
        require ext_code.size(sub_73afb7bbAddress)
        call sub_73afb7bbAddress.burn(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_73afb7bbAddress)
    call sub_73afb7bbAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1, 1, 160, 4, 0x3078303000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ticketId++
    if block.timestamp > !sub_eadf7101:
        revert with 0, 17
    sub_fed02f66[stor401].field_0 = ticketId
    sub_fed02f66[stor401].field_256 = arg1
    sub_fed02f66[stor401].field_512 = block.timestamp
    sub_fed02f66[stor401].field_768 = block.timestamp + sub_eadf7101
    sub_fed02f66[stor401].field_1024 = arg2
    sub_fed02f66[stor401].field_1280 = msg.sender
    sub_fed02f66[stor401].field_1440 = 0
    sub_fed02f66[stor401].field_1448 = 0
    sub_fed02f66[stor401].field_1456 = 0
    sub_672804e3[msg.sender].field_0++
    sub_672804e3[msg.sender][sub_672804e3[msg.sender].field_0].field_0 = ticketId
    emit 0x459706e5: ticketId, msg.sender, sha3(sub_fed02f66[stor401].field_0, sub_fed02f66[stor401].field_256, sub_fed02f66[stor401].field_512, sub_fed02f66[stor401].field_768, sub_fed02f66[stor401].field_1024, sub_fed02f66[stor401].field_1280, 0, 0)
    stor251 = 1
}

function sub_8af9b705(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 99 < 98 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[32] = sha3(mem[(32 * idx) + 128], 406)
            stor406[mem[(32 * idx) + 128]][mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = uint8(bool(mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_89393020(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 68).length) + 99 < 98 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 100).length) + 100 < 99 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 132).length) + 101 < 100 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132
    while idx < ('cd', 132).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _192 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 0, 50
            _196 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 0, 50
            _199 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
                revert with 0, 50
            _201 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100]:
                revert with 0, 50
            _203 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132]
            _204 = mem[64]
            mem[64] = mem[64] + 160
            mem[_204] = mem[(32 * idx) + 128]
            mem[_204 + 32] = _196
            mem[_204 + 64] = _199
            mem[_204 + 96] = _201
            mem[_204 + 128] = bool(_203)
            mem[0] = _192
            mem[32] = 403
            sub_b14962f2[_192].field_0 = _192
            sub_b14962f2[_192].field_256 = _196
            sub_b14962f2[_192].field_512 = _199
            sub_b14962f2[_192].field_768 = _201
            sub_b14962f2[_192].field_1024 = uint8(bool(_203))
            mem[mem[64]] = sub_b14962f2[_192].field_0
            mem[mem[64] + 32] = sub_b14962f2[_192].field_256
            mem[mem[64] + 64] = sub_b14962f2[_192].field_512
            mem[mem[64] + 96] = sub_b14962f2[_192].field_768
            mem[mem[64] + 128] = bool(sub_b14962f2[_192].field_1024)
            emit 0x13c5e192: _192, sha3(sub_b14962f2[_192].field_0, sub_b14962f2[_192].field_256, sub_b14962f2[_192].field_512, sub_b14962f2[_192].field_768, bool(sub_b14962f2[_192].field_1024))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 229 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        stor251 = 1
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor251 = 1
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor251 = 1
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor251 = 1
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor251 = 1
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        paused = 0
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            paused = 0
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                paused = 0
                                            else:
                                                uint8(stor0.field_0) = 1
                                                uint8(stor0.field_8) = 1
                                                Mask(248, 0, stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
                                                if uint8(stor0.field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                if uint8(stor0.field_8):
                                                    paused = 0
                                                else:
                                                    uint8(stor0.field_0) = 1
                                                    uint8(stor0.field_8) = 1
                                                    Mask(248, 0, stor0.field_8) = 0
                                                    uint8(stor0.field_8) = 0
                                                    if uint8(stor0.field_0):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                    if uint8(stor0.field_8):
                                                        paused = 0
                                                    else:
                                                        uint8(stor0.field_0) = 1
                                                        uint8(stor0.field_8) = 1
                                                        Mask(248, 0, stor0.field_8) = 0
                                                        uint8(stor0.field_8) = 0
                                                        uint8(stor0.field_8) = 0
                                                        if uint8(stor0.field_0):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                        if uint8(stor0.field_8):
                                                            paused = 0
                                                        else:
                                                            uint8(stor0.field_0) = 1
                                                            uint8(stor0.field_8) = 1
                                                            Mask(248, 0, stor0.field_8) = 0
                                                            if uint8(stor0.field_0):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                            if uint8(stor0.field_8):
                                                                paused = 0
                                                            else:
                                                                uint8(stor0.field_0) = 1
                                                                uint8(stor0.field_8) = 1
                                                                Mask(248, 0, stor0.field_8) = 0
                                                                uint8(stor0.field_8) = 0
                                                                if uint8(stor0.field_0):
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                                                if uint8(stor0.field_8):
                                                                    paused = 0
                                                                else:
                                                                    uint8(stor0.field_0) = 1
                                                                    uint8(stor0.field_8) = 1
                                                                    Mask(248, 0, stor0.field_8) = 0
                                                                    paused = 0
                                                                    uint8(stor0.field_8) = 0
                                                                    uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, msg.sender, msg.sender);
    if not roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0++
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0].field_0 = msg.sender
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0].field_160 = 0
        roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0 = roleMember[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217].field_0
    sub_eadf7101 = 336 * 24 * 3600
    sub_73afb7bbAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getUserTickets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 405
    mem[96] = sub_672804e3[address(arg1)].field_0
    if sub_672804e3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 405)
        mem[128] = sub_672804e3[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_672804e3[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_672804e3[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_672804e3[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * sub_672804e3[address(arg1)].field_0) + 128] = sub_672804e3[address(arg1)].field_0
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 160
        if not sub_672804e3[address(arg1)].field_0:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _181 = sha3(mem[(32 * idx) + 128], 404)
                _182 = mem[64]
                mem[64] = mem[64] + 256
                mem[_182] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_182 + 32] = stor1[_181]
                mem[_182 + 64] = stor2[_181]
                mem[_182 + 96] = stor3[_181]
                mem[_182 + 128] = stor4[_181]
                mem[_182 + 160] = stor5[_181].field_0
                mem[_182 + 192] = bool(stor5[_181].field_160)
                mem[_182 + 224] = bool(stor5[_181].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _182
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _186 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _186:
                _253 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_253 + 32]
                mem[t + 64] = mem[_253 + 64]
                mem[t + 96] = mem[_253 + 96]
                mem[t + 128] = mem[_253 + 128]
                mem[t + 160] = mem[_253 + 172 len 20]
                mem[t + 192] = bool(mem[_253 + 192])
                mem[t + 224] = bool(mem[_253 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 416
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 160] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 192] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 224] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 256] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 288] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 320] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 352] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 384] = 0
        mem[var21002] = var21001
        if not var21003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _352 = sha3(mem[(32 * idx) + 128], 404)
                _353 = mem[64]
                mem[64] = mem[64] + 256
                mem[_353] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_353 + 32] = stor1[_352]
                mem[_353 + 64] = stor2[_352]
                mem[_353 + 96] = stor3[_352]
                mem[_353 + 128] = stor4[_352]
                mem[_353 + 160] = stor5[_352].field_0
                mem[_353 + 192] = bool(stor5[_352].field_160)
                mem[_353 + 224] = bool(stor5[_352].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _353
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _356 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _356:
                _424 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_424 + 32]
                mem[t + 64] = mem[_424 + 64]
                mem[t + 96] = mem[_424 + 96]
                mem[t + 128] = mem[_424 + 128]
                mem[t + 160] = mem[_424 + 172 len 20]
                mem[t + 192] = bool(mem[_424 + 192])
                mem[t + 224] = bool(mem[_424 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 672
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 416] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 448] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 480] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 512] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 544] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 576] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 608] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 640] = 0
        mem[var25002] = var25001
        if not var25003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _522 = sha3(mem[(32 * idx) + 128], 404)
                _523 = mem[64]
                mem[64] = mem[64] + 256
                mem[_523] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_523 + 32] = stor1[_522]
                mem[_523 + 64] = stor2[_522]
                mem[_523 + 96] = stor3[_522]
                mem[_523 + 128] = stor4[_522]
                mem[_523 + 160] = stor5[_522].field_0
                mem[_523 + 192] = bool(stor5[_522].field_160)
                mem[_523 + 224] = bool(stor5[_522].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _523
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _526 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _526:
                _594 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_594 + 32]
                mem[t + 64] = mem[_594 + 64]
                mem[t + 96] = mem[_594 + 96]
                mem[t + 128] = mem[_594 + 128]
                mem[t + 160] = mem[_594 + 172 len 20]
                mem[t + 192] = bool(mem[_594 + 192])
                mem[t + 224] = bool(mem[_594 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 928
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 672] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 704] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 736] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 768] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 800] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 832] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 864] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 896] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _692 = sha3(mem[(32 * idx) + 128], 404)
                _693 = mem[64]
                mem[64] = mem[64] + 256
                mem[_693] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_693 + 32] = stor1[_692]
                mem[_693 + 64] = stor2[_692]
                mem[_693 + 96] = stor3[_692]
                mem[_693 + 128] = stor4[_692]
                mem[_693 + 160] = stor5[_692].field_0
                mem[_693 + 192] = bool(stor5[_692].field_160)
                mem[_693 + 224] = bool(stor5[_692].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _693
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _696 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _696:
                _764 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_764 + 32]
                mem[t + 64] = mem[_764 + 64]
                mem[t + 96] = mem[_764 + 96]
                mem[t + 128] = mem[_764 + 128]
                mem[t + 160] = mem[_764 + 172 len 20]
                mem[t + 192] = bool(mem[_764 + 192])
                mem[t + 224] = bool(mem[_764 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1184
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 928] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 960] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 992] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1024] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1056] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1088] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1120] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1152] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _862 = sha3(mem[(32 * idx) + 128], 404)
                _863 = mem[64]
                mem[64] = mem[64] + 256
                mem[_863] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_863 + 32] = stor1[_862]
                mem[_863 + 64] = stor2[_862]
                mem[_863 + 96] = stor3[_862]
                mem[_863 + 128] = stor4[_862]
                mem[_863 + 160] = stor5[_862].field_0
                mem[_863 + 192] = bool(stor5[_862].field_160)
                mem[_863 + 224] = bool(stor5[_862].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _863
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _866 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _866:
                _934 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_934 + 32]
                mem[t + 64] = mem[_934 + 64]
                mem[t + 96] = mem[_934 + 96]
                mem[t + 128] = mem[_934 + 128]
                mem[t + 160] = mem[_934 + 172 len 20]
                mem[t + 192] = bool(mem[_934 + 192])
                mem[t + 224] = bool(mem[_934 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1440
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1184] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1216] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1248] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1280] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1312] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1344] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1376] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1408] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1032 = sha3(mem[(32 * idx) + 128], 404)
                _1033 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1033] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1033 + 32] = stor1[_1032]
                mem[_1033 + 64] = stor2[_1032]
                mem[_1033 + 96] = stor3[_1032]
                mem[_1033 + 128] = stor4[_1032]
                mem[_1033 + 160] = stor5[_1032].field_0
                mem[_1033 + 192] = bool(stor5[_1032].field_160)
                mem[_1033 + 224] = bool(stor5[_1032].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1033
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1036 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1036:
                _1104 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1104 + 32]
                mem[t + 64] = mem[_1104 + 64]
                mem[t + 96] = mem[_1104 + 96]
                mem[t + 128] = mem[_1104 + 128]
                mem[t + 160] = mem[_1104 + 172 len 20]
                mem[t + 192] = bool(mem[_1104 + 192])
                mem[t + 224] = bool(mem[_1104 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1696
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1440] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1472] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1504] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1536] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1568] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1600] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1632] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1664] = 0
        mem[var41002] = var41001
        if not var41003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1202 = sha3(mem[(32 * idx) + 128], 404)
                _1203 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1203] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1203 + 32] = stor1[_1202]
                mem[_1203 + 64] = stor2[_1202]
                mem[_1203 + 96] = stor3[_1202]
                mem[_1203 + 128] = stor4[_1202]
                mem[_1203 + 160] = stor5[_1202].field_0
                mem[_1203 + 192] = bool(stor5[_1202].field_160)
                mem[_1203 + 224] = bool(stor5[_1202].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1203
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1206 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1206:
                _1274 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1274 + 32]
                mem[t + 64] = mem[_1274 + 64]
                mem[t + 96] = mem[_1274 + 96]
                mem[t + 128] = mem[_1274 + 128]
                mem[t + 160] = mem[_1274 + 172 len 20]
                mem[t + 192] = bool(mem[_1274 + 192])
                mem[t + 224] = bool(mem[_1274 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1952
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1696] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1728] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1760] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1792] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1824] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1856] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1888] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1920] = 0
        mem[var45002] = var45001
        if var45003 - 1:
            mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 2208
            mem[var49002] = var49001
            if not var49003 - 1:
                idx = 0
                while idx < sub_672804e3[address(arg1)].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 404
                    _1542 = sha3(mem[(32 * idx) + 128], 404)
                    _1543 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1543] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                    mem[_1543 + 32] = stor1[_1542]
                    mem[_1543 + 64] = stor2[_1542]
                    mem[_1543 + 96] = stor3[_1542]
                    mem[_1543 + 128] = stor4[_1542]
                    mem[_1543 + 160] = stor5[_1542].field_0
                    mem[_1543 + 192] = bool(stor5[_1542].field_160)
                    mem[_1543 + 224] = bool(stor5[_1542].field_168)
                    if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1543
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1372 = sha3(mem[(32 * idx) + 128], 404)
                _1373 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1373] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1373 + 32] = stor1[_1372]
                mem[_1373 + 64] = stor2[_1372]
                mem[_1373 + 96] = stor3[_1372]
                mem[_1373 + 128] = stor4[_1372]
                mem[_1373 + 160] = stor5[_1372].field_0
                mem[_1373 + 192] = bool(stor5[_1372].field_160)
                mem[_1373 + 224] = bool(stor5[_1372].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1373
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1376 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1376:
                _1444 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1444 + 32]
                mem[t + 64] = mem[_1444 + 64]
                mem[t + 96] = mem[_1444 + 96]
                mem[t + 128] = mem[_1444 + 128]
                mem[t + 160] = mem[_1444 + 172 len 20]
                mem[t + 192] = bool(mem[_1444 + 192])
                mem[t + 224] = bool(mem[_1444 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
    else:
        if sub_672804e3[address(arg1)].field_0 > test266151307():
            revert with 0, 65
        mem[(32 * sub_672804e3[address(arg1)].field_0) + 128] = sub_672804e3[address(arg1)].field_0
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 160
        if not sub_672804e3[address(arg1)].field_0:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _48 = sha3(mem[(32 * idx) + 128], 404)
                _49 = mem[64]
                mem[64] = mem[64] + 256
                mem[_49] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_49 + 32] = stor1[_48]
                mem[_49 + 64] = stor2[_48]
                mem[_49 + 96] = stor3[_48]
                mem[_49 + 128] = stor4[_48]
                mem[_49 + 160] = stor5[_48].field_0
                mem[_49 + 192] = bool(stor5[_48].field_160)
                mem[_49 + 224] = bool(stor5[_48].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _49
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _52 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _52:
                _82 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_82 + 32]
                mem[t + 64] = mem[_82 + 64]
                mem[t + 96] = mem[_82 + 96]
                mem[t + 128] = mem[_82 + 128]
                mem[t + 160] = mem[_82 + 172 len 20]
                mem[t + 192] = bool(mem[_82 + 192])
                mem[t + 224] = bool(mem[_82 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 416
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 160] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 192] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 224] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 256] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 288] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 320] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 352] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 384] = 0
        mem[var17002] = var17001
        if not var17003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _176 = sha3(mem[(32 * idx) + 128], 404)
                _177 = mem[64]
                mem[64] = mem[64] + 256
                mem[_177] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_177 + 32] = stor1[_176]
                mem[_177 + 64] = stor2[_176]
                mem[_177 + 96] = stor3[_176]
                mem[_177 + 128] = stor4[_176]
                mem[_177 + 160] = stor5[_176].field_0
                mem[_177 + 192] = bool(stor5[_176].field_160)
                mem[_177 + 224] = bool(stor5[_176].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _177
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _185 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _185:
                _244 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_244 + 32]
                mem[t + 64] = mem[_244 + 64]
                mem[t + 96] = mem[_244 + 96]
                mem[t + 128] = mem[_244 + 128]
                mem[t + 160] = mem[_244 + 172 len 20]
                mem[t + 192] = bool(mem[_244 + 192])
                mem[t + 224] = bool(mem[_244 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 672
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 416] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 448] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 480] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 512] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 544] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 576] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 608] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 640] = 0
        mem[var21002] = var21001
        if not var21003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _346 = sha3(mem[(32 * idx) + 128], 404)
                _347 = mem[64]
                mem[64] = mem[64] + 256
                mem[_347] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_347 + 32] = stor1[_346]
                mem[_347 + 64] = stor2[_346]
                mem[_347 + 96] = stor3[_346]
                mem[_347 + 128] = stor4[_346]
                mem[_347 + 160] = stor5[_346].field_0
                mem[_347 + 192] = bool(stor5[_346].field_160)
                mem[_347 + 224] = bool(stor5[_346].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _347
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _355 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _355:
                _414 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_414 + 32]
                mem[t + 64] = mem[_414 + 64]
                mem[t + 96] = mem[_414 + 96]
                mem[t + 128] = mem[_414 + 128]
                mem[t + 160] = mem[_414 + 172 len 20]
                mem[t + 192] = bool(mem[_414 + 192])
                mem[t + 224] = bool(mem[_414 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 928
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 672] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 704] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 736] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 768] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 800] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 832] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 864] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 896] = 0
        mem[var25002] = var25001
        if not var25003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _516 = sha3(mem[(32 * idx) + 128], 404)
                _517 = mem[64]
                mem[64] = mem[64] + 256
                mem[_517] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_517 + 32] = stor1[_516]
                mem[_517 + 64] = stor2[_516]
                mem[_517 + 96] = stor3[_516]
                mem[_517 + 128] = stor4[_516]
                mem[_517 + 160] = stor5[_516].field_0
                mem[_517 + 192] = bool(stor5[_516].field_160)
                mem[_517 + 224] = bool(stor5[_516].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _517
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _525 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _525:
                _584 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_584 + 32]
                mem[t + 64] = mem[_584 + 64]
                mem[t + 96] = mem[_584 + 96]
                mem[t + 128] = mem[_584 + 128]
                mem[t + 160] = mem[_584 + 172 len 20]
                mem[t + 192] = bool(mem[_584 + 192])
                mem[t + 224] = bool(mem[_584 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1184
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 928] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 960] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 992] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1024] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1056] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1088] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1120] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1152] = 0
        mem[var29002] = var29001
        if not var29003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _686 = sha3(mem[(32 * idx) + 128], 404)
                _687 = mem[64]
                mem[64] = mem[64] + 256
                mem[_687] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_687 + 32] = stor1[_686]
                mem[_687 + 64] = stor2[_686]
                mem[_687 + 96] = stor3[_686]
                mem[_687 + 128] = stor4[_686]
                mem[_687 + 160] = stor5[_686].field_0
                mem[_687 + 192] = bool(stor5[_686].field_160)
                mem[_687 + 224] = bool(stor5[_686].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _687
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _695 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _695:
                _754 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_754 + 32]
                mem[t + 64] = mem[_754 + 64]
                mem[t + 96] = mem[_754 + 96]
                mem[t + 128] = mem[_754 + 128]
                mem[t + 160] = mem[_754 + 172 len 20]
                mem[t + 192] = bool(mem[_754 + 192])
                mem[t + 224] = bool(mem[_754 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1440
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1184] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1216] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1248] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1280] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1312] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1344] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1376] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1408] = 0
        mem[var33002] = var33001
        if not var33003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _856 = sha3(mem[(32 * idx) + 128], 404)
                _857 = mem[64]
                mem[64] = mem[64] + 256
                mem[_857] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_857 + 32] = stor1[_856]
                mem[_857 + 64] = stor2[_856]
                mem[_857 + 96] = stor3[_856]
                mem[_857 + 128] = stor4[_856]
                mem[_857 + 160] = stor5[_856].field_0
                mem[_857 + 192] = bool(stor5[_856].field_160)
                mem[_857 + 224] = bool(stor5[_856].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _857
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _865 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _865:
                _924 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_924 + 32]
                mem[t + 64] = mem[_924 + 64]
                mem[t + 96] = mem[_924 + 96]
                mem[t + 128] = mem[_924 + 128]
                mem[t + 160] = mem[_924 + 172 len 20]
                mem[t + 192] = bool(mem[_924 + 192])
                mem[t + 224] = bool(mem[_924 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1696
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1440] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1472] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1504] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1536] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1568] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1600] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1632] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1664] = 0
        mem[var37002] = var37001
        if not var37003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1026 = sha3(mem[(32 * idx) + 128], 404)
                _1027 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1027] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1027 + 32] = stor1[_1026]
                mem[_1027 + 64] = stor2[_1026]
                mem[_1027 + 96] = stor3[_1026]
                mem[_1027 + 128] = stor4[_1026]
                mem[_1027 + 160] = stor5[_1026].field_0
                mem[_1027 + 192] = bool(stor5[_1026].field_160)
                mem[_1027 + 224] = bool(stor5[_1026].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1027
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1035 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1035:
                _1094 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1094 + 32]
                mem[t + 64] = mem[_1094 + 64]
                mem[t + 96] = mem[_1094 + 96]
                mem[t + 128] = mem[_1094 + 128]
                mem[t + 160] = mem[_1094 + 172 len 20]
                mem[t + 192] = bool(mem[_1094 + 192])
                mem[t + 224] = bool(mem[_1094 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 1952
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1696] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1728] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1760] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1792] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1824] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1856] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1888] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1920] = 0
        mem[var41002] = var41001
        if not var41003 - 1:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1196 = sha3(mem[(32 * idx) + 128], 404)
                _1197 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1197] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1197 + 32] = stor1[_1196]
                mem[_1197 + 64] = stor2[_1196]
                mem[_1197 + 96] = stor3[_1196]
                mem[_1197 + 128] = stor4[_1196]
                mem[_1197 + 160] = stor5[_1196].field_0
                mem[_1197 + 192] = bool(stor5[_1196].field_160)
                mem[_1197 + 224] = bool(stor5[_1196].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1197
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1205 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1205:
                _1264 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1264 + 32]
                mem[t + 64] = mem[_1264 + 64]
                mem[t + 96] = mem[_1264 + 96]
                mem[t + 128] = mem[_1264 + 128]
                mem[t + 160] = mem[_1264 + 172 len 20]
                mem[t + 192] = bool(mem[_1264 + 192])
                mem[t + 224] = bool(mem[_1264 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 2208
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1952] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 1984] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2016] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2048] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2080] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2112] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2144] = 0
        mem[(64 * sub_672804e3[address(arg1)].field_0) + 2176] = 0
        mem[var45002] = var45001
        if var45003 - 1:
            mem[64] = (64 * sub_672804e3[address(arg1)].field_0) + 2464
            mem[var49002] = var49001
            if not var49003 - 1:
                idx = 0
                while idx < sub_672804e3[address(arg1)].field_0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 404
                    _1536 = sha3(mem[(32 * idx) + 128], 404)
                    _1537 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1537] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                    mem[_1537 + 32] = stor1[_1536]
                    mem[_1537 + 64] = stor2[_1536]
                    mem[_1537 + 96] = stor3[_1536]
                    mem[_1537 + 128] = stor4[_1536]
                    mem[_1537 + 160] = stor5[_1536].field_0
                    mem[_1537 + 192] = bool(stor5[_1536].field_160)
                    mem[_1537 + 224] = bool(stor5[_1536].field_168)
                    if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1537
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            # nil
        else:
            idx = 0
            while idx < sub_672804e3[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 404
                _1366 = sha3(mem[(32 * idx) + 128], 404)
                _1367 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1367] = sub_fed02f66[mem[(32 * idx) + 128]].field_0
                mem[_1367 + 32] = stor1[_1366]
                mem[_1367 + 64] = stor2[_1366]
                mem[_1367 + 96] = stor3[_1366]
                mem[_1367 + 128] = stor4[_1366]
                mem[_1367 + 160] = stor5[_1366].field_0
                mem[_1367 + 192] = bool(stor5[_1366].field_160)
                mem[_1367 + 224] = bool(stor5[_1366].field_168)
                if idx >= mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_672804e3[address(arg1)].field_0) + 160] = _1367
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1375 = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_672804e3[address(arg1)].field_0) + 128]
            s = 0
            s = (32 * sub_672804e3[address(arg1)].field_0) + 160
            t = mem[64] + 64
            while sub_672804e3[address(arg1)].field_0 < _1375:
                _1434 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_1434 + 32]
                mem[t + 64] = mem[_1434 + 64]
                mem[t + 96] = mem[_1434 + 96]
                mem[t + 128] = mem[_1434 + 128]
                mem[t + 160] = mem[_1434 + 172 len 20]
                mem[t + 192] = bool(mem[_1434 + 192])
                mem[t + 224] = bool(mem[_1434 + 224])
                s = sub_672804e3[address(arg1)].field_0 + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len t - mem[64]
}



}
