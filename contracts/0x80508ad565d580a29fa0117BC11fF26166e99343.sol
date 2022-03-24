contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function geteth() {
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
    if stor0 != msg.sender:
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
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
        mem[_84] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[_84 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[_84 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'target-invalid'
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = 21
        mem[_85 + 32] = 0x6c6f772d6c6576656c2063616c6c206661696c65640000000000000000000000
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        _89 = mem[64]
        s = 0
        while s < cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            mem[s + _89] = mem[s + _84 + 32]
            s = s + 32
            continue 
        if ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) <= cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]:
            call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _89 + -mem[64] - 4]
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
                _156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _164 = mem[_85]
                mem[mem[64] + 36] = mem[_85]
                idx = 0
                while idx < _164:
                    mem[idx + _156 + 68] = mem[idx + _85 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_164) > _164:
                    mem[_164 + _156 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_164) + _156 + -mem[64] + 68
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_150] = return_data.size
            mem[_150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_150 + 32] == bool(mem[_150 + 32])
                    if not mem[_150 + 32]:
                        revert with 0, 'ERC20 operation did not succeed'
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _165 = mem[_85]
            mem[mem[64] + 36] = mem[_85]
            idx = 0
            while idx < _165:
                mem[idx + _158 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            if ceil32(_165) > _165:
                mem[_165 + _158 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_165) + _158 + -mem[64] + 68
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _89] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _89 + -mem[64] - 4]
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
            _160 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _166 = mem[_85]
            mem[mem[64] + 36] = mem[_85]
            idx = 0
            while idx < _166:
                mem[idx + _160 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            if ceil32(_166) > _166:
                mem[_166 + _160 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_166) + _160 + -mem[64] + 68
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
        _162 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _167 = mem[_85]
        mem[mem[64] + 36] = mem[_85]
        idx = 0
        while idx < _167:
            mem[idx + _162 + 68] = mem[idx + _85 + 32]
            idx = idx + 32
            continue 
        if ceil32(_167) > _167:
            mem[_167 + _162 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_167) + _162 + -mem[64] + 68
    if arg3:
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg4)
        staticcall arg4.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_80] <= ext_call.return_data[0]:
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
    if stor0 != msg.sender:
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
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_68 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_68 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] >= 32
        _73 = mem[_68 + 32]
        require mem[_68 + 32] <= test266151307()
        require _68 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > _68 + mem[_68 + 32] + 63
        _74 = mem[_68 + mem[_68 + 32] + 32]
        require mem[_68 + mem[_68 + 32] + 32] <= test266151307()
        _75 = mem[64]
        require mem[64] + (32 * mem[_68 + mem[_68 + 32] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_68 + mem[_68 + 32] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_68 + mem[_68 + 32] + 32]) + 32
        mem[_75] = _74
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 >= _73 + (32 * _74) + 64
        u = _68 + _73 + 64
        v = _75 + 32
        t = 0
        while t < _74:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if not s:
            _124 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _74
            s = 0
            t = mem[64] + 196
            u = _75 + 32
            while s < _74:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_124 + 100] = this.address
            mem[_124 + 132] = block.timestamp + 300
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _124 + (32 * _74) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _179 = mem[_176]
            require mem[_176] <= test266151307()
            require _176 + return_data.size > _176 + mem[_176] + 31
            _182 = mem[_176 + mem[_176]]
            require mem[_176 + mem[_176]] <= test266151307()
            require (32 * mem[_176 + mem[_176]]) + 32 >= 0 and _176 + ceil32(return_data.size) + (32 * mem[_176 + mem[_176]]) + 32 <= test266151307()
            mem[64] = _176 + ceil32(return_data.size) + (32 * mem[_176 + mem[_176]]) + 32
            mem[_176 + ceil32(return_data.size)] = _182
            require return_data.size >= _179 + (32 * _182) + 32
            t = _176 + _179 + 32
            u = _176 + ceil32(return_data.size) + 32
            s = 0
            while s < _182:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _182 - 1 < _182:
                idx = idx + 1
                s = mem[(32 * _182 - 1) + _176 + ceil32(return_data.size) + 32]
                continue 
        else:
            if 0 < _74:
                _127 = mem[_75 + 32]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(_127))
                staticcall address(_127).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_133]:
                    _138 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = _74
                    s = 0
                    t = mem[64] + 196
                    u = _75 + 32
                    while s < _74:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_138 + 100] = this.address
                    mem[_138 + 132] = block.timestamp + 300
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _138 + (32 * _74) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _180 = mem[_177]
                    require mem[_177] <= test266151307()
                    require _177 + return_data.size > _177 + mem[_177] + 31
                    _183 = mem[_177 + mem[_177]]
                    require mem[_177 + mem[_177]] <= test266151307()
                    require (32 * mem[_177 + mem[_177]]) + 32 >= 0 and _177 + ceil32(return_data.size) + (32 * mem[_177 + mem[_177]]) + 32 <= test266151307()
                    mem[64] = _177 + ceil32(return_data.size) + (32 * mem[_177 + mem[_177]]) + 32
                    mem[_177 + ceil32(return_data.size)] = _183
                    require return_data.size >= _180 + (32 * _183) + 32
                    t = _177 + _180 + 32
                    u = _177 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _183:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _183 - 1 < _183:
                        idx = idx + 1
                        s = mem[(32 * _183 - 1) + _177 + ceil32(return_data.size) + 32]
                        continue 
                else:
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(_127))
                    call address(_127).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[4] + 36)]), -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_143] == bool(mem[_143])
                    _153 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = _74
                    t = 0
                    u = mem[64] + 196
                    v = _75 + 32
                    while t < _74:
                        mem[u] = mem[v + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_153 + 100] = this.address
                    mem[_153 + 132] = block.timestamp + 300
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _153 + (32 * _74) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _178 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _181 = mem[_178]
                    require mem[_178] <= test266151307()
                    require _178 + return_data.size > _178 + mem[_178] + 31
                    _184 = mem[_178 + mem[_178]]
                    require mem[_178 + mem[_178]] <= test266151307()
                    require (32 * mem[_178 + mem[_178]]) + 32 >= 0 and _178 + ceil32(return_data.size) + (32 * mem[_178 + mem[_178]]) + 32 <= test266151307()
                    mem[64] = _178 + ceil32(return_data.size) + (32 * mem[_178 + mem[_178]]) + 32
                    mem[_178 + ceil32(return_data.size)] = _184
                    require return_data.size >= _181 + (32 * _184) + 32
                    u = _178 + _181 + 32
                    v = _178 + ceil32(return_data.size) + 32
                    t = 0
                    while t < _184:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t + 1
                        continue 
                    if _184 - 1 < _184:
                        u = _178 + _181 + (32 * _184) + 33
                        v = mem[(32 * _184 - 1) + _178 + ceil32(return_data.size) + 32]
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
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_67] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
}



}
