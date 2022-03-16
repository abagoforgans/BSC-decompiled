contract main {




// =====================  Runtime code  =====================


address aggregatorAddress;

function aggregator() payable {
    return aggregatorAddress
}

function _fallback() payable {
    revert
}

function getBNBPrice() payable {
    mem[96] = 1
    mem[64] = 224
    mem[160] = 7
    mem[192] = 'BNB/USD'
    mem[128] = 160
    mem[224] = 0xd486151b00000000000000000000000000000000000000000000000000000000
    mem[228] = 32
    mem[260] = 1
    idx = 0
    s = 128
    t = (32 * mem[96]) + 292
    u = 292
    while idx < 1:
        mem[u] = t - 292
        _19 = mem[s]
        _21 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _21:
            mem[t + v + 32] = mem[_19 + v + 32]
            v = v + 32
            continue 
        if ceil32(_21) > _21:
            mem[t + _21 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_21) + 32
        u = u + 32
        continue 
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _23 = mem[_22]
    require mem[_22] <= test266151307()
    require _22 + mem[_22] + 31 < _22 + return_data.size
    _24 = mem[_22 + mem[_22]]
    require mem[_22 + mem[_22]] <= test266151307()
    require _22 + ceil32(return_data.size) + (32 * mem[_22 + mem[_22]]) + 32 <= test266151307() and (32 * mem[_22 + mem[_22]]) + 32 >= 0
    mem[64] = _22 + ceil32(return_data.size) + (32 * mem[_22 + mem[_22]]) + 32
    mem[_22 + ceil32(return_data.size)] = _24
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = 0
    s = _22 + _23 + 32
    t = _22 + ceil32(return_data.size) + 32
    while idx < _24:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _24
    mem[mem[64]] = mem[_22 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}



}
