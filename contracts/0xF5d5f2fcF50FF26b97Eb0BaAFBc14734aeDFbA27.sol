contract main {




// =====================  Runtime code  =====================


const RELAYER_ROLE = sha3(Mask(96, 160, 'RELAYER_ROLE') >> 160)

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
mapping of struct stor1;
mapping of struct stor99;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_512)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(roleAdmin[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint256(roleAdmin[arg1][1][address(arg2)].field_0))
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_0)
}

function _fallback() payable {
    revert
}

function refs(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor1[arg1[all]].field_0
    mem[ceil32(arg1.length) + 160] = stor1[arg1[all]].field_64
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           stor1[arg1[all]].field_0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        uint256(roleAdmin[arg1].field_0)++
        address(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_160) = 0
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = uint256(roleAdmin[arg1].field_0)
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function relay(string[] arg1, uint64[] arg2, uint64[] arg3, uint64[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _71 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_71] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_71 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_71 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _71
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _72 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_72] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = _72 + 32
    while idx < arg2.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    _140 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_140] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = _140 + 32
    while idx < arg3.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    _207 = mem[64]
    require mem[64] + (32 * arg4.length) + 32 >= mem[64] and mem[64] + (32 * arg4.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_207] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = _207 + 32
    while idx < arg4.length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 'RELAYER_ROLE' << 160
    mem[0] = msg.sender
    mem[32] = sha3(sha3('RELAYER_ROLE'), 0) + 1
    if not uint256(roleAdmin['RELAYER_ROLE'][1][address(msg.sender)].field_0):
        revert with 0, 'NOT_A_RELAYER'
    _278 = mem[96]
    if mem[96] != mem[_72]:
        revert with 0, 'BAD_RATES_LENGTH'
    if mem[_140] != mem[96]:
        revert with 0, 'BAD_RESOLVE_TIMES_LENGTH'
    if arg4.length != mem[96]:
        revert with 0, 'BAD_REQUEST_IDS_LENGTH'
    idx = 0
    while idx < _278:
        _338 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[_72]
        mem[_338] = mem[(32 * idx) + _72 + 56 len 8]
        require idx < mem[_140]
        mem[_338 + 32] = mem[(32 * idx) + _140 + 56 len 8]
        require idx < mem[_207]
        mem[_338 + 64] = mem[(32 * idx) + _207 + 56 len 8]
        require idx < mem[96]
        _346 = mem[(32 * idx) + 128]
        _347 = mem[64]
        _348 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _348:
            mem[s + _347] = mem[s + _346 + 32]
            s = s + 32
            continue 
        mem[_348 + _347] = 1
        stor[sha3(mem[mem[64] len _348 + _347 + -mem[64] + 32])].field_0 = mem[_338 + 24 len 8]
        stor[sha3(mem[mem[64] len _348 + _347 + -mem[64] + 32])].field_64 = mem[_338 + 56 len 8]
        stor[sha3(mem[mem[64] len _348 + _347 + -mem[64] + 32])].field_128 = mem[_338 + 88 len 8]
        require idx < mem[96]
        if ceil32(_348) <= _348:
            _393 = mem[(32 * idx) + 128]
            require idx < mem[_72]
            _401 = mem[(32 * idx) + _72 + 32]
            require idx < mem[_140]
            _405 = mem[(32 * idx) + _140 + 32]
            require idx < mem[_207]
            _409 = mem[(32 * idx) + _207 + 32]
            mem[mem[64]] = 128
            _413 = mem[_393]
            mem[mem[64] + 128] = mem[_393]
            s = 0
            while s < _413:
                mem[s + mem[64] + 160] = mem[s + _393 + 32]
                s = s + 32
                continue 
            if ceil32(_413) > _413:
                mem[mem[64] + _413 + 160] = 0
            mem[mem[64] + 32] = uint64(_401)
            mem[mem[64] + 64] = uint64(_405)
            mem[mem[64] + 96] = uint64(_409)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               128,
                               _401 << 192,
                               _405 << 192,
                               _409 << 192,
                               mem[mem[64] + 128 len ceil32(_413) + 32],
        else:
            _403 = mem[(32 * idx) + 128]
            require idx < mem[_72]
            _407 = mem[(32 * idx) + _72 + 32]
            require idx < mem[_140]
            _411 = mem[(32 * idx) + _140 + 32]
            require idx < mem[_207]
            _414 = mem[(32 * idx) + _207 + 32]
            mem[mem[64]] = 128
            _416 = mem[_403]
            mem[mem[64] + 128] = mem[_403]
            s = 0
            while s < _416:
                mem[s + mem[64] + 160] = mem[s + _403 + 32]
                s = s + 32
                continue 
            if ceil32(_416) > _416:
                mem[mem[64] + _416 + 160] = 0
            mem[mem[64] + 32] = uint64(_407)
            mem[mem[64] + 64] = uint64(_411)
            mem[mem[64] + 96] = uint64(_414)
            emit RefDataUpdate(string rg1, uint64 rg2, uint64 rg3, uint64 rg4):
                               128,
                               _407 << 192,
                               _411 << 192,
                               _414 << 192,
                               mem[mem[64] + 128 len ceil32(_416) + 32],
        idx = idx + 1
        continue 
}

function getReferenceData(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0x5553440000000000000000000000000000000000000000000000000000000000
    if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(arg1[all]):
        if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(arg2[all]):
            return 10^18, block.timestamp, block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = 1
        if not stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_64:
            revert with 0, 'REF_DATA_NOT_AVAILABLE'
        if stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_0:
            return 1000000000 * 10^18 / stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_0, 
                   block.timestamp,
                   stor[mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 384 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256].field_64
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = 1
        if ceil32(arg1.length) <= arg1.length:
            _117 = sha3(Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32])
            if not stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 3
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]):
                return 10^18 * stor[_117].field_0 / 10^9, stor[_117].field_0, block.timestamp
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg2.length) + 384] = 1
            if not stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0:
                return 10^18 * stor[_117].field_0 / stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0, 
                       stor[_117].field_0,
                       stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64
        else:
            _122 = sha3(Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32])
            if not stor[mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 3
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]):
                return 10^18 * stor[_122].field_0 / 10^9, stor[_122].field_0, block.timestamp
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg2.length) + 384] = 1
            if not stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            if stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0:
                return 10^18 * stor[_122].field_0 / stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_0, 
                       stor[_122].field_0,
                       stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])].field_64
        ('iszero', ('field', 0, ('stor', ('sha3', ('mem', ('range', ('add', 384, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('add', 32, ('data', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))))))))
    revert
}

function getReferenceDataBulk(string[] arg1, string[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _184 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_184] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_184 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_184 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _184
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _185 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_185] = arg2.length
    idx = 0
    s = arg2 + 36
    t = _185 + 32
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _370 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_370] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_370 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_370 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _370
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[_185]:
        revert with 0, 'BAD_INPUT_LENGTH'
    _368 = mem[96]
    require mem[96] <= test266151307()
    _371 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _368) + 32
    if not _368:
        idx = 0
        while idx < _368:
            require idx < mem[96]
            _549 = mem[(32 * idx) + 128]
            require idx < mem[_185]
            _552 = mem[(32 * idx) + _185 + 32]
            _554 = mem[64]
            mem[64] = mem[64] + 96
            mem[_554] = 0
            mem[_554 + 32] = 0
            mem[_554 + 64] = 0
            _560 = mem[64]
            mem[64] = mem[64] + 64
            mem[_560] = 3
            mem[_560 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_549 + 32 len mem[_549]]):
                _572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_572] = 3
                mem[_572 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_552 + 32 len mem[_552]]):
                    _586 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_586] = 10^18
                    mem[_586 + 32] = block.timestamp
                    mem[_586 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _586
                else:
                    _580 = mem[64]
                    _584 = mem[_552]
                    s = 0
                    while s < _584:
                        mem[s + _580] = mem[s + _552 + 32]
                        s = s + 32
                        continue 
                    mem[_584 + _580] = 1
                    if ceil32(_584) <= _584:
                        _730 = sha3(mem[mem[64] len _584 + _580 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _584 + _580 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _744 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_730].field_0
                        mem[_744] = 1000000000 * 10^18 / stor[_730].field_0
                        mem[_744 + 32] = block.timestamp
                        mem[_744 + 64] = stor[_730].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _744
                    else:
                        _736 = sha3(mem[mem[64] len _584 + _580 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _584 + _580 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _752 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_736].field_0
                        mem[_752] = 1000000000 * 10^18 / stor[_736].field_0
                        mem[_752 + 32] = block.timestamp
                        mem[_752 + 64] = stor[_736].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _752
            else:
                _566 = mem[64]
                _569 = mem[_549]
                s = 0
                while s < _569:
                    mem[s + _566] = mem[s + _549 + 32]
                    s = s + 32
                    continue 
                mem[_569 + _566] = 1
                if ceil32(_569) <= _569:
                    _728 = sha3(mem[mem[64] len _569 + _566 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _569 + _566 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 3
                    mem[_748 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                    if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_552 + 32 len mem[_552]]):
                        _767 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_767] = 10^18 * stor[_728].field_0 / 10^9
                        mem[_767 + 32] = stor[_728].field_64
                        mem[_767 + 64] = block.timestamp
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _767
                    else:
                        _754 = mem[64]
                        _760 = mem[_552]
                        s = 0
                        while s < _760:
                            mem[s + _754] = mem[s + _552 + 32]
                            s = s + 32
                            continue 
                        mem[_760 + _754] = 1
                        if ceil32(_760) <= _760:
                            _882 = sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _899 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_882].field_0
                            mem[_899] = 10^18 * stor[_728].field_0 / stor[_882].field_0
                            mem[_899 + 32] = stor[_728].field_64
                            mem[_899 + 64] = stor[_882].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _899
                        else:
                            _887 = sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _906 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_887].field_0
                            mem[_906] = 10^18 * stor[_728].field_0 / stor[_887].field_0
                            mem[_906 + 32] = stor[_728].field_64
                            mem[_906 + 64] = stor[_887].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _906
                else:
                    _733 = sha3(mem[mem[64] len _569 + _566 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _569 + _566 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_755] = 3
                    mem[_755 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                    if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_552 + 32 len mem[_552]]):
                        _773 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_773] = 10^18 * stor[_733].field_0 / 10^9
                        mem[_773 + 32] = stor[_733].field_64
                        mem[_773 + 64] = block.timestamp
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _773
                    else:
                        _761 = mem[64]
                        _768 = mem[_552]
                        s = 0
                        while s < _768:
                            mem[s + _761] = mem[s + _552 + 32]
                            s = s + 32
                            continue 
                        mem[_768 + _761] = 1
                        if ceil32(_768) <= _768:
                            _884 = sha3(mem[mem[64] len _768 + _761 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _768 + _761 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _901 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_884].field_0
                            mem[_901] = 10^18 * stor[_733].field_0 / stor[_884].field_0
                            mem[_901 + 32] = stor[_733].field_64
                            mem[_901 + 64] = stor[_884].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _901
                        else:
                            _890 = sha3(mem[mem[64] len _768 + _761 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _768 + _761 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _908 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_890].field_0
                            mem[_908] = 10^18 * stor[_733].field_0 / stor[_890].field_0
                            mem[_908 + 32] = stor[_733].field_64
                            mem[_908 + 64] = stor[_890].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _908
            idx = idx + 1
            continue 
        _548 = mem[64]
        mem[mem[64]] = 32
        _551 = mem[_371]
        mem[mem[64] + 32] = mem[_371]
        idx = 0
        s = mem[64] + 64
        t = _371 + 32
        while idx < _551:
            _720 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_720 + 32]
            mem[s + 64] = mem[_720 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _548 + (96 * _551) + -mem[64] + 64
    mem[64] = _371 + (32 * _368) + 128
    mem[_371 + (32 * _368) + 32] = 0
    mem[_371 + (32 * _368) + 64] = 0
    mem[_371 + (32 * _368) + 96] = 0
    mem[var38001] = _371 + (32 * _368) + 32
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_371 + (32 * _368) + 32] = 0
        mem[_371 + (32 * _368) + 64] = 0
        mem[_371 + (32 * _368) + 96] = 0
        mem[s + 32] = _371 + (32 * _368) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _368:
        require idx < mem[96]
        _877 = mem[(32 * idx) + 128]
        require idx < mem[_185]
        _880 = mem[(32 * idx) + _185 + 32]
        _892 = mem[64]
        mem[64] = mem[64] + 96
        mem[_892] = 0
        mem[_892 + 32] = 0
        mem[_892 + 64] = 0
        _903 = mem[64]
        mem[64] = mem[64] + 64
        mem[_903] = 3
        mem[_903 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_877 + 32 len mem[_877]]):
            _916 = mem[64]
            mem[64] = mem[64] + 64
            mem[_916] = 3
            mem[_916 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_880 + 32 len mem[_880]]):
                _922 = mem[64]
                mem[64] = mem[64] + 96
                mem[_922] = 10^18
                mem[_922 + 32] = block.timestamp
                mem[_922 + 64] = block.timestamp
                require idx < mem[_371]
                mem[(32 * idx) + _371 + 32] = _922
            else:
                _920 = mem[64]
                _921 = mem[_880]
                s = 0
                while s < _921:
                    mem[s + _920] = mem[s + _880 + 32]
                    s = s + 32
                    continue 
                mem[_921 + _920] = 1
                if ceil32(_921) <= _921:
                    _995 = sha3(mem[mem[64] len _921 + _920 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _921 + _920 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _1005 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_995].field_0
                    mem[_1005] = 1000000000 * 10^18 / stor[_995].field_0
                    mem[_1005 + 32] = block.timestamp
                    mem[_1005 + 64] = stor[_995].field_64
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1005
                else:
                    _1001 = sha3(mem[mem[64] len _921 + _920 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _921 + _920 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _1011 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_1001].field_0
                    mem[_1011] = 1000000000 * 10^18 / stor[_1001].field_0
                    mem[_1011 + 32] = block.timestamp
                    mem[_1011 + 64] = stor[_1001].field_64
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1011
        else:
            _910 = mem[64]
            _911 = mem[_877]
            s = 0
            while s < _911:
                mem[s + _910] = mem[s + _877 + 32]
                s = s + 32
                continue 
            mem[_911 + _910] = 1
            if ceil32(_911) <= _911:
                _993 = sha3(mem[mem[64] len _911 + _910 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _911 + _910 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1007] = 3
                mem[_1007 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_880 + 32 len mem[_880]]):
                    _1020 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1020] = 10^18 * stor[_993].field_0 / 10^9
                    mem[_1020 + 32] = stor[_993].field_64
                    mem[_1020 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1020
                else:
                    _1013 = mem[64]
                    _1017 = mem[_880]
                    s = 0
                    while s < _1017:
                        mem[s + _1013] = mem[s + _880 + 32]
                        s = s + 32
                        continue 
                    mem[_1017 + _1013] = 1
                    if ceil32(_1017) <= _1017:
                        _1055 = sha3(mem[mem[64] len _1017 + _1013 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1017 + _1013 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1066 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1055].field_0
                        mem[_1066] = 10^18 * stor[_993].field_0 / stor[_1055].field_0
                        mem[_1066 + 32] = stor[_993].field_64
                        mem[_1066 + 64] = stor[_1055].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _1066
                    else:
                        _1060 = sha3(mem[mem[64] len _1017 + _1013 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1017 + _1013 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1070 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1060].field_0
                        mem[_1070] = 10^18 * stor[_993].field_0 / stor[_1060].field_0
                        mem[_1070 + 32] = stor[_993].field_64
                        mem[_1070 + 64] = stor[_1060].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _1070
            else:
                _998 = sha3(mem[mem[64] len _911 + _910 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _911 + _910 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1014] = 3
                mem[_1014 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_880 + 32 len mem[_880]]):
                    _1023 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1023] = 10^18 * stor[_998].field_0 / 10^9
                    mem[_1023 + 32] = stor[_998].field_64
                    mem[_1023 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1023
                else:
                    _1018 = mem[64]
                    _1021 = mem[_880]
                    s = 0
                    while s < _1021:
                        mem[s + _1018] = mem[s + _880 + 32]
                        s = s + 32
                        continue 
                    mem[_1021 + _1018] = 1
                    if ceil32(_1021) <= _1021:
                        _1057 = sha3(mem[mem[64] len _1021 + _1018 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1021 + _1018 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1068 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1057].field_0
                        mem[_1068] = 10^18 * stor[_998].field_0 / stor[_1057].field_0
                        mem[_1068 + 32] = stor[_998].field_64
                        mem[_1068 + 64] = stor[_1057].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _1068
                    else:
                        _1063 = sha3(mem[mem[64] len _1021 + _1018 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1021 + _1018 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _1072 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_1063].field_0
                        mem[_1072] = 10^18 * stor[_998].field_0 / stor[_1063].field_0
                        mem[_1072 + 32] = stor[_998].field_64
                        mem[_1072 + 64] = stor[_1063].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _1072
        idx = idx + 1
        continue 
    _876 = mem[64]
    mem[mem[64]] = 32
    _879 = mem[_371]
    mem[mem[64] + 32] = mem[_371]
    idx = 0
    s = mem[64] + 64
    t = _371 + 32
    while idx < _879:
        _985 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_985 + 32]
        mem[s + 64] = mem[_985 + 64]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _876 + (96 * _879) + -mem[64] + 64
}



}
