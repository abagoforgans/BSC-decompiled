contract main {




// =====================  Runtime code  =====================


const sub_e1f84a36(?) = 0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
uint256 sub_a2a370f6;
uint256 sub_09e44289;
uint256 sub_918b2218;
uint256 sub_5e894f16;
array of struct sub_7012b4fc;
array of struct sub_fa905a4c;
array of struct sub_e7dd7586;
array of struct sub_4ee9fbd4;
array of struct sub_d6aec518;
array of uint256 stor84882613393583925725825227175822068977385904327970485092188354384632214438729;

function sub_09e44289(?) payable {
    return sub_09e44289
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_4ee9fbd4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4ee9fbd4.length
    return sub_4ee9fbd4[arg1].field_0
}

function sub_5e894f16(?) payable {
    return sub_5e894f16
}

function sub_7012b4fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7012b4fc.length
    return sub_7012b4fc[arg1].field_0
}

function sub_918b2218(?) payable {
    return sub_918b2218
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a2a370f6(?) payable {
    return sub_a2a370f6
}

function sub_bc00c42e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_e7dd7586.length:
        revert with 0, 50
    return sub_e7dd7586[arg1].field_0
}

function sub_d6aec518(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d6aec518.length
    return sub_d6aec518[arg1].field_0
}

function sub_e7dd7586(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e7dd7586.length
    return sub_e7dd7586[arg1].field_0
}

function sub_fa905a4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa905a4c.length
    return sub_fa905a4c[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_5fa0cd74(?) payable {
    return sub_a2a370f6, sub_09e44289
}

function sub_945c1c0c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_4ee9fbd4.length:
        revert with 0, 50
    if arg1 >= sub_d6aec518.length:
        revert with 0, 50
    return sub_4ee9fbd4[arg1].field_0, sub_d6aec518[arg1].field_0
}

function sub_1d3e78e8(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_a2a370f6 = arg1
}

function sub_2c19784d(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_918b2218 = arg1
}

function sub_8f9fc7f1(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_09e44289 = arg1
}

function sub_dfaada2a(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_5e894f16 = arg1
}

function sub_0aa239c9(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    if arg1 >= sub_7012b4fc.length:
        revert with 0, 50
    sub_7012b4fc[arg1].field_0 = arg2
}

function sub_13c16935(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    if arg1 >= sub_e7dd7586.length:
        revert with 0, 50
    sub_e7dd7586[arg1].field_0 = arg2
}

function sub_1b1fc63c(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    if arg1 >= sub_4ee9fbd4.length:
        revert with 0, 50
    sub_4ee9fbd4[arg1].field_0 = arg2
}

function sub_68b65ec2(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    if arg1 >= sub_fa905a4c.length:
        revert with 0, 50
    sub_fa905a4c[arg1].field_0 = arg2
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_d2a5835e(?) payable {
    if sub_7012b4fc.length:
        mem[128] = uint256(sub_7012b4fc.field_0)
        idx = 128
        s = 0
        while (32 * sub_7012b4fc.length) + 96 > idx:
            mem[idx + 32] = sub_7012b4fc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_7012b4fc.length, data=mem[128 len 32 * sub_7012b4fc.length])
    mem[(32 * sub_7012b4fc.length) + 128] = 32
    mem[(32 * sub_7012b4fc.length) + 160] = sub_7012b4fc.length
    mem[(32 * sub_7012b4fc.length) + 192 len 32 * sub_7012b4fc.length] = mem[128 len 32 * sub_7012b4fc.length]
    return memory
      from (32 * sub_7012b4fc.length) + 128
       len (96 * sub_7012b4fc.length) + 64
}

function sub_ecc88ad6(?) payable {
    if sub_4ee9fbd4.length:
        mem[128] = uint256(sub_4ee9fbd4.field_0)
        if (32 * sub_4ee9fbd4.length) + 32 > 64:
            mem[160] = uint256(sub_4ee9fbd4.field_256)
            idx = 160
            s = 1
            while (32 * sub_4ee9fbd4.length) + 96 > idx:
                mem[idx + 32] = sub_4ee9fbd4[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_4ee9fbd4.length) + 128] = 32
    mem[(32 * sub_4ee9fbd4.length) + 160] = sub_4ee9fbd4.length
    mem[(32 * sub_4ee9fbd4.length) + 192 len 32 * sub_4ee9fbd4.length] = mem[128 len 32 * sub_4ee9fbd4.length]
    return memory
      from (32 * sub_4ee9fbd4.length) + 128
       len (96 * sub_4ee9fbd4.length) + 64
}

function sub_f0757209(?) payable {
    if sub_d6aec518.length:
        mem[128] = uint256(sub_d6aec518.field_0)
        if (32 * sub_d6aec518.length) + 32 > 64:
            mem[160] = uint256(sub_d6aec518.field_256)
            idx = 160
            s = 1
            while (32 * sub_d6aec518.length) + 96 > idx:
                mem[idx + 32] = sub_d6aec518[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_d6aec518.length) + 128] = 32
    mem[(32 * sub_d6aec518.length) + 160] = sub_d6aec518.length
    mem[(32 * sub_d6aec518.length) + 192 len 32 * sub_d6aec518.length] = mem[128 len 32 * sub_d6aec518.length]
    return memory
      from (32 * sub_d6aec518.length) + 128
       len (96 * sub_d6aec518.length) + 64
}

function sub_f237a4d6(?) payable {
    if sub_e7dd7586.length:
        mem[128] = uint256(sub_e7dd7586.field_0)
        if (32 * sub_e7dd7586.length) + 32 > 64:
            mem[160] = uint256(sub_e7dd7586.field_256)
            idx = 160
            s = 1
            while (32 * sub_e7dd7586.length) + 96 > idx:
                mem[idx + 32] = sub_e7dd7586[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_e7dd7586.length) + 128] = 32
    mem[(32 * sub_e7dd7586.length) + 160] = sub_e7dd7586.length
    mem[(32 * sub_e7dd7586.length) + 192 len 32 * sub_e7dd7586.length] = mem[128 len 32 * sub_e7dd7586.length]
    return memory
      from (32 * sub_e7dd7586.length) + 128
       len (96 * sub_e7dd7586.length) + 64
}

function sub_f33d8374(?) payable {
    if sub_fa905a4c.length:
        mem[128] = uint256(sub_fa905a4c.field_0)
        if (32 * sub_fa905a4c.length) + 32 > 64:
            mem[160] = uint256(sub_fa905a4c.field_256)
            idx = 160
            s = 1
            while (32 * sub_fa905a4c.length) + 96 > idx:
                mem[idx + 32] = sub_fa905a4c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_fa905a4c.length) + 128] = 32
    mem[(32 * sub_fa905a4c.length) + 160] = sub_fa905a4c.length
    mem[(32 * sub_fa905a4c.length) + 192 len 32 * sub_fa905a4c.length] = mem[128 len 32 * sub_fa905a4c.length]
    return memory
      from (32 * sub_fa905a4c.length) + 128
       len (96 * sub_fa905a4c.length) + 64
}

function sub_a7d5265e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_4ee9fbd4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_4ee9fbd4.length > idx:
            sub_4ee9fbd4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_4ee9fbd4[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_4ee9fbd4.length > idx:
            sub_4ee9fbd4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_c4995a4b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_e7dd7586.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_e7dd7586.length > idx:
            sub_e7dd7586[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_e7dd7586[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_e7dd7586.length > idx:
            sub_e7dd7586[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_f3813905(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        revert with 0, 'You are not price updater'
    sub_d6aec518.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_d6aec518.length > idx:
            sub_d6aec518[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_d6aec518[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_d6aec518.length > idx:
            sub_d6aec518[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
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

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0:
        roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698, msg.sender, msg.sender);
    roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698].field_256 = 0
    emit RoleAdminChanged(0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698, roleAdmin[0xfe74b366a297145849fa9687e16ecad1e3a60cf84f6c2256ae73e20a9f766698].field_256, 0);
    sub_7012b4fc.length++
    storBBA9[stor155.length] = 0
    sub_7012b4fc.length++
    storBBA9[stor155.length] = 200000 * 10^18
    sub_7012b4fc.length++
    storBBA9[stor155.length] = 125 * 10^18 * 3600
    sub_7012b4fc.length++
    storBBA9[stor155.length] = 1000000 * 10^18
    sub_a2a370f6 = 10000 * 10^18
    sub_09e44289 = 50 * 10^18
    sub_918b2218 = 200000 * 10^18
    sub_5e894f16 = 500000 * 10^18
    mem[96] = 100 * 10^18
    mem[128] = 100 * 10^18
    mem[160] = 100 * 10^18
    mem[192] = 150 * 10^18
    mem[224] = 150 * 10^18
    mem[256] = 150 * 10^18
    mem[288] = 200 * 10^18
    mem[320] = 200 * 10^18
    mem[352] = 250 * 10^18
    mem[384] = 300 * 10^18
    sub_e7dd7586.length = 10
    s = 0
    idx = 96
    while 416 > idx:
        sub_e7dd7586[s].field_0 = mem[idx + 23 len 9]
        sub_e7dd7586[s].field_72 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while sub_e7dd7586.length > idx:
        sub_e7dd7586[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[416] = 3000 * 10^18
    mem[448] = 5000 * 10^18
    mem[480] = 8000 * 10^18
    mem[512] = 15000 * 10^18
    mem[544] = 30000 * 10^18
    mem[576] = 60000 * 10^18
    mem[608] = 100000 * 10^18
    mem[640] = 150000 * 10^18
    sub_4ee9fbd4.length = 8
    s = 0
    idx = 416
    while 672 > idx:
        sub_4ee9fbd4[s].field_0 = mem[idx + 22 len 10]
        sub_4ee9fbd4[s].field_80 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while sub_4ee9fbd4.length > idx:
        sub_4ee9fbd4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[672] = 25000 * 10^18
    mem[704] = 50000 * 10^18
    mem[736] = 120000 * 10^18
    mem[768] = 290000 * 10^18
    mem[800] = 700000 * 10^18
    mem[832] = 1700000 * 10^18
    mem[864] = 4200000 * 10^18
    mem[896] = 10000000 * 10^18
    sub_d6aec518.length = 8
    s = 0
    idx = 672
    while 928 > idx:
        sub_d6aec518[s].field_0 = mem[idx + 21 len 11]
        sub_d6aec518[s].field_88 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while sub_d6aec518.length > idx:
        sub_d6aec518[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
