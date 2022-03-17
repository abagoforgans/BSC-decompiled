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
        _95 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 36)]) + 32
        mem[_95] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_95 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_95 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _95
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    _96 = mem[64]
    require mem[64] + (32 * arg2.length) + 32 >= mem[64] and mem[64] + (32 * arg2.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = _96 + 32
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
    _188 = mem[64]
    require mem[64] + (32 * arg3.length) + 32 >= mem[64] and mem[64] + (32 * arg3.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg3.length) + 32
    mem[_188] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = _188 + 32
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
    _279 = mem[64]
    require mem[64] + (32 * arg4.length) + 32 >= mem[64] and mem[64] + (32 * arg4.length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * arg4.length) + 32
    mem[_279] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = _279 + 32
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
    _374 = mem[96]
    if mem[96] != mem[_96]:
        revert with 0, 'BAD_RATES_LENGTH'
    if mem[_188] != mem[96]:
        revert with 0, 'BAD_RESOLVE_TIMES_LENGTH'
    if arg4.length != mem[96]:
        revert with 0, 'BAD_REQUEST_IDS_LENGTH'
    idx = 0
    while idx < _374:
        _458 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[_96]
        mem[_458] = mem[(32 * idx) + _96 + 56 len 8]
        require idx < mem[_188]
        mem[_458 + 32] = mem[(32 * idx) + _188 + 56 len 8]
        require idx < mem[_279]
        mem[_458 + 64] = mem[(32 * idx) + _279 + 56 len 8]
        require idx < mem[96]
        _466 = mem[(32 * idx) + 128]
        _467 = mem[64]
        _468 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _468:
            mem[s + _467] = mem[_466 + s + 32]
            s = s + 32
            continue 
        mem[_468 + _467] = 1
        stor[sha3(mem[mem[64] len _468 + _467 + -mem[64] + 32])].field_0 = mem[_458 + 24 len 8]
        stor[sha3(mem[mem[64] len _468 + _467 + -mem[64] + 32])].field_64 = mem[_458 + 56 len 8]
        stor[sha3(mem[mem[64] len _468 + _467 + -mem[64] + 32])].field_128 = mem[_458 + 88 len 8]
        require idx < mem[96]
        if ceil32(_468) <= _468:
            _537 = mem[(32 * idx) + 128]
            _538 = mem[64]
            _545 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _545:
                mem[s + _538] = mem[_537 + s + 32]
                s = s + 32
                continue 
            if ceil32(_545) <= _545:
                _594 = sha3(mem[mem[64] len _545 + _538 - mem[64]])
                require idx < mem[_96]
                require idx < mem[_188]
                _609 = mem[(32 * idx) + _188 + 32]
                require idx < mem[_279]
                _617 = mem[(32 * idx) + _279 + 32]
                mem[mem[64]] = mem[(32 * idx) + _96 + 56 len 8]
                mem[mem[64] + 32] = uint64(_609)
                mem[mem[64] + 64] = uint64(_617)
                emit RefDataUpdate(mem[mem[64]], _609 << 192, uint64(_617), _594);
            else:
                mem[_538 + _545] = 0
                _602 = sha3(mem[mem[64] len _545 + _538 - mem[64]])
                require idx < mem[_96]
                require idx < mem[_188]
                _619 = mem[(32 * idx) + _188 + 32]
                require idx < mem[_279]
                _625 = mem[(32 * idx) + _279 + 32]
                mem[mem[64]] = mem[(32 * idx) + _96 + 56 len 8]
                mem[mem[64] + 32] = uint64(_619)
                mem[mem[64] + 64] = uint64(_625)
                emit RefDataUpdate(mem[mem[64]], _619 << 192, uint64(_625), _602);
        else:
            _546 = mem[(32 * idx) + 128]
            _547 = mem[64]
            _548 = mem[mem[(32 * idx) + 128]]
            s = 0
            while s < _548:
                mem[s + _547] = mem[_546 + s + 32]
                s = s + 32
                continue 
            if ceil32(_548) <= _548:
                _597 = sha3(mem[mem[64] len _548 + _547 - mem[64]])
                require idx < mem[_96]
                require idx < mem[_188]
                _613 = mem[(32 * idx) + _188 + 32]
                require idx < mem[_279]
                _621 = mem[(32 * idx) + _279 + 32]
                mem[mem[64]] = mem[(32 * idx) + _96 + 56 len 8]
                mem[mem[64] + 32] = uint64(_613)
                mem[mem[64] + 64] = uint64(_621)
                emit RefDataUpdate(mem[mem[64]], _613 << 192, uint64(_621), _597);
            else:
                mem[_547 + _548] = 0
                _607 = sha3(mem[mem[64] len _548 + _547 - mem[64]])
                require idx < mem[_96]
                require idx < mem[_188]
                _623 = mem[(32 * idx) + _188 + 32]
                require idx < mem[_279]
                _627 = mem[(32 * idx) + _279 + 32]
                mem[mem[64]] = mem[(32 * idx) + _96 + 56 len 8]
                mem[mem[64] + 32] = uint64(_623)
                mem[mem[64] + 64] = uint64(_627)
                emit RefDataUpdate(mem[mem[64]], _623 << 192, uint64(_627), _607);
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

function sub_1be0ac6a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _184 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_184] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_184 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_184 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _184
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _185 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_185] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = _185 + 32
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _370 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_370] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_370 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_370 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
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
            _548 = mem[(32 * idx) + 128]
            require idx < mem[_185]
            _551 = mem[(32 * idx) + _185 + 32]
            _553 = mem[64]
            mem[64] = mem[64] + 96
            mem[_553] = 0
            mem[_553 + 32] = 0
            mem[_553 + 64] = 0
            _560 = mem[64]
            mem[64] = mem[64] + 64
            mem[_560] = 3
            mem[_560 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_548 + 32 len mem[_548]]):
                _572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_572] = 3
                mem[_572 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                    _591 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_591] = 10^18
                    mem[_591 + 32] = block.timestamp
                    mem[_591 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _591
                else:
                    _576 = mem[64]
                    _586 = mem[_551]
                    s = 0
                    while s < _586:
                        mem[s + _576] = mem[_551 + s + 32]
                        s = s + 32
                        continue 
                    mem[_586 + _576] = 1
                    if ceil32(_586) <= _586:
                        _730 = sha3(mem[mem[64] len _586 + _576 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _586 + _576 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _741 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_730].field_0
                        mem[_741] = 1000000000 * 10^18 / stor[_730].field_0
                        mem[_741 + 32] = block.timestamp
                        mem[_741 + 64] = stor[_730].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _741
                    else:
                        _736 = sha3(mem[mem[64] len _586 + _576 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _586 + _576 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _749 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_736].field_0
                        mem[_749] = 1000000000 * 10^18 / stor[_736].field_0
                        mem[_749 + 32] = block.timestamp
                        mem[_749 + 64] = stor[_736].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _749
            else:
                _565 = mem[64]
                _568 = mem[_548]
                s = 0
                while s < _568:
                    mem[s + _565] = mem[_548 + s + 32]
                    s = s + 32
                    continue 
                mem[_568 + _565] = 1
                if ceil32(_568) <= _568:
                    _728 = sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_745] = 3
                    mem[_745 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                    if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                        _763 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_763] = 10^18 * stor[_728].field_0 / 10^9
                        mem[_763 + 32] = stor[_728].field_64
                        mem[_763 + 64] = block.timestamp
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _763
                    else:
                        _753 = mem[64]
                        _759 = mem[_551]
                        s = 0
                        while s < _759:
                            mem[s + _753] = mem[_551 + s + 32]
                            s = s + 32
                            continue 
                        mem[_759 + _753] = 1
                        if ceil32(_759) <= _759:
                            _879 = sha3(mem[mem[64] len _759 + _753 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _759 + _753 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _894 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_879].field_0
                            mem[_894] = 10^18 * stor[_728].field_0 / stor[_879].field_0
                            mem[_894 + 32] = stor[_728].field_64
                            mem[_894 + 64] = stor[_879].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _894
                        else:
                            _886 = sha3(mem[mem[64] len _759 + _753 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _759 + _753 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _899 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_886].field_0
                            mem[_899] = 10^18 * stor[_728].field_0 / stor[_886].field_0
                            mem[_899 + 32] = stor[_728].field_64
                            mem[_899 + 64] = stor[_886].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _899
                else:
                    _733 = sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_754] = 3
                    mem[_754 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                    if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                        _767 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_767] = 10^18 * stor[_733].field_0 / 10^9
                        mem[_767 + 32] = stor[_733].field_64
                        mem[_767 + 64] = block.timestamp
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _767
                    else:
                        _760 = mem[64]
                        _764 = mem[_551]
                        s = 0
                        while s < _764:
                            mem[s + _760] = mem[_551 + s + 32]
                            s = s + 32
                            continue 
                        mem[_764 + _760] = 1
                        if ceil32(_764) <= _764:
                            _881 = sha3(mem[mem[64] len _764 + _760 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _764 + _760 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _896 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_881].field_0
                            mem[_896] = 10^18 * stor[_733].field_0 / stor[_881].field_0
                            mem[_896 + 32] = stor[_733].field_64
                            mem[_896 + 64] = stor[_881].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _896
                        else:
                            _889 = sha3(mem[mem[64] len _764 + _760 + -mem[64] + 32])
                            if not stor[sha3(mem[mem[64] len _764 + _760 + -mem[64] + 32])].field_64:
                                revert with 0, 'REF_DATA_NOT_AVAILABLE'
                            _901 = mem[64]
                            mem[64] = mem[64] + 96
                            require stor[_889].field_0
                            mem[_901] = 10^18 * stor[_733].field_0 / stor[_889].field_0
                            mem[_901 + 32] = stor[_733].field_64
                            mem[_901 + 64] = stor[_889].field_64
                            require idx < mem[_371]
                            mem[(32 * idx) + _371 + 32] = _901
            idx = idx + 1
            continue 
        _550 = mem[64]
        mem[mem[64]] = 32
        _552 = mem[_371]
        mem[mem[64] + 32] = mem[_371]
        idx = 0
        s = mem[64] + 64
        t = _371 + 32
        while idx < _552:
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
           len _550 + (96 * _552) + -mem[64] + 64
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
        _876 = mem[(32 * idx) + 128]
        require idx < mem[_185]
        _883 = mem[(32 * idx) + _185 + 32]
        _893 = mem[64]
        mem[64] = mem[64] + 96
        mem[_893] = 0
        mem[_893 + 32] = 0
        mem[_893 + 64] = 0
        _907 = mem[64]
        mem[64] = mem[64] + 64
        mem[_907] = 3
        mem[_907 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_876 + 32 len mem[_876]]):
            _917 = mem[64]
            mem[64] = mem[64] + 64
            mem[_917] = 3
            mem[_917 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_883 + 32 len mem[_883]]):
                _927 = mem[64]
                mem[64] = mem[64] + 96
                mem[_927] = 10^18
                mem[_927 + 32] = block.timestamp
                mem[_927 + 64] = block.timestamp
                require idx < mem[_371]
                mem[(32 * idx) + _371 + 32] = _927
            else:
                _920 = mem[64]
                _923 = mem[_883]
                s = 0
                while s < _923:
                    mem[s + _920] = mem[_883 + s + 32]
                    s = s + 32
                    continue 
                mem[_923 + _920] = 1
                if ceil32(_923) <= _923:
                    _995 = sha3(mem[mem[64] len _923 + _920 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _923 + _920 + -mem[64] + 32])].field_64:
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
                    _1001 = sha3(mem[mem[64] len _923 + _920 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _923 + _920 + -mem[64] + 32])].field_64:
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
            _912 = mem[64]
            _915 = mem[_876]
            s = 0
            while s < _915:
                mem[s + _912] = mem[_876 + s + 32]
                s = s + 32
                continue 
            mem[_915 + _912] = 1
            if ceil32(_915) <= _915:
                _993 = sha3(mem[mem[64] len _915 + _912 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _915 + _912 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1007] = 3
                mem[_1007 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_883 + 32 len mem[_883]]):
                    _1021 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1021] = 10^18 * stor[_993].field_0 / 10^9
                    mem[_1021 + 32] = stor[_993].field_64
                    mem[_1021 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1021
                else:
                    _1013 = mem[64]
                    _1018 = mem[_883]
                    s = 0
                    while s < _1018:
                        mem[s + _1013] = mem[_883 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1018 + _1013] = 1
                    if ceil32(_1018) <= _1018:
                        _1055 = sha3(mem[mem[64] len _1018 + _1013 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1018 + _1013 + -mem[64] + 32])].field_64:
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
                        _1060 = sha3(mem[mem[64] len _1018 + _1013 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1018 + _1013 + -mem[64] + 32])].field_64:
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
                _998 = sha3(mem[mem[64] len _915 + _912 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _915 + _912 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _1014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1014] = 3
                mem[_1014 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_883 + 32 len mem[_883]]):
                    _1024 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1024] = 10^18 * stor[_998].field_0 / 10^9
                    mem[_1024 + 32] = stor[_998].field_64
                    mem[_1024 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _1024
                else:
                    _1019 = mem[64]
                    _1022 = mem[_883]
                    s = 0
                    while s < _1022:
                        mem[s + _1019] = mem[_883 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1022 + _1019] = 1
                    if ceil32(_1022) <= _1022:
                        _1057 = sha3(mem[mem[64] len _1022 + _1019 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1022 + _1019 + -mem[64] + 32])].field_64:
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
                        _1063 = sha3(mem[mem[64] len _1022 + _1019 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _1022 + _1019 + -mem[64] + 32])].field_64:
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
    _882 = mem[64]
    mem[mem[64]] = 32
    _890 = mem[_371]
    mem[mem[64] + 32] = mem[_371]
    idx = 0
    s = mem[64] + 64
    t = _371 + 32
    while idx < _890:
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
       len _882 + (96 * _890) + -mem[64] + 64
}



}
