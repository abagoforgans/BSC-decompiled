contract main {




// =====================  Runtime code  =====================


address aggregatorAddress;
uint256 bnbPrice;

function aggregator() payable {
    return aggregatorAddress
}

function bnbPrice() payable {
    return bnbPrice
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
        _17 = mem[s]
        _19 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _19:
            mem[t + v + 32] = mem[_17 + v + 32]
            v = v + 32
            continue 
        if ceil32(_19) > _19:
            mem[t + _19 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_19) + 32
        u = u + 32
        continue 
    require ext_code.size(aggregatorAddress)
    call aggregatorAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _20 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _21 = mem[_20]
    require mem[_20] <= test266151307()
    require _20 + mem[_20] + 31 < _20 + return_data.size
    _22 = mem[_20 + mem[_20]]
    require mem[_20 + mem[_20]] <= test266151307()
    require _20 + ceil32(return_data.size) + (32 * mem[_20 + mem[_20]]) + 32 <= test266151307() and (32 * mem[_20 + mem[_20]]) + 32 >= 0
    mem[64] = _20 + ceil32(return_data.size) + (32 * mem[_20 + mem[_20]]) + 32
    mem[_20 + ceil32(return_data.size)] = _22
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = _20 + _21 + 32
    t = _20 + ceil32(return_data.size) + 32
    while idx < _22:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _22
    bnbPrice = mem[_20 + ceil32(return_data.size) + 32]
}



}
