contract main {




// =====================  Runtime code  =====================


#
#  - sub_8ef64d4c(?)
#  - sub_d6aeb7af(?)
#
address owner;
address stor1;
address stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_1eaf4c13(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function test() {
    if not stor4[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Caller is not valid'
    staticcall stor3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_3cef2ea8(?) payable {
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
        _205 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[idx] + 36)]) + 1
        mem[_205] = cd[(cd[68] + cd[idx] + 36)]
        require cd[68] + cd[idx] + (32 * cd[(cd[68] + cd[idx] + 36)]) + 68 <= calldata.size
        t = cd[68] + cd[idx] + 68
        u = _205 + 32
        while t < cd[68] + cd[idx] + (32 * cd[(cd[68] + cd[idx] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _205
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _206 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_206] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = _206 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        idx = 0
        s = 0
        s = cd[4]
        while idx < ('cd', 100).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _617 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            _621 = mem[(32 * idx) + _206 + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_621)
            staticcall address(_617).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_621)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _629 = mem[_627]
            require mem[_627] == mem[_627]
            if mem[_627] >= s:
                if mem[_206] < 1:
                    revert with 'NH{q', 17
                if idx >= mem[_206]:
                    revert with 'NH{q', 50
                if idx >= mem[_206] - 1:
                    _651 = mem[(32 * idx) + _206 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _659 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = cd[36]
                    mem[mem[64] + 68] = 160
                    _673 = mem[_659]
                    mem[mem[64] + 164] = mem[_659]
                    t = 0
                    u = _659 + 32
                    v = mem[64] + 196
                    while t < _673:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(_651))
                    call address(_651).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args s, cd[36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _673) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + 128]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    _871 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_871).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _895 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_895] == mem[_895]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _629
                    s = mem[_895]
                    continue 
                _653 = mem[(32 * idx) + _206 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _661 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _674 = mem[_661]
                mem[mem[64] + 164] = mem[_661]
                t = 0
                u = _661 + 32
                v = mem[64] + 196
                while t < _674:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(_653))
                call address(_653).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _674) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 50
                _873 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = this.address
                staticcall address(_873).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_896] == mem[_896]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _629
                s = mem[_896]
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _639 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + _206 + 44 len 20]
            mem[mem[64] + 36] = -1
            call address(_639).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_669] == bool(mem[_669])
            if mem[_206] < 1:
                revert with 'NH{q', 17
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            if idx >= mem[_206] - 1:
                _687 = mem[(32 * idx) + _206 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _695 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _727 = mem[_695]
                mem[mem[64] + 164] = mem[_695]
                t = 0
                u = _695 + 32
                v = mem[64] + 196
                while t < _727:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(_687))
                call address(_687).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, cd[36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _727) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 50
                _875 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = this.address
                staticcall address(_875).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_897] == mem[_897]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _629
                s = mem[_897]
                continue 
            _689 = mem[(32 * idx) + _206 + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _697 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _728 = mem[_697]
            mem[mem[64] + 164] = mem[_697]
            t = 0
            u = _697 + 32
            v = mem[64] + 196
            while t < _728:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(_689))
            call address(_689).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _728) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128]] < 1:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _877 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = this.address
            staticcall address(_877).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_898] == mem[_898]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _629
            s = mem[_898]
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Caller is not valid'
        idx = 0
        s = 0
        s = cd[4]
        while idx < ('cd', 100).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _619 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            _623 = mem[(32 * idx) + _206 + 32]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_623)
            staticcall address(_619).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_623)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _630 = mem[_628]
            require mem[_628] == mem[_628]
            if mem[_628] >= s:
                if mem[_206] < 1:
                    revert with 'NH{q', 17
                if idx >= mem[_206]:
                    revert with 'NH{q', 50
                if idx >= mem[_206] - 1:
                    _655 = mem[(32 * idx) + _206 + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _663 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = cd[36]
                    mem[mem[64] + 68] = 160
                    _675 = mem[_663]
                    mem[mem[64] + 164] = mem[_663]
                    t = 0
                    u = _663 + 32
                    v = mem[64] + 196
                    while t < _675:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(_655))
                    call address(_655).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args s, cd[36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _675) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + 128]] < 1:
                        revert with 'NH{q', 17
                    if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    _879 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_879).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _899 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_899] == mem[_899]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _630
                    s = mem[_899]
                    continue 
                _657 = mem[(32 * idx) + _206 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _665 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _676 = mem[_665]
                mem[mem[64] + 164] = mem[_665]
                t = 0
                u = _665 + 32
                v = mem[64] + 196
                while t < _676:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(_657))
                call address(_657).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _676) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 50
                _881 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = this.address
                staticcall address(_881).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_900] == mem[_900]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _630
                s = mem[_900]
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _641 = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + _206 + 44 len 20]
            mem[mem[64] + 36] = -1
            call address(_641).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_670] == bool(mem[_670])
            if mem[_206] < 1:
                revert with 'NH{q', 17
            if idx >= mem[_206]:
                revert with 'NH{q', 50
            if idx >= mem[_206] - 1:
                _691 = mem[(32 * idx) + _206 + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _699 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = cd[36]
                mem[mem[64] + 68] = 160
                _729 = mem[_699]
                mem[mem[64] + 164] = mem[_699]
                t = 0
                u = _699 + 32
                v = mem[64] + 196
                while t < _729:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(_691))
                call address(_691).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, cd[36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _729) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 50
                _883 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = this.address
                staticcall address(_883).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_901] == mem[_901]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _630
                s = mem[_901]
                continue 
            _693 = mem[(32 * idx) + _206 + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _701 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _730 = mem[_701]
            mem[mem[64] + 164] = mem[_701]
            t = 0
            u = _701 + 32
            v = mem[64] + 196
            while t < _730:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(_693))
            call address(_693).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _730) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128]] < 1:
                revert with 'NH{q', 17
            if mem[mem[(32 * idx) + 128]] - 1 >= mem[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 50
            _885 = mem[(32 * mem[mem[(32 * idx) + 128]] - 1) + mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = this.address
            staticcall address(_885).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _902 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_902] == mem[_902]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _630
            s = mem[_902]
            continue 
}

function sub_7a170b47(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(32 * arg3) + 128] = arg3
            if not arg3:
                if arg3 > test266151307():
                    revert with 'NH{q', 65
                mem[(64 * arg3) + 160] = arg3
                if not arg3:
                    mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                    staticcall address(arg1).allPairsLength() with:
                            gas gas_remaining wei
                           args mem[(98 * arg3) + 196 len 192 * arg3]
                    mem[(98 * arg3) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    s = arg2
                    while idx < arg3:
                        if s < ext_call.return_data[0]:
                            mem[mem[64] + 4] = s
                            staticcall address(arg1).allPairs(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_578] == mem[_578 + 12 len 20]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = mem[_578 + 12 len 20]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_738] == mem[_738 + 12 len 20]
                            if idx >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * arg3) + 160] = mem[_738 + 12 len 20]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            staticcall mem[(32 * idx) + 140 len 20].token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _898 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_898] == mem[_898 + 12 len 20]
                            if idx >= mem[(64 * arg3) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * arg3) + 192] = mem[_898 + 12 len 20]
                        if s == -1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + 1
                        continue 
                    _514 = mem[64]
                    mem[mem[64]] = 96
                    _546 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _546:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _546) + 128
                    _962 = mem[(32 * arg3) + 128]
                    mem[_514 + (32 * _546) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _514 + (32 * _546) + 160
                    while idx < _962:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_514 + 64] = (32 * _546) + (32 * _962) + 160
                    _1058 = mem[(64 * arg3) + 160]
                    mem[_514 + (32 * _546) + (32 * _962) + 160] = mem[(64 * arg3) + 160]
                    idx = 0
                    s = (64 * arg3) + 192
                    t = _514 + (32 * _546) + (32 * _962) + 192
                    while idx < _1058:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _514 + (32 * _546) + (32 * _962) + (32 * _1058) + -mem[64] + 192
                mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = arg2
                while idx < arg3:
                    if s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_579] == mem[_579 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_579 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _739 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_739] == mem[_739 + 12 len 20]
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * arg3) + 160] = mem[_739 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if idx >= mem[(64 * arg3) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * arg3) + 192] = mem[_899 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _516 = mem[64]
                mem[mem[64]] = 96
                _547 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _547:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _547) + 128
                _963 = mem[(32 * arg3) + 128]
                mem[_516 + (32 * _547) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _516 + (32 * _547) + 160
                while idx < _963:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_516 + 64] = (32 * _547) + (32 * _963) + 160
                _1059 = mem[(64 * arg3) + 160]
                mem[_516 + (32 * _547) + (32 * _963) + 160] = mem[(64 * arg3) + 160]
                idx = 0
                s = (64 * arg3) + 192
                t = _516 + (32 * _547) + (32 * _963) + 192
                while idx < _1059:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _516 + (32 * _547) + (32 * _963) + (32 * _1059) + -mem[64] + 192
            mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = arg2
                while idx < arg3:
                    if s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_580] == mem[_580 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_580 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * arg3) + 160] = mem[_740 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_900] == mem[_900 + 12 len 20]
                        if idx >= mem[(64 * arg3) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * arg3) + 192] = mem[_900 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _518 = mem[64]
                mem[mem[64]] = 96
                _548 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _548:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _548) + 128
                _964 = mem[(32 * arg3) + 128]
                mem[_518 + (32 * _548) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _518 + (32 * _548) + 160
                while idx < _964:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_518 + 64] = (32 * _548) + (32 * _964) + 160
                _1060 = mem[(64 * arg3) + 160]
                mem[_518 + (32 * _548) + (32 * _964) + 160] = mem[(64 * arg3) + 160]
                idx = 0
                s = (64 * arg3) + 192
                t = _518 + (32 * _548) + (32 * _964) + 192
                while idx < _1060:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _518 + (32 * _548) + (32 * _964) + (32 * _1060) + -mem[64] + 192
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_581] == mem[_581 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_581 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_741] == mem[_741 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_741 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _901 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_901] == mem[_901 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_901 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _520 = mem[64]
            mem[mem[64]] = 96
            _549 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _549:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _549) + 128
            _965 = mem[(32 * arg3) + 128]
            mem[_520 + (32 * _549) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _520 + (32 * _549) + 160
            while idx < _965:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_520 + 64] = (32 * _549) + (32 * _965) + 160
            _1061 = mem[(64 * arg3) + 160]
            mem[_520 + (32 * _549) + (32 * _965) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _520 + (32 * _549) + (32 * _965) + 192
            while idx < _1061:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _520 + (32 * _549) + (32 * _965) + (32 * _1061) + -mem[64] + 192
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg3) + 128] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = arg2
                while idx < arg3:
                    if s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_582] == mem[_582 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_582 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_742] == mem[_742 + 12 len 20]
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * arg3) + 160] = mem[_742 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_902] == mem[_902 + 12 len 20]
                        if idx >= mem[(64 * arg3) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * arg3) + 192] = mem[_902 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _522 = mem[64]
                mem[mem[64]] = 96
                _550 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _550:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _550) + 128
                _966 = mem[(32 * arg3) + 128]
                mem[_522 + (32 * _550) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _522 + (32 * _550) + 160
                while idx < _966:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_522 + 64] = (32 * _550) + (32 * _966) + 160
                _1062 = mem[(64 * arg3) + 160]
                mem[_522 + (32 * _550) + (32 * _966) + 160] = mem[(64 * arg3) + 160]
                idx = 0
                s = (64 * arg3) + 192
                t = _522 + (32 * _550) + (32 * _966) + 192
                while idx < _1062:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _522 + (32 * _550) + (32 * _966) + (32 * _1062) + -mem[64] + 192
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _583 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_583] == mem[_583 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_583 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_743] == mem[_743 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_743 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _903 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_903] == mem[_903 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_903 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _524 = mem[64]
            mem[mem[64]] = 96
            _551 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _551:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _551) + 128
            _967 = mem[(32 * arg3) + 128]
            mem[_524 + (32 * _551) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _524 + (32 * _551) + 160
            while idx < _967:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_524 + 64] = (32 * _551) + (32 * _967) + 160
            _1063 = mem[(64 * arg3) + 160]
            mem[_524 + (32 * _551) + (32 * _967) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _524 + (32 * _551) + (32 * _967) + 192
            while idx < _1063:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _524 + (32 * _551) + (32 * _967) + (32 * _1063) + -mem[64] + 192
        mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_584] == mem[_584 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_584 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_744] == mem[_744 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_744 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _904 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_904] == mem[_904 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_904 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _526 = mem[64]
            mem[mem[64]] = 96
            _552 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _552:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _552) + 128
            _968 = mem[(32 * arg3) + 128]
            mem[_526 + (32 * _552) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _526 + (32 * _552) + 160
            while idx < _968:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_526 + 64] = (32 * _552) + (32 * _968) + 160
            _1064 = mem[(64 * arg3) + 160]
            mem[_526 + (32 * _552) + (32 * _968) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _526 + (32 * _552) + (32 * _968) + 192
            while idx < _1064:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _526 + (32 * _552) + (32 * _968) + (32 * _1064) + -mem[64] + 192
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg3:
            if s < ext_call.return_data[0]:
                mem[mem[64] + 4] = s
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _585 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_585] == mem[_585 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_585 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_745] == mem[_745 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_745 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_905] == mem[_905 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_905 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _528 = mem[64]
        mem[mem[64]] = 96
        _553 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _553:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _553) + 128
        _969 = mem[(32 * arg3) + 128]
        mem[_528 + (32 * _553) + 128] = mem[(32 * arg3) + 128]
        idx = 0
        s = (32 * arg3) + 160
        t = _528 + (32 * _553) + 160
        while idx < _969:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_528 + 64] = (32 * _553) + (32 * _969) + 160
        _1065 = mem[(64 * arg3) + 160]
        mem[_528 + (32 * _553) + (32 * _969) + 160] = mem[(64 * arg3) + 160]
        idx = 0
        s = (64 * arg3) + 192
        t = _528 + (32 * _553) + (32 * _969) + 192
        while idx < _1065:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _528 + (32 * _553) + (32 * _969) + (32 * _1065) + -mem[64] + 192
    if owner != msg.sender:
        revert with 0, 'Caller is not valid'
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3
    if not arg3:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg3) + 128] = arg3
        if not arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * arg3) + 160] = arg3
            if not arg3:
                mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                staticcall address(arg1).allPairsLength() with:
                        gas gas_remaining wei
                       args mem[(98 * arg3) + 196 len 192 * arg3]
                mem[(98 * arg3) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = 0
                s = arg2
                while idx < arg3:
                    if s < ext_call.return_data[0]:
                        mem[mem[64] + 4] = s
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _586 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_586] == mem[_586 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_586 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _746 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_746] == mem[_746 + 12 len 20]
                        if idx >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * arg3) + 160] = mem[_746 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _906 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_906] == mem[_906 + 12 len 20]
                        if idx >= mem[(64 * arg3) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * arg3) + 192] = mem[_906 + 12 len 20]
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                _530 = mem[64]
                mem[mem[64]] = 96
                _554 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _554:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _554) + 128
                _970 = mem[(32 * arg3) + 128]
                mem[_530 + (32 * _554) + 128] = mem[(32 * arg3) + 128]
                idx = 0
                s = (32 * arg3) + 160
                t = _530 + (32 * _554) + 160
                while idx < _970:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_530 + 64] = (32 * _554) + (32 * _970) + 160
                _1066 = mem[(64 * arg3) + 160]
                mem[_530 + (32 * _554) + (32 * _970) + 160] = mem[(64 * arg3) + 160]
                idx = 0
                s = (64 * arg3) + 192
                t = _530 + (32 * _554) + (32 * _970) + 192
                while idx < _1066:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _530 + (32 * _554) + (32 * _970) + (32 * _1066) + -mem[64] + 192
            mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_587] == mem[_587 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_587 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_747] == mem[_747 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_747 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_907] == mem[_907 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_907 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _532 = mem[64]
            mem[mem[64]] = 96
            _555 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _555:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _555) + 128
            _971 = mem[(32 * arg3) + 128]
            mem[_532 + (32 * _555) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _532 + (32 * _555) + 160
            while idx < _971:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_532 + 64] = (32 * _555) + (32 * _971) + 160
            _1067 = mem[(64 * arg3) + 160]
            mem[_532 + (32 * _555) + (32 * _971) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _532 + (32 * _555) + (32 * _971) + 192
            while idx < _1067:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _532 + (32 * _555) + (32 * _971) + (32 * _1067) + -mem[64] + 192
        mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _588 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_588] == mem[_588 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_588 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_748] == mem[_748 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_748 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _908 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_908] == mem[_908 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_908 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _534 = mem[64]
            mem[mem[64]] = 96
            _556 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _556:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _556) + 128
            _972 = mem[(32 * arg3) + 128]
            mem[_534 + (32 * _556) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _534 + (32 * _556) + 160
            while idx < _972:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_534 + 64] = (32 * _556) + (32 * _972) + 160
            _1068 = mem[(64 * arg3) + 160]
            mem[_534 + (32 * _556) + (32 * _972) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _534 + (32 * _556) + (32 * _972) + 192
            while idx < _1068:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _534 + (32 * _556) + (32 * _972) + (32 * _1068) + -mem[64] + 192
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg3:
            if s < ext_call.return_data[0]:
                mem[mem[64] + 4] = s
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_589] == mem[_589 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_589 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_749] == mem[_749 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_749 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _909 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_909] == mem[_909 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_909 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _536 = mem[64]
        mem[mem[64]] = 96
        _557 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _557:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _557) + 128
        _973 = mem[(32 * arg3) + 128]
        mem[_536 + (32 * _557) + 128] = mem[(32 * arg3) + 128]
        idx = 0
        s = (32 * arg3) + 160
        t = _536 + (32 * _557) + 160
        while idx < _973:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_536 + 64] = (32 * _557) + (32 * _973) + 160
        _1069 = mem[(64 * arg3) + 160]
        mem[_536 + (32 * _557) + (32 * _973) + 160] = mem[(64 * arg3) + 160]
        idx = 0
        s = (64 * arg3) + 192
        t = _536 + (32 * _557) + (32 * _973) + 192
        while idx < _1069:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _536 + (32 * _557) + (32 * _973) + (32 * _1069) + -mem[64] + 192
    mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg3) + 128] = arg3
    if not arg3:
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * arg3) + 160] = arg3
        if not arg3:
            mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
            staticcall address(arg1).allPairsLength() with:
                    gas gas_remaining wei
                   args mem[(98 * arg3) + 196 len 192 * arg3]
            mem[(98 * arg3) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = arg2
            while idx < arg3:
                if s < ext_call.return_data[0]:
                    mem[mem[64] + 4] = s
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _590 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_590] == mem[_590 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_590 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_750] == mem[_750 + 12 len 20]
                    if idx >= mem[(32 * arg3) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg3) + 160] = mem[_750 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _910 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_910] == mem[_910 + 12 len 20]
                    if idx >= mem[(64 * arg3) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * arg3) + 192] = mem[_910 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _538 = mem[64]
            mem[mem[64]] = 96
            _558 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _558:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _558) + 128
            _974 = mem[(32 * arg3) + 128]
            mem[_538 + (32 * _558) + 128] = mem[(32 * arg3) + 128]
            idx = 0
            s = (32 * arg3) + 160
            t = _538 + (32 * _558) + 160
            while idx < _974:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_538 + 64] = (32 * _558) + (32 * _974) + 160
            _1070 = mem[(64 * arg3) + 160]
            mem[_538 + (32 * _558) + (32 * _974) + 160] = mem[(64 * arg3) + 160]
            idx = 0
            s = (64 * arg3) + 192
            t = _538 + (32 * _558) + (32 * _974) + 192
            while idx < _1070:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _538 + (32 * _558) + (32 * _974) + (32 * _1070) + -mem[64] + 192
        mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg3:
            if s < ext_call.return_data[0]:
                mem[mem[64] + 4] = s
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_591] == mem[_591 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_591 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_751] == mem[_751 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_751 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _911 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_911] == mem[_911 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_911 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _540 = mem[64]
        mem[mem[64]] = 96
        _559 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _559:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _559) + 128
        _975 = mem[(32 * arg3) + 128]
        mem[_540 + (32 * _559) + 128] = mem[(32 * arg3) + 128]
        idx = 0
        s = (32 * arg3) + 160
        t = _540 + (32 * _559) + 160
        while idx < _975:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_540 + 64] = (32 * _559) + (32 * _975) + 160
        _1071 = mem[(64 * arg3) + 160]
        mem[_540 + (32 * _559) + (32 * _975) + 160] = mem[(64 * arg3) + 160]
        idx = 0
        s = (64 * arg3) + 192
        t = _540 + (32 * _559) + (32 * _975) + 192
        while idx < _1071:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _540 + (32 * _559) + (32 * _975) + (32 * _1071) + -mem[64] + 192
    mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    if arg3 > test266151307():
        revert with 'NH{q', 65
    mem[(64 * arg3) + 160] = arg3
    if not arg3:
        mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
               args mem[(98 * arg3) + 196 len 192 * arg3]
        mem[(98 * arg3) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = arg2
        while idx < arg3:
            if s < ext_call.return_data[0]:
                mem[mem[64] + 4] = s
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_592] == mem[_592 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_592 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_752] == mem[_752 + 12 len 20]
                if idx >= mem[(32 * arg3) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg3) + 160] = mem[_752 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                staticcall mem[(32 * idx) + 140 len 20].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _912 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_912] == mem[_912 + 12 len 20]
                if idx >= mem[(64 * arg3) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * arg3) + 192] = mem[_912 + 12 len 20]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _542 = mem[64]
        mem[mem[64]] = 96
        _560 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _560:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _560) + 128
        _976 = mem[(32 * arg3) + 128]
        mem[_542 + (32 * _560) + 128] = mem[(32 * arg3) + 128]
        idx = 0
        s = (32 * arg3) + 160
        t = _542 + (32 * _560) + 160
        while idx < _976:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_542 + 64] = (32 * _560) + (32 * _976) + 160
        _1072 = mem[(64 * arg3) + 160]
        mem[_542 + (32 * _560) + (32 * _976) + 160] = mem[(64 * arg3) + 160]
        idx = 0
        s = (64 * arg3) + 192
        t = _542 + (32 * _560) + (32 * _976) + 192
        while idx < _1072:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _542 + (32 * _560) + (32 * _976) + (32 * _1072) + -mem[64] + 192
    mem[(64 * arg3) + 192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    mem[(98 * arg3) + 192] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
           args mem[(98 * arg3) + 196 len 192 * arg3]
    mem[(98 * arg3) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (98 * arg3) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = arg2
    while idx < arg3:
        if s < ext_call.return_data[0]:
            mem[mem[64] + 4] = s
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _593 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_593] == mem[_593 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_593 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_753] == mem[_753 + 12 len 20]
            if idx >= mem[(32 * arg3) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg3) + 160] = mem[_753 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall mem[(32 * idx) + 140 len 20].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _913 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_913] == mem[_913 + 12 len 20]
            if idx >= mem[(64 * arg3) + 160]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (64 * arg3) + 192] = mem[_913 + 12 len 20]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _544 = mem[64]
    mem[mem[64]] = 96
    _561 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _561:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _561) + 128
    _977 = mem[(32 * arg3) + 128]
    mem[_544 + (32 * _561) + 128] = mem[(32 * arg3) + 128]
    idx = 0
    s = (32 * arg3) + 160
    t = _544 + (32 * _561) + 160
    while idx < _977:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_544 + 64] = (32 * _561) + (32 * _977) + 160
    _1073 = mem[(64 * arg3) + 160]
    mem[_544 + (32 * _561) + (32 * _977) + 160] = mem[(64 * arg3) + 160]
    idx = 0
    s = (64 * arg3) + 192
    t = _544 + (32 * _561) + (32 * _977) + 192
    while idx < _1073:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _544 + (32 * _561) + (32 * _977) + (32 * _1073) + -mem[64] + 192
}



}
