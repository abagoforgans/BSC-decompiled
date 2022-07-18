contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const myAddress = msg.sender

const getLastBlockHash = block.hash(block.number - 1)

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)

const balance = eth.balance(msg.sender)


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function at(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 97] = 32
    mem[ceil32(ext_code.size(arg1)) + 129] = ext_code.size(arg1)
    mem[ceil32(ext_code.size(arg1)) + 161 len ceil32(ext_code.size(arg1))] = mem[128 len ceil32(ext_code.size(arg1))]
    if ceil32(ext_code.size(arg1)) > ext_code.size(arg1):
        mem[ceil32(ext_code.size(arg1)) + ext_code.size(arg1) + 161] = 0
    return memory
      from ceil32(ext_code.size(arg1)) + 97
       len ceil32(ext_code.size(arg1)) + 64
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _72 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_72] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _120 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_120] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_120 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_120 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_72 + 32] = _120
        mem[t] = _72
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _73 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _75 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _73) + 32
    if not _73:
        _142 = mem[96]
        idx = 0
        while idx < _142:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _146 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _149 = mem[mem[(32 * idx) + 128] + 32]
            _150 = mem[64]
            _157 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _157:
                mem[_150 + s] = mem[_149 + s + 32]
                _142 = mem[96]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                call address(_146).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _150 + _157 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = 96
                else:
                    _220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_220] = return_data.size
                    mem[_220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = _220
            else:
                mem[_150 + _157] = 0
                call address(_146).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _150 + _157 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = 96
                else:
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_223] = return_data.size
                    mem[_223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = _223
            if idx == -1:
                revert with 'NH{q', 17
            _142 = mem[96]
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _161 = mem[_75]
        mem[mem[64] + 64] = mem[_75]
        idx = 0
        s = _75 + 32
        t = mem[64] + (32 * _161) + 96
        u = mem[64] + 96
        while idx < _161:
            mem[u] = t + -_144 - 96
            _207 = mem[s]
            _218 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _218:
                mem[t + v + 32] = mem[_207 + v + 32]
                v = v + 32
                continue 
            if ceil32(_218) > _218:
                mem[t + _218 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_218) + 32
            u = u + 32
            continue 
    else:
        mem[_75 + 32] = 96
        s = _75 + 32
        idx = _73
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _206 = mem[96]
        idx = 0
        while idx < _206:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _212 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _216 = mem[mem[(32 * idx) + 128] + 32]
            _217 = mem[64]
            _222 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _222:
                mem[_217 + s] = mem[_216 + s + 32]
                _206 = mem[96]
                s = s + 32
                continue 
            if ceil32(_222) <= _222:
                call address(_212).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _222 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = 96
                else:
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_265] = return_data.size
                    mem[_265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = _265
            else:
                mem[_217 + _222] = 0
                call address(_212).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _222 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = 96
                else:
                    _267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_267] = return_data.size
                    mem[_267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_75]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _75 + 32] = _267
            if idx == -1:
                revert with 'NH{q', 17
            _206 = mem[96]
            idx = idx + 1
            continue 
        _210 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _232 = mem[_75]
        mem[mem[64] + 64] = mem[_75]
        idx = 0
        s = _75 + 32
        t = mem[64] + (32 * _232) + 96
        u = mem[64] + 96
        while idx < _232:
            mem[u] = t + -_210 - 96
            _260 = mem[s]
            _263 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _263:
                mem[t + v + 32] = mem[_260 + v + 32]
                v = v + 32
                continue 
            if ceil32(_263) > _263:
                mem[t + _263 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_263) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function blockAndAggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _85 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_85] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _109 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_109] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_109 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_109 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_85 + 32] = _109
        mem[t] = _85
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _88 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _89 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _88) + 32
    if not _88:
        _168 = mem[96]
        idx = 0
        while idx < _168:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _172 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _175 = mem[mem[(32 * idx) + 128] + 32]
            _176 = mem[64]
            _179 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _179:
                mem[_176 + s] = mem[_175 + s + 32]
                _168 = mem[96]
                s = s + 32
                continue 
            if ceil32(_179) <= _179:
                call address(_172).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _176 + _179 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_267] = bool(ext_call.success)
                    mem[_267 + 32] = 96
                    if idx >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _89 + 32] = _267
                else:
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_253] = return_data.size
                    mem[_253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_269] = bool(ext_call.success)
                    mem[_269 + 32] = _253
                    if idx >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _89 + 32] = _269
            else:
                mem[_176 + _179] = 0
                call address(_172).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _176 + _179 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_274] = bool(ext_call.success)
                    mem[_274 + 32] = 96
                    if idx >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _89 + 32] = _274
                else:
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_259] = return_data.size
                    mem[_259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_276] = bool(ext_call.success)
                    mem[_276 + 32] = _259
                    if idx >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _89 + 32] = _276
            if idx == -1:
                revert with 'NH{q', 17
            _168 = mem[96]
            idx = idx + 1
            continue 
        _177 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _190 = mem[_89]
        mem[mem[64] + 96] = mem[_89]
        idx = 0
        s = _89 + 32
        t = mem[64] + (32 * _190) + 128
        u = mem[64] + 128
        while idx < _190:
            mem[u] = t + -_177 - 128
            _246 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _258 = mem[_246 + 32]
            mem[t + 32] = 64
            _264 = mem[_258]
            mem[t + 64] = mem[_258]
            v = 0
            while v < _264:
                mem[t + v + 96] = mem[_258 + v + 32]
                v = v + 32
                continue 
            if ceil32(_264) > _264:
                mem[t + _264 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_264) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _89 + (32 * _88) + 96
        mem[_89 + (32 * _88) + 32] = 0
        mem[_89 + (32 * _88) + 64] = 96
        mem[var50001] = _89 + (32 * _88) + 32
        s = var50001
        idx = var50002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_89 + (32 * _88) + 32] = 0
            mem[_89 + (32 * _88) + 64] = 96
            mem[s + 32] = _89 + (32 * _88) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _311 = mem[96]
        idx = 0
        while idx < _311:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _315 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _318 = mem[mem[(32 * idx) + 128] + 32]
            _319 = mem[64]
            _321 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while arg1.length < _321:
                mem[_319 + arg1.length] = mem[_318 + arg1.length + 32]
                _311 = mem[96]
                s = arg1.length + 32
                continue 
            if arg1.length <= _321:
                call address(_315).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _319 + _321 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_362] = bool(ext_call.success)
                    mem[_362 + 32] = 96
                    if s >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _89 + 32] = _362
                else:
                    _355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_355] = return_data.size
                    mem[_355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_364] = bool(ext_call.success)
                    mem[_364 + 32] = _355
                    if s >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _89 + 32] = _364
            else:
                mem[_319 + _321] = 0
                call address(_315).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _319 + _321 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_368] = bool(ext_call.success)
                    mem[_368 + 32] = 96
                    if s >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _89 + 32] = _368
                else:
                    _358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_358] = return_data.size
                    mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_370] = bool(ext_call.success)
                    mem[_370 + 32] = _358
                    if s >= mem[_89]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _89 + 32] = _370
            if s == -1:
                revert with 'NH{q', 17
            _311 = mem[96]
            s = s + 1
            continue 
        _320 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _323 = mem[_89]
        mem[mem[64] + 96] = mem[_89]
        idx = 0
        s = _89 + 32
        t = mem[64] + (32 * _323) + 128
        u = mem[64] + 128
        while idx < _323:
            mem[u] = t + -_320 - 128
            _350 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _357 = mem[_350 + 32]
            mem[t + 32] = 64
            _359 = mem[_357]
            mem[t + 64] = mem[_357]
            v = 0
            while v < _359:
                mem[t + v + 96] = mem[_357 + v + 32]
                v = v + 32
                continue 
            if ceil32(_359) > _359:
                mem[t + _359 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_359) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _101 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_101] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _153 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1
        mem[_153] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_153 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_153 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_101 + 32] = _153
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _102 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _102) + 32
    if not _102:
        _200 = mem[96]
        idx = 0
        while idx < _200:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _205 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _208 = mem[mem[(32 * idx) + 128] + 32]
            _209 = mem[64]
            _212 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _212:
                mem[_209 + s] = mem[_208 + s + 32]
                _200 = mem[96]
                s = s + 32
                continue 
            if ceil32(_212) <= _212:
                call address(_205).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _209 + _212 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_312] = bool(ext_call.success)
                        mem[_312 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _312
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_324] = bool(ext_call.success)
                        mem[_324 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _324
                else:
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_301] = return_data.size
                    mem[_301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = bool(ext_call.success)
                        mem[_314 + 32] = _301
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _314
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = _301
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _326
            else:
                mem[_209 + _212] = 0
                call address(_205).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _209 + _212 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _319
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _331 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_331] = bool(ext_call.success)
                        mem[_331 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _331
                else:
                    _308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_308] = return_data.size
                    mem[_308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = bool(ext_call.success)
                        mem[_321 + 32] = _308
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _321
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = bool(ext_call.success)
                        mem[_333 + 32] = _308
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _333
            if idx == -1:
                revert with 'NH{q', 17
            _200 = mem[96]
            idx = idx + 1
            continue 
        _203 = mem[64]
        mem[mem[64]] = 32
        _210 = mem[_104]
        mem[mem[64] + 32] = mem[_104]
        s = 0
        t = _104 + 32
        u = mem[64] + (32 * _210) + 64
        v = mem[64] + 64
        while s < _210:
            mem[v] = u + -_203 - 64
            _294 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _307 = mem[_294 + 32]
            mem[u + 32] = 64
            _316 = mem[_307]
            mem[u + 64] = mem[_307]
            w = 0
            while w < _316:
                mem[u + w + 96] = mem[_307 + w + 32]
                w = w + 32
                continue 
            if ceil32(_316) > _316:
                mem[u + _316 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_316) + 96
            v = v + 32
            continue 
    else:
        mem[64] = _104 + (32 * _102) + 96
        mem[_104 + (32 * _102) + 32] = 0
        mem[_104 + (32 * _102) + 64] = 96
        mem[var45001] = _104 + (32 * _102) + 32
        s = var45001
        idx = var45002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_104 + (32 * _102) + 32] = 0
            mem[_104 + (32 * _102) + 64] = 96
            mem[s + 32] = _104 + (32 * _102) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _375 = mem[96]
        idx = 0
        while idx < _375:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _380 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _383 = mem[mem[(32 * idx) + 128] + 32]
            _384 = mem[64]
            _386 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _386:
                mem[_384 + s] = mem[_383 + s + 32]
                _375 = mem[96]
                s = s + 32
                continue 
            if ceil32(_386) <= _386:
                call address(_380).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _384 + _386 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_431] = bool(ext_call.success)
                        mem[_431 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _431
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_442] = bool(ext_call.success)
                        mem[_442 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _442
                else:
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_427] = return_data.size
                    mem[_427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = bool(ext_call.success)
                        mem[_433 + 32] = _427
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _433
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = _427
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _444
            else:
                mem[_384 + _386] = 0
                call address(_380).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _384 + _386 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _438
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_448] = bool(ext_call.success)
                        mem[_448 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _448
                else:
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_430] = return_data.size
                    mem[_430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _430
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _440
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_450] = bool(ext_call.success)
                        mem[_450 + 32] = _430
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _450
            if idx == -1:
                revert with 'NH{q', 17
            _375 = mem[96]
            idx = idx + 1
            continue 
        _378 = mem[64]
        mem[mem[64]] = 32
        _385 = mem[_104]
        mem[mem[64] + 32] = mem[_104]
        s = 0
        t = _104 + 32
        u = mem[64] + (32 * _385) + 64
        v = mem[64] + 64
        while s < _385:
            mem[v] = u + -_378 - 64
            _422 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _429 = mem[_422 + 32]
            mem[u + 32] = 64
            _435 = mem[_429]
            mem[u + 64] = mem[_429]
            w = 0
            while w < _435:
                mem[u + w + 96] = mem[_429 + w + 32]
                w = w + 32
                continue 
            if ceil32(_435) > _435:
                mem[u + _435 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_435) + 96
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function tryBlockAndAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _101 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_101] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _129 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1
        mem[_129] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_129 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_129 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_101 + 32] = _129
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _103 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _103) + 32
    if not _103:
        _200 = mem[96]
        idx = 0
        while idx < _200:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _204 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _208 = mem[mem[(32 * idx) + 128] + 32]
            _209 = mem[64]
            _211 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _211:
                mem[_209 + s] = mem[_208 + s + 32]
                _200 = mem[96]
                s = s + 32
                continue 
            if ceil32(_211) <= _211:
                call address(_204).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _209 + _211 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_312] = bool(ext_call.success)
                        mem[_312 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _312
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_323] = bool(ext_call.success)
                        mem[_323 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _323
                else:
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_301] = return_data.size
                    mem[_301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = bool(ext_call.success)
                        mem[_314 + 32] = _301
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _314
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_325] = bool(ext_call.success)
                        mem[_325 + 32] = _301
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _325
            else:
                mem[_209 + _211] = 0
                call address(_204).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _209 + _211 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _319
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = bool(ext_call.success)
                        mem[_330 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _330
                else:
                    _307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_307] = return_data.size
                    mem[_307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = bool(ext_call.success)
                        mem[_321 + 32] = _307
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _321
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = bool(ext_call.success)
                        mem[_332 + 32] = _307
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _332
            if idx == -1:
                revert with 'NH{q', 17
            _200 = mem[96]
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _222 = mem[_104]
        mem[mem[64] + 96] = mem[_104]
        idx = 0
        s = _104 + 32
        t = mem[64] + (32 * _222) + 128
        u = mem[64] + 128
        while idx < _222:
            mem[u] = t + -_206 - 128
            _294 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _306 = mem[_294 + 32]
            mem[t + 32] = 64
            _316 = mem[_306]
            mem[t + 64] = mem[_306]
            v = 0
            while v < _316:
                mem[t + v + 96] = mem[_306 + v + 32]
                v = v + 32
                continue 
            if ceil32(_316) > _316:
                mem[t + _316 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_316) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _104 + (32 * _103) + 96
        mem[_104 + (32 * _103) + 32] = 0
        mem[_104 + (32 * _103) + 64] = 96
        mem[var51001] = _104 + (32 * _103) + 32
        s = var51001
        idx = var51002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_104 + (32 * _103) + 32] = 0
            mem[_104 + (32 * _103) + 64] = 96
            mem[s + 32] = _104 + (32 * _103) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _375 = mem[96]
        idx = 0
        while idx < _375:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _379 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _383 = mem[mem[(32 * idx) + 128] + 32]
            _384 = mem[64]
            _385 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _385:
                mem[_384 + s] = mem[_383 + s + 32]
                _375 = mem[96]
                s = s + 32
                continue 
            if ceil32(_385) <= _385:
                call address(_379).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _384 + _385 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_431] = bool(ext_call.success)
                        mem[_431 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _431
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_442] = bool(ext_call.success)
                        mem[_442 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _442
                else:
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_427] = return_data.size
                    mem[_427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = bool(ext_call.success)
                        mem[_433 + 32] = _427
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _433
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = _427
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _444
            else:
                mem[_384 + _385] = 0
                call address(_379).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _384 + _385 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _438
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_448] = bool(ext_call.success)
                        mem[_448 + 32] = 96
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _448
                else:
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_430] = return_data.size
                    mem[_430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _430
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _440
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_450] = bool(ext_call.success)
                        mem[_450 + 32] = _430
                        if idx >= mem[_104]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _104 + 32] = _450
            if idx == -1:
                revert with 'NH{q', 17
            _375 = mem[96]
            idx = idx + 1
            continue 
        _381 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _387 = mem[_104]
        mem[mem[64] + 96] = mem[_104]
        idx = 0
        s = _104 + 32
        t = mem[64] + (32 * _387) + 128
        u = mem[64] + 128
        while idx < _387:
            mem[u] = t + -_381 - 128
            _422 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _429 = mem[_422 + 32]
            mem[t + 32] = 64
            _435 = mem[_429]
            mem[t + 64] = mem[_429]
            v = 0
            while v < _435:
                mem[t + v + 96] = mem[_429 + v + 32]
                v = v + 32
                continue 
            if ceil32(_435) > _435:
                mem[t + _435 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_435) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
