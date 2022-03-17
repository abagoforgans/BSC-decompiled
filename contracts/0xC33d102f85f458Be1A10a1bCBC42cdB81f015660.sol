contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
mapping of struct stor99;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}

function sub_7ab6c538(?) payable {
    require calldata.size - 4 >= 96
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
        _54 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_54] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_54 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_54 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _54
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _55 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_55] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = _55 + 32
    while idx < ('cd', 36).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    _106 = mem[64]
    require mem[64] + (32 * ('cd', 68).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 68).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    mem[_106] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = _106 + 32
    while idx < ('cd', 68).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _156 = mem[96]
    if mem[96] != mem[_55]:
        revert with 0, 'BAD_RATES_LENGTH'
    if ('cd', 68).length != mem[96]:
        revert with 0, 'BAD_RESOLVE_TIMES_LENGTH'
    idx = 0
    while idx < _156:
        _205 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[_55]
        mem[_205] = mem[(32 * idx) + _55 + 56 len 8]
        require idx < mem[_106]
        mem[_205 + 32] = mem[(32 * idx) + _106 + 56 len 8]
        require idx < mem[96]
        _211 = mem[(32 * idx) + 128]
        _212 = mem[64]
        _213 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _213:
            mem[s + _212] = mem[s + _211 + 32]
            s = s + 32
            continue 
        mem[_213 + _212] = 1
        stor[sha3(mem[mem[64] len _213 + _212 + -mem[64] + 32])].field_0 = mem[_205 + 24 len 8]
        stor[sha3(mem[mem[64] len _213 + _212 + -mem[64] + 32])].field_64 = mem[_205 + 56 len 8]
        require idx < mem[96]
        if ceil32(_213) <= _213:
            _251 = mem[(32 * idx) + 128]
            require idx < mem[_55]
            _258 = mem[(32 * idx) + _55 + 32]
            require idx < mem[_106]
            _262 = mem[(32 * idx) + _106 + 32]
            _263 = mem[64]
            mem[mem[64]] = 96
            _266 = mem[_251]
            mem[mem[64] + 96] = mem[_251]
            s = 0
            while s < _266:
                mem[s + mem[64] + 128] = mem[s + _251 + 32]
                s = s + 32
                continue 
            if ceil32(_266) > _266:
                mem[mem[64] + _266 + 128] = 0
            mem[mem[64] + 32] = uint64(_258)
            mem[_263 + 64] = uint64(_262)
            emit 0xfd841fde: mem[mem[64] len ceil32(_266) + _263 + -mem[64] + 128]
        else:
            _260 = mem[(32 * idx) + 128]
            require idx < mem[_55]
            _264 = mem[(32 * idx) + _55 + 32]
            require idx < mem[_106]
            _267 = mem[(32 * idx) + _106 + 32]
            _268 = mem[64]
            mem[mem[64]] = 96
            _269 = mem[_260]
            mem[mem[64] + 96] = mem[_260]
            s = 0
            while s < _269:
                mem[s + mem[64] + 128] = mem[s + _260 + 32]
                s = s + 32
                continue 
            if ceil32(_269) > _269:
                mem[_268 + _269 + 128] = 0
            mem[_268 + 32] = uint64(_264)
            mem[_268 + 64] = uint64(_267)
            emit 0xfd841fde: mem[mem[64] len ceil32(_269) + _268 + -mem[64] + 128]
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
                _571 = mem[64]
                mem[64] = mem[64] + 64
                mem[_571] = 3
                mem[_571 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                    _586 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_586] = 10^18
                    mem[_586 + 32] = block.timestamp
                    mem[_586 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _586
                    idx = idx + 1
                    continue 
                _576 = mem[64]
                _584 = mem[_551]
                s = 0
                while s < _584:
                    mem[s + _576] = mem[s + _551 + 32]
                    s = s + 32
                    continue 
                mem[_584 + _576] = 1
                if ceil32(_584) <= _584:
                    _730 = sha3(mem[mem[64] len _584 + _576 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _584 + _576 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _743 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_730].field_0
                    mem[_743] = 1000000000 * 10^18 / stor[_730].field_0
                    mem[_743 + 32] = block.timestamp
                    mem[_743 + 64] = stor[_730].field_64
                    require ceil32(_584) < mem[_371]
                    mem[(Mask(251, 0, _584 + 31) * 32) + _371 + 32] = _743
                else:
                    _736 = sha3(mem[mem[64] len _584 + _576 + -mem[64] + 32])
                    if not stor[sha3(mem[mem[64] len _584 + _576 + -mem[64] + 32])].field_64:
                        revert with 0, 'REF_DATA_NOT_AVAILABLE'
                    _751 = mem[64]
                    mem[64] = mem[64] + 96
                    require stor[_736].field_0
                    mem[_751] = 1000000000 * 10^18 / stor[_736].field_0
                    mem[_751 + 32] = block.timestamp
                    mem[_751 + 64] = stor[_736].field_64
                    require ceil32(_584) < mem[_371]
                    mem[(Mask(251, 0, _584 + 31) * 32) + _371 + 32] = _751
                s = ceil32(_584) + 1
                continue 
            _565 = mem[64]
            _568 = mem[_548]
            s = 0
            while s < _568:
                mem[s + _565] = mem[s + _548 + 32]
                s = s + 32
                continue 
            mem[_568 + _565] = 1
            if ceil32(_568) <= _568:
                _728 = sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_747] = 3
                mem[_747 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                    _764 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_764] = 10^18 * stor[_728].field_0 / 10^9
                    mem[_764 + 32] = stor[_728].field_64
                    mem[_764 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _764
                else:
                    _754 = mem[64]
                    _760 = mem[_551]
                    s = 0
                    while s < _760:
                        mem[s + _754] = mem[s + _551 + 32]
                        s = s + 32
                        continue 
                    mem[_760 + _754] = 1
                    if ceil32(_760) <= _760:
                        _881 = sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _760 + _754 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _895 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_881].field_0
                        mem[_895] = 10^18 * stor[_728].field_0 / stor[_881].field_0
                        mem[_895 + 32] = stor[_728].field_64
                        mem[_895 + 64] = stor[_881].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _895
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
                _733 = sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])
                if not stor[sha3(mem[mem[64] len _568 + _565 + -mem[64] + 32])].field_64:
                    revert with 0, 'REF_DATA_NOT_AVAILABLE'
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 3
                mem[_755 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
                if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_551 + 32 len mem[_551]]):
                    _773 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_773] = 10^18 * stor[_733].field_0 / 10^9
                    mem[_773 + 32] = stor[_733].field_64
                    mem[_773 + 64] = block.timestamp
                    require idx < mem[_371]
                    mem[(32 * idx) + _371 + 32] = _773
                else:
                    _761 = mem[64]
                    _765 = mem[_551]
                    s = 0
                    while s < _765:
                        mem[s + _761] = mem[s + _551 + 32]
                        s = s + 32
                        continue 
                    mem[_765 + _761] = 1
                    if ceil32(_765) <= _765:
                        _883 = sha3(mem[mem[64] len _765 + _761 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _765 + _761 + -mem[64] + 32])].field_64:
                            revert with 0, 'REF_DATA_NOT_AVAILABLE'
                        _897 = mem[64]
                        mem[64] = mem[64] + 96
                        require stor[_883].field_0
                        mem[_897] = 10^18 * stor[_733].field_0 / stor[_883].field_0
                        mem[_897 + 32] = stor[_733].field_64
                        mem[_897 + 64] = stor[_883].field_64
                        require idx < mem[_371]
                        mem[(32 * idx) + _371 + 32] = _897
                    else:
                        _890 = sha3(mem[mem[64] len _765 + _761 + -mem[64] + 32])
                        if not stor[sha3(mem[mem[64] len _765 + _761 + -mem[64] + 32])].field_64:
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
        _879 = mem[(32 * idx) + _185 + 32]
        _891 = mem[64]
        mem[64] = mem[64] + 96
        mem[_891] = 0
        mem[_891 + 32] = 0
        mem[_891 + 64] = 0
        _903 = mem[64]
        mem[64] = mem[64] + 64
        mem[_903] = 3
        mem[_903 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
        if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_876 + 32 len mem[_876]]):
            _916 = mem[64]
            mem[64] = mem[64] + 64
            mem[_916] = 3
            mem[_916 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_879 + 32 len mem[_879]]):
                _922 = mem[64]
                mem[64] = mem[64] + 96
                mem[_922] = 10^18
                mem[_922 + 32] = block.timestamp
                mem[_922 + 64] = block.timestamp
                require idx < mem[_371]
                mem[(32 * idx) + _371 + 32] = _922
                idx = idx + 1
                continue 
            _920 = mem[64]
            _921 = mem[_879]
            s = 0
            while s < _921:
                mem[s + _920] = mem[s + _879 + 32]
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
                require ceil32(_921) < mem[_371]
                mem[(Mask(251, 0, _921 + 31) * 32) + _371 + 32] = _1005
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
                require ceil32(_921) < mem[_371]
                mem[(Mask(251, 0, _921 + 31) * 32) + _371 + 32] = _1011
            s = ceil32(_921) + 1
            continue 
        _910 = mem[64]
        _913 = mem[_876]
        s = 0
        while s < _913:
            mem[s + _910] = mem[s + _876 + 32]
            s = s + 32
            continue 
        mem[_913 + _910] = 1
        if ceil32(_913) <= _913:
            _993 = sha3(mem[mem[64] len _913 + _910 + -mem[64] + 32])
            if not stor[sha3(mem[mem[64] len _913 + _910 + -mem[64] + 32])].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            _1007 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1007] = 3
            mem[_1007 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_879 + 32 len mem[_879]]):
                _1021 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1021] = 10^18 * stor[_993].field_0 / 10^9
                mem[_1021 + 32] = stor[_993].field_64
                mem[_1021 + 64] = block.timestamp
                require idx < mem[_371]
                mem[(32 * idx) + _371 + 32] = _1021
            else:
                _1013 = mem[64]
                _1018 = mem[_879]
                s = 0
                while s < _1018:
                    mem[s + _1013] = mem[s + _879 + 32]
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
            _998 = sha3(mem[mem[64] len _913 + _910 + -mem[64] + 32])
            if not stor[sha3(mem[mem[64] len _913 + _910 + -mem[64] + 32])].field_64:
                revert with 0, 'REF_DATA_NOT_AVAILABLE'
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 3
            mem[_1014 + 32] = 0x5553440000000000000000000000000000000000000000000000000000000000
            if 0xc4ae21aac0c6549d71dd96035b7e0bdb6c79ebdba8891b666115bc976d16a29e == sha3(mem[_879 + 32 len mem[_879]]):
                _1023 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1023] = 10^18 * stor[_998].field_0 / 10^9
                mem[_1023 + 32] = stor[_998].field_64
                mem[_1023 + 64] = block.timestamp
                require idx < mem[_371]
                mem[(32 * idx) + _371 + 32] = _1023
            else:
                _1019 = mem[64]
                _1022 = mem[_879]
                s = 0
                while s < _1022:
                    mem[s + _1019] = mem[s + _879 + 32]
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
    _878 = mem[64]
    mem[mem[64]] = 32
    _884 = mem[_371]
    mem[mem[64] + 32] = mem[_371]
    idx = 0
    s = mem[64] + 64
    t = _371 + 32
    while idx < _884:
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
       len _878 + (96 * _884) + -mem[64] + 64
}



}
