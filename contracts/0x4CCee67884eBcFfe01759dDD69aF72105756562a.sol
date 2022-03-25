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
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_69] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_69 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_69 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] >= 32
        _74 = mem[_69 + 32]
        require mem[_69 + 32] <= test266151307()
        require _69 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > _69 + mem[_69 + 32] + 63
        _75 = mem[_69 + mem[_69 + 32] + 32]
        require mem[_69 + mem[_69 + 32] + 32] <= test266151307()
        _76 = mem[64]
        require mem[64] + (32 * mem[_69 + mem[_69 + 32] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_69 + mem[_69 + 32] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_69 + mem[_69 + 32] + 32]) + 32
        mem[_76] = _75
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 >= _74 + (32 * _75) + 64
        u = _69 + _74 + 64
        v = _76 + 32
        t = 0
        while t < _75:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if not s:
            _125 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _75
            s = 0
            t = _76 + 32
            u = mem[64] + 196
            while s < _75:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_125 + 100] = this.address
            mem[_125 + 132] = block.timestamp + 300
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _125 + (32 * _75) + -mem[64] + 192]
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
            if 0 < _75:
                _127 = mem[_76 + 32]
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
                    mem[mem[64] + 164] = _75
                    s = 0
                    t = _76 + 32
                    u = mem[64] + 196
                    while s < _75:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_138 + 100] = this.address
                    mem[_138 + 132] = block.timestamp + 300
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _138 + (32 * _75) + -mem[64] + 192]
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
                    t = _178 + _181 + 32
                    u = _178 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _184:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _184 - 1 < _184:
                        idx = idx + 1
                        s = mem[(32 * _184 - 1) + _178 + ceil32(return_data.size) + 32]
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
                    _142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_142] == bool(mem[_142])
                    _150 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = _75
                    t = 0
                    u = _76 + 32
                    v = mem[64] + 196
                    while t < _75:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_150 + 100] = this.address
                    mem[_150 + 132] = block.timestamp + 300
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _150 + (32 * _75) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _179 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _182 = mem[_179]
                    require mem[_179] <= test266151307()
                    require _179 + return_data.size > _179 + mem[_179] + 31
                    _185 = mem[_179 + mem[_179]]
                    require mem[_179 + mem[_179]] <= test266151307()
                    require (32 * mem[_179 + mem[_179]]) + 32 >= 0 and _179 + ceil32(return_data.size) + (32 * mem[_179 + mem[_179]]) + 32 <= test266151307()
                    mem[64] = _179 + ceil32(return_data.size) + (32 * mem[_179 + mem[_179]]) + 32
                    mem[_179 + ceil32(return_data.size)] = _185
                    require return_data.size >= _182 + (32 * _185) + 32
                    u = _179 + _182 + 32
                    v = _179 + ceil32(return_data.size) + 32
                    t = 0
                    while t < _185:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t + 1
                        continue 
                    if _185 - 1 < _185:
                        u = _179 + _182 + (32 * _185) + 33
                        v = mem[(32 * _185 - 1) + _179 + ceil32(return_data.size) + 32]
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
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_68] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
}



}
