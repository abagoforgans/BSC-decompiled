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

function sub_beed2072(?) payable {
    require calldata.size - 4 >= 128
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
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_34] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_34 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_34 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] >= 64
        _39 = mem[_34 + 32]
        _40 = mem[_34 + 64]
        require mem[_34 + 64] <= test266151307()
        require _34 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > _34 + mem[_34 + 64] + 63
        _41 = mem[_34 + mem[_34 + 64] + 32]
        require mem[_34 + mem[_34 + 64] + 32] <= test266151307()
        _42 = mem[64]
        require mem[64] + (32 * mem[_34 + mem[_34 + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[_34 + mem[_34 + 64] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_34 + mem[_34 + 64] + 32]) + 32
        mem[_42] = _41
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 >= _40 + (32 * _41) + 64
        t = _34 + _40 + 64
        u = _42 + 32
        s = 0
        while s < _41:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _39
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _41
        s = 0
        t = mem[64] + 196
        u = _42 + 32
        while s < _41:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 300
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _39, 1, Array(len=_41, data=mem[mem[64] + 196 len 32 * _41]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        require mem[_69] <= test266151307()
        require _69 + return_data.size > _69 + mem[_69] + 31
        _71 = mem[_69 + mem[_69]]
        require mem[_69 + mem[_69]] <= test266151307()
        require (32 * mem[_69 + mem[_69]]) + 32 >= 0 and _69 + ceil32(return_data.size) + (32 * mem[_69 + mem[_69]]) + 32 <= test266151307()
        mem[64] = _69 + ceil32(return_data.size) + (32 * mem[_69 + mem[_69]]) + 32
        mem[_69 + ceil32(return_data.size)] = _71
        require return_data.size >= _70 + (32 * _71) + 32
        t = _69 + _70 + 32
        u = _69 + ceil32(return_data.size) + 32
        s = 0
        while s < _71:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _71 - 1 < _71:
            t = _69 + _70 + (32 * _71) + 33
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
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_33] <= ext_call.return_data[0]:
            revert with 0, 'Not profitable'
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



}
