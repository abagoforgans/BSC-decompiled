contract main {




// =====================  Runtime code  =====================


const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const TIMELOCK_ADMIN_ROLE = 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5

const PROPOSER_ROLE = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of uint256 timestamp;
uint256 minDelay;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getTimestamp(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return timestamp[arg1]
}

function getMinDelay() {
    return minDelay
}

function isOperation(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] > 0)
}

function isOperationDone(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] == 1)
}

function isOperationPending(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return (timestamp[arg1] > 1)
}

function isOperationReady(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if timestamp[arg1] <= 1:
        return (timestamp[arg1] > 1)
    return timestamp[arg1] <= block.timestamp
}

function updateDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: caller must be timelock'
    emit MinDelayChange(minDelay, arg1);
    minDelay = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function cancel(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
        if timestamp[arg1] <= 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: operation cannot be cancelled'
        timestamp[arg1] = 0
        emit Cancelled(arg1);
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
        s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
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

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function hashOperationBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) {
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
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[cd[(arg3 + cd[s] + 36)] + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    return sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
}

function schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
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
            s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
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
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > 0:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if block.timestamp > !arg6:
        revert with 0, 17
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = block.timestamp + arg6
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

function execute(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
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
            s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
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
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    mem[arg3.length + 320] = 0
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
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
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] <= 1:
        revert with 0, 'TimelockController: operation is not ready'
    if timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] > block.timestamp:
        revert with 0, 'TimelockController: operation is not ready'
    timestamp[address(arg1)][arg2][Array(len=arg3.length, data=arg3[all])][arg4][arg5] = 1
}

function scheduleBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) {
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
    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
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
            s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
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
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
    if arg3.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
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
    mem[(32 * arg1.length) + 320] = arg2.length
    require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
    u = (32 * arg1.length) + (32 * arg2.length) + 384
    while idx < arg3.length:
        mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
        require cd[s] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
        mem[t] = cd[(arg3 + cd[s] + 36)]
        mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[cd[(arg3 + cd[s] + 36)] + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length) + 384
    _47 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
    if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > 0:
        revert with 0, 'TimelockController: operation already scheduled'
    if arg6 < minDelay:
        revert with 0, 'TimelockController: insufficient delay'
    if block.timestamp > !arg6:
        revert with 0, 17
    timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] = block.timestamp + arg6
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
        require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] + 64] = 160
        mem[mem[64] + 160] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 192 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
        mem[mem[64] + 96] = arg4
        mem[mem[64] + 128] = arg6
        emit CallScheduled(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), arg4, arg6, _47, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function executeBatch(address[] arg1, uint256[] arg2, bytes[] arg3, bytes32 arg4, bytes32 arg5) payable {
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
    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
        if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
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
            s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
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
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
        if arg2.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
        if arg3.length != arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TimelockController: length mismatch'
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
        mem[(32 * arg1.length) + 320] = arg2.length
        require arg2.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        idx = 0
        s = arg3 + 36
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[cd[(arg3 + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length) + 384
        _213 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
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
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_384] = return_data.size
                    mem[_384 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _213, idx);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
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
                    _385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_385] = return_data.size
                    mem[_385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _213, idx);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if timestamp[_213] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_213] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_213] = 1
    else:
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
        t = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384
        u = (32 * arg1.length) + (32 * arg2.length) + 384
        while idx < arg3.length:
            mem[u] = t + -(32 * arg1.length) + -(32 * arg2.length) - 384
            require cd[s] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[s] + 36)] <= test266151307()
            require arg3 + 36 <= calldata.size - cd[(arg3 + cd[s] + 36)]
            mem[t] = cd[(arg3 + cd[s] + 36)]
            mem[t + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
            mem[cd[(arg3 + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[224] = arg4
        mem[256] = arg5
        mem[96] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length) + 256
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg3.length) + 384
        _210 = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        mem[0] = sha3(Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)]), (32 * arg1.length) + 192, (32 * arg1.length) + (32 * arg2.length) + 224, arg4, arg5)
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[Array(len=arg1.length, data=mem[320 len (32 * arg1.length) + 32], call.data[arg2 + 36 len 32 * arg2.length], arg3.length, mem[(32 * arg1.length) + (32 * arg2.length) + 384 len (32 * arg3.length) + (32 * arg3.length)])][(32 * arg1.length) + 192][(32 * arg1.length) + (32 * arg2.length) + 224][arg4][arg5] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        if not arg4:
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
                require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                _367 = mem[64]
                mem[mem[64] len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + _367 + -mem[64] - 4]
                if return_data.size:
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_382] = return_data.size
                    mem[_382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _210, idx);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if timestamp[arg4] != 1:
                revert with 0, 'TimelockController: missing dependency'
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if idx >= arg2.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
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
                    _383 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_383] = return_data.size
                    mem[_383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
                mem[mem[64] + 64] = 96
                mem[mem[64] + 96] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
                mem[mem[64] + 128 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                emit CallExecuted(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)], Array(len=cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)], data=call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]), _210, idx);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if timestamp[_210] <= 1:
            revert with 0, 'TimelockController: operation is not ready'
        if timestamp[_210] > block.timestamp:
            revert with 0, 'TimelockController: operation is not ready'
        timestamp[_210] = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x64d62353(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x248a9ca3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return roleAdmin[cd[4]].field_256
                if unknown_0x2ab0f529(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return (timestamp[cd[4]] == 1)
                if uint32(call.func_hash) >> 224 != unknown_0x2f2ff15d(?????):
                    if unknown_0x31d50750(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return (timestamp[cd[4]] > 0)
                    if uint32(call.func_hash) >> 224 != unknown_0x36568abe(?????):
                        require unknown_0x584b153e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return (timestamp[cd[4]] > 1)
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if address(cd[36]) != msg.sender:
                        revert with 0, 'AccessControl: can only renounce roles for self'
                    if roleAdmin[cd[4]][address(cd[36])].field_0:
                        roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                        emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                    if not roleAdmin[cd[4]][address(cd[36])].field_0:
                        roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                        emit RoleGranted(cd[4], address(cd[36]), msg.sender);
                mem[160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[256 len 66] = call.data[calldata.size len 66]
                idx = 65
                s = roleAdmin[cd[4]].field_256
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if roleAdmin[cd[4]].field_256 + 16384:
                    revert with 0, 'Strings: hex length insufficient'
                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
            if schedule(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, bytes32 arg5, uint256 arg6) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] == address(cd[4])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + ('cd', 68).length + 36 <= calldata.size
                if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if not msg.sender + 10240:
                        idx = 65
                        s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                    revert with 0, 'Strings: hex length insufficient'
                if timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] > 0:
                    revert with 0, 'TimelockController: operation already scheduled'
                if cd[164] < minDelay:
                    revert with 0, 'TimelockController: insufficient delay'
                if block.timestamp > !cd[164]:
                    revert with 0, 17
                timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] = block.timestamp + cd[164]
                mem[ceil32(('cd', 68).length) + 352] = address(cd[4])
                mem[ceil32(('cd', 68).length) + 384] = cd[36]
                mem[ceil32(('cd', 68).length) + 416] = 160
                mem[ceil32(('cd', 68).length) + 512] = ('cd', 68).length
                mem[ceil32(('cd', 68).length) + 448] = cd[100]
                mem[ceil32(('cd', 68).length) + 480] = cd[164]
                emit CallScheduled(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5, bytes32 arg6, uint256 arg7):
                                   Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0),
                                   mem[('cd', 68).length + 384 len (2 * ceil32(('cd', 68).length)) + -('cd', 68).length + 160],
                                   sha3(address(cd[4]), cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), cd[100], cd[132]),
                                   0,
            else:
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if EXECUTOR_ROLE() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
                if TIMELOCK_ADMIN_ROLE() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x5f58e3a2316349923ce3780f8d587db2d72378aed66a8261c916544fa6846ca5
                if uint32(call.func_hash) >> 224 != unknown_0x134008d3(?????):
                    require unknown_0x13bc9f20(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if timestamp[cd[4]] <= 1:
                        return (timestamp[cd[4]] > 1)
                    return timestamp[cd[4]] <= block.timestamp
                require calldata.size - 4 >= 160
                require cd[4] == address(cd[4])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + ('cd', 68).length + 36 <= calldata.size
                if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
                    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
                        mem[160 len 42] = call.data[calldata.size len 42]
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[256 len 66] = call.data[calldata.size len 66]
                        idx = 65
                        s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                mem[('cd', 68).length + 352] = 0
                if timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] <= 1:
                    revert with 0, 'TimelockController: operation is not ready'
                if timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] > block.timestamp:
                    revert with 0, 'TimelockController: operation is not ready'
                if cd[100]:
                    if timestamp[cd[100]] != 1:
                        revert with 0, 'TimelockController: missing dependency'
                mem[ceil32(('cd', 68).length) + 352 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                mem[('cd', 68).length + ceil32(('cd', 68).length) + 352] = 0
                call address(cd[4]) with:
                   funct Mask(32, -(8 * ceil32(('cd', 68).length) + -('cd', 68).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 68).length) + -('cd', 68).length + 4) + 256
                   value cd[36] wei
                     gas gas_remaining wei
                    args mem[ceil32(('cd', 68).length) + 356 len ('cd', 68).length - 4]
                if not ext_call.success:
                    revert with 0, 'TimelockController: underlying transaction reverted'
                if return_data.size:
                    emit CallExecuted(address(cd[4]), cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), sha3(address(cd[4]), cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), cd[100], cd[132]), 0);
                else:
                    mem[ceil32(('cd', 68).length) + 352] = address(cd[4])
                    mem[ceil32(('cd', 68).length) + 384] = cd[36]
                    mem[ceil32(('cd', 68).length) + 416] = 96
                    mem[ceil32(('cd', 68).length) + 448] = ('cd', 68).length
                    emit CallExecuted(bytes32 arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5):
                                      Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0),
                                      mem[('cd', 68).length + 384 len (2 * ceil32(('cd', 68).length)) + -('cd', 68).length + 96],
                                      sha3(address(cd[4]), cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), cd[100], cd[132]),
                                      0,
                if timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] <= 1:
                    revert with 0, 'TimelockController: operation is not ready'
                if timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] > block.timestamp:
                    revert with 0, 'TimelockController: operation is not ready'
                timestamp[address(cd[4])][cd[36]][Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])][cd[100]][cd[132]] = 1
        else:
            if unknown_0xb1c5f427(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x64d62353(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if msg.sender != this.address:
                        revert with 0, 'TimelockController: caller must be timelock'
                    emit MinDelayChange(minDelay, cd[4]);
                    minDelay = cd[4]
                else:
                    if unknown_0x8065657f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 160
                        require cd[4] == address(cd[4])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + ('cd', 68).length + 36 <= calldata.size
                        mem[ceil32(('cd', 68).length) + 352] = sha3(address(cd[4]), cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), cd[100], cd[132])
                        return Mask(8 * -ceil32(('cd', 68).length) + ('cd', 68).length + 32, 0, 0), 
                               mem[('cd', 68).length + 384 len -('cd', 68).length + ceil32(('cd', 68).length)]
                    if uint32(call.func_hash) >> 224 != unknown_0x8f2a0bb0(?????):
                        if unknown_0x8f61f4f5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
                        if uint32(call.func_hash) >> 224 != unknown_0x91d14854(?????):
                            require unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return 0
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    if not roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if not msg.sender + 10240:
                            idx = 65
                            s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                        revert with 0, 'Strings: hex length insufficient'
                    if ('cd', 36).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    if ('cd', 68).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    idx = 0
                    s = 352
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * ('cd', 4).length) + 352] = ('cd', 36).length
                    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    idx = 0
                    s = cd[68] + 36
                    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 416
                    u = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416
                    while idx < ('cd', 68).length:
                        mem[u] = t + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) - 416
                        require cd[s] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                        require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                        mem[t] = cd[(cd[68] + cd[s] + 36)]
                        mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                        mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                        u = u + 32
                        continue 
                    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 416
                    _555 = sha3(Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)]), (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, cd[100], cd[132])
                    if timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] > 0:
                        revert with 0, 'TimelockController: operation already scheduled'
                    if cd[164] < minDelay:
                        revert with 0, 'TimelockController: insufficient delay'
                    if block.timestamp > !cd[164]:
                        revert with 0, 17
                    timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] = block.timestamp + cd[164]
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = 160
                        mem[mem[64] + 160] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                        mem[mem[64] + 192 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                        mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        mem[mem[64] + 96] = cd[100]
                        mem[mem[64] + 128] = cd[164]
                        emit CallScheduled(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], Array(len=cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)], data=call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]), cd[100], cd[164], _555, idx);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if unknown_0xb1c5f427(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    require ('cd', 68).length <= test266151307()
                    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                    idx = 0
                    s = 352
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * ('cd', 4).length) + 352] = ('cd', 36).length
                    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    idx = 0
                    s = cd[68] + 36
                    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 416
                    u = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416
                    while idx < ('cd', 68).length:
                        mem[u] = t + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) - 416
                        require cd[s] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                        require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                        mem[t] = cd[(cd[68] + cd[s] + 36)]
                        mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                        mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                        u = u + 32
                        continue 
                    return sha3(Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)]), (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, cd[100], cd[132])
                if unknown_0xc4d252f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if roleAdmin[0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c][address(msg.sender)].field_0:
                        if timestamp[cd[4]] <= 1:
                            revert with 0, 'TimelockController: operation cannot be cancelled'
                        timestamp[cd[4]] = 0
                        emit Cancelled(cd[4]);
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if not msg.sender + 10240:
                        idx = 65
                        s = 0xfeb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819c
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                    revert with 0, 'Strings: hex length insufficient'
                if unknown_0xd45c4435(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return timestamp[cd[4]]
                if unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                        if roleAdmin[cd[4]][address(cd[36])].field_0:
                            roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                            emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = roleAdmin[cd[4]].field_256
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if roleAdmin[cd[4]].field_256 + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                    revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if uint32(call.func_hash) >> 224 != unknown_0xe38335e5(?????):
                    require unknown_0xf27a0c92(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return minDelay
                require calldata.size - 4 >= 160
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                if roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][0].field_0:
                    if ('cd', 36).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    if ('cd', 68).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    mem[160] = 160
                    mem[320] = ('cd', 4).length
                    idx = 0
                    s = 352
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[192] = (32 * ('cd', 4).length) + 192
                    mem[(32 * ('cd', 4).length) + 352] = ('cd', 36).length
                    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * ('cd', 4).length) + 384 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[224] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 384] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 416
                    u = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416
                    while idx < ('cd', 68).length:
                        mem[u] = t + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) - 416
                        require cd[s] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                        require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                        mem[t] = cd[(cd[68] + cd[s] + 36)]
                        mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                        mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                        u = u + 32
                        continue 
                    mem[256] = cd[100]
                    mem[288] = cd[132]
                    mem[128] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 256
                    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 416
                    _567 = sha3(Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)]), (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, cd[100], cd[132])
                    mem[0] = sha3(Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)]), (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, cd[100], cd[132])
                    if timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] <= 1:
                        revert with 0, 'TimelockController: operation is not ready'
                    if timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] > block.timestamp:
                        revert with 0, 'TimelockController: operation is not ready'
                    if not cd[100]:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            _999 = mem[64]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + _999 + -mem[64] - 4]
                            if return_data.size:
                                _1057 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1057] = return_data.size
                                mem[_1057 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TimelockController: underlying transaction reverted'
                            mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] + 128 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                            emit CallExecuted(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], Array(len=cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)], data=call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]), _567, idx);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if timestamp[cd[100]] != 1:
                            revert with 0, 'TimelockController: missing dependency'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            if return_data.size:
                                _1058 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1058] = return_data.size
                                mem[_1058 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TimelockController: underlying transaction reverted'
                            mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] + 128 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                            emit CallExecuted(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], Array(len=cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)], data=call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]), _567, idx);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if timestamp[_567] <= 1:
                        revert with 0, 'TimelockController: operation is not ready'
                    if timestamp[_567] > block.timestamp:
                        revert with 0, 'TimelockController: operation is not ready'
                    timestamp[_567] = 1
                else:
                    if not roleAdmin[0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63][address(msg.sender)].field_0:
                        mem[160 len 42] = call.data[calldata.size len 42]
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[256 len 66] = call.data[calldata.size len 66]
                        idx = 65
                        s = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    if ('cd', 36).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    if ('cd', 68).length != ('cd', 4).length:
                        revert with 0, 'TimelockController: length mismatch'
                    mem[160] = 160
                    mem[320] = ('cd', 4).length
                    idx = 0
                    s = 352
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[192] = (32 * ('cd', 4).length) + 192
                    mem[(32 * ('cd', 4).length) + 352] = ('cd', 36).length
                    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * ('cd', 4).length) + 384 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[224] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 384] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 416
                    u = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416
                    while idx < ('cd', 68).length:
                        mem[u] = t + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) - 416
                        require cd[s] < calldata.size + -cd[68] - 67
                        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                        require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                        mem[t] = cd[(cd[68] + cd[s] + 36)]
                        mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                        mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                        u = u + 32
                        continue 
                    mem[256] = cd[100]
                    mem[288] = cd[132]
                    mem[128] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 256
                    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 416
                    _570 = sha3(Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)]), (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, cd[100], cd[132])
                    if timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] <= 1:
                        revert with 0, 'TimelockController: operation is not ready'
                    if timestamp[Array(len=('cd', 4).length, data=mem[352 len (32 * ('cd', 4).length) + 32], call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 416 len (32 * ('cd', 68).length) + (32 * ('cd', 68).length)])][(32 * ('cd', 4).length) + 192][(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224][cd[100]][cd[132]] > block.timestamp:
                        revert with 0, 'TimelockController: operation is not ready'
                    if not cd[100]:
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]) with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            if return_data.size:
                                _1059 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1059] = return_data.size
                                mem[_1059 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TimelockController: underlying transaction reverted'
                            mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] + 128 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                            emit CallExecuted(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], Array(len=cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)], data=call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]), _570, idx);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = cd[100]
                        if timestamp[cd[100]] != 1:
                            revert with 0, 'TimelockController: missing dependency'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
                            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
                            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            _1002 = mem[64]
                            mem[mem[64] len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                               value cd[((32 * idx) + cd[36] + 36)] wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + _1002 + -mem[64] - 4]
                            if return_data.size:
                                _1060 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1060] = return_data.size
                                mem[_1060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TimelockController: underlying transaction reverted'
                            mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = 96
                            mem[mem[64] + 96] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
                            mem[mem[64] + 128 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
                            mem[cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + mem[64] + 128] = 0
                            emit CallExecuted(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], Array(len=cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)], data=call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]), _570, idx);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if timestamp[_570] <= 1:
                        revert with 0, 'TimelockController: operation is not ready'
                    if timestamp[_570] > block.timestamp:
                        revert with 0, 'TimelockController: operation is not ready'
                    timestamp[_570] = 1
}



}
