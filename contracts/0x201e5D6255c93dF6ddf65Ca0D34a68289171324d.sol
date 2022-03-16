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

function sub_d486151b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0xd486151b00000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    mem[132] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = (32 * ('cd', 4).length) + 164
    u = 164
    while idx < ('cd', 4).length:
        mem[u] = t - 164
        require cd[s] < calldata.size + -cd[4] - 67
        require cd[(cd[s] + cd[4] + 36)] <= test266151307()
        require cd[4] + 36 <= calldata.size - cd[(cd[s] + cd[4] + 36)]
        mem[t] = cd[(cd[s] + cd[4] + 36)]
        mem[t + 32 len cd[(cd[s] + cd[4] + 36)]] = call.data[cd[s] + cd[4] + 68 len cd[(cd[s] + cd[4] + 36)]]
        mem[t + cd[(cd[s] + cd[4] + 36)] + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[s] + cd[4] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len (64 * ('cd', 4).length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _13 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _14 = mem[_13]
    require mem[_13] <= test266151307()
    require _13 + mem[_13] + 31 < _13 + return_data.size
    _15 = mem[_13 + mem[_13]]
    require mem[_13 + mem[_13]] <= test266151307()
    require _13 + ceil32(return_data.size) + (32 * mem[_13 + mem[_13]]) + 32 <= test266151307() and (32 * mem[_13 + mem[_13]]) + 32 >= 0
    mem[64] = _13 + ceil32(return_data.size) + (32 * mem[_13 + mem[_13]]) + 32
    mem[_13 + ceil32(return_data.size)] = _15
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = _13 + _14 + 32
    t = _13 + ceil32(return_data.size) + 32
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _15
    mem[mem[64] + 64 len 32 * _15] = mem[_13 + ceil32(return_data.size) + 32 len 32 * _15]
    return Array(len=_15, data=mem[mem[64] + 64 len 32 * _15])
}

function getPrice(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 1
    mem[64] = ceil32(arg1.length) + 192
    require 0 < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 160] = 96
    mem[ceil32(arg1.length) + 192] = 0xd486151b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 196] = 32
    _5 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 228] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * mem[ceil32(arg1.length) + 128]) + 260
    u = ceil32(arg1.length) + 260
    while idx < _5:
        mem[u] = t + -ceil32(arg1.length) - 260
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
