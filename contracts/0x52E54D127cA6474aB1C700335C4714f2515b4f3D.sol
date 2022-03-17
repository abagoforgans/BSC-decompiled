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

function getBlockHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function getEthBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _52 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_52] = address(cd[(arg1 + cd[s] + 36)])
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _89 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_89] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_89 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _89 + 32] = 0
        mem[_52 + 32] = _89
        mem[t] = _52
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _50) + 32
    if not _50:
        _98 = mem[96]
        idx = 0
        while idx < _98:
            require idx < mem[96]
            _102 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _107 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _98 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_102).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _107 - 4]
            if not return_data.size:
                require ext_call.success
                require idx < mem[_51]
                mem[_51 + (32 * idx) + 32] = 96
            else:
                _149 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_149] = return_data.size
                mem[_149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                require idx < mem[_51]
                mem[_51 + (32 * idx) + 32] = _149
            _98 = mem[96]
            idx = idx + 1
            continue 
        _100 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _129 = mem[_51]
        mem[mem[64] + 64] = mem[_51]
        idx = 0
        s = _51 + 32
        t = mem[64] + (32 * _129) + 96
        u = mem[64] + 96
        while idx < _129:
            mem[u] = t + -_100 - 96
            _143 = mem[s]
            _155 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _155:
                mem[v + t + 32] = mem[v + _143 + 32]
                v = v + 32
                continue 
            if ceil32(_155) > _155:
                mem[t + _155 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_155) + 32
            u = u + 32
            continue 
    else:
        mem[_51 + 32] = 96
        s = _51 + 32
        idx = _50
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _142 = mem[96]
        idx = 0
        while idx < _142:
            require idx < mem[96]
            _152 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _159 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _142 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_152).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _159 - 4]
            if not return_data.size:
                require ext_call.success
                require idx < mem[_51]
                mem[_51 + (32 * idx) + 32] = 96
            else:
                _181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_181] = return_data.size
                mem[_181 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                require idx < mem[_51]
                mem[_51 + (32 * idx) + 32] = _181
            _142 = mem[96]
            idx = idx + 1
            continue 
        _150 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _170 = mem[_51]
        mem[mem[64] + 64] = mem[_51]
        idx = 0
        s = _51 + 32
        t = mem[64] + (32 * _170) + 96
        u = mem[64] + 96
        while idx < _170:
            mem[u] = t + -_150 - 96
            _176 = mem[s]
            _183 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _183:
                mem[v + t + 32] = mem[v + _176 + 32]
                v = v + 32
                continue 
            if ceil32(_183) > _183:
                mem[t + _183 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_183) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
