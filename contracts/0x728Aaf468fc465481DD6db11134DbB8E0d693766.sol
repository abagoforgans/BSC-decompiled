contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_18f7ebfc;
array of address stor2;
uint256 stor3;

function sub_18f7ebfc(?) {
    return sub_18f7ebfc
}

function owner() {
    return owner
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8b69346f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_18f7ebfc = arg1
    emit 0x71a66a33: msg.sender, arg1
}

function sub_b3c5fe86(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor2.length++
    stor2[stor2.length] = address(arg1)
    emit 0x68912701: address(arg1)
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

function sub_0bb9ccac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if stor2.length <= 1:
        revert with 0, 'can not delete currency any more'
    if stor2.length < 1:
        revert with 'NH{q', 17
    idx = stor2.length - 1
    while idx > 0:
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if stor2[idx] == address(arg1):
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor2.length - 1 >= stor2.length:
                revert with 'NH{q', 50
            if idx != stor2.length - 1:
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                stor2[idx] = stor2[stor2.length]
            stor2[stor2.length] = 0
            if not stor2.length:
                revert with 'NH{q', 49
            mem[0] = 2
            stor2[stor2.length] = 0
            stor2.length--
        if idx:
            idx = idx - 1
            continue 
        emit 0xe6639113: address(arg1)
    emit 0xe6639113: address(arg1)
}

function sub_fb447fb5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if sub_18f7ebfc:
        revert with 0, 'Contract Paused'
    if stor3 != arg3:
        revert with 0, 'error'
    if arg1 > 0:
        if arg1 < stor2.length:
            require ext_code.size(stor2[arg1])
            staticcall stor2[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 'NH{q', 50
                require ext_code.size(stor2[arg1])
                call stor2[arg1].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_23d80945(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if sub_18f7ebfc:
        revert with 0, 'Contract Paused'
    if stor3 != arg4:
        revert with 0, 'error'
    if arg1 <= 0:
        if eth.balance(this.address) >= arg2:
            call address(arg3) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 >= stor2.length:
            if eth.balance(this.address) >= arg2:
                call address(arg3) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor2[arg1])
            staticcall stor2[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 'NH{q', 50
                require ext_code.size(stor2[arg1])
                call stor2[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7d84003c(?) {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor2.length) + 128] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * stor2.length) + 160] = stor2.length
            if not stor2.length:
                if stor2.length > test266151307():
                    revert with 'NH{q', 65
                mem[(98 * stor2.length) + 192] = stor2.length
                mem[64] = (131 * stor2.length) + 224
                if not stor2.length:
                    idx = 0
                    while idx < stor2.length:
                        mem[0] = 2
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _849 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _866 = mem[_849]
                        require mem[_849] <= test266151307()
                        require _849 + mem[_849] + 31 < _849 + return_data.size
                        _878 = mem[_849 + mem[_849]]
                        if mem[_849 + mem[_849]] > test266151307():
                            revert with 'NH{q', 65
                        if _849 + ceil32(return_data.size) + ceil32(ceil32(mem[_849 + mem[_849]])) + 1 > test266151307() or ceil32(ceil32(mem[_849 + mem[_849]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _849 + ceil32(return_data.size) + ceil32(ceil32(mem[_849 + mem[_849]])) + 1
                        mem[_849 + ceil32(return_data.size)] = _878
                        require _866 + _878 + 32 <= return_data.size
                        s = 0
                        while s < _878:
                            mem[_849 + ceil32(return_data.size) + s + 32] = mem[_849 + _866 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_878) <= _878:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _849 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1823] == mem[_1823]
                            if idx >= mem[(32 * stor2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1823]
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1991] == mem[_1991 + 31 len 1]
                            if idx >= mem[(64 * stor2.length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1991 + 31 len 1]
                        else:
                            mem[_849 + ceil32(return_data.size) + _878 + 32] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _849 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1831 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1831] == mem[_1831]
                            if idx >= mem[(32 * stor2.length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1831]
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2008 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2008] == mem[_2008 + 31 len 1]
                            if idx >= mem[(64 * stor2.length) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2008 + 31 len 1]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        if idx >= mem[(98 * stor2.length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _816 = mem[64]
                    mem[mem[64]] = 128
                    _857 = mem[(98 * stor2.length) + 192]
                    mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                    idx = 0
                    s = (98 * stor2.length) + 224
                    t = mem[64] + 160
                    while idx < _857:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _857) + 160
                    _1671 = mem[96]
                    mem[mem[64] + (32 * _857) + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + (32 * _857) + (32 * mem[96]) + 192
                    u = mem[64] + (32 * _857) + 192
                    while idx < _1671:
                        mem[u] = t + -_816 + -(32 * _857) - 192
                        _2351 = mem[s]
                        _2376 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _2376:
                            mem[t + v + 32] = mem[_2351 + v + 32]
                            v = v + 32
                            continue 
                        if ceil32(_2376) > _2376:
                            mem[t + _2376 + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + ceil32(_2376) + 32
                        u = u + 32
                        continue 
                    mem[_816 + 64] = t - _816
                    _2375 = mem[(32 * stor2.length) + 128]
                    mem[t] = mem[(32 * stor2.length) + 128]
                    mem[t + 32 len 32 * _2375] = mem[(32 * stor2.length) + 160 len 32 * _2375]
                    mem[_816 + 96] = t + (32 * _2375) + -_816 + 32
                    _2767 = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _2375) + 32] = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _2375) + 64 len 32 * _2767] = mem[(64 * stor2.length) + 192 len 32 * _2767]
                    return memory
                      from mem[64]
                       len t + (32 * _2375) + (32 * _2767) + -mem[64] + 64
                mem[(98 * stor2.length) + 224 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _867 = mem[_850]
                    require mem[_850] <= test266151307()
                    require _850 + mem[_850] + 31 < _850 + return_data.size
                    _879 = mem[_850 + mem[_850]]
                    if mem[_850 + mem[_850]] > test266151307():
                        revert with 'NH{q', 65
                    if _850 + ceil32(return_data.size) + ceil32(ceil32(mem[_850 + mem[_850]])) + 1 > test266151307() or ceil32(ceil32(mem[_850 + mem[_850]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _850 + ceil32(return_data.size) + ceil32(ceil32(mem[_850 + mem[_850]])) + 1
                    mem[_850 + ceil32(return_data.size)] = _879
                    require _867 + _879 + 32 <= return_data.size
                    s = 0
                    while s < _879:
                        mem[_850 + ceil32(return_data.size) + s + 32] = mem[_850 + _867 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_879) <= _879:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _850 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1824] == mem[_1824]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1824]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1992 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1992] == mem[_1992 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1992 + 31 len 1]
                    else:
                        mem[_850 + ceil32(return_data.size) + _879 + 32] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _850 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1832 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1832] == mem[_1832]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1832]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2010] == mem[_2010 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2010 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _820 = mem[64]
                mem[mem[64]] = 128
                _858 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _858:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _858) + 160
                _1672 = mem[96]
                mem[mem[64] + (32 * _858) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _858) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _858) + 192
                while idx < _1672:
                    mem[u] = t + -_820 + -(32 * _858) - 192
                    _2352 = mem[s]
                    _2378 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2378:
                        mem[t + v + 32] = mem[_2352 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2378) > _2378:
                        mem[t + _2378 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_2378) + 32
                    u = u + 32
                    continue 
                mem[_820 + 64] = t - _820
                _2377 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2377] = mem[(32 * stor2.length) + 160 len 32 * _2377]
                mem[_820 + 96] = t + (32 * _2377) + -_820 + 32
                _2768 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2377) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2377) + 64 len 32 * _2768] = mem[(64 * stor2.length) + 192 len 32 * _2768]
                return memory
                  from mem[64]
                   len t + (32 * _2377) + (32 * _2768) + -mem[64] + 64
            mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            if stor2.length > test266151307():
                revert with 'NH{q', 65
            mem[(98 * stor2.length) + 192] = stor2.length
            mem[64] = (131 * stor2.length) + 224
            if not stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _851 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _868 = mem[_851]
                    require mem[_851] <= test266151307()
                    require _851 + mem[_851] + 31 < _851 + return_data.size
                    _880 = mem[_851 + mem[_851]]
                    if mem[_851 + mem[_851]] > test266151307():
                        revert with 'NH{q', 65
                    if _851 + ceil32(return_data.size) + ceil32(ceil32(mem[_851 + mem[_851]])) + 1 > test266151307() or ceil32(ceil32(mem[_851 + mem[_851]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _851 + ceil32(return_data.size) + ceil32(ceil32(mem[_851 + mem[_851]])) + 1
                    mem[_851 + ceil32(return_data.size)] = _880
                    require _868 + _880 + 32 <= return_data.size
                    s = 0
                    while s < _880:
                        mem[_851 + ceil32(return_data.size) + s + 32] = mem[_851 + _868 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_880) <= _880:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _851 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1825] == mem[_1825]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1825]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1993] == mem[_1993 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1993 + 31 len 1]
                    else:
                        mem[_851 + ceil32(return_data.size) + _880 + 32] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _851 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1833 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1833] == mem[_1833]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1833]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2012 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2012] == mem[_2012 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2012 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _824 = mem[64]
                mem[mem[64]] = 128
                _859 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _859:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _859) + 160
                _1673 = mem[96]
                mem[mem[64] + (32 * _859) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _859) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _859) + 192
                while idx < _1673:
                    mem[u] = t + -_824 + -(32 * _859) - 192
                    _2353 = mem[s]
                    _2380 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2380:
                        mem[t + v + 32] = mem[_2353 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2380) > _2380:
                        mem[t + _2380 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_2380) + 32
                    u = u + 32
                    continue 
                mem[_824 + 64] = t - _824
                _2379 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2379] = mem[(32 * stor2.length) + 160 len 32 * _2379]
                mem[_824 + 96] = t + (32 * _2379) + -_824 + 32
                _2769 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2379) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2379) + 64 len 32 * _2769] = mem[(64 * stor2.length) + 192 len 32 * _2769]
                return memory
                  from mem[64]
                   len t + (32 * _2379) + (32 * _2769) + -mem[64] + 64
            mem[(98 * stor2.length) + 224 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _852 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _869 = mem[_852]
                require mem[_852] <= test266151307()
                require _852 + mem[_852] + 31 < _852 + return_data.size
                _881 = mem[_852 + mem[_852]]
                if mem[_852 + mem[_852]] > test266151307():
                    revert with 'NH{q', 65
                if _852 + ceil32(return_data.size) + ceil32(ceil32(mem[_852 + mem[_852]])) + 1 > test266151307() or ceil32(ceil32(mem[_852 + mem[_852]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _852 + ceil32(return_data.size) + ceil32(ceil32(mem[_852 + mem[_852]])) + 1
                mem[_852 + ceil32(return_data.size)] = _881
                require _869 + _881 + 32 <= return_data.size
                s = 0
                while s < _881:
                    mem[_852 + ceil32(return_data.size) + s + 32] = mem[_852 + _869 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_881) <= _881:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _852 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1826] == mem[_1826]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1826]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1994 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1994] == mem[_1994 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1994 + 31 len 1]
                else:
                    mem[_852 + ceil32(return_data.size) + _881 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _852 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1834] == mem[_1834]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1834]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2014] == mem[_2014 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2014 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _828 = mem[64]
            mem[mem[64]] = 128
            _860 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _860:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _860) + 160
            _1674 = mem[96]
            mem[mem[64] + (32 * _860) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _860) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _860) + 192
            while idx < _1674:
                mem[u] = t + -_828 + -(32 * _860) - 192
                _2354 = mem[s]
                _2382 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2382:
                    mem[t + v + 32] = mem[_2354 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2382) > _2382:
                    mem[t + _2382 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2382) + 32
                u = u + 32
                continue 
            mem[_828 + 64] = t - _828
            _2381 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2381] = mem[(32 * stor2.length) + 160 len 32 * _2381]
            mem[_828 + 96] = t + (32 * _2381) + -_828 + 32
            _2770 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2381) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2381) + 64 len 32 * _2770] = mem[(64 * stor2.length) + 192 len 32 * _2770]
            return memory
              from mem[64]
               len t + (32 * _2381) + (32 * _2770) + -mem[64] + 64
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        mem[(64 * stor2.length) + 160] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 'NH{q', 65
            mem[(98 * stor2.length) + 192] = stor2.length
            mem[64] = (131 * stor2.length) + 224
            if not stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _853 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _870 = mem[_853]
                    require mem[_853] <= test266151307()
                    require _853 + mem[_853] + 31 < _853 + return_data.size
                    _882 = mem[_853 + mem[_853]]
                    if mem[_853 + mem[_853]] > test266151307():
                        revert with 'NH{q', 65
                    if _853 + ceil32(return_data.size) + ceil32(ceil32(mem[_853 + mem[_853]])) + 1 > test266151307() or ceil32(ceil32(mem[_853 + mem[_853]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _853 + ceil32(return_data.size) + ceil32(ceil32(mem[_853 + mem[_853]])) + 1
                    mem[_853 + ceil32(return_data.size)] = _882
                    require _870 + _882 + 32 <= return_data.size
                    s = 0
                    while s < _882:
                        mem[_853 + ceil32(return_data.size) + s + 32] = mem[_853 + _870 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_882) <= _882:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _853 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1827 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1827] == mem[_1827]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1827]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1995] == mem[_1995 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1995 + 31 len 1]
                    else:
                        mem[_853 + ceil32(return_data.size) + _882 + 32] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _853 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1835] == mem[_1835]
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1835]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2016 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2016] == mem[_2016 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2016 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _832 = mem[64]
                mem[mem[64]] = 128
                _861 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _861:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _861) + 160
                _1675 = mem[96]
                mem[mem[64] + (32 * _861) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _861) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _861) + 192
                while idx < _1675:
                    mem[u] = t + -_832 + -(32 * _861) - 192
                    _2355 = mem[s]
                    _2384 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2384:
                        mem[t + v + 32] = mem[_2355 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2384) > _2384:
                        mem[t + _2384 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_2384) + 32
                    u = u + 32
                    continue 
                mem[_832 + 64] = t - _832
                _2383 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2383] = mem[(32 * stor2.length) + 160 len 32 * _2383]
                mem[_832 + 96] = t + (32 * _2383) + -_832 + 32
                _2771 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2383) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2383) + 64 len 32 * _2771] = mem[(64 * stor2.length) + 192 len 32 * _2771]
                return memory
                  from mem[64]
                   len t + (32 * _2383) + (32 * _2771) + -mem[64] + 64
            mem[(98 * stor2.length) + 224 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _854 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _871 = mem[_854]
                require mem[_854] <= test266151307()
                require _854 + mem[_854] + 31 < _854 + return_data.size
                _883 = mem[_854 + mem[_854]]
                if mem[_854 + mem[_854]] > test266151307():
                    revert with 'NH{q', 65
                if _854 + ceil32(return_data.size) + ceil32(ceil32(mem[_854 + mem[_854]])) + 1 > test266151307() or ceil32(ceil32(mem[_854 + mem[_854]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _854 + ceil32(return_data.size) + ceil32(ceil32(mem[_854 + mem[_854]])) + 1
                mem[_854 + ceil32(return_data.size)] = _883
                require _871 + _883 + 32 <= return_data.size
                s = 0
                while s < _883:
                    mem[_854 + ceil32(return_data.size) + s + 32] = mem[_854 + _871 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_883) <= _883:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _854 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1828 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1828] == mem[_1828]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1828]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1996 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1996] == mem[_1996 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1996 + 31 len 1]
                else:
                    mem[_854 + ceil32(return_data.size) + _883 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _854 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1836] == mem[_1836]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1836]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2018 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2018] == mem[_2018 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2018 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _836 = mem[64]
            mem[mem[64]] = 128
            _862 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _862:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_836 + 32] = (32 * _862) + 160
            _1676 = mem[96]
            mem[_836 + (32 * _862) + 160] = mem[96]
            idx = 0
            s = 128
            t = _836 + (32 * _862) + (32 * mem[96]) + 192
            u = _836 + (32 * _862) + 192
            while idx < _1676:
                mem[u] = t + -_836 + -(32 * _862) - 192
                _2356 = mem[s]
                _2386 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2386:
                    mem[t + v + 32] = mem[_2356 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2386) > _2386:
                    mem[t + _2386 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2386) + 32
                u = u + 32
                continue 
            mem[_836 + 64] = t - _836
            _2385 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2385] = mem[(32 * stor2.length) + 160 len 32 * _2385]
            mem[_836 + 96] = t + (32 * _2385) + -_836 + 32
            _2772 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2385) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2385) + 64 len 32 * _2772] = mem[(64 * stor2.length) + 192 len 32 * _2772]
            return memory
              from mem[64]
               len t + (32 * _2385) + (32 * _2772) + -mem[64] + 64
        mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        mem[(98 * stor2.length) + 192] = stor2.length
        mem[64] = (131 * stor2.length) + 224
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _855 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _872 = mem[_855]
                require mem[_855] <= test266151307()
                require _855 + mem[_855] + 31 < _855 + return_data.size
                _884 = mem[_855 + mem[_855]]
                if mem[_855 + mem[_855]] > test266151307():
                    revert with 'NH{q', 65
                if _855 + ceil32(return_data.size) + ceil32(ceil32(mem[_855 + mem[_855]])) + 1 > test266151307() or ceil32(ceil32(mem[_855 + mem[_855]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _855 + ceil32(return_data.size) + ceil32(ceil32(mem[_855 + mem[_855]])) + 1
                mem[_855 + ceil32(return_data.size)] = _884
                require _872 + _884 + 32 <= return_data.size
                s = 0
                while s < _884:
                    mem[_855 + ceil32(return_data.size) + s + 32] = mem[_855 + _872 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_884) <= _884:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _855 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1829] == mem[_1829]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1829]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1997] == mem[_1997 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1997 + 31 len 1]
                else:
                    mem[_855 + ceil32(return_data.size) + _884 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _855 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1837 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1837] == mem[_1837]
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1837]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2020 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2020] == mem[_2020 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2020 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _840 = mem[64]
            mem[mem[64]] = 128
            _863 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _863:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_840 + 32] = (32 * _863) + 160
            _1677 = mem[96]
            mem[_840 + (32 * _863) + 160] = mem[96]
            idx = 0
            s = 128
            t = _840 + (32 * _863) + (32 * mem[96]) + 192
            u = _840 + (32 * _863) + 192
            while idx < _1677:
                mem[u] = t + -_840 + -(32 * _863) - 192
                _2357 = mem[s]
                _2388 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2388:
                    mem[t + v + 32] = mem[_2357 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2388) > _2388:
                    mem[t + _2388 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2388) + 32
                u = u + 32
                continue 
            mem[_840 + 64] = t - _840
            _2387 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2387] = mem[(32 * stor2.length) + 160 len 32 * _2387]
            mem[_840 + 96] = t + (32 * _2387) + -_840 + 32
            _2773 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2387) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2387) + 64 len 32 * _2773] = mem[(64 * stor2.length) + 192 len 32 * _2773]
            return memory
              from mem[64]
               len t + (32 * _2387) + (32 * _2773) + -mem[64] + 64
        mem[(98 * stor2.length) + 224 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _856 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _873 = mem[_856]
            require mem[_856] <= test266151307()
            require _856 + mem[_856] + 31 < _856 + return_data.size
            _885 = mem[_856 + mem[_856]]
            if mem[_856 + mem[_856]] > test266151307():
                revert with 'NH{q', 65
            if _856 + ceil32(return_data.size) + ceil32(ceil32(mem[_856 + mem[_856]])) + 1 > test266151307() or ceil32(ceil32(mem[_856 + mem[_856]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _856 + ceil32(return_data.size) + ceil32(ceil32(mem[_856 + mem[_856]])) + 1
            mem[_856 + ceil32(return_data.size)] = _885
            require _873 + _885 + 32 <= return_data.size
            s = 0
            while s < _885:
                mem[_856 + ceil32(return_data.size) + s + 32] = mem[_856 + _873 + s + 32]
                s = s + 32
                continue 
            if ceil32(_885) <= _885:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _856 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1830] == mem[_1830]
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1830]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1998] == mem[_1998 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_1998 + 31 len 1]
            else:
                mem[_856 + ceil32(return_data.size) + _885 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _856 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1838] == mem[_1838]
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1838]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2022 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2022] == mem[_2022 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2022 + 31 len 1]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if idx >= mem[(98 * stor2.length) + 192]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _844 = mem[64]
        mem[mem[64]] = 128
        _864 = mem[(98 * stor2.length) + 192]
        mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
        idx = 0
        s = (98 * stor2.length) + 224
        t = mem[64] + 160
        while idx < _864:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _864) + 160
        _1678 = mem[96]
        mem[mem[64] + (32 * _864) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _864) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _864) + 192
        while idx < _1678:
            mem[u] = t + -_844 + -(32 * _864) - 192
            _2358 = mem[s]
            _2390 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2390:
                mem[t + v + 32] = mem[_2358 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2390) > _2390:
                mem[t + _2390 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2390) + 32
            u = u + 32
            continue 
        mem[_844 + 64] = t - _844
        _2389 = mem[(32 * stor2.length) + 128]
        mem[t] = mem[(32 * stor2.length) + 128]
        mem[t + 32 len 32 * _2389] = mem[(32 * stor2.length) + 160 len 32 * _2389]
        mem[_844 + 96] = t + (32 * _2389) + -_844 + 32
        _2774 = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _2389) + 32] = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _2389) + 64 len 32 * _2774] = mem[(64 * stor2.length) + 192 len 32 * _2774]
        return memory
          from mem[64]
           len t + (32 * _2389) + (32 * _2774) + -mem[64] + 64
    mem[128] = 96
    s = 128
    idx = stor2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    _848 = mem[64]
    mem[mem[64]] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        _865 = mem[64] + (32 * stor2.length) + 32
        mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 'NH{q', 65
            _875 = mem[64] + (64 * stor2.length) + 64
            mem[mem[64] + (64 * stor2.length) + 64] = stor2.length
            mem[64] = mem[64] + (98 * stor2.length) + 96
            if not stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1679 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1703 = mem[_1679]
                    require mem[_1679] <= test266151307()
                    require _1679 + mem[_1679] + 31 < _1679 + return_data.size
                    _1751 = mem[_1679 + mem[_1679]]
                    if mem[_1679 + mem[_1679]] > test266151307():
                        revert with 'NH{q', 65
                    if _1679 + ceil32(return_data.size) + ceil32(ceil32(mem[_1679 + mem[_1679]])) + 1 > test266151307() or ceil32(ceil32(mem[_1679 + mem[_1679]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1679 + ceil32(return_data.size) + ceil32(ceil32(mem[_1679 + mem[_1679]])) + 1
                    mem[_1679 + ceil32(return_data.size)] = _1751
                    require _1703 + _1751 + 32 <= return_data.size
                    s = 0
                    while s < _1751:
                        mem[_1679 + ceil32(return_data.size) + s + 32] = mem[_1679 + _1703 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1751) <= _1751:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1679 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2511] == mem[_2511]
                        if idx >= mem[_848]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _848 + 32] = mem[_2511]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2655] == mem[_2655 + 31 len 1]
                        if idx >= mem[_865]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _865 + 32] = mem[_2655 + 31 len 1]
                    else:
                        mem[_1679 + ceil32(return_data.size) + _1751 + 32] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1679 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2519] == mem[_2519]
                        if idx >= mem[_848]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _848 + 32] = mem[_2519]
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2664] == mem[_2664 + 31 len 1]
                        if idx >= mem[_865]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _865 + 32] = mem[_2664 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    if idx >= mem[_875]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _875 + 32] = stor2[idx]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1639 = mem[64]
                mem[mem[64]] = 128
                _1687 = mem[_875]
                mem[mem[64] + 128] = mem[_875]
                idx = 0
                s = _875 + 32
                t = mem[64] + 160
                while idx < _1687:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _1687) + 160
                _2391 = mem[96]
                mem[mem[64] + (32 * _1687) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _1687) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _1687) + 192
                while idx < _2391:
                    mem[u] = t + -_1639 + -(32 * _1687) - 192
                    _2759 = mem[s]
                    _2776 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2776:
                        mem[t + v + 32] = mem[_2759 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2776) > _2776:
                        mem[t + _2776 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_2776) + 32
                    u = u + 32
                    continue 
                mem[_1639 + 64] = t - _1639
                _2775 = mem[_848]
                mem[t] = mem[_848]
                mem[t + 32 len 32 * _2775] = mem[_848 + 32 len 32 * _2775]
                mem[_1639 + 96] = t + (32 * _2775) + -_1639 + 32
                _2879 = mem[_865]
                mem[t + (32 * _2775) + 32] = mem[_865]
                mem[t + (32 * _2775) + 64 len 32 * _2879] = mem[_865 + 32 len 32 * _2879]
                return memory
                  from mem[64]
                   len t + (32 * _2775) + (32 * _2879) + -mem[64] + 64
            mem[_875 + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1680 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1704 = mem[_1680]
                require mem[_1680] <= test266151307()
                require _1680 + mem[_1680] + 31 < _1680 + return_data.size
                _1752 = mem[_1680 + mem[_1680]]
                if mem[_1680 + mem[_1680]] > test266151307():
                    revert with 'NH{q', 65
                if _1680 + ceil32(return_data.size) + ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1 > test266151307() or ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1680 + ceil32(return_data.size) + ceil32(ceil32(mem[_1680 + mem[_1680]])) + 1
                mem[_1680 + ceil32(return_data.size)] = _1752
                require _1704 + _1752 + 32 <= return_data.size
                s = 0
                while s < _1752:
                    mem[_1680 + ceil32(return_data.size) + s + 32] = mem[_1680 + _1704 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1752) <= _1752:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1680 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2512] == mem[_2512]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2512]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2656 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2656] == mem[_2656 + 31 len 1]
                    if idx >= mem[_865]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _865 + 32] = mem[_2656 + 31 len 1]
                else:
                    mem[_1680 + ceil32(return_data.size) + _1752 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1680 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2520] == mem[_2520]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2520]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2666 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2666] == mem[_2666 + 31 len 1]
                    if idx >= mem[_865]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _865 + 32] = mem[_2666 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[_875]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _875 + 32] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1643 = mem[64]
            mem[mem[64]] = 128
            _1688 = mem[_875]
            mem[mem[64] + 128] = mem[_875]
            idx = 0
            s = _875 + 32
            t = mem[64] + 160
            while idx < _1688:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1688) + 160
            _2392 = mem[96]
            mem[mem[64] + (32 * _1688) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1688) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1688) + 192
            while idx < _2392:
                mem[u] = t + -_1643 + -(32 * _1688) - 192
                _2760 = mem[s]
                _2778 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2778:
                    mem[t + v + 32] = mem[_2760 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2778) > _2778:
                    mem[t + _2778 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2778) + 32
                u = u + 32
                continue 
            mem[_1643 + 64] = t - _1643
            _2777 = mem[_848]
            mem[t] = mem[_848]
            mem[t + 32 len 32 * _2777] = mem[_848 + 32 len 32 * _2777]
            mem[_1643 + 96] = t + (32 * _2777) + -_1643 + 32
            _2880 = mem[_865]
            mem[t + (32 * _2777) + 32] = mem[_865]
            mem[t + (32 * _2777) + 64 len 32 * _2880] = mem[_865 + 32 len 32 * _2880]
            return memory
              from mem[64]
               len t + (32 * _2777) + (32 * _2880) + -mem[64] + 64
        mem[mem[64] + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        mem[mem[64] + (64 * stor2.length) + 64] = stor2.length
        mem[64] = mem[64] + (98 * stor2.length) + 96
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1681 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1705 = mem[_1681]
                require mem[_1681] <= test266151307()
                require _1681 + mem[_1681] + 31 < _1681 + return_data.size
                _1753 = mem[_1681 + mem[_1681]]
                if mem[_1681 + mem[_1681]] > test266151307():
                    revert with 'NH{q', 65
                if _1681 + ceil32(return_data.size) + ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1 > test266151307() or ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1681 + ceil32(return_data.size) + ceil32(ceil32(mem[_1681 + mem[_1681]])) + 1
                mem[_1681 + ceil32(return_data.size)] = _1753
                require _1705 + _1753 + 32 <= return_data.size
                s = 0
                while s < _1753:
                    mem[_1681 + ceil32(return_data.size) + s + 32] = mem[_1681 + _1705 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1753) <= _1753:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1681 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2513] == mem[_2513]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2513]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2657] == mem[_2657 + 31 len 1]
                    if idx >= mem[_865]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _865 + 32] = mem[_2657 + 31 len 1]
                else:
                    mem[_1681 + ceil32(return_data.size) + _1753 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1681 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2521] == mem[_2521]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2521]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2668] == mem[_2668 + 31 len 1]
                    if idx >= mem[_865]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _865 + 32] = mem[_2668 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[_865 + (32 * stor2.length) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _865 + (32 * stor2.length) + 64] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1647 = mem[64]
            mem[mem[64]] = 128
            _1689 = mem[_865 + (32 * stor2.length) + 32]
            mem[mem[64] + 128] = mem[_865 + (32 * stor2.length) + 32]
            idx = 0
            s = _865 + (32 * stor2.length) + 64
            t = mem[64] + 160
            while idx < _1689:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1689) + 160
            _2393 = mem[96]
            mem[mem[64] + (32 * _1689) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1689) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1689) + 192
            while idx < _2393:
                mem[u] = t + -_1647 + -(32 * _1689) - 192
                _2761 = mem[s]
                _2780 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2780:
                    mem[t + v + 32] = mem[_2761 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2780) > _2780:
                    mem[t + _2780 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2780) + 32
                u = u + 32
                continue 
            mem[_1647 + 64] = t - _1647
            _2779 = mem[_848]
            mem[t] = mem[_848]
            mem[t + 32 len 32 * _2779] = mem[_848 + 32 len 32 * _2779]
            mem[_1647 + 96] = t + (32 * _2779) + -_1647 + 32
            _2881 = mem[_865]
            mem[t + (32 * _2779) + 32] = mem[_865]
            mem[t + (32 * _2779) + 64 len 32 * _2881] = mem[_865 + 32 len 32 * _2881]
            return memory
              from mem[64]
               len t + (32 * _2779) + (32 * _2881) + -mem[64] + 64
        mem[_865 + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1682 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1706 = mem[_1682]
            require mem[_1682] <= test266151307()
            require _1682 + mem[_1682] + 31 < _1682 + return_data.size
            _1754 = mem[_1682 + mem[_1682]]
            if mem[_1682 + mem[_1682]] > test266151307():
                revert with 'NH{q', 65
            if _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 > test266151307() or ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1682 + ceil32(return_data.size) + ceil32(ceil32(mem[_1682 + mem[_1682]])) + 1
            mem[_1682 + ceil32(return_data.size)] = _1754
            require _1706 + _1754 + 32 <= return_data.size
            s = 0
            while s < _1754:
                mem[_1682 + ceil32(return_data.size) + s + 32] = mem[_1682 + _1706 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1754) <= _1754:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1682 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2514] == mem[_2514]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2514]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2658] == mem[_2658 + 31 len 1]
                if idx >= mem[_865]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _865 + 32] = mem[_2658 + 31 len 1]
            else:
                mem[_1682 + ceil32(return_data.size) + _1754 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1682 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2522] == mem[_2522]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2522]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2670 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2670] == mem[_2670 + 31 len 1]
                if idx >= mem[_865]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _865 + 32] = mem[_2670 + 31 len 1]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if idx >= mem[_865 + (32 * stor2.length) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _865 + (32 * stor2.length) + 64] = stor2[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1651 = mem[64]
        mem[mem[64]] = 128
        _1690 = mem[_865 + (32 * stor2.length) + 32]
        mem[mem[64] + 128] = mem[_865 + (32 * stor2.length) + 32]
        idx = 0
        s = _865 + (32 * stor2.length) + 64
        t = mem[64] + 160
        while idx < _1690:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1651 + 32] = (32 * _1690) + 160
        _2394 = mem[96]
        mem[_1651 + (32 * _1690) + 160] = mem[96]
        idx = 0
        s = 128
        t = _1651 + (32 * _1690) + (32 * mem[96]) + 192
        u = _1651 + (32 * _1690) + 192
        while idx < _2394:
            mem[u] = t + -_1651 + -(32 * _1690) - 192
            _2762 = mem[s]
            _2782 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2782:
                mem[t + v + 32] = mem[_2762 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2782) > _2782:
                mem[t + _2782 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2782) + 32
            u = u + 32
            continue 
        mem[_1651 + 64] = t - _1651
        _2781 = mem[_848]
        mem[t] = mem[_848]
        mem[t + 32 len 32 * _2781] = mem[_848 + 32 len 32 * _2781]
        mem[_1651 + 96] = t + (32 * _2781) + -_1651 + 32
        _2882 = mem[_865]
        mem[t + (32 * _2781) + 32] = mem[_865]
        mem[t + (32 * _2781) + 64 len 32 * _2882] = mem[_865 + 32 len 32 * _2882]
        return memory
          from mem[64]
           len t + (32 * _2781) + (32 * _2882) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 'NH{q', 65
        mem[mem[64] + (64 * stor2.length) + 64] = stor2.length
        mem[64] = mem[64] + (98 * stor2.length) + 96
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1683 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1707 = mem[_1683]
                require mem[_1683] <= test266151307()
                require _1683 + mem[_1683] + 31 < _1683 + return_data.size
                _1755 = mem[_1683 + mem[_1683]]
                if mem[_1683 + mem[_1683]] > test266151307():
                    revert with 'NH{q', 65
                if _1683 + ceil32(return_data.size) + ceil32(ceil32(mem[_1683 + mem[_1683]])) + 1 > test266151307() or ceil32(ceil32(mem[_1683 + mem[_1683]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1683 + ceil32(return_data.size) + ceil32(ceil32(mem[_1683 + mem[_1683]])) + 1
                mem[_1683 + ceil32(return_data.size)] = _1755
                require _1707 + _1755 + 32 <= return_data.size
                s = 0
                while s < _1755:
                    mem[_1683 + ceil32(return_data.size) + s + 32] = mem[_1683 + _1707 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1755) <= _1755:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1683 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2515] == mem[_2515]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2515]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2659] == mem[_2659 + 31 len 1]
                    if idx >= mem[_848 + (32 * stor2.length) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2659 + 31 len 1]
                else:
                    mem[_1683 + ceil32(return_data.size) + _1755 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1683 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2523] == mem[_2523]
                    if idx >= mem[_848]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + 32] = mem[_2523]
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2672] == mem[_2672 + 31 len 1]
                    if idx >= mem[_848 + (32 * stor2.length) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2672 + 31 len 1]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if idx >= mem[_848 + (64 * stor2.length) + 64]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + (64 * stor2.length) + 96] = stor2[idx]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1655 = mem[64]
            mem[mem[64]] = 128
            _1691 = mem[_848 + (64 * stor2.length) + 64]
            mem[mem[64] + 128] = mem[_848 + (64 * stor2.length) + 64]
            idx = 0
            s = _848 + (64 * stor2.length) + 96
            t = mem[64] + 160
            while idx < _1691:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1691) + 160
            _2395 = mem[96]
            mem[mem[64] + (32 * _1691) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1691) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1691) + 192
            while idx < _2395:
                mem[u] = t + -_1655 + -(32 * _1691) - 192
                _2763 = mem[s]
                _2784 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2784:
                    mem[t + v + 32] = mem[_2763 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2784) > _2784:
                    mem[t + _2784 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2784) + 32
                u = u + 32
                continue 
            mem[_1655 + 64] = t - _1655
            _2783 = mem[_848]
            mem[t] = mem[_848]
            mem[t + 32 len 32 * _2783] = mem[_848 + 32 len 32 * _2783]
            mem[_1655 + 96] = t + (32 * _2783) + -_1655 + 32
            _2883 = mem[_848 + (32 * stor2.length) + 32]
            mem[t + (32 * _2783) + 32] = mem[_848 + (32 * stor2.length) + 32]
            mem[t + (32 * _2783) + 64 len 32 * _2883] = mem[_848 + (32 * stor2.length) + 64 len 32 * _2883]
            return memory
              from mem[64]
               len t + (32 * _2783) + (32 * _2883) + -mem[64] + 64
        mem[_848 + (64 * stor2.length) + 96 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1684 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1708 = mem[_1684]
            require mem[_1684] <= test266151307()
            require _1684 + mem[_1684] + 31 < _1684 + return_data.size
            _1756 = mem[_1684 + mem[_1684]]
            if mem[_1684 + mem[_1684]] > test266151307():
                revert with 'NH{q', 65
            if _1684 + ceil32(return_data.size) + ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1 > test266151307() or ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1684 + ceil32(return_data.size) + ceil32(ceil32(mem[_1684 + mem[_1684]])) + 1
            mem[_1684 + ceil32(return_data.size)] = _1756
            require _1708 + _1756 + 32 <= return_data.size
            s = 0
            while s < _1756:
                mem[_1684 + ceil32(return_data.size) + s + 32] = mem[_1684 + _1708 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1756) <= _1756:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1684 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2516 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2516] == mem[_2516]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2516]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2660] == mem[_2660 + 31 len 1]
                if idx >= mem[_848 + (32 * stor2.length) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2660 + 31 len 1]
            else:
                mem[_1684 + ceil32(return_data.size) + _1756 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1684 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2524] == mem[_2524]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2524]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2674] == mem[_2674 + 31 len 1]
                if idx >= mem[_848 + (32 * stor2.length) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2674 + 31 len 1]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if idx >= mem[_848 + (64 * stor2.length) + 64]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + (64 * stor2.length) + 96] = stor2[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1659 = mem[64]
        mem[mem[64]] = 128
        _1692 = mem[_848 + (64 * stor2.length) + 64]
        mem[mem[64] + 128] = mem[_848 + (64 * stor2.length) + 64]
        idx = 0
        s = _848 + (64 * stor2.length) + 96
        t = mem[64] + 160
        while idx < _1692:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1692) + 160
        _2396 = mem[96]
        mem[mem[64] + (32 * _1692) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1692) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1692) + 192
        while idx < _2396:
            mem[u] = t + -_1659 + -(32 * _1692) - 192
            _2764 = mem[s]
            _2786 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2786:
                mem[t + v + 32] = mem[_2764 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2786) > _2786:
                mem[t + _2786 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2786) + 32
            u = u + 32
            continue 
        mem[_1659 + 64] = t - _1659
        _2785 = mem[_848]
        mem[t] = mem[_848]
        mem[t + 32 len 32 * _2785] = mem[_848 + 32 len 32 * _2785]
        mem[_1659 + 96] = t + (32 * _2785) + -_1659 + 32
        _2884 = mem[_848 + (32 * stor2.length) + 32]
        mem[t + (32 * _2785) + 32] = mem[_848 + (32 * stor2.length) + 32]
        mem[t + (32 * _2785) + 64 len 32 * _2884] = mem[_848 + (32 * stor2.length) + 64 len 32 * _2884]
        return memory
          from mem[64]
           len t + (32 * _2785) + (32 * _2884) + -mem[64] + 64
    mem[mem[64] + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (64 * stor2.length) + 64] = stor2.length
    mem[64] = mem[64] + (98 * stor2.length) + 96
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1685 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1709 = mem[_1685]
            require mem[_1685] <= test266151307()
            require _1685 + mem[_1685] + 31 < _1685 + return_data.size
            _1757 = mem[_1685 + mem[_1685]]
            if mem[_1685 + mem[_1685]] > test266151307():
                revert with 'NH{q', 65
            if _1685 + ceil32(return_data.size) + ceil32(ceil32(mem[_1685 + mem[_1685]])) + 1 > test266151307() or ceil32(ceil32(mem[_1685 + mem[_1685]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1685 + ceil32(return_data.size) + ceil32(ceil32(mem[_1685 + mem[_1685]])) + 1
            mem[_1685 + ceil32(return_data.size)] = _1757
            require _1709 + _1757 + 32 <= return_data.size
            s = 0
            while s < _1757:
                mem[_1685 + ceil32(return_data.size) + s + 32] = mem[_1685 + _1709 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1757) <= _1757:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1685 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2517] == mem[_2517]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2517]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2661] == mem[_2661 + 31 len 1]
                if idx >= mem[_848 + (32 * stor2.length) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2661 + 31 len 1]
            else:
                mem[_1685 + ceil32(return_data.size) + _1757 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1685 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2525] == mem[_2525]
                if idx >= mem[_848]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + 32] = mem[_2525]
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2676] == mem[_2676 + 31 len 1]
                if idx >= mem[_848 + (32 * stor2.length) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2676 + 31 len 1]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if idx >= mem[_848 + (64 * stor2.length) + 64]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + (64 * stor2.length) + 96] = stor2[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1663 = mem[64]
        mem[mem[64]] = 128
        _1693 = mem[_848 + (64 * stor2.length) + 64]
        mem[mem[64] + 128] = mem[_848 + (64 * stor2.length) + 64]
        idx = 0
        s = _848 + (64 * stor2.length) + 96
        t = mem[64] + 160
        while idx < _1693:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1693) + 160
        _2397 = mem[96]
        mem[mem[64] + (32 * _1693) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1693) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1693) + 192
        while idx < _2397:
            mem[u] = t + -_1663 + -(32 * _1693) - 192
            _2765 = mem[s]
            _2788 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2788:
                mem[t + v + 32] = mem[_2765 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2788) > _2788:
                mem[t + _2788 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2788) + 32
            u = u + 32
            continue 
        mem[_1663 + 64] = t - _1663
        _2787 = mem[_848]
        mem[t] = mem[_848]
        mem[t + 32 len 32 * _2787] = mem[_848 + 32 len 32 * _2787]
        mem[_1663 + 96] = t + (32 * _2787) + -_1663 + 32
        _2885 = mem[_848 + (32 * stor2.length) + 32]
        mem[t + (32 * _2787) + 32] = mem[_848 + (32 * stor2.length) + 32]
        mem[t + (32 * _2787) + 64 len 32 * _2885] = mem[_848 + (32 * stor2.length) + 64 len 32 * _2885]
        return memory
          from mem[64]
           len t + (32 * _2787) + (32 * _2885) + -mem[64] + 64
    mem[_848 + (64 * stor2.length) + 96 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[idx])
        staticcall stor2[idx].0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1686 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1710 = mem[_1686]
        require mem[_1686] <= test266151307()
        require _1686 + mem[_1686] + 31 < _1686 + return_data.size
        _1758 = mem[_1686 + mem[_1686]]
        if mem[_1686 + mem[_1686]] > test266151307():
            revert with 'NH{q', 65
        if _1686 + ceil32(return_data.size) + ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1 > test266151307() or ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1686 + ceil32(return_data.size) + ceil32(ceil32(mem[_1686 + mem[_1686]])) + 1
        mem[_1686 + ceil32(return_data.size)] = _1758
        require _1710 + _1758 + 32 <= return_data.size
        s = 0
        while s < _1758:
            mem[_1686 + ceil32(return_data.size) + s + 32] = mem[_1686 + _1710 + s + 32]
            s = s + 32
            continue 
        if ceil32(_1758) <= _1758:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1686 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2518] == mem[_2518]
            if idx >= mem[_848]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + 32] = mem[_2518]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2662 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2662] == mem[_2662 + 31 len 1]
            if idx >= mem[_848 + (32 * stor2.length) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2662 + 31 len 1]
        else:
            mem[_1686 + ceil32(return_data.size) + _1758 + 32] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1686 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2526] == mem[_2526]
            if idx >= mem[_848]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + 32] = mem[_2526]
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2678] == mem[_2678 + 31 len 1]
            if idx >= mem[_848 + (32 * stor2.length) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _848 + (32 * stor2.length) + 64] = mem[_2678 + 31 len 1]
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        if idx >= mem[_848 + (64 * stor2.length) + 64]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _848 + (64 * stor2.length) + 96] = stor2[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1667 = mem[64]
    mem[mem[64]] = 128
    _1694 = mem[_848 + (64 * stor2.length) + 64]
    mem[mem[64] + 128] = mem[_848 + (64 * stor2.length) + 64]
    idx = 0
    s = _848 + (64 * stor2.length) + 96
    t = mem[64] + 160
    while idx < _1694:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _1694) + 160
    _2398 = mem[96]
    mem[mem[64] + (32 * _1694) + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * _1694) + (32 * mem[96]) + 192
    u = mem[64] + (32 * _1694) + 192
    while idx < _2398:
        mem[u] = t + -_1667 + -(32 * _1694) - 192
        _2766 = mem[s]
        _2790 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2790:
            mem[t + v + 32] = mem[_2766 + v + 32]
            v = v + 32
            continue 
        if ceil32(_2790) > _2790:
            mem[t + _2790 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_2790) + 32
        u = u + 32
        continue 
    mem[_1667 + 64] = t - _1667
    _2789 = mem[_848]
    mem[t] = mem[_848]
    mem[t + 32 len 32 * _2789] = mem[_848 + 32 len 32 * _2789]
    mem[_1667 + 96] = t + (32 * _2789) + -_1667 + 32
    _2886 = mem[_848 + (32 * stor2.length) + 32]
    mem[t + (32 * _2789) + 32] = mem[_848 + (32 * stor2.length) + 32]
    mem[t + (32 * _2789) + 64 len 32 * _2886] = mem[_848 + (32 * stor2.length) + 64 len 32 * _2886]
    return memory
      from mem[64]
       len t + (32 * _2789) + (32 * _2886) + -mem[64] + 64
}



}
