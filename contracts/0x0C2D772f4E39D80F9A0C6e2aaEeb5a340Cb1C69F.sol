contract main {




// =====================  Runtime code  =====================


address aggregatorAddress;

function aggregator() payable {
    return aggregatorAddress
}

function _fallback() payable {
    revert
}

function setAggregator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    aggregatorAddress = arg1
}

function sub_d486151b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _20 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_20] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_20 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_20 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _20
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _18 = mem[64]
    mem[mem[64]] = 0xd486151b00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _19 = mem[96]
    mem[mem[64] + 36] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 68
    u = mem[64] + 68
    while idx < _19:
        mem[u] = t + -_18 - 68
        _34 = mem[s]
        _36 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _36:
            mem[t + v + 32] = mem[_34 + v + 32]
            v = v + 32
            continue 
        if ceil32(_36) > _36:
            mem[t + _36 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_36) + 32
        u = u + 32
        continue 
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _37 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _38 = mem[_37]
    require mem[_37] <= test266151307()
    require _37 + mem[_37] + 31 < _37 + return_data.size
    _39 = mem[_37 + mem[_37]]
    require mem[_37 + mem[_37]] <= test266151307()
    require _37 + ceil32(return_data.size) + (32 * mem[_37 + mem[_37]]) + 32 <= test266151307() and (32 * mem[_37 + mem[_37]]) + 32 >= 0
    mem[64] = _37 + ceil32(return_data.size) + (32 * mem[_37 + mem[_37]]) + 32
    mem[_37 + ceil32(return_data.size)] = _39
    require _38 + (32 * _39) + 32 <= return_data.size
    idx = 0
    s = _37 + _38 + 32
    t = _37 + ceil32(return_data.size) + 32
    while idx < _39:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _39
    mem[mem[64] + 64 len 32 * _39] = mem[_37 + ceil32(return_data.size) + 32 len 32 * _39]
    return Array(len=_39, data=mem[mem[64] + 64 len 32 * _39])
}



}
