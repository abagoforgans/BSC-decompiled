contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
address stor151;
array of uint256 stor152;
uint8 stor156; offset 24
uint32 stor156;
uint32 stor156;
array of struct stor157;
mapping of struct sub_a378d763;
array of uint32 stor159;
mapping of uint256 stor160;
uint256 sub_050b489f;

function sub_050b489f(?) {
    if not uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        revert with 0, 'NR'
    return sub_050b489f
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_256)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_a378d763(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    return uint8(sub_a378d763[arg1][arg2 << 248].field_0), 
           uint256(sub_a378d763[arg1][arg2 << 248].field_256),
           uint256(sub_a378d763[arg1][arg2 << 248].field_512),
           uint256(sub_a378d763[arg1][arg2 << 248].field_768)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function collectBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0xcbce9983fcd5fc099294db3138f1660107f2bd5b23b9fa0002d7df1db9d854cb][address(msg.sender)].field_0):
        revert with 0, 'Need COLLECTOR role'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_53edbaba(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[64] = 224
    mem[160] = uint32(stor159[arg1][arg2 << 248].field_0)
    idx = 160
    s = 0
    while 224 > idx + 32:
        mem[idx + 32] = uint32(stor159[arg1][arg2 << 248].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    idx = 0
    s = 160
    t = mem[64]
    while idx < 2:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len -mem[64] + 288
}

function sub_fa080305(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    mem[64] = 224
    mem[160] = 0
    mem[192] = 0
    mem[var25001] = 160
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[160] = 0
        mem[192] = 0
        mem[s + 32] = 160
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = uint8(arg2)
    mem[32] = sha3(arg1, sha3(address(msg.sender), 157))
    _13 = mem[64]
    mem[64] = mem[64] + 64
    s = _13
    idx = 0
    while idx < 2:
        _15 = mem[64]
        mem[64] = mem[64] + 64
        mem[_15] = uint32(stor157[address(msg.sender)][arg1][arg2 << 248][idx].field_0)
        mem[_15 + 32] = bool(uint8(stor157[address(msg.sender)][arg1][arg2 << 248][idx].field_32))
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    idx = 0
    s = _13
    t = mem[64]
    while idx < 2:
        _20 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = bool(mem[_20 + 32])
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _16 + -mem[64] + 128
}

function sub_49478ccd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if msg.sender != tx.origin:
        revert with 0, 'ONC'
    if not uint256(sub_a378d763[arg1][arg2 << 248].field_256):
        revert with 0, 'No winner selected', 0
    if uint8(sub_a378d763[arg1][arg2 << 248].field_0) >= 2:
        revert with 'NH{q', 50
    if uint8(stor157[address(msg.sender)][arg1][arg2 << 248][uint8(stor158[arg1][arg2 << 248].field_0)].field_32):
        revert with 0, 'Already claimed', 0
    if uint8(sub_a378d763[arg1][arg2 << 248].field_0) >= 2:
        revert with 'NH{q', 50
    Mask(224, 0, stor157[address(msg.sender)][arg1][arg2 << 248][uint8(stor158[arg1][arg2 << 248].field_0)].field_32) = 1
    if uint8(sub_a378d763[arg1][arg2 << 248].field_0) >= 2:
        revert with 'NH{q', 50
    if uint256(sub_a378d763[arg1][arg2 << 248].field_512) and uint32(stor157[address(msg.sender)][arg1][arg2 << 248][uint8(stor158[arg1][arg2 << 248].field_0)].field_0) > -1 / uint256(sub_a378d763[arg1][arg2 << 248].field_512):
        revert with 'NH{q', 17
    call stor151.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(sub_a378d763[arg1][arg2 << 248].field_512) * uint32(stor157[address(msg.sender)][arg1][arg2 << 248][uint8(stor158[arg1][arg2 << 248].field_0)].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit eventClaim(msg.sender, arg1, arg2 << 248, uint256(sub_a378d763[arg1][arg2 << 248].field_512) * uint32(stor157[address(msg.sender)][arg1][arg2 << 248][uint8(stor158[arg1][arg2 << 248].field_0)].field_0));
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
    if not uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0) = 1
        emit RoleGranted(0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f, msg.sender, msg.sender);
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    stor151 = arg1
    mem[96] = 10 * 10^18
    mem[128] = 25 * 10^18
    mem[160] = 50 * 10^18
    mem[192] = 100 * 10^18
    s = 152
    idx = 96
    while 224 > idx:
        Mask(72, 0, stor[s].field_0) = mem[idx + 23 len 9]
        Mask(184, 0, stor[s].field_72) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 156
    while 156 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor156.field_0 % 16777216 = 24 * 3600
    uint8(stor156.field_24) = 0
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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

function sub_7442e065(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if msg.sender != tx.origin:
        revert with 0, 'ONC'
    if not uint32(stor156.field_0):
        revert with 'NH{q', 18
    if uint256(sub_a378d763[block.timestamp / uint32(stor156.field_0)][arg1 << 248].field_256):
        revert with 0, 'Winner already selected', 0
    if uint8(arg1) >= 4:
        revert with 'NH{q', 50
    if stor152[uint8(arg1)] and uint8(arg3) > -1 / stor152[uint8(arg1)]:
        revert with 'NH{q', 17
    staticcall stor151.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor152[uint8(arg1)] * uint8(arg3):
        revert with 0, 'Not enough ETERNAL', 0
    if uint8(arg1) >= 4:
        revert with 'NH{q', 50
    if stor152[uint8(arg1)] and uint8(arg3) > -1 / stor152[uint8(arg1)]:
        revert with 'NH{q', 17
    call stor151.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor152[uint8(arg1)] * uint8(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if uint8(arg2) >= 2:
        revert with 'NH{q', 50
    if uint32(stor157[address(msg.sender)][block.timestamp / uint32(stor156.field_0)][arg1 << 248][uint8(arg2)].field_0) > -uint8(arg3) + test266151307():
        revert with 'NH{q', 17
    uint32(stor157[address(msg.sender)][block.timestamp / uint32(stor156.field_0)][arg1 << 248][uint8(arg2)].field_0) = uint32(uint32(stor157[address(msg.sender)][block.timestamp / uint32(stor156.field_0)][arg1 << 248][uint8(arg2)].field_0) + uint8(arg3))
    if uint8(arg2) >= 2:
        revert with 'NH{q', 50
    if stor('array', ('mask_shl', 5, 3, -3, ('param', 'arg2')), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('map', ('div', 'timestamp', ('stor', 32, 0, ('name', 'stor156', 156))), ('name', 'stor159', 159))))[uint8(arg2)] > -uint8(arg3) + test266151307():
        revert with 'NH{q', 17
    uint256(stor159[block.timestamp / uint32(stor156.field_0)][arg1 << 248][uint8(arg2) / 8].field_0) = uint32(stor('array', ('mask_shl', 5, 3, -3, ('param', 'arg2')), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('map', ('div', 'timestamp', ('stor', 32, 0, ('name', 'stor156', 156))), ('name', 'stor159', 159))))[uint8(arg2)] + uint8(arg3)) * 256^(4 * arg2 % 8) or !(test266151307() * 256^(4 * arg2 % 8)) and uint256(stor159[block.timestamp / uint32(stor156.field_0)][arg1 << 248][uint8(arg2) / 8].field_0)
    if uint8(arg1) >= 4:
        revert with 'NH{q', 50
    if stor152[uint8(arg1)] and uint8(arg3) > -1 / stor152[uint8(arg1)]:
        revert with 'NH{q', 17
    if stor160[block.timestamp / uint32(stor156.field_0)][arg1 << 248] > (-1 * stor152[uint8(arg1)] * uint8(arg3)) - 1:
        revert with 'NH{q', 17
    stor160[block.timestamp / uint32(stor156.field_0)][arg1 << 248] += stor152[uint8(arg1)] * uint8(arg3)
    if uint8(arg1) >= 4:
        revert with 'NH{q', 50
    if stor152[uint8(arg1)] and uint8(arg3) > -1 / stor152[uint8(arg1)]:
        revert with 'NH{q', 17
    emit 0x75298f45: msg.sender, arg1 << 248, arg2 << 248, arg3 << 248, stor152[uint8(arg1)] * uint8(arg3)
}

function sub_4112a8dd(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
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
    if msg.sender != tx.origin:
        revert with 0, 'ONC'
    mem[0] = msg.sender
    mem[32] = sha3(0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f, 101)
    if uint8(roleAdmin[0x745191d59a0c5ecaf2331ad3570e4033c5b04de0434263ec14a70fce5475ab7f][address(msg.sender)].field_0):
        idx = 0
        while uint8(idx) < ('cd', 36).length:
            require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 158)
            _88 = mem[64]
            mem[64] = mem[64] + 64
            mem[_88] = 23
            mem[_88 + 32] = 'Winner already selected'
            if uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256):
                _91 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_91 + idx + 68] = mem[_88 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_91 + 91] = 0
                revert with memory
                  from mem[64]
                   len _91 + -mem[64] + 100
            if uint8(idx) >= ('cd', 68).length:
                revert with 'NH{q', 50
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 7
            mem[_93 + 32] = 'No seed'
            if not cd[((32 * uint8(idx)) + cd[68] + 36)]:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 7
                idx = 0
                while idx < 7:
                    mem[_96 + idx + 68] = mem[_93 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 75] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            if uint8(idx) >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 159)
            if uint8(idx) >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
            if uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) >= 2:
                revert with 'NH{q', 50
            if not stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]:
                _121 = mem[64]
                mem[64] = mem[64] + 128
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                mem[_121] = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(idx) >= ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[_121 + 32] = cd[((32 * uint8(idx)) + cd[68] + 36)]
                mem[_121 + 64] = 0
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[_121 + 96] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 158)
                uint8(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256) = cd[((32 * uint8(idx)) + cd[68] + 36)]
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512) = 0
            else:
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) >= 2:
                    revert with 'NH{q', 50
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] and 5 > -1 / stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]:
                    revert with 'NH{q', 17
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] < 5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100:
                    revert with 'NH{q', 17
                if not stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]:
                    revert with 'NH{q', 18
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 160)
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] and 5 > -1 / stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]:
                    revert with 'NH{q', 17
                if sub_050b489f > -(5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) - 1:
                    revert with 'NH{q', 17
                sub_050b489f += 5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100
                _153 = mem[64]
                mem[64] = mem[64] + 128
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                mem[_153] = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(idx) >= ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[_153 + 32] = cd[((32 * uint8(idx)) + cd[68] + 36)]
                mem[_153 + 64] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] - (5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) / stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[_153 + 96] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 158)
                uint8(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256) = cd[((32 * uint8(idx)) + cd[68] + 36)]
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512) = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] - (5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) / stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
            uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768) = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _83 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 128
        mem[mem[64] + 128] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 160
        while idx < ('cd', 36).length:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        while idx < ('cd', 100).length:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x312fdbd4: mem[mem[64] len _83 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + -mem[64] + 224]
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0x7cdc96092234936c1f270d4da10f042140a7e49ea8b76dde0c07a21e0d1e5cfe, 101)
        if not uint8(roleAdmin[0x7cdc96092234936c1f270d4da10f042140a7e49ea8b76dde0c07a21e0d1e5cfe][address(msg.sender)].field_0):
            revert with 0, 'Need role'
        idx = 0
        while uint8(idx) < ('cd', 36).length:
            require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 158)
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 23
            mem[_90 + 32] = 'Winner already selected'
            if uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256):
                _92 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_92 + idx + 68] = mem[_90 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_92 + 91] = 0
                revert with memory
                  from mem[64]
                   len _92 + -mem[64] + 100
            if uint8(idx) >= ('cd', 68).length:
                revert with 'NH{q', 50
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 7
            mem[_94 + 32] = 'No seed'
            if not cd[((32 * uint8(idx)) + cd[68] + 36)]:
                _98 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 7
                idx = 0
                while idx < 7:
                    mem[_98 + idx + 68] = mem[_94 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_98 + 75] = 0
                revert with memory
                  from mem[64]
                   len _98 + -mem[64] + 100
            if uint8(idx) >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 159)
            if uint8(idx) >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
            if uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) >= 2:
                revert with 'NH{q', 50
            if not stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]:
                _122 = mem[64]
                mem[64] = mem[64] + 128
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                mem[_122] = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(idx) >= ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[_122 + 32] = cd[((32 * uint8(idx)) + cd[68] + 36)]
                mem[_122 + 64] = 0
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[_122 + 96] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 158)
                uint8(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256) = cd[((32 * uint8(idx)) + cd[68] + 36)]
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512) = 0
            else:
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) >= 2:
                    revert with 'NH{q', 50
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] and 5 > -1 / stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]:
                    revert with 'NH{q', 17
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] < 5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100:
                    revert with 'NH{q', 17
                if not stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]:
                    revert with 'NH{q', 18
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 160)
                if stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] and 5 > -1 / stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]:
                    revert with 'NH{q', 17
                if sub_050b489f > -(5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) - 1:
                    revert with 'NH{q', 17
                sub_050b489f += 5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100
                _154 = mem[64]
                mem[64] = mem[64] + 128
                if uint8(idx) >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                mem[_154] = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                if uint8(idx) >= ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[_154 + 32] = cd[((32 * uint8(idx)) + cd[68] + 36)]
                mem[_154 + 64] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] - (5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) / stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[_154 + 96] = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
                if uint8(idx) >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(cd[4], 158)
                uint8(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) = uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256) = cd[((32 * uint8(idx)) + cd[68] + 36)]
                uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512) = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] - (5 * stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248] / 100) / stor('array', ('mask_shl', 5, 3, -3, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 100)))), ('map', ('mask_shl', 8, 0, 248, ('cd', ('add', 36, ('mask_shl', 8, 0, 5, ('var', 0)), ('cd', 36)))), ('map', ('cd', 4), ('name', 'stor159', 159))))[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
            uint256(sub_a378d763[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768) = stor160[cd[4]][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _85 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 128
        mem[mem[64] + 128] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 160
        while idx < ('cd', 36).length:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + 96] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
        mem[mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        while idx < ('cd', 100).length:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x312fdbd4: mem[mem[64] len _85 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + -mem[64] + 224]
}



}
