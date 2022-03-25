contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 stor1;

function _fallback() payable {
    revert
}

function geteth() {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        stor0.length++
        stor0[stor0.length].field_0 = arg1
        stor0[stor0.length].field_160 = 0
        stor1[address(arg1)] = stor0.length
}

function decodebytes(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg1.length + 128 > mem[128] + 159
    _4 = mem[mem[128] + 128]
    require mem[mem[128] + 128] <= test266151307()
    require (32 * mem[mem[128] + 128]) + 160 >= 128 and ceil32(arg1.length) + (32 * mem[mem[128] + 128]) + 160 <= test266151307()
    mem[64] = ceil32(arg1.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg1.length) + 128] = mem[mem[128] + 128]
    require arg1.length + 32 >= _3 + (32 * _4) + 64
    s = _3 + 160
    t = ceil32(arg1.length) + 160
    idx = 0
    while idx < _4:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _4
    idx = 0
    s = ceil32(arg1.length) + 160
    t = mem[64] + 64
    while idx < _4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _12 + (32 * _4) + -mem[64] + 64
}

function cast2(address[] arg1, bytes[] arg2, bool arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'array-length-invalid'
    mem[100] = this.address
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < arg2.length
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_85] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_85 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_85 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'target-invalid'
        _86 = mem[64]
        mem[64] = mem[64] + 64
        mem[_86] = 21
        mem[_86 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        _90 = mem[64]
        s = 0
        while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            mem[s + _90] = mem[s + _85 + 32]
            s = s + 32
            continue 
        if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _90 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'ERC20 operation did not succeed'
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _165 = mem[_86]
                mem[mem[64] + 36] = mem[_86]
                idx = 0
                while idx < _165:
                    mem[idx + _157 + 68] = mem[idx + _86 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_165) > _165:
                    mem[_165 + _157 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_165) + _157 + -mem[64] + 68
            _151 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_151] = return_data.size
            mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_151 + 32] == bool(mem[_151 + 32])
                    if not mem[_151 + 32]:
                        revert with 0, 'ERC20 operation did not succeed'
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _166 = mem[_86]
            mem[mem[64] + 36] = mem[_86]
            idx = 0
            while idx < _166:
                mem[idx + _159 + 68] = mem[idx + _86 + 32]
                idx = idx + 32
                continue 
            if ceil32(_166) > _166:
                mem[_166 + _159 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_166) + _159 + -mem[64] + 68
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _90] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _90 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'ERC20 operation did not succeed'
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _161 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _167 = mem[_86]
            mem[mem[64] + 36] = mem[_86]
            idx = 0
            while idx < _167:
                mem[idx + _161 + 68] = mem[idx + _86 + 32]
                idx = idx + 32
                continue 
            if ceil32(_167) > _167:
                mem[_167 + _161 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_167) + _161 + -mem[64] + 68
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_152] = return_data.size
        mem[_152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                require mem[_152 + 32] == bool(mem[_152 + 32])
                if not mem[_152 + 32]:
                    revert with 0, 'ERC20 operation did not succeed'
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _168 = mem[_86]
        mem[mem[64] + 36] = mem[_86]
        idx = 0
        while idx < _168:
            mem[idx + _163 + 68] = mem[idx + _86 + 32]
            idx = idx + 32
            continue 
        if ceil32(_168) > _168:
            mem[_168 + _163 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_168) + _163 + -mem[64] + 68
    if arg3:
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg4)
        staticcall arg4.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_81] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
}

function sub_ed9b8544(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    require cd[100] == address(cd[100])
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = cd[132]
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_105] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_105 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_105 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] >= 32
        _110 = mem[_105 + 32]
        require mem[_105 + 32] <= test266151307()
        require _105 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > _105 + mem[_105 + 32] + 63
        _111 = mem[_105 + mem[_105 + 32] + 32]
        require mem[_105 + mem[_105 + 32] + 32] <= test266151307()
        _112 = mem[64]
        require mem[64] + (32 * mem[_105 + mem[_105 + 32] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_105 + mem[_105 + 32] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_105 + mem[_105 + 32] + 32]) + 32
        mem[_112] = _111
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 >= _110 + (32 * _111) + 64
        u = _105 + _110 + 64
        v = _112 + 32
        t = 0
        while t < _111:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if not s:
            if address(cd[((32 * idx) + cd[4] + 36)]) != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                _198 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = _111
                s = 0
                t = _112 + 32
                u = mem[64] + 196
                while s < _111:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_198 + 100] = this.address
                mem[_198 + 132] = block.timestamp + 300
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _198 + (32 * _111) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _291 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _297 = mem[_291]
                require mem[_291] <= test266151307()
                require _291 + return_data.size > _291 + mem[_291] + 31
                _303 = mem[_291 + mem[_291]]
                require mem[_291 + mem[_291]] <= test266151307()
                require (32 * mem[_291 + mem[_291]]) + 32 >= 0 and _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32 <= test266151307()
                mem[64] = _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32
                mem[_291 + ceil32(return_data.size)] = _303
                require return_data.size >= _297 + (32 * _303) + 32
                t = _291 + _297 + 32
                u = _291 + ceil32(return_data.size) + 32
                s = 0
                while s < _303:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _303 - 1 < _303:
                    idx = idx + 1
                    s = mem[(32 * _303 - 1) + _291 + ceil32(return_data.size) + 32]
                    continue 
            else:
                _199 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = _111
                s = 0
                t = _112 + 32
                u = mem[64] + 196
                while s < _111:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_199 + 100] = this.address
                mem[_199 + 132] = block.timestamp + 300
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _199 + (32 * _111) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _298 = mem[_292]
                require mem[_292] <= test266151307()
                require _292 + return_data.size > _292 + mem[_292] + 31
                _304 = mem[_292 + mem[_292]]
                require mem[_292 + mem[_292]] <= test266151307()
                require (32 * mem[_292 + mem[_292]]) + 32 >= 0 and _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32 <= test266151307()
                mem[64] = _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32
                mem[_292 + ceil32(return_data.size)] = _304
                require return_data.size >= _298 + (32 * _304) + 32
                t = _292 + _298 + 32
                u = _292 + ceil32(return_data.size) + 32
                s = 0
                while s < _304:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _304 - 1 < _304:
                    idx = idx + 1
                    s = mem[(32 * _304 - 1) + _292 + ceil32(return_data.size) + 32]
                    continue 
        else:
            if 0 < _111:
                _200 = mem[_112 + 32]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(_200))
                staticcall address(_200).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_207]:
                    if address(cd[((32 * idx) + cd[4] + 36)]) != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                        _216 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _111
                        s = 0
                        t = _112 + 32
                        u = mem[64] + 196
                        while s < _111:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_216 + 100] = this.address
                        mem[_216 + 132] = block.timestamp + 300
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _216 + (32 * _111) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _293 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _299 = mem[_293]
                        require mem[_293] <= test266151307()
                        require _293 + return_data.size > _293 + mem[_293] + 31
                        _305 = mem[_293 + mem[_293]]
                        require mem[_293 + mem[_293]] <= test266151307()
                        require (32 * mem[_293 + mem[_293]]) + 32 >= 0 and _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32 <= test266151307()
                        mem[64] = _293 + ceil32(return_data.size) + (32 * mem[_293 + mem[_293]]) + 32
                        mem[_293 + ceil32(return_data.size)] = _305
                        require return_data.size >= _299 + (32 * _305) + 32
                        t = _293 + _299 + 32
                        u = _293 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _305:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _305 - 1 < _305:
                            idx = idx + 1
                            s = mem[(32 * _305 - 1) + _293 + ceil32(return_data.size) + 32]
                            continue 
                    else:
                        _217 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _111
                        s = 0
                        t = _112 + 32
                        u = mem[64] + 196
                        while s < _111:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_217 + 100] = this.address
                        mem[_217 + 132] = block.timestamp + 300
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _217 + (32 * _111) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _294 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _300 = mem[_294]
                        require mem[_294] <= test266151307()
                        require _294 + return_data.size > _294 + mem[_294] + 31
                        _306 = mem[_294 + mem[_294]]
                        require mem[_294 + mem[_294]] <= test266151307()
                        require (32 * mem[_294 + mem[_294]]) + 32 >= 0 and _294 + ceil32(return_data.size) + (32 * mem[_294 + mem[_294]]) + 32 <= test266151307()
                        mem[64] = _294 + ceil32(return_data.size) + (32 * mem[_294 + mem[_294]]) + 32
                        mem[_294 + ceil32(return_data.size)] = _306
                        require return_data.size >= _300 + (32 * _306) + 32
                        t = _294 + _300 + 32
                        u = _294 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _306:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _306 - 1 < _306:
                            idx = idx + 1
                            s = mem[(32 * _306 - 1) + _294 + ceil32(return_data.size) + 32]
                            continue 
                else:
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_200))
                    call address(_200).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_223] == bool(mem[_223])
                    if address(cd[((32 * idx) + cd[4] + 36)]) != 0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0:
                        _237 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _111
                        s = 0
                        t = _112 + 32
                        u = mem[64] + 196
                        while s < _111:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_237 + 100] = this.address
                        mem[_237 + 132] = block.timestamp + 300
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _237 + (32 * _111) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _295 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _301 = mem[_295]
                        require mem[_295] <= test266151307()
                        require _295 + return_data.size > _295 + mem[_295] + 31
                        _307 = mem[_295 + mem[_295]]
                        require mem[_295 + mem[_295]] <= test266151307()
                        require (32 * mem[_295 + mem[_295]]) + 32 >= 0 and _295 + ceil32(return_data.size) + (32 * mem[_295 + mem[_295]]) + 32 <= test266151307()
                        mem[64] = _295 + ceil32(return_data.size) + (32 * mem[_295 + mem[_295]]) + 32
                        mem[_295 + ceil32(return_data.size)] = _307
                        require return_data.size >= _301 + (32 * _307) + 32
                        t = _295 + _301 + 32
                        u = _295 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _307:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _307 - 1 < _307:
                            idx = idx + 1
                            s = mem[(32 * _307 - 1) + _295 + ceil32(return_data.size) + 32]
                            continue 
                    else:
                        _238 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _111
                        s = 0
                        t = _112 + 32
                        u = mem[64] + 196
                        while s < _111:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_238 + 100] = this.address
                        mem[_238 + 132] = block.timestamp + 300
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _238 + (32 * _111) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _296 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _302 = mem[_296]
                        require mem[_296] <= test266151307()
                        require _296 + return_data.size > _296 + mem[_296] + 31
                        _308 = mem[_296 + mem[_296]]
                        require mem[_296 + mem[_296]] <= test266151307()
                        require (32 * mem[_296 + mem[_296]]) + 32 >= 0 and _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32 <= test266151307()
                        mem[64] = _296 + ceil32(return_data.size) + (32 * mem[_296 + mem[_296]]) + 32
                        mem[_296 + ceil32(return_data.size)] = _308
                        require return_data.size >= _302 + (32 * _308) + 32
                        t = _296 + _302 + 32
                        u = _296 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _308:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _308 - 1 < _308:
                            idx = idx + 1
                            s = mem[(32 * _308 - 1) + _296 + ceil32(return_data.size) + 32]
                            continue 
        revert
    if cd[68]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_104] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
}



}
