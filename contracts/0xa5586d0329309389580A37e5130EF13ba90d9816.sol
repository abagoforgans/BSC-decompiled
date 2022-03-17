contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
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
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _56 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_56] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _83 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_83] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_83 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_83 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_56 + 32] = _83
        mem[t] = _56
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[96]
    require mem[96] <= test266151307()
    _55 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            require idx < mem[96]
            _110 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _114 = mem[mem[(32 * idx) + 128] + 32]
            _115 = mem[64]
            _117 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _117:
                mem[s + _115] = mem[s + _114 + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_117) <= _117:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _117 + _115 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = _171
            else:
                mem[_115 + _117] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _117 + _115 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_175] = return_data.size
                    mem[_175 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = _175
            _106 = mem[96]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _112 = mem[_55]
        mem[mem[64] + 64] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _112) + 96
        while idx < _112:
            mem[t] = u + -_108 - 96
            _155 = mem[s]
            _156 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while arg1.length < _156:
                mem[arg1.length + u + 32] = mem[arg1.length + _155 + 32]
                v = arg1.length + 32
                continue 
            if arg1.length > _156:
                mem[u + _156 + 32] = 0
            v = v + 1
            s = s + 32
            t = t + 32
            u = ceil32(_156) + u + 32
            continue 
    else:
        mem[_55 + 32] = 96
        s = _55 + 32
        idx = _54
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _154 = mem[96]
        idx = 0
        while idx < _154:
            require idx < mem[96]
            _162 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _166 = mem[mem[(32 * idx) + 128] + 32]
            _167 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[s + _167] = mem[s + _166 + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_162).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _170 + _167 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_198] = return_data.size
                    mem[_198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = _198
            else:
                mem[_167 + _170] = 0
                call address(_162).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _170 + _167 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_200] = return_data.size
                    mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_55]
                    mem[(32 * idx) + _55 + 32] = _200
            _154 = mem[96]
            idx = idx + 1
            continue 
        _160 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _164 = mem[_55]
        mem[mem[64] + 64] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _164) + 96
        while idx < _164:
            mem[t] = u + -_160 - 96
            _192 = mem[s]
            _193 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _193:
                mem[v + u + 32] = mem[v + _192 + 32]
                v = v + 32
                continue 
            if ceil32(_193) > _193:
                mem[u + _193 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_193) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
