contract main {




// =====================  Runtime code  =====================


address owner;
uint256 contractStatus;
array of address stor2;
uint256 stor3;

function owner() {
    return owner
}

function getContractStatus() {
    return contractStatus
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

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    contractStatus = arg1
    emit 0x71a66a33: msg.sender, arg1
}

function sub_d1997d8f(?) {
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

function deleteCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if 1 >= stor2.length:
        revert with 0, 'can not delete currency any more'
    if stor2.length < 1:
        revert with 0, 17
    idx = stor2.length - 1
    while idx:
        if idx >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if stor2[idx] == arg1:
            if stor2.length < 1:
                revert with 0, 17
            if stor2.length < 1:
                revert with 0, 17
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if idx != stor2.length - 1:
                if idx >= stor2.length:
                    revert with 0, 50
                stor2[idx] = stor2[stor2.length]
            stor2[stor2.length] = 0
            if not stor2.length:
                revert with 0, 49
            mem[0] = 2
            stor2[stor2.length] = 0
            stor2.length--
        if idx:
            idx = idx - 1
            continue 
        emit 0xe6639113: arg1
    emit 0xe6639113: arg1
}

function sub_72a4fa2f(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if stor3 == arg3:
        if arg1 > 0:
            if arg1 < stor2.length:
                require ext_code.size(stor2[arg1])
                staticcall stor2[arg1].0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= arg2:
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e49d9c20(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if stor3 == arg4:
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
                if ext_call.return_data[0] >= arg2:
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ce334e5d(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if stor3 == arg4:
        if arg1 > 0:
            if arg1 < stor2.length:
                require ext_code.size(stor2[arg1])
                staticcall stor2[arg1].0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= arg3:
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1 >= stor2.length:
                        revert with 0, 50
                    require ext_code.size(stor2[arg1])
                    call stor2[arg1].0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getCurrencyList() {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 0, 65
            mem[(64 * stor2.length) + 160] = stor2.length
            if not stor2.length:
                if stor2.length > test266151307():
                    revert with 0, 65
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
                        _857 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _882 = mem[_857]
                        require mem[_857] <= test266151307()
                        require _857 + mem[_857] + 31 < _857 + return_data.size
                        _909 = mem[_857 + mem[_857]]
                        if mem[_857 + mem[_857]] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_857 + mem[_857]])) + 1 < 0 or _857 + ceil32(return_data.size) + ceil32(ceil32(mem[_857 + mem[_857]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _857 + ceil32(return_data.size) + ceil32(ceil32(mem[_857 + mem[_857]])) + 1
                        mem[_857 + ceil32(return_data.size)] = _909
                        require _882 + _909 + 32 <= return_data.size
                        s = 0
                        while s < _909:
                            mem[s + _857 + ceil32(return_data.size) + 32] = mem[s + _857 + _882 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_909) <= _909:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _857 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[(32 * stor2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1840]
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2023 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2023] == mem[_2023 + 31 len 1]
                            if idx >= mem[(64 * stor2.length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2023 + 31 len 1]
                        else:
                            mem[_909 + _857 + ceil32(return_data.size) + 32] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _857 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[(32 * stor2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1841]
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2024 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2024] == mem[_2024 + 31 len 1]
                            if idx >= mem[(64 * stor2.length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2024 + 31 len 1]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        if idx >= mem[(98 * stor2.length) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _816 = mem[64]
                    mem[mem[64]] = 128
                    _848 = mem[(98 * stor2.length) + 192]
                    mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                    idx = 0
                    s = (98 * stor2.length) + 224
                    t = mem[64] + 160
                    while idx < _848:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _848) + 160
                    _1623 = mem[96]
                    mem[mem[64] + (32 * _848) + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + (32 * _848) + (32 * mem[96]) + 192
                    u = mem[64] + (32 * _848) + 192
                    while idx < _1623:
                        mem[u] = t + -_816 + -(32 * _848) - 192
                        _2351 = mem[s]
                        _2352 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _2352:
                            mem[v + t + 32] = mem[v + _2351 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_2352) > _2352:
                            mem[_2352 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_2352) + t + 32
                        u = u + 32
                        continue 
                    mem[_816 + 64] = t - _816
                    _2391 = mem[(32 * stor2.length) + 128]
                    mem[t] = mem[(32 * stor2.length) + 128]
                    mem[t + 32 len 32 * _2391] = mem[(32 * stor2.length) + 160 len 32 * _2391]
                    var26001 = _2391
                    mem[_816 + 96] = t + (32 * _2391) + -_816 + 32
                    _2783 = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _2391) + 32] = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _2391) + 64 len 32 * _2783] = mem[(64 * stor2.length) + 192 len 32 * _2783]
                    return memory
                      from mem[64]
                       len t + (32 * _2391) + (32 * _2783) + -mem[64] + 64
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
                    _858 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _883 = mem[_858]
                    require mem[_858] <= test266151307()
                    require _858 + mem[_858] + 31 < _858 + return_data.size
                    _911 = mem[_858 + mem[_858]]
                    if mem[_858 + mem[_858]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_858 + mem[_858]])) + 1 < 0 or _858 + ceil32(return_data.size) + ceil32(ceil32(mem[_858 + mem[_858]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _858 + ceil32(return_data.size) + ceil32(ceil32(mem[_858 + mem[_858]])) + 1
                    mem[_858 + ceil32(return_data.size)] = _911
                    require _883 + _911 + 32 <= return_data.size
                    s = 0
                    while s < _911:
                        mem[s + _858 + ceil32(return_data.size) + 32] = mem[s + _858 + _883 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_911) <= _911:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _858 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1843]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2025 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2025] == mem[_2025 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2025 + 31 len 1]
                    else:
                        mem[_911 + _858 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _858 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1844]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2026] == mem[_2026 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2026 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _820 = mem[64]
                mem[mem[64]] = 128
                _849 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _849:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _849) + 160
                _1626 = mem[96]
                mem[mem[64] + (32 * _849) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _849) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _849) + 192
                while idx < _1626:
                    mem[u] = t + -_820 + -(32 * _849) - 192
                    _2353 = mem[s]
                    _2354 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2354:
                        mem[v + t + 32] = mem[v + _2353 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2354) > _2354:
                        mem[_2354 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2354) + t + 32
                    u = u + 32
                    continue 
                mem[_820 + 64] = t - _820
                _2392 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2392] = mem[(32 * stor2.length) + 160 len 32 * _2392]
                var27001 = _2392
                mem[_820 + 96] = t + (32 * _2392) + -_820 + 32
                _2784 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2392) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2392) + 64 len 32 * _2784] = mem[(64 * stor2.length) + 192 len 32 * _2784]
                return memory
                  from mem[64]
                   len t + (32 * _2392) + (32 * _2784) + -mem[64] + 64
            mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            if stor2.length > test266151307():
                revert with 0, 65
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
                    _859 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _884 = mem[_859]
                    require mem[_859] <= test266151307()
                    require _859 + mem[_859] + 31 < _859 + return_data.size
                    _913 = mem[_859 + mem[_859]]
                    if mem[_859 + mem[_859]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_859 + mem[_859]])) + 1 < 0 or _859 + ceil32(return_data.size) + ceil32(ceil32(mem[_859 + mem[_859]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _859 + ceil32(return_data.size) + ceil32(ceil32(mem[_859 + mem[_859]])) + 1
                    mem[_859 + ceil32(return_data.size)] = _913
                    require _884 + _913 + 32 <= return_data.size
                    s = 0
                    while s < _913:
                        mem[s + _859 + ceil32(return_data.size) + 32] = mem[s + _859 + _884 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_913) <= _913:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _859 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1846]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2027] == mem[_2027 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2027 + 31 len 1]
                    else:
                        mem[_913 + _859 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _859 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1847]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2028 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2028] == mem[_2028 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2028 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _824 = mem[64]
                mem[mem[64]] = 128
                _850 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _850:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _850) + 160
                _1629 = mem[96]
                mem[mem[64] + (32 * _850) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _850) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _850) + 192
                while idx < _1629:
                    mem[u] = t + -_824 + -(32 * _850) - 192
                    _2355 = mem[s]
                    _2356 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2356:
                        mem[v + t + 32] = mem[v + _2355 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2356) > _2356:
                        mem[_2356 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2356) + t + 32
                    u = u + 32
                    continue 
                mem[_824 + 64] = t - _824
                _2393 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2393] = mem[(32 * stor2.length) + 160 len 32 * _2393]
                var27001 = _2393
                mem[_824 + 96] = t + (32 * _2393) + -_824 + 32
                _2785 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2393) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2393) + 64 len 32 * _2785] = mem[(64 * stor2.length) + 192 len 32 * _2785]
                return memory
                  from mem[64]
                   len t + (32 * _2393) + (32 * _2785) + -mem[64] + 64
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
                _860 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _885 = mem[_860]
                require mem[_860] <= test266151307()
                require _860 + mem[_860] + 31 < _860 + return_data.size
                _915 = mem[_860 + mem[_860]]
                if mem[_860 + mem[_860]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_860 + mem[_860]])) + 1 < 0 or _860 + ceil32(return_data.size) + ceil32(ceil32(mem[_860 + mem[_860]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _860 + ceil32(return_data.size) + ceil32(ceil32(mem[_860 + mem[_860]])) + 1
                mem[_860 + ceil32(return_data.size)] = _915
                require _885 + _915 + 32 <= return_data.size
                s = 0
                while s < _915:
                    mem[s + _860 + ceil32(return_data.size) + 32] = mem[s + _860 + _885 + 32]
                    s = s + 32
                    continue 
                if ceil32(_915) <= _915:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _860 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1849]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2029] == mem[_2029 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2029 + 31 len 1]
                else:
                    mem[_915 + _860 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _860 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1850]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2030] == mem[_2030 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2030 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _828 = mem[64]
            mem[mem[64]] = 128
            _851 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _851:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _851) + 160
            _1632 = mem[96]
            mem[mem[64] + (32 * _851) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _851) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _851) + 192
            while idx < _1632:
                mem[u] = t + -_828 + -(32 * _851) - 192
                _2357 = mem[s]
                _2358 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2358:
                    mem[v + t + 32] = mem[v + _2357 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2358) > _2358:
                    mem[_2358 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2358) + t + 32
                u = u + 32
                continue 
            mem[_828 + 64] = t - _828
            _2394 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2394] = mem[(32 * stor2.length) + 160 len 32 * _2394]
            var28001 = _2394
            mem[_828 + 96] = t + (32 * _2394) + -_828 + 32
            _2786 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2394) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2394) + 64 len 32 * _2786] = mem[(64 * stor2.length) + 192 len 32 * _2786]
            return memory
              from mem[64]
               len t + (32 * _2394) + (32 * _2786) + -mem[64] + 64
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(64 * stor2.length) + 160] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 0, 65
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
                    _861 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _886 = mem[_861]
                    require mem[_861] <= test266151307()
                    require _861 + mem[_861] + 31 < _861 + return_data.size
                    _917 = mem[_861 + mem[_861]]
                    if mem[_861 + mem[_861]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_861 + mem[_861]])) + 1 < 0 or _861 + ceil32(return_data.size) + ceil32(ceil32(mem[_861 + mem[_861]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _861 + ceil32(return_data.size) + ceil32(ceil32(mem[_861 + mem[_861]])) + 1
                    mem[_861 + ceil32(return_data.size)] = _917
                    require _886 + _917 + 32 <= return_data.size
                    s = 0
                    while s < _917:
                        mem[s + _861 + ceil32(return_data.size) + 32] = mem[s + _861 + _886 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_917) <= _917:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _861 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1852 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1852]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2031 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2031] == mem[_2031 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2031 + 31 len 1]
                    else:
                        mem[_917 + _861 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _861 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1853]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2032 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2032] == mem[_2032 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2032 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _832 = mem[64]
                mem[mem[64]] = 128
                _852 = mem[(98 * stor2.length) + 192]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
                idx = 0
                s = (98 * stor2.length) + 224
                t = mem[64] + 160
                while idx < _852:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _852) + 160
                _1635 = mem[96]
                mem[mem[64] + (32 * _852) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _852) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _852) + 192
                while idx < _1635:
                    mem[u] = t + -_832 + -(32 * _852) - 192
                    _2359 = mem[s]
                    _2360 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2360:
                        mem[v + t + 32] = mem[v + _2359 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2360) > _2360:
                        mem[_2360 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2360) + t + 32
                    u = u + 32
                    continue 
                mem[_832 + 64] = t - _832
                _2395 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _2395] = mem[(32 * stor2.length) + 160 len 32 * _2395]
                var27001 = _2395
                mem[_832 + 96] = t + (32 * _2395) + -_832 + 32
                _2787 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2395) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _2395) + 64 len 32 * _2787] = mem[(64 * stor2.length) + 192 len 32 * _2787]
                return memory
                  from mem[64]
                   len t + (32 * _2395) + (32 * _2787) + -mem[64] + 64
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
                _862 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _887 = mem[_862]
                require mem[_862] <= test266151307()
                require _862 + mem[_862] + 31 < _862 + return_data.size
                _919 = mem[_862 + mem[_862]]
                if mem[_862 + mem[_862]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_862 + mem[_862]])) + 1 < 0 or _862 + ceil32(return_data.size) + ceil32(ceil32(mem[_862 + mem[_862]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _862 + ceil32(return_data.size) + ceil32(ceil32(mem[_862 + mem[_862]])) + 1
                mem[_862 + ceil32(return_data.size)] = _919
                require _887 + _919 + 32 <= return_data.size
                s = 0
                while s < _919:
                    mem[s + _862 + ceil32(return_data.size) + 32] = mem[s + _862 + _887 + 32]
                    s = s + 32
                    continue 
                if ceil32(_919) <= _919:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _862 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1855]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2033 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2033] == mem[_2033 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2033 + 31 len 1]
                else:
                    mem[_919 + _862 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _862 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1856 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1856]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2034] == mem[_2034 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2034 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _836 = mem[64]
            mem[mem[64]] = 128
            _853 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _853:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _853) + 160
            _1638 = mem[96]
            mem[mem[64] + (32 * _853) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _853) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _853) + 192
            while idx < _1638:
                mem[u] = t + -_836 + -(32 * _853) - 192
                _2361 = mem[s]
                _2362 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2362:
                    mem[v + t + 32] = mem[v + _2361 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2362) > _2362:
                    mem[_2362 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2362) + t + 32
                u = u + 32
                continue 
            mem[_836 + 64] = t - _836
            _2396 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2396] = mem[(32 * stor2.length) + 160 len 32 * _2396]
            var28001 = _2396
            mem[_836 + 96] = t + (32 * _2396) + -_836 + 32
            _2788 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2396) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2396) + 64 len 32 * _2788] = mem[(64 * stor2.length) + 192 len 32 * _2788]
            return memory
              from mem[64]
               len t + (32 * _2396) + (32 * _2788) + -mem[64] + 64
        mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
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
                _863 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _888 = mem[_863]
                require mem[_863] <= test266151307()
                require _863 + mem[_863] + 31 < _863 + return_data.size
                _921 = mem[_863 + mem[_863]]
                if mem[_863 + mem[_863]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_863 + mem[_863]])) + 1 < 0 or _863 + ceil32(return_data.size) + ceil32(ceil32(mem[_863 + mem[_863]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _863 + ceil32(return_data.size) + ceil32(ceil32(mem[_863 + mem[_863]])) + 1
                mem[_863 + ceil32(return_data.size)] = _921
                require _888 + _921 + 32 <= return_data.size
                s = 0
                while s < _921:
                    mem[s + _863 + ceil32(return_data.size) + 32] = mem[s + _863 + _888 + 32]
                    s = s + 32
                    continue 
                if ceil32(_921) <= _921:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _863 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1858]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2035 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2035] == mem[_2035 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2035 + 31 len 1]
                else:
                    mem[_921 + _863 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _863 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1859]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2036] == mem[_2036 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2036 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _840 = mem[64]
            mem[mem[64]] = 128
            _854 = mem[(98 * stor2.length) + 192]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
            idx = 0
            s = (98 * stor2.length) + 224
            t = mem[64] + 160
            while idx < _854:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _854) + 160
            _1641 = mem[96]
            mem[mem[64] + (32 * _854) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _854) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _854) + 192
            while idx < _1641:
                mem[u] = t + -_840 + -(32 * _854) - 192
                _2363 = mem[s]
                _2364 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2364:
                    mem[v + t + 32] = mem[v + _2363 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2364) > _2364:
                    mem[_2364 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2364) + t + 32
                u = u + 32
                continue 
            mem[_840 + 64] = t - _840
            _2397 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _2397] = mem[(32 * stor2.length) + 160 len 32 * _2397]
            var28001 = _2397
            mem[_840 + 96] = t + (32 * _2397) + -_840 + 32
            _2789 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2397) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _2397) + 64 len 32 * _2789] = mem[(64 * stor2.length) + 192 len 32 * _2789]
            return memory
              from mem[64]
               len t + (32 * _2397) + (32 * _2789) + -mem[64] + 64
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
            _864 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _889 = mem[_864]
            require mem[_864] <= test266151307()
            require _864 + mem[_864] + 31 < _864 + return_data.size
            _923 = mem[_864 + mem[_864]]
            if mem[_864 + mem[_864]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_864 + mem[_864]])) + 1 < 0 or _864 + ceil32(return_data.size) + ceil32(ceil32(mem[_864 + mem[_864]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _864 + ceil32(return_data.size) + ceil32(ceil32(mem[_864 + mem[_864]])) + 1
            mem[_864 + ceil32(return_data.size)] = _923
            require _889 + _923 + 32 <= return_data.size
            s = 0
            while s < _923:
                mem[s + _864 + ceil32(return_data.size) + 32] = mem[s + _864 + _889 + 32]
                s = s + 32
                continue 
            if ceil32(_923) <= _923:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _864 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1861 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1861]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2037 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2037] == mem[_2037 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2037 + 31 len 1]
            else:
                mem[_923 + _864 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _864 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_1862]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2038 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2038] == mem[_2038 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_2038 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[(98 * stor2.length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (98 * stor2.length) + 224] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _844 = mem[64]
        mem[mem[64]] = 128
        _855 = mem[(98 * stor2.length) + 192]
        mem[mem[64] + 128] = mem[(98 * stor2.length) + 192]
        idx = 0
        s = (98 * stor2.length) + 224
        t = mem[64] + 160
        while idx < _855:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _855) + 160
        _1644 = mem[96]
        mem[mem[64] + (32 * _855) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _855) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _855) + 192
        while idx < _1644:
            mem[u] = t + -_844 + -(32 * _855) - 192
            _2365 = mem[s]
            _2366 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2366:
                mem[v + t + 32] = mem[v + _2365 + 32]
                v = v + 32
                continue 
            if ceil32(_2366) > _2366:
                mem[_2366 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2366) + t + 32
            u = u + 32
            continue 
        mem[_844 + 64] = t - _844
        _2398 = mem[(32 * stor2.length) + 128]
        mem[t] = mem[(32 * stor2.length) + 128]
        mem[t + 32 len 32 * _2398] = mem[(32 * stor2.length) + 160 len 32 * _2398]
        var29001 = _2398
        mem[_844 + 96] = t + (32 * _2398) + -_844 + 32
        _2790 = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _2398) + 32] = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _2398) + 64 len 32 * _2790] = mem[(64 * stor2.length) + 192 len 32 * _2790]
        return memory
          from mem[64]
           len t + (32 * _2398) + (32 * _2790) + -mem[64] + 64
    mem[128] = 96
    s = 128
    idx = stor2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if stor2.length > test266151307():
        revert with 0, 65
    _856 = mem[64]
    mem[mem[64]] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        _881 = mem[64] + (32 * stor2.length) + 32
        mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 0, 65
            _907 = mem[64] + (64 * stor2.length) + 64
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
                    _1727 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1815 = mem[_1727]
                    require mem[_1727] <= test266151307()
                    require _1727 + mem[_1727] + 31 < _1727 + return_data.size
                    _1864 = mem[_1727 + mem[_1727]]
                    if mem[_1727 + mem[_1727]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1 < 0 or _1727 + ceil32(return_data.size) + ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1727 + ceil32(return_data.size) + ceil32(ceil32(mem[_1727 + mem[_1727]])) + 1
                    mem[_1727 + ceil32(return_data.size)] = _1864
                    require _1815 + _1864 + 32 <= return_data.size
                    s = 0
                    while s < _1864:
                        mem[s + _1727 + ceil32(return_data.size) + 32] = mem[s + _1727 + _1815 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1864) <= _1864:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1727 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[_856]:
                            revert with 0, 50
                        mem[(32 * idx) + _856 + 32] = mem[_2536]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2663] == mem[_2663 + 31 len 1]
                        if idx >= mem[_881]:
                            revert with 0, 50
                        mem[(32 * idx) + _881 + 32] = mem[_2663 + 31 len 1]
                    else:
                        mem[_1864 + _1727 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1727 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[_856]:
                            revert with 0, 50
                        mem[(32 * idx) + _856 + 32] = mem[_2537]
                        if idx >= stor2.length:
                            revert with 0, 50
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
                        if idx >= mem[_881]:
                            revert with 0, 50
                        mem[(32 * idx) + _881 + 32] = mem[_2664 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[_907]:
                        revert with 0, 50
                    mem[(32 * idx) + _907 + 32] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1647 = mem[64]
                mem[mem[64]] = 128
                _1695 = mem[_907]
                mem[mem[64] + 128] = mem[_907]
                idx = 0
                s = _907 + 32
                t = mem[64] + 160
                while idx < _1695:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _1695) + 160
                _2367 = mem[96]
                mem[mem[64] + (32 * _1695) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _1695) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _1695) + 192
                while idx < _2367:
                    mem[u] = t + -_1647 + -(32 * _1695) - 192
                    _2759 = mem[s]
                    _2760 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2760:
                        mem[v + t + 32] = mem[v + _2759 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2760) > _2760:
                        mem[_2760 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2760) + t + 32
                    u = u + 32
                    continue 
                mem[_1647 + 64] = t - _1647
                _2775 = mem[_856]
                mem[t] = mem[_856]
                mem[t + 32 len 32 * _2775] = mem[_856 + 32 len 32 * _2775]
                var30001 = _2775
                mem[_1647 + 96] = t + (32 * _2775) + -_1647 + 32
                _2879 = mem[_881]
                mem[t + (32 * _2775) + 32] = mem[_881]
                mem[t + (32 * _2775) + 64 len 32 * _2879] = mem[_881 + 32 len 32 * _2879]
                return memory
                  from mem[64]
                   len t + (32 * _2775) + (32 * _2879) + -mem[64] + 64
            mem[_907 + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1728 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1816 = mem[_1728]
                require mem[_1728] <= test266151307()
                require _1728 + mem[_1728] + 31 < _1728 + return_data.size
                _1866 = mem[_1728 + mem[_1728]]
                if mem[_1728 + mem[_1728]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 < 0 or _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1728 + ceil32(return_data.size) + ceil32(ceil32(mem[_1728 + mem[_1728]])) + 1
                mem[_1728 + ceil32(return_data.size)] = _1866
                require _1816 + _1866 + 32 <= return_data.size
                s = 0
                while s < _1866:
                    mem[s + _1728 + ceil32(return_data.size) + 32] = mem[s + _1728 + _1816 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1866) <= _1866:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1728 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2539]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2665 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2665] == mem[_2665 + 31 len 1]
                    if idx >= mem[_881]:
                        revert with 0, 50
                    mem[(32 * idx) + _881 + 32] = mem[_2665 + 31 len 1]
                else:
                    mem[_1866 + _1728 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1728 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2540]
                    if idx >= stor2.length:
                        revert with 0, 50
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
                    if idx >= mem[_881]:
                        revert with 0, 50
                    mem[(32 * idx) + _881 + 32] = mem[_2666 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_907]:
                    revert with 0, 50
                mem[(32 * idx) + _907 + 32] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1651 = mem[64]
            mem[mem[64]] = 128
            _1696 = mem[_907]
            mem[mem[64] + 128] = mem[_907]
            idx = 0
            s = _907 + 32
            t = mem[64] + 160
            while idx < _1696:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1696) + 160
            _2370 = mem[96]
            mem[mem[64] + (32 * _1696) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1696) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1696) + 192
            while idx < _2370:
                mem[u] = t + -_1651 + -(32 * _1696) - 192
                _2761 = mem[s]
                _2762 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2762:
                    mem[v + t + 32] = mem[v + _2761 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2762) > _2762:
                    mem[_2762 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2762) + t + 32
                u = u + 32
                continue 
            mem[_1651 + 64] = t - _1651
            _2776 = mem[_856]
            mem[t] = mem[_856]
            mem[t + 32 len 32 * _2776] = mem[_856 + 32 len 32 * _2776]
            var31001 = _2776
            mem[_1651 + 96] = t + (32 * _2776) + -_1651 + 32
            _2880 = mem[_881]
            mem[t + (32 * _2776) + 32] = mem[_881]
            mem[t + (32 * _2776) + 64 len 32 * _2880] = mem[_881 + 32 len 32 * _2880]
            return memory
              from mem[64]
               len t + (32 * _2776) + (32 * _2880) + -mem[64] + 64
        mem[mem[64] + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
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
                _1729 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1817 = mem[_1729]
                require mem[_1729] <= test266151307()
                require _1729 + mem[_1729] + 31 < _1729 + return_data.size
                _1868 = mem[_1729 + mem[_1729]]
                if mem[_1729 + mem[_1729]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1729 + mem[_1729]])) + 1 < 0 or _1729 + ceil32(return_data.size) + ceil32(ceil32(mem[_1729 + mem[_1729]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1729 + ceil32(return_data.size) + ceil32(ceil32(mem[_1729 + mem[_1729]])) + 1
                mem[_1729 + ceil32(return_data.size)] = _1868
                require _1817 + _1868 + 32 <= return_data.size
                s = 0
                while s < _1868:
                    mem[s + _1729 + ceil32(return_data.size) + 32] = mem[s + _1729 + _1817 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1868) <= _1868:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1729 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2542]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2667] == mem[_2667 + 31 len 1]
                    if idx >= mem[_881]:
                        revert with 0, 50
                    mem[(32 * idx) + _881 + 32] = mem[_2667 + 31 len 1]
                else:
                    mem[_1868 + _1729 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1729 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2543]
                    if idx >= stor2.length:
                        revert with 0, 50
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
                    if idx >= mem[_881]:
                        revert with 0, 50
                    mem[(32 * idx) + _881 + 32] = mem[_2668 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_881 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _881 + (32 * stor2.length) + 64] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1655 = mem[64]
            mem[mem[64]] = 128
            _1697 = mem[_881 + (32 * stor2.length) + 32]
            mem[mem[64] + 128] = mem[_881 + (32 * stor2.length) + 32]
            idx = 0
            s = _881 + (32 * stor2.length) + 64
            t = mem[64] + 160
            while idx < _1697:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1697) + 160
            _2373 = mem[96]
            mem[mem[64] + (32 * _1697) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1697) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1697) + 192
            while idx < _2373:
                mem[u] = t + -_1655 + -(32 * _1697) - 192
                _2763 = mem[s]
                _2764 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2764:
                    mem[v + t + 32] = mem[v + _2763 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2764) > _2764:
                    mem[_2764 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2764) + t + 32
                u = u + 32
                continue 
            mem[_1655 + 64] = t - _1655
            _2777 = mem[_856]
            mem[t] = mem[_856]
            mem[t + 32 len 32 * _2777] = mem[_856 + 32 len 32 * _2777]
            var31001 = _2777
            mem[_1655 + 96] = t + (32 * _2777) + -_1655 + 32
            _2881 = mem[_881]
            mem[t + (32 * _2777) + 32] = mem[_881]
            mem[t + (32 * _2777) + 64 len 32 * _2881] = mem[_881 + 32 len 32 * _2881]
            return memory
              from mem[64]
               len t + (32 * _2777) + (32 * _2881) + -mem[64] + 64
        mem[_881 + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1730 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1818 = mem[_1730]
            require mem[_1730] <= test266151307()
            require _1730 + mem[_1730] + 31 < _1730 + return_data.size
            _1870 = mem[_1730 + mem[_1730]]
            if mem[_1730 + mem[_1730]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1 < 0 or _1730 + ceil32(return_data.size) + ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1730 + ceil32(return_data.size) + ceil32(ceil32(mem[_1730 + mem[_1730]])) + 1
            mem[_1730 + ceil32(return_data.size)] = _1870
            require _1818 + _1870 + 32 <= return_data.size
            s = 0
            while s < _1870:
                mem[s + _1730 + ceil32(return_data.size) + 32] = mem[s + _1730 + _1818 + 32]
                s = s + 32
                continue 
            if ceil32(_1870) <= _1870:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1730 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2545]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2669] == mem[_2669 + 31 len 1]
                if idx >= mem[_881]:
                    revert with 0, 50
                mem[(32 * idx) + _881 + 32] = mem[_2669 + 31 len 1]
            else:
                mem[_1870 + _1730 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1730 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2546]
                if idx >= stor2.length:
                    revert with 0, 50
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
                if idx >= mem[_881]:
                    revert with 0, 50
                mem[(32 * idx) + _881 + 32] = mem[_2670 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_881 + (32 * stor2.length) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _881 + (32 * stor2.length) + 64] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1659 = mem[64]
        mem[mem[64]] = 128
        _1698 = mem[_881 + (32 * stor2.length) + 32]
        mem[mem[64] + 128] = mem[_881 + (32 * stor2.length) + 32]
        idx = 0
        s = _881 + (32 * stor2.length) + 64
        t = mem[64] + 160
        while idx < _1698:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1698) + 160
        _2376 = mem[96]
        mem[mem[64] + (32 * _1698) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1698) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1698) + 192
        while idx < _2376:
            mem[u] = t + -_1659 + -(32 * _1698) - 192
            _2765 = mem[s]
            _2766 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2766:
                mem[v + t + 32] = mem[v + _2765 + 32]
                v = v + 32
                continue 
            if ceil32(_2766) > _2766:
                mem[_2766 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2766) + t + 32
            u = u + 32
            continue 
        mem[_1659 + 64] = t - _1659
        _2778 = mem[_856]
        mem[t] = mem[_856]
        mem[t + 32 len 32 * _2778] = mem[_856 + 32 len 32 * _2778]
        var32001 = _2778
        mem[_1659 + 96] = t + (32 * _2778) + -_1659 + 32
        _2882 = mem[_881]
        mem[t + (32 * _2778) + 32] = mem[_881]
        mem[t + (32 * _2778) + 64 len 32 * _2882] = mem[_881 + 32 len 32 * _2882]
        return memory
          from mem[64]
           len t + (32 * _2778) + (32 * _2882) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 0, 65
    mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
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
                _1731 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1819 = mem[_1731]
                require mem[_1731] <= test266151307()
                require _1731 + mem[_1731] + 31 < _1731 + return_data.size
                _1872 = mem[_1731 + mem[_1731]]
                if mem[_1731 + mem[_1731]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1 < 0 or _1731 + ceil32(return_data.size) + ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1731 + ceil32(return_data.size) + ceil32(ceil32(mem[_1731 + mem[_1731]])) + 1
                mem[_1731 + ceil32(return_data.size)] = _1872
                require _1819 + _1872 + 32 <= return_data.size
                s = 0
                while s < _1872:
                    mem[s + _1731 + ceil32(return_data.size) + 32] = mem[s + _1731 + _1819 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1872) <= _1872:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1731 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2548]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2671] == mem[_2671 + 31 len 1]
                    if idx >= mem[_856 + (32 * stor2.length) + 32]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2671 + 31 len 1]
                else:
                    mem[_1872 + _1731 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1731 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_856]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + 32] = mem[_2549]
                    if idx >= stor2.length:
                        revert with 0, 50
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
                    if idx >= mem[_856 + (32 * stor2.length) + 32]:
                        revert with 0, 50
                    mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2672 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_856 + (64 * stor2.length) + 64]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + (64 * stor2.length) + 96] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1663 = mem[64]
            mem[mem[64]] = 128
            _1699 = mem[_856 + (64 * stor2.length) + 64]
            mem[mem[64] + 128] = mem[_856 + (64 * stor2.length) + 64]
            idx = 0
            s = _856 + (64 * stor2.length) + 96
            t = mem[64] + 160
            while idx < _1699:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1699) + 160
            _2379 = mem[96]
            mem[mem[64] + (32 * _1699) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1699) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1699) + 192
            while idx < _2379:
                mem[u] = t + -_1663 + -(32 * _1699) - 192
                _2767 = mem[s]
                _2768 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2768:
                    mem[v + t + 32] = mem[v + _2767 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2768) > _2768:
                    mem[_2768 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2768) + t + 32
                u = u + 32
                continue 
            mem[_1663 + 64] = t - _1663
            _2779 = mem[_856]
            mem[t] = mem[_856]
            mem[t + 32 len 32 * _2779] = mem[_856 + 32 len 32 * _2779]
            var31001 = _2779
            mem[_1663 + 96] = t + (32 * _2779) + -_1663 + 32
            _2883 = mem[_856 + (32 * stor2.length) + 32]
            mem[t + (32 * _2779) + 32] = mem[_856 + (32 * stor2.length) + 32]
            mem[t + (32 * _2779) + 64 len 32 * _2883] = mem[_856 + (32 * stor2.length) + 64 len 32 * _2883]
            return memory
              from mem[64]
               len t + (32 * _2779) + (32 * _2883) + -mem[64] + 64
        mem[_856 + (64 * stor2.length) + 96 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1732 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1820 = mem[_1732]
            require mem[_1732] <= test266151307()
            require _1732 + mem[_1732] + 31 < _1732 + return_data.size
            _1874 = mem[_1732 + mem[_1732]]
            if mem[_1732 + mem[_1732]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1 < 0 or _1732 + ceil32(return_data.size) + ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1732 + ceil32(return_data.size) + ceil32(ceil32(mem[_1732 + mem[_1732]])) + 1
            mem[_1732 + ceil32(return_data.size)] = _1874
            require _1820 + _1874 + 32 <= return_data.size
            s = 0
            while s < _1874:
                mem[s + _1732 + ceil32(return_data.size) + 32] = mem[s + _1732 + _1820 + 32]
                s = s + 32
                continue 
            if ceil32(_1874) <= _1874:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1732 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2551]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2673] == mem[_2673 + 31 len 1]
                if idx >= mem[_856 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2673 + 31 len 1]
            else:
                mem[_1874 + _1732 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1732 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2552]
                if idx >= stor2.length:
                    revert with 0, 50
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
                if idx >= mem[_856 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2674 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_856 + (64 * stor2.length) + 64]:
                revert with 0, 50
            mem[(32 * idx) + _856 + (64 * stor2.length) + 96] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1667 = mem[64]
        mem[mem[64]] = 128
        _1700 = mem[_856 + (64 * stor2.length) + 64]
        mem[mem[64] + 128] = mem[_856 + (64 * stor2.length) + 64]
        idx = 0
        s = _856 + (64 * stor2.length) + 96
        t = mem[64] + 160
        while idx < _1700:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1700) + 160
        _2382 = mem[96]
        mem[mem[64] + (32 * _1700) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1700) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1700) + 192
        while idx < _2382:
            mem[u] = t + -_1667 + -(32 * _1700) - 192
            _2769 = mem[s]
            _2770 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2770:
                mem[v + t + 32] = mem[v + _2769 + 32]
                v = v + 32
                continue 
            if ceil32(_2770) > _2770:
                mem[_2770 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2770) + t + 32
            u = u + 32
            continue 
        mem[_1667 + 64] = t - _1667
        _2780 = mem[_856]
        mem[t] = mem[_856]
        mem[t + 32 len 32 * _2780] = mem[_856 + 32 len 32 * _2780]
        var32001 = _2780
        mem[_1667 + 96] = t + (32 * _2780) + -_1667 + 32
        _2884 = mem[_856 + (32 * stor2.length) + 32]
        mem[t + (32 * _2780) + 32] = mem[_856 + (32 * stor2.length) + 32]
        mem[t + (32 * _2780) + 64 len 32 * _2884] = mem[_856 + (32 * stor2.length) + 64 len 32 * _2884]
        return memory
          from mem[64]
           len t + (32 * _2780) + (32 * _2884) + -mem[64] + 64
    mem[mem[64] + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 0, 65
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
            _1733 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1821 = mem[_1733]
            require mem[_1733] <= test266151307()
            require _1733 + mem[_1733] + 31 < _1733 + return_data.size
            _1876 = mem[_1733 + mem[_1733]]
            if mem[_1733 + mem[_1733]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1 < 0 or _1733 + ceil32(return_data.size) + ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1733 + ceil32(return_data.size) + ceil32(ceil32(mem[_1733 + mem[_1733]])) + 1
            mem[_1733 + ceil32(return_data.size)] = _1876
            require _1821 + _1876 + 32 <= return_data.size
            s = 0
            while s < _1876:
                mem[s + _1733 + ceil32(return_data.size) + 32] = mem[s + _1733 + _1821 + 32]
                s = s + 32
                continue 
            if ceil32(_1876) <= _1876:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1733 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2554]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2675] == mem[_2675 + 31 len 1]
                if idx >= mem[_856 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2675 + 31 len 1]
            else:
                mem[_1876 + _1733 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1733 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_856]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + 32] = mem[_2555]
                if idx >= stor2.length:
                    revert with 0, 50
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
                if idx >= mem[_856 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2676 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_856 + (64 * stor2.length) + 64]:
                revert with 0, 50
            mem[(32 * idx) + _856 + (64 * stor2.length) + 96] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1671 = mem[64]
        mem[mem[64]] = 128
        _1701 = mem[_856 + (64 * stor2.length) + 64]
        mem[mem[64] + 128] = mem[_856 + (64 * stor2.length) + 64]
        idx = 0
        s = _856 + (64 * stor2.length) + 96
        t = mem[64] + 160
        while idx < _1701:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1701) + 160
        _2385 = mem[96]
        mem[mem[64] + (32 * _1701) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1701) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1701) + 192
        while idx < _2385:
            mem[u] = t + -_1671 + -(32 * _1701) - 192
            _2771 = mem[s]
            _2772 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2772:
                mem[v + t + 32] = mem[v + _2771 + 32]
                v = v + 32
                continue 
            if ceil32(_2772) > _2772:
                mem[_2772 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2772) + t + 32
            u = u + 32
            continue 
        mem[_1671 + 64] = t - _1671
        _2781 = mem[_856]
        mem[t] = mem[_856]
        mem[t + 32 len 32 * _2781] = mem[_856 + 32 len 32 * _2781]
        var32001 = _2781
        mem[_1671 + 96] = t + (32 * _2781) + -_1671 + 32
        _2885 = mem[_856 + (32 * stor2.length) + 32]
        mem[t + (32 * _2781) + 32] = mem[_856 + (32 * stor2.length) + 32]
        mem[t + (32 * _2781) + 64 len 32 * _2885] = mem[_856 + (32 * stor2.length) + 64 len 32 * _2885]
        return memory
          from mem[64]
           len t + (32 * _2781) + (32 * _2885) + -mem[64] + 64
    mem[_856 + (64 * stor2.length) + 96 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[idx])
        staticcall stor2[idx].0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1734 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1822 = mem[_1734]
        require mem[_1734] <= test266151307()
        require _1734 + mem[_1734] + 31 < _1734 + return_data.size
        _1878 = mem[_1734 + mem[_1734]]
        if mem[_1734 + mem[_1734]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 < 0 or _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1734 + ceil32(return_data.size) + ceil32(ceil32(mem[_1734 + mem[_1734]])) + 1
        mem[_1734 + ceil32(return_data.size)] = _1878
        require _1822 + _1878 + 32 <= return_data.size
        s = 0
        while s < _1878:
            mem[s + _1734 + ceil32(return_data.size) + 32] = mem[s + _1734 + _1822 + 32]
            s = s + 32
            continue 
        if ceil32(_1878) <= _1878:
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1734 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_856]:
                revert with 0, 50
            mem[(32 * idx) + _856 + 32] = mem[_2557]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2677] == mem[_2677 + 31 len 1]
            if idx >= mem[_856 + (32 * stor2.length) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2677 + 31 len 1]
        else:
            mem[_1878 + _1734 + ceil32(return_data.size) + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1734 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2558 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_856]:
                revert with 0, 50
            mem[(32 * idx) + _856 + 32] = mem[_2558]
            if idx >= stor2.length:
                revert with 0, 50
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
            if idx >= mem[_856 + (32 * stor2.length) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _856 + (32 * stor2.length) + 64] = mem[_2678 + 31 len 1]
        if idx >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if idx >= mem[_856 + (64 * stor2.length) + 64]:
            revert with 0, 50
        mem[(32 * idx) + _856 + (64 * stor2.length) + 96] = stor2[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1675 = mem[64]
    mem[mem[64]] = 128
    _1702 = mem[_856 + (64 * stor2.length) + 64]
    mem[mem[64] + 128] = mem[_856 + (64 * stor2.length) + 64]
    idx = 0
    s = _856 + (64 * stor2.length) + 96
    t = mem[64] + 160
    while idx < _1702:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _1702) + 160
    _2388 = mem[96]
    mem[mem[64] + (32 * _1702) + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * _1702) + (32 * mem[96]) + 192
    u = mem[64] + (32 * _1702) + 192
    while idx < _2388:
        mem[u] = t + -_1675 + -(32 * _1702) - 192
        _2773 = mem[s]
        _2774 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2774:
            mem[v + t + 32] = mem[v + _2773 + 32]
            v = v + 32
            continue 
        if ceil32(_2774) > _2774:
            mem[_2774 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_2774) + t + 32
        u = u + 32
        continue 
    mem[_1675 + 64] = t - _1675
    _2782 = mem[_856]
    mem[t] = mem[_856]
    mem[t + 32 len 32 * _2782] = mem[_856 + 32 len 32 * _2782]
    var33001 = _2782
    mem[_1675 + 96] = t + (32 * _2782) + -_1675 + 32
    _2886 = mem[_856 + (32 * stor2.length) + 32]
    mem[t + (32 * _2782) + 32] = mem[_856 + (32 * stor2.length) + 32]
    mem[t + (32 * _2782) + 64 len 32 * _2886] = mem[_856 + (32 * stor2.length) + 64 len 32 * _2886]
    return memory
      from mem[64]
       len t + (32 * _2782) + (32 * _2886) + -mem[64] + 64
}



}
