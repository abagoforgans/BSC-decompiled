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

function aggregate(address arg1, bytes[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 64
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
        _83 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_83] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _106 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_106] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_106 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_106 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _106
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == bool(arg2)
    _84 = mem[96]
    require mem[96] <= test266151307()
    _85 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _84) + 32
    if not _84:
        _164 = mem[96]
        idx = 0
        while idx < _164:
            require idx < mem[96]
            _169 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _172 = mem[mem[(32 * idx) + 128] + 32]
            _173 = mem[64]
            _175 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _175:
                mem[_173 + s] = mem[_172 + s + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _173 + _175 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_260] = bool(ext_call.success)
                        mem[_260 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _260
                    else:
                        require ext_call.success
                        _269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_269] = bool(ext_call.success)
                        mem[_269 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _269
                else:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_262] = bool(ext_call.success)
                        mem[_262 + 32] = _249
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _262
                    else:
                        require ext_call.success
                        _271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_271] = bool(ext_call.success)
                        mem[_271 + 32] = _249
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _271
            else:
                mem[_173 + _175] = 0
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _173 + _175 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_265] = bool(ext_call.success)
                        mem[_265 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _265
                    else:
                        require ext_call.success
                        _274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_274] = bool(ext_call.success)
                        mem[_274 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _274
                else:
                    _256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_256] = return_data.size
                    mem[_256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_267] = bool(ext_call.success)
                        mem[_267 + 32] = _256
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _267
                    else:
                        require ext_call.success
                        _276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_276] = bool(ext_call.success)
                        mem[_276 + 32] = _256
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _276
            _164 = mem[96]
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _184 = mem[_85]
        mem[mem[64] + 64] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _184) + 96
        u = mem[64] + 96
        while idx < _184:
            mem[u] = t + -_167 - 96
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _255 = mem[_242 + 32]
            mem[t + 32] = 64
            _264 = mem[_255]
            mem[t + 64] = mem[_255]
            v = 0
            while v < _264:
                mem[t + v + 96] = mem[_255 + v + 32]
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
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[var31001] = _85 + (32 * _84) + 32
        s = var31001
        idx = var31002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_85 + (32 * _84) + 32] = 0
            mem[_85 + (32 * _84) + 64] = 96
            mem[s + 32] = _85 + (32 * _84) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _307 = mem[96]
        idx = 0
        while idx < _307:
            require idx < mem[96]
            _312 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _315 = mem[mem[(32 * idx) + 128] + 32]
            _316 = mem[64]
            _317 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _317:
                mem[_316 + s] = mem[_315 + s + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_317) <= _317:
                call address(_312).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _316 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_355] = bool(ext_call.success)
                        mem[_355 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _355
                    else:
                        require ext_call.success
                        _364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_364] = bool(ext_call.success)
                        mem[_364 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _364
                else:
                    _351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_351] = return_data.size
                    mem[_351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = bool(ext_call.success)
                        mem[_357 + 32] = _351
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _357
                    else:
                        require ext_call.success
                        _366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_366] = bool(ext_call.success)
                        mem[_366 + 32] = _351
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _366
            else:
                mem[_316 + _317] = 0
                call address(_312).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _316 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = bool(ext_call.success)
                        mem[_360 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _360
                    else:
                        require ext_call.success
                        _368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_368] = bool(ext_call.success)
                        mem[_368 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _368
                else:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _362 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_362] = bool(ext_call.success)
                        mem[_362 + 32] = _354
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _362
                    else:
                        require ext_call.success
                        _370 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_370] = bool(ext_call.success)
                        mem[_370 + 32] = _354
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _370
            _307 = mem[96]
            idx = idx + 1
            continue 
        _310 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _318 = mem[_85]
        mem[mem[64] + 64] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _318) + 96
        u = mem[64] + 96
        while idx < _318:
            mem[u] = t + -_310 - 96
            _346 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _353 = mem[_346 + 32]
            mem[t + 32] = 64
            _359 = mem[_353]
            mem[t + 64] = mem[_353]
            v = 0
            while v < _359:
                mem[t + v + 96] = mem[_353 + v + 32]
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



}
