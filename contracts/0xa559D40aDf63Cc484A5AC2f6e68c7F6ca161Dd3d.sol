contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address BUSDAddress;
mapping of struct sub_bf7fec08;
mapping of uint8 stor3;
address destinationAddress;
uint256 sub_eac2f598;
uint256 sub_f4233438;
uint256 sub_d304edff;
uint256 maxPurchase;
uint256 price;
uint256 open;
uint256 close;
uint8 sub_1834cb7d;
uint8 whitelist; offset 8
uint256 stor12; offset 8

function sub_1834cb7d(?) payable {
    return bool(sub_1834cb7d)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function close() payable {
    return close
}

function BUSD() payable {
    return BUSDAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function whitelist() payable {
    return bool(whitelist)
}

function maxPurchase() payable {
    return maxPurchase
}

function price() payable {
    return price
}

function destination() payable {
    return destinationAddress
}

function sub_bf7fec08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bf7fec08[arg1].field_0, sub_bf7fec08[arg1].field_256
}

function sub_d304edff(?) payable {
    return sub_d304edff
}

function sub_eac2f598(?) payable {
    return sub_eac2f598
}

function sub_f4233438(?) payable {
    return sub_f4233438
}

function open() payable {
    return open
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
}

function setDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        destinationAddress = arg1
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function setTimeRange(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        open = arg1
        close = arg2
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function sub_2850dfff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        sub_1834cb7d = uint8(bool(arg1))
        stor12 = Mask(248, 0, bool(arg2))
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function sub_966e36b6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        sub_d304edff = arg1
        maxPurchase = arg2
        price = arg3
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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

function sub_ed459d30(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        sub_d304edff = arg1
        maxPurchase = arg2
        price = arg3
        open = arg4
        close = arg5
        sub_1834cb7d = uint8(bool(arg6))
        stor12 = Mask(248, 0, bool(arg7))
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function recoverERC20(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg3
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
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function sub_b5adce3f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            stor3[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
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
    s = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
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

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1 * price:
        revert with 0, 'Insufficient allowance.'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1 * price:
        revert with 0, 'Insufficient balance.'
    if arg1 <= 0:
        revert with 0, 'Unable to purchase 0.'
    if sub_bf7fec08[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_bf7fec08[address(msg.sender)].field_0 + arg1 > maxPurchase:
        revert with 0, 'Limited purhcase.'
    if not sub_1834cb7d:
        if sub_f4233438 > -arg1 - 1:
            revert with 'NH{q', 17
        if sub_f4233438 + arg1 > sub_d304edff:
            revert with 0, 'Contribution hit max cap.'
    if whitelist:
        if not stor3[address(msg.sender)]:
            revert with 0, 'Address not whitelisted.'
    if block.timestamp < open:
        revert with 0, 'Contribution havent open.'
    if block.timestamp >= close:
        revert with 0, 'Contribution is closed.'
    if sub_f4233438 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_f4233438 += arg1
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    if sub_eac2f598 > (-1 * arg1 * price) - 1:
        revert with 'NH{q', 17
    sub_eac2f598 += arg1 * price
    if sub_bf7fec08[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_bf7fec08[address(msg.sender)].field_0 += arg1
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    if sub_bf7fec08[address(msg.sender)].field_256 > (-1 * arg1 * price) - 1:
        revert with 'NH{q', 17
    sub_bf7fec08[address(msg.sender)].field_256 += arg1 * price
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = destinationAddress
    mem[(2 * ceil32(return_data.size)) + 196] = arg1 * price
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(BUSDAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call BUSDAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
            if not uint32(msg.sender), address(this.address) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    emit Purchase(arg1, arg1 * price, msg.sender);
}

function sub_e8672bd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1 * price:
        revert with 0, 'Insufficient allowance.'
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1 * price:
        revert with 0, 'Insufficient balance.'
    if arg1 <= 0:
        revert with 0, 'Unable to purchase 0.'
    if sub_f4233438 == sub_d304edff:
        revert with 0, 'Sold out.'
    if whitelist:
        if not stor3[address(msg.sender)]:
            revert with 0, 'Address not whitelisted.'
    if block.timestamp < open:
        revert with 0, 'Contribution havent open.'
    if block.timestamp >= close:
        revert with 0, 'Contribution is closed.'
    if sub_d304edff < sub_f4233438:
        revert with 'NH{q', 17
    if arg1 <= sub_d304edff - sub_f4233438:
        if maxPurchase < sub_bf7fec08[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if arg1 <= maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
            if sub_f4233438 > -arg1 - 1:
                revert with 'NH{q', 17
            sub_f4233438 += arg1
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            if sub_eac2f598 > (-1 * arg1 * price) - 1:
                revert with 'NH{q', 17
            sub_eac2f598 += arg1 * price
            if sub_bf7fec08[address(msg.sender)].field_0 > -arg1 - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_0 += arg1
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            if sub_bf7fec08[address(msg.sender)].field_256 > (-1 * arg1 * price) - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_256 += arg1 * price
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = destinationAddress
            mem[(2 * ceil32(return_data.size)) + 196] = arg1 * price
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(BUSDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call BUSDAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, destinationAddress, arg1 * price, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
                    if not uint32(msg.sender), address(this.address) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            emit Purchase(arg1, arg1 * price, msg.sender);
        else:
            if maxPurchase < sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_f4233438 > -maxPurchase + sub_bf7fec08[address(msg.sender)].field_0 - 1:
                revert with 'NH{q', 17
            sub_f4233438 = sub_f4233438 + maxPurchase - sub_bf7fec08[address(msg.sender)].field_0
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_eac2f598 > (-1 * maxPurchase * price) + (sub_bf7fec08[address(msg.sender)].field_0 * price) - 1:
                revert with 'NH{q', 17
            sub_eac2f598 = sub_eac2f598 + (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            if sub_bf7fec08[address(msg.sender)].field_0 > -maxPurchase + sub_bf7fec08[address(msg.sender)].field_0 - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_0 = maxPurchase
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_bf7fec08[address(msg.sender)].field_256 > (-1 * maxPurchase * price) + (sub_bf7fec08[address(msg.sender)].field_0 * price) - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_256 = sub_bf7fec08[address(msg.sender)].field_256 + (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = destinationAddress
            mem[(2 * ceil32(return_data.size)) + 196] = (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(BUSDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call BUSDAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
                    if not uint32(msg.sender), address(this.address) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            emit Purchase(maxPurchase - sub_bf7fec08[address(msg.sender)].field_0, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), msg.sender);
    else:
        if sub_d304edff < sub_f4233438:
            revert with 'NH{q', 17
        if maxPurchase < sub_bf7fec08[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if sub_d304edff - sub_f4233438 <= maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
            if sub_f4233438 > -sub_d304edff + sub_f4233438 - 1:
                revert with 'NH{q', 17
            sub_f4233438 = sub_d304edff
            if sub_d304edff - sub_f4233438 and price > -1 / sub_d304edff - sub_f4233438:
                revert with 'NH{q', 17
            if sub_eac2f598 > (-1 * sub_d304edff * price) + (sub_f4233438 * price) - 1:
                revert with 'NH{q', 17
            sub_eac2f598 = sub_eac2f598 + (sub_d304edff * price) - (sub_f4233438 * price)
            if sub_bf7fec08[address(msg.sender)].field_0 > -sub_d304edff + sub_f4233438 - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_0 = sub_bf7fec08[address(msg.sender)].field_0 + sub_d304edff - sub_f4233438
            if sub_d304edff - sub_f4233438 and price > -1 / sub_d304edff - sub_f4233438:
                revert with 'NH{q', 17
            if sub_bf7fec08[address(msg.sender)].field_256 > (-1 * sub_d304edff * price) + (sub_f4233438 * price) - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_256 = sub_bf7fec08[address(msg.sender)].field_256 + (sub_d304edff * price) - (sub_f4233438 * price)
            if sub_d304edff - sub_f4233438 and price > -1 / sub_d304edff - sub_f4233438:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = destinationAddress
            mem[(2 * ceil32(return_data.size)) + 196] = (sub_d304edff * price) - (sub_f4233438 * price)
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(BUSDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, destinationAddress, (sub_d304edff * price) - (sub_f4233438 * price), 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call BUSDAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (sub_d304edff * price) - (sub_f4233438 * price), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (sub_d304edff * price) - (sub_f4233438 * price), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
                    if not uint32(msg.sender), address(this.address) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if sub_d304edff - sub_f4233438 and price > -1 / sub_d304edff - sub_f4233438:
                revert with 'NH{q', 17
            emit Purchase(sub_d304edff - sub_f4233438, (sub_d304edff * price) - (sub_f4233438 * price), msg.sender);
        else:
            if maxPurchase < sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_f4233438 > -maxPurchase + sub_bf7fec08[address(msg.sender)].field_0 - 1:
                revert with 'NH{q', 17
            sub_f4233438 = sub_f4233438 + maxPurchase - sub_bf7fec08[address(msg.sender)].field_0
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_eac2f598 > (-1 * maxPurchase * price) + (sub_bf7fec08[address(msg.sender)].field_0 * price) - 1:
                revert with 'NH{q', 17
            sub_eac2f598 = sub_eac2f598 + (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            if sub_bf7fec08[address(msg.sender)].field_0 > -maxPurchase + sub_bf7fec08[address(msg.sender)].field_0 - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_0 = maxPurchase
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_bf7fec08[address(msg.sender)].field_256 > (-1 * maxPurchase * price) + (sub_bf7fec08[address(msg.sender)].field_0 * price) - 1:
                revert with 'NH{q', 17
            sub_bf7fec08[address(msg.sender)].field_256 = sub_bf7fec08[address(msg.sender)].field_256 + (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = destinationAddress
            mem[(2 * ceil32(return_data.size)) + 196] = (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price)
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(BUSDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call BUSDAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, destinationAddress, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
                    if not uint32(msg.sender), address(this.address) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if maxPurchase - sub_bf7fec08[address(msg.sender)].field_0 and price > -1 / maxPurchase - sub_bf7fec08[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            emit Purchase(maxPurchase - sub_bf7fec08[address(msg.sender)].field_0, (maxPurchase * price) - (sub_bf7fec08[address(msg.sender)].field_0 * price), msg.sender);
}



}
