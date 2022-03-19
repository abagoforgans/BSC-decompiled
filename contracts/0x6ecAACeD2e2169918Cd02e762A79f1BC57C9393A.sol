contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function batchSend(address[] arg1, uint256[] arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 <= test266151307() and (32 * arg3.length) + 192 >= 160
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + 192
    while idx < arg3.length:
        require arg3 + cd[s] + 67 < calldata.size
        require cd[(arg3 + cd[s] + 36)] <= test266151307()
        _56 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_56] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_56 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_56 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _56
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _67 = mem[96]
    idx = 0
    while idx < _67:
        require idx < mem[96]
        _69 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _71 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _73 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _74 = mem[64]
        _75 = mem[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]]
        s = 0
        while s < _75:
            mem[_74 + s] = mem[_73 + s + 32]
            _67 = mem[96]
            s = s + 32
            continue 
        if ceil32(_75) <= _75:
            call address(_69).mem[mem[64] len 4] with:
               value _71 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _74 + _75 + -mem[64] - 4]
            if return_data.size:
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_83] = return_data.size
                mem[_83 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_74 + _75] = 0
            call address(_69).mem[mem[64] len 4] with:
               value _71 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _74 + _75 + -mem[64] - 4]
            if return_data.size:
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_85] = return_data.size
                mem[_85 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _67 = mem[96]
        idx = idx + 1
        continue 
}



}
