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
        _119 = mem[64]
        require mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg3 + cd[s] + 36)]) + 32
        mem[_119] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_119 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _119
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
    mem[mem[64] + 36] = -1
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x5ff2b0db69458a0750badebc4f9e13add608c7f, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_121] == bool(mem[_121])
    _155 = mem[96]
    idx = 0
    while idx < _155:
        require idx < mem[96]
        _157 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _159 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _160 = mem[64]
        _161 = mem[mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]]
        s = 0
        while s < _161:
            mem[_160 + s] = mem[_159 + s + 32]
            _155 = mem[96]
            s = s + 32
            continue 
        if ceil32(_161) <= _161:
            call address(_157).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _160 + _161 + -mem[64] - 4]
            if not return_data.size:
                if bool(ext_call.success) == 1:
                    _155 = mem[96]
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _196 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _196:
                    mem[_192 + idx + 68] = mem[idx + 128]
                    _155 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_196) > _196:
                    mem[_192 + _196 + 68] = 0
                revert with memory
                  from mem[64]
                   len _192 + ceil32(_196) + -mem[64] + 68
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_189] = return_data.size
            mem[_189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if bool(ext_call.success) == 1:
                _155 = mem[96]
                idx = idx + 1
                continue 
            _193 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[_193 + idx + 68] = mem[_189 + idx + 32]
                _155 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_193 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len _193 + ceil32(return_data.size) + -mem[64] + 68
        mem[_160 + _161] = 0
        call address(_157).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _160 + _161 + -mem[64] - 4]
        if not return_data.size:
            if bool(ext_call.success) == 1:
                _155 = mem[96]
                idx = idx + 1
                continue 
            _194 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _198 = mem[96]
            mem[mem[64] + 36] = mem[96]
            idx = 0
            while idx < _198:
                mem[_194 + idx + 68] = mem[idx + 128]
                _155 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_198) > _198:
                mem[_194 + _198 + 68] = 0
            revert with memory
              from mem[64]
               len _194 + ceil32(_198) + -mem[64] + 68
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_191] = return_data.size
        mem[_191 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if bool(ext_call.success) == 1:
            _155 = mem[96]
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = return_data.size
        idx = 0
        while idx < return_data.size:
            mem[_195 + idx + 68] = mem[_191 + idx + 32]
            _155 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(return_data.size) > return_data.size:
            mem[_195 + return_data.size + 68] = 0
        revert with memory
          from mem[64]
           len _195 + ceil32(return_data.size) + -mem[64] + 68
}



}
