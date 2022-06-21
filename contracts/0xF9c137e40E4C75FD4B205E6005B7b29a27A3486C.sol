contract main {




// =====================  Runtime code  =====================


address pancakeswapRouterAddress;
address sub_4df363ceAddress;
address sub_67ddfad9Address;
address stor3;

function sub_4df363ce(?) {
    return sub_4df363ceAddress
}

function sub_67ddfad9(?) {
    return sub_67ddfad9Address
}

function pancakeswapRouter() {
    return pancakeswapRouterAddress
}

function _fallback() payable {
    revert
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admin can call this function!'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only admin can call this function!'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_716b2d58(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require cd[68] + cd[idx] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _203 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1
        mem[_203] = cd[(cd[68] + cd[idx] + 36)]
        require cd[68] + cd[idx] + (32 * cd[(cd[68] + cd[idx] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + 68
        u = _203 + 32
        while t < cd[68] + cd[idx] + (32 * cd[(cd[68] + cd[idx] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _203
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _204 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_204] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = _204 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] <= test266151307()
        require cd[100] + cd[idx] + 67 < calldata.size
        if cd[(cd[100] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _413 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[100] + cd[idx] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[100] + cd[idx] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[100] + cd[idx] + 36)])) + 1
        mem[_413] = cd[(cd[100] + cd[idx] + 36)]
        require cd[100] + cd[idx] + cd[(cd[100] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_413 + 32 len cd[(cd[100] + cd[idx] + 36)]] = call.data[cd[100] + cd[idx] + 68 len cd[(cd[100] + cd[idx] + 36)]]
        mem[_413 + cd[(cd[100] + cd[idx] + 36)] + 32] = 0
        mem[s] = _413
        idx = idx + 32
        s = s + 32
        continue 
    if stor3 != msg.sender:
        revert with 0, 'Only admin can call this function!'
    _603 = mem[96]
    idx = 0
    s = cd[4]
    while idx < _603:
        if idx >= mem[_204]:
            revert with 'NH{q', 50
        _606 = mem[(32 * idx) + _204 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _608 = mem[(32 * idx) + 128]
        if stor3 != msg.sender:
            revert with 0, 'Only admin can call this function!'
        if 0 >= mem[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 50
        _611 = mem[mem[(32 * idx) + 128] + 32]
        _612 = mem[64]
        mem[64] = mem[64] + 64
        mem[_612] = 3
        mem[_612 + 32] = 'PCS'
        if mem[_606] != 3:
            _620 = mem[64]
            mem[64] = mem[64] + 64
            mem[_620] = 3
            mem[_620 + 32] = 'BIS'
            if mem[_606] != 3:
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 3
                mem[_636 + 32] = 'APS'
                if mem[_606] != 3:
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _603 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * mem[96] - 1) + 128]
                    continue 
                if sha3(mem[_606 + 32 len mem[_606]]) != sha3('APS'):
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _603 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * mem[96] - 1) + 128]
                    continue 
                mem[mem[64] + 4] = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7
                mem[mem[64] + 36] = -1
                call address(_611).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_704] == bool(mem[_704])
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                _718 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _726 = mem[_608]
                mem[mem[64] + 164] = mem[_608]
                s = 0
                t = _608 + 32
                u = mem[64] + 196
                while s < _726:
                    mem[u] = mem[t + 12 len 20]
                    _603 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_718 + 100] = this.address
                mem[_718 + 132] = block.timestamp + 300
                call sub_67ddfad9Address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _718 + (32 * _726) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _813 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _820 = mem[_813]
                require mem[_813] <= test266151307()
                require _813 + mem[_813] + 31 < _813 + return_data.size
                _827 = mem[_813 + mem[_813]]
                if mem[_813 + mem[_813]] > test266151307():
                    revert with 'NH{q', 65
                if _813 + ceil32(return_data.size) + floor32(mem[_813 + mem[_813]]) + 1 > test266151307() or floor32(mem[_813 + mem[_813]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _813 + ceil32(return_data.size) + floor32(mem[_813 + mem[_813]]) + 1
                mem[_813 + ceil32(return_data.size)] = _827
                require _820 + (32 * _827) + 32 <= return_data.size
                s = _813 + _820 + 32
                t = _813 + ceil32(return_data.size) + 32
                while s < _813 + _820 + (32 * _827) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _603 = mem[96]
                    s = s + 32
                    t = t + 32
                    continue 
                if _827 < 1:
                    revert with 'NH{q', 17
                if _827 - 1 >= _827:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * _827 - 1) + _813 + ceil32(return_data.size) + 32]
                continue 
            if sha3(mem[_606 + 32 len mem[_606]]) == sha3('BIS'):
                mem[mem[64] + 4] = 0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8
                mem[mem[64] + 36] = -1
                call address(_611).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_682] == bool(mem[_682])
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                _716 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = 160
                _723 = mem[_608]
                mem[mem[64] + 164] = mem[_608]
                s = 0
                t = _608 + 32
                u = mem[64] + 196
                while s < _723:
                    mem[u] = mem[t + 12 len 20]
                    _603 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_716 + 100] = this.address
                mem[_716 + 132] = block.timestamp + 300
                call sub_4df363ceAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _716 + (32 * _723) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _815 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _822 = mem[_815]
                require mem[_815] <= test266151307()
                require _815 + mem[_815] + 31 < _815 + return_data.size
                _829 = mem[_815 + mem[_815]]
                if mem[_815 + mem[_815]] > test266151307():
                    revert with 'NH{q', 65
                if _815 + ceil32(return_data.size) + floor32(mem[_815 + mem[_815]]) + 1 > test266151307() or floor32(mem[_815 + mem[_815]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _815 + ceil32(return_data.size) + floor32(mem[_815 + mem[_815]]) + 1
                mem[_815 + ceil32(return_data.size)] = _829
                require _822 + (32 * _829) + 32 <= return_data.size
                s = _815 + _822 + 32
                t = _815 + ceil32(return_data.size) + 32
                while s < _815 + _822 + (32 * _829) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _603 = mem[96]
                    s = s + 32
                    t = t + 32
                    continue 
                if _829 < 1:
                    revert with 'NH{q', 17
                if _829 - 1 >= _829:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * _829 - 1) + _815 + ceil32(return_data.size) + 32]
                continue 
            _637 = mem[64]
            mem[64] = mem[64] + 64
            mem[_637] = 3
            mem[_637 + 32] = 'APS'
            if mem[_606] != 3:
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * mem[96] - 1) + 128]
                continue 
            if sha3(mem[_606 + 32 len mem[_606]]) != sha3('APS'):
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * mem[96] - 1) + 128]
                continue 
            mem[mem[64] + 4] = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7
            mem[mem[64] + 36] = -1
            call address(_611).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_707] == bool(mem[_707])
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _727 = mem[_608]
            mem[mem[64] + 164] = mem[_608]
            t = 0
            u = _608 + 32
            v = mem[64] + 196
            while t < _727:
                mem[v] = mem[u + 12 len 20]
                _603 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 300
            call sub_67ddfad9Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 300, mem[mem[64] + 164 len (32 * _727) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _814 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _821 = mem[_814]
            require mem[_814] <= test266151307()
            require _814 + mem[_814] + 31 < _814 + return_data.size
            _828 = mem[_814 + mem[_814]]
            if mem[_814 + mem[_814]] > test266151307():
                revert with 'NH{q', 65
            if _814 + ceil32(return_data.size) + floor32(mem[_814 + mem[_814]]) + 1 > test266151307() or floor32(mem[_814 + mem[_814]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _814 + ceil32(return_data.size) + floor32(mem[_814 + mem[_814]]) + 1
            mem[_814 + ceil32(return_data.size)] = _828
            require _821 + (32 * _828) + 32 <= return_data.size
            s = _814 + _821 + 32
            t = _814 + ceil32(return_data.size) + 32
            while s < _814 + _821 + (32 * _828) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _603 = mem[96]
                s = s + 32
                t = t + 32
                continue 
            if _828 < 1:
                revert with 'NH{q', 17
            if _828 - 1 >= _828:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * _828 - 1) + _814 + ceil32(return_data.size) + 32]
            continue 
        if sha3(mem[_606 + 32 len mem[_606]]) == sha3('PCS'):
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = -1
            call address(_611).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_671] == bool(mem[_671])
            if block.timestamp > -301:
                revert with 'NH{q', 17
            _715 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _722 = mem[_608]
            mem[mem[64] + 164] = mem[_608]
            s = 0
            t = _608 + 32
            u = mem[64] + 196
            while s < _722:
                mem[u] = mem[t + 12 len 20]
                _603 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_715 + 100] = this.address
            mem[_715 + 132] = block.timestamp + 300
            call pancakeswapRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _715 + (32 * _722) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _826 = mem[_819]
            require mem[_819] <= test266151307()
            require _819 + mem[_819] + 31 < _819 + return_data.size
            _833 = mem[_819 + mem[_819]]
            if mem[_819 + mem[_819]] > test266151307():
                revert with 'NH{q', 65
            if _819 + ceil32(return_data.size) + floor32(mem[_819 + mem[_819]]) + 1 > test266151307() or floor32(mem[_819 + mem[_819]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _819 + ceil32(return_data.size) + floor32(mem[_819 + mem[_819]]) + 1
            mem[_819 + ceil32(return_data.size)] = _833
            require _826 + (32 * _833) + 32 <= return_data.size
            s = _819 + _826 + 32
            t = _819 + ceil32(return_data.size) + 32
            while s < _819 + _826 + (32 * _833) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _603 = mem[96]
                s = s + 32
                t = t + 32
                continue 
            if _833 < 1:
                revert with 'NH{q', 17
            if _833 - 1 >= _833:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * _833 - 1) + _819 + ceil32(return_data.size) + 32]
            continue 
        _621 = mem[64]
        mem[64] = mem[64] + 64
        mem[_621] = 3
        mem[_621 + 32] = 'BIS'
        if mem[_606] != 3:
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 3
            mem[_639 + 32] = 'APS'
            if mem[_606] != 3:
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * mem[96] - 1) + 128]
                continue 
            if sha3(mem[_606 + 32 len mem[_606]]) != sha3('APS'):
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _603 = mem[96]
                idx = idx + 1
                s = mem[(32 * mem[96] - 1) + 128]
                continue 
            mem[mem[64] + 4] = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7
            mem[mem[64] + 36] = -1
            call address(_611).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _708 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_708] == bool(mem[_708])
            if block.timestamp > -301:
                revert with 'NH{q', 17
            _720 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _729 = mem[_608]
            mem[mem[64] + 164] = mem[_608]
            s = 0
            t = _608 + 32
            u = mem[64] + 196
            while s < _729:
                mem[u] = mem[t + 12 len 20]
                _603 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_720 + 100] = this.address
            mem[_720 + 132] = block.timestamp + 300
            call sub_67ddfad9Address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _720 + (32 * _729) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _816 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _823 = mem[_816]
            require mem[_816] <= test266151307()
            require _816 + mem[_816] + 31 < _816 + return_data.size
            _830 = mem[_816 + mem[_816]]
            if mem[_816 + mem[_816]] > test266151307():
                revert with 'NH{q', 65
            if _816 + ceil32(return_data.size) + floor32(mem[_816 + mem[_816]]) + 1 > test266151307() or floor32(mem[_816 + mem[_816]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _816 + ceil32(return_data.size) + floor32(mem[_816 + mem[_816]]) + 1
            mem[_816 + ceil32(return_data.size)] = _830
            require _823 + (32 * _830) + 32 <= return_data.size
            s = _816 + _823 + 32
            t = _816 + ceil32(return_data.size) + 32
            while s < _816 + _823 + (32 * _830) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _603 = mem[96]
                s = s + 32
                t = t + 32
                continue 
            if _830 < 1:
                revert with 'NH{q', 17
            if _830 - 1 >= _830:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * _830 - 1) + _816 + ceil32(return_data.size) + 32]
            continue 
        if sha3(mem[_606 + 32 len mem[_606]]) == sha3('BIS'):
            mem[mem[64] + 4] = 0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8
            mem[mem[64] + 36] = -1
            call address(_611).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_685] == bool(mem[_685])
            if block.timestamp > -301:
                revert with 'NH{q', 17
            _717 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _724 = mem[_608]
            mem[mem[64] + 164] = mem[_608]
            s = 0
            t = _608 + 32
            u = mem[64] + 196
            while s < _724:
                mem[u] = mem[t + 12 len 20]
                _603 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_717 + 100] = this.address
            mem[_717 + 132] = block.timestamp + 300
            call sub_4df363ceAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _717 + (32 * _724) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _825 = mem[_818]
            require mem[_818] <= test266151307()
            require _818 + mem[_818] + 31 < _818 + return_data.size
            _832 = mem[_818 + mem[_818]]
            if mem[_818 + mem[_818]] > test266151307():
                revert with 'NH{q', 65
            if _818 + ceil32(return_data.size) + floor32(mem[_818 + mem[_818]]) + 1 > test266151307() or floor32(mem[_818 + mem[_818]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _818 + ceil32(return_data.size) + floor32(mem[_818 + mem[_818]]) + 1
            mem[_818 + ceil32(return_data.size)] = _832
            require _825 + (32 * _832) + 32 <= return_data.size
            s = _818 + _825 + 32
            t = _818 + ceil32(return_data.size) + 32
            while s < _818 + _825 + (32 * _832) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _603 = mem[96]
                s = s + 32
                t = t + 32
                continue 
            if _832 < 1:
                revert with 'NH{q', 17
            if _832 - 1 >= _832:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * _832 - 1) + _818 + ceil32(return_data.size) + 32]
            continue 
        _642 = mem[64]
        mem[64] = mem[64] + 64
        mem[_642] = 3
        mem[_642 + 32] = 'APS'
        if mem[_606] != 3:
            if mem[96] < 1:
                revert with 'NH{q', 17
            if mem[96] - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * mem[96] - 1) + 128]
            continue 
        if sha3(mem[_606 + 32 len mem[_606]]) != sha3('APS'):
            if mem[96] < 1:
                revert with 'NH{q', 17
            if mem[96] - 1 >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _603 = mem[96]
            idx = idx + 1
            s = mem[(32 * mem[96] - 1) + 128]
            continue 
        mem[mem[64] + 4] = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7
        mem[mem[64] + 36] = -1
        call address(_611).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _710 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_710] == bool(mem[_710])
        if block.timestamp > -301:
            revert with 'NH{q', 17
        _721 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _730 = mem[_608]
        mem[mem[64] + 164] = mem[_608]
        s = 0
        t = _608 + 32
        u = mem[64] + 196
        while s < _730:
            mem[u] = mem[t + 12 len 20]
            _603 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_721 + 100] = this.address
        mem[_721 + 132] = block.timestamp + 300
        call sub_67ddfad9Address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _721 + (32 * _730) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _817 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _824 = mem[_817]
        require mem[_817] <= test266151307()
        require _817 + mem[_817] + 31 < _817 + return_data.size
        _831 = mem[_817 + mem[_817]]
        if mem[_817 + mem[_817]] > test266151307():
            revert with 'NH{q', 65
        if _817 + ceil32(return_data.size) + floor32(mem[_817 + mem[_817]]) + 1 > test266151307() or floor32(mem[_817 + mem[_817]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _817 + ceil32(return_data.size) + floor32(mem[_817 + mem[_817]]) + 1
        mem[_817 + ceil32(return_data.size)] = _831
        require _824 + (32 * _831) + 32 <= return_data.size
        s = _817 + _824 + 32
        t = _817 + ceil32(return_data.size) + 32
        while s < _817 + _824 + (32 * _831) + 32:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            _603 = mem[96]
            s = s + 32
            t = t + 32
            continue 
        if _831 < 1:
            revert with 'NH{q', 17
        if _831 - 1 >= _831:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        _603 = mem[96]
        idx = idx + 1
        s = mem[(32 * _831 - 1) + _817 + ceil32(return_data.size) + 32]
        continue 
    return s
}



}
