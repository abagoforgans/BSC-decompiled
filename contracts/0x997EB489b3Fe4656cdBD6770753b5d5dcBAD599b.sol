contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_8db8bc90(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    if stor0 != msg.sender:
        revert with 0, 'OWNER_NOT_MATCHED'
    if ('cd', 4).length <= 0:
        revert with 0, 'ROUTES_LENGTH'
    idx = 0
    while idx < ('cd', 4).length:
        require 0 < mem[96]
        mem[128] = address(cd[36])
        require 1 < mem[96]
        require 1 < mem[96]
        mem[160] = mem[172 len 20]
        require 2 < mem[96]
        mem[192] = address(cd[68])
        _128 = mem[64]
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 64
        _130 = mem[96]
        mem[mem[64] + 100] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 132
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _177 = mem[64]
        mem[mem[64]] = (32 * mem[96]) + 100
        mem[64] = mem[64] + (32 * _130) + 132
        mem[_177 + 32] = mem[_177 + 36 len 28] or 0x4178da4400000000000000000000000000000000000000000000000000000000
        _180 = mem[_177]
        s = 0
        while s < _180:
            mem[_128 + (32 * _130) + s + 132] = mem[_177 + s + 32]
            s = s + 32
            continue 
        if ceil32(_180) <= _180:
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _128 + (32 * _130) + _180 + -mem[64] + 128]
            if not return_data.size:
                if ext_call.success:
                    _223 = mem[96]
                    require mem[96] >= 32
                    _227 = mem[128]
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < mem[96] + 128
                    _231 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    _235 = mem[64]
                    require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
                    mem[_235] = mem[mem[128] + 128]
                    require _227 + (32 * _231) + 160 <= _223 + 128
                    s = 0
                    t = _227 + 160
                    u = _235 + 32
                    while s < _231:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require mem[_235] - 1 < mem[_235]
            else:
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_220] = return_data.size
                mem[_220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    _228 = mem[_220 + 32]
                    require mem[_220 + 32] <= test266151307()
                    require _220 + mem[_220 + 32] + 63 < _220 + return_data.size + 32
                    _232 = mem[_220 + mem[_220 + 32] + 32]
                    require mem[_220 + mem[_220 + 32] + 32] <= test266151307()
                    _236 = mem[64]
                    require mem[64] + (32 * mem[_220 + mem[_220 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_220 + mem[_220 + 32] + 32]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[_220 + mem[_220 + 32] + 32]) + 32
                    mem[_236] = _232
                    require _228 + (32 * _232) + 64 <= return_data.size + 32
                    s = 0
                    t = _220 + _228 + 64
                    u = _236 + 32
                    while s < _232:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require _232 - 1 < _232
        else:
            mem[_128 + (32 * _130) + _180 + 132] = 0
            call stor1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _128 + (32 * _130) + _180 + -mem[64] + 128]
            if not return_data.size:
                if ext_call.success:
                    _225 = mem[96]
                    require mem[96] >= 32
                    _229 = mem[128]
                    require mem[128] <= test266151307()
                    require mem[128] + 159 < mem[96] + 128
                    _233 = mem[mem[128] + 128]
                    require mem[mem[128] + 128] <= test266151307()
                    _237 = mem[64]
                    require mem[64] + (32 * mem[mem[128] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[mem[128] + 128]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[mem[128] + 128]) + 32
                    mem[_237] = mem[mem[128] + 128]
                    require _229 + (32 * _233) + 160 <= _225 + 128
                    s = 0
                    t = _229 + 160
                    u = _237 + 32
                    while s < _233:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require mem[_237] - 1 < mem[_237]
            else:
                _222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_222] = return_data.size
                mem[_222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    _230 = mem[_222 + 32]
                    require mem[_222 + 32] <= test266151307()
                    require _222 + mem[_222 + 32] + 63 < _222 + return_data.size + 32
                    _234 = mem[_222 + mem[_222 + 32] + 32]
                    require mem[_222 + mem[_222 + 32] + 32] <= test266151307()
                    _238 = mem[64]
                    require mem[64] + (32 * mem[_222 + mem[_222 + 32] + 32]) + 32 <= test266151307() and mem[64] + (32 * mem[_222 + mem[_222 + 32] + 32]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[_222 + mem[_222 + 32] + 32]) + 32
                    mem[_238] = _234
                    require _230 + (32 * _234) + 64 <= return_data.size + 32
                    s = 0
                    t = _222 + _230 + 64
                    u = _238 + 32
                    while s < _234:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require _234 - 1 < _234
        idx = idx + 1
        continue 
    _122 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _122 + (32 * mem[96]) + -mem[64] + 64
}



}
