contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x65555bcc with:
            gas gas_remaining wei
           args 64, 128, 3, 'BTC', 3, 'USD'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0]
}

function getMultiPrices() payable {
    mem[96] = 2
    s = 128
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[192] = 3
    mem[224] = 'BTC'
    mem[128] = 192
    mem[256] = 3
    mem[288] = 'ETH'
    mem[160] = 256
    mem[320] = 2
    s = 352
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[416] = 3
    mem[448] = 'USD'
    mem[352] = 416
    mem[64] = 544
    mem[480] = 3
    mem[512] = 'USD'
    mem[384] = 480
    mem[544] = 0x1be0ac6a00000000000000000000000000000000000000000000000000000000
    mem[548] = 64
    mem[612] = 2
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < 2:
        mem[u] = t - 644
        _42 = mem[s]
        _44 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _44:
            mem[t + v + 32] = mem[_42 + v + 32]
            v = v + 32
            continue 
        if ceil32(_44) > _44:
            mem[t + _44 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_44) + 32
        u = u + 32
        continue 
    mem[580] = t - 548
    _43 = mem[320]
    mem[t] = mem[320]
    idx = 0
    s = 352
    u = t + (32 * _43) + 32
    v = t + 32
    while idx < _43:
        mem[v] = u + -t - 32
        _71 = mem[s]
        _74 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _74:
            mem[u + t + 32] = mem[_71 + t + 32]
            t = t + 32
            continue 
        if ceil32(_74) > _74:
            mem[u + _74 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_74) + 32
        v = v + 32
        continue 
    require ext_code.size(stor0)
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _76 = mem[_75]
    require mem[_75] <= test266151307()
    require _75 + mem[_75] + 31 < _75 + return_data.size
    _77 = mem[_75 + mem[_75]]
    require mem[_75 + mem[_75]] <= test266151307()
    require _75 + ceil32(return_data.size) + (32 * mem[_75 + mem[_75]]) + 32 <= test266151307() and (32 * mem[_75 + mem[_75]]) + 32 >= 0
    mem[64] = _75 + ceil32(return_data.size) + (32 * mem[_75 + mem[_75]]) + 32
    mem[_75 + ceil32(return_data.size)] = _77
    require _76 + (96 * _77) + 32 <= return_data.size
    idx = 0
    s = _75 + _76 + 32
    t = _75 + ceil32(return_data.size) + 32
    while idx < _77:
        require _75 + return_data.size - s >= 96
        _99 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require mem[s] == mem[s]
        mem[_99] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_99 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_99 + 64] = mem[s + 64]
        mem[t] = _99
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _98 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_98 + 32 len 64] = call.data[calldata.size len 64]
    require 0 < mem[_75 + ceil32(return_data.size)]
    require 0 < mem[_98]
    mem[_98 + 32] = mem[mem[_75 + ceil32(return_data.size) + 32]]
    require 1 < mem[_75 + ceil32(return_data.size)]
    require 1 < mem[_98]
    mem[_98 + 64] = mem[mem[_75 + ceil32(return_data.size) + 64]]
    mem[_98 + 96] = 32
    mem[_98 + 128] = mem[_98]
    mem[_98 + 160 len 32 * mem[_98]] = mem[_98 + 32 len 32 * mem[_98]]
    return memory
      from mem[64]
       len _98 + (32 * mem[_98]) + -mem[64] + 160
}



}
