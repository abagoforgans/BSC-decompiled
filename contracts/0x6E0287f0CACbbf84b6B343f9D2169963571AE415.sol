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
    require arg1 == arg1
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
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _55 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_55] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _81 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_81] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_81 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_81 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_55 + 32] = _81
        mem[t] = _55
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[96]
    require mem[96] <= test266151307()
    _56 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _106 = mem[96]
        s = 0
        while arg1.length < _106:
            require arg1.length < mem[96]
            _110 = mem[mem[(32 * arg1.length) + 128]]
            require arg1.length < mem[96]
            _113 = mem[mem[(32 * arg1.length) + 128] + 32]
            _114 = mem[64]
            _121 = mem[mem[mem[(32 * arg1.length) + 128] + 32]]
            idx = 0
            while idx < _121:
                mem[_114 + idx] = mem[_113 + idx + 32]
                _106 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_121) <= _121:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require arg1.length < mem[_56]
                    mem[(32 * arg1.length) + _56 + 32] = 96
                else:
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_168] = return_data.size
                    mem[_168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require arg1.length < mem[_56]
                    mem[(32 * arg1.length) + _56 + 32] = _168
            else:
                mem[_114 + _121] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require arg1.length < mem[_56]
                    mem[(32 * arg1.length) + _56 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require arg1.length < mem[_56]
                    mem[(32 * arg1.length) + _56 + 32] = _171
            _106 = mem[96]
            s = arg1.length + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _125 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _125) + 96
        u = mem[64] + 96
        while idx < _125:
            mem[u] = t + -_108 - 96
            _155 = mem[s]
            _166 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _166:
                mem[t + v + 32] = mem[_155 + v + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_166) + 32
            u = u + 32
            continue 
    else:
        mem[_56 + 32] = 96
        s = _56 + 32
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
            _160 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _164 = mem[mem[(32 * idx) + 128] + 32]
            _165 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[_165 + s] = mem[_164 + s + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_197] = return_data.size
                    mem[_197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _197
            else:
                mem[_165 + _170] = 0
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_199] = return_data.size
                    mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _199
            _154 = mem[96]
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _176 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _176) + 96
        u = mem[64] + 96
        while idx < _176:
            mem[u] = t + -_158 - 96
            _192 = mem[s]
            _195 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _195:
                mem[t + v + 32] = mem[_192 + v + 32]
                v = v + 32
                continue 
            if ceil32(_195) > _195:
                mem[t + _195 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_195) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
