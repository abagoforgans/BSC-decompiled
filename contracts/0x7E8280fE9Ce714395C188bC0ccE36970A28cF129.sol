contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint128 stor4;
address stor5;
array of address stor6;
array of address stor7;
array of address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    revert
}

function sub_c0336629(?) {
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor3 = 0
}

function tokenTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5be6b37e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor8.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(stor8[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_28e54ab3(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == Mask(112, 0, arg5)
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor0 = address(arg1)
    stor1 = address(arg2)
    stor4 = Mask(112, 0, arg5)
    stor3 = 1
    stor11 = arg3
    if stor6.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor6.length
    mem[64] = (32 * stor6.length) + 128
    if not stor6.length:
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor6[idx] < address(arg1):
                _56 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _60 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _62 = sha3(mem[_60 + 32 len mem[_60]])
                mem[_56 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_56 + 105] = stor5
                mem[_56 + 125] = _62
                mem[_56 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_56 + 72] = 85
                mem[64] = _56 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _62, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            else:
                _57 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _64 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _66 = sha3(mem[_64 + 32 len mem[_64]])
                mem[_57 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_57 + 105] = stor5
                mem[_57 + 125] = _66
                mem[_57 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_57 + 72] = 85
                mem[64] = _57 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _66, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor6.length] = call.data[calldata.size len 32 * stor6.length]
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor6[idx] < address(arg1):
                _58 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _68 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _70 = sha3(mem[_68 + 32 len mem[_68]])
                mem[_58 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_58 + 105] = stor5
                mem[_58 + 125] = _70
                mem[_58 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_58 + 72] = 85
                mem[64] = _58 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _70, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            else:
                _59 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _72 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _74 = sha3(mem[_72 + 32 len mem[_72]])
                mem[_59 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_59 + 105] = stor5
                mem[_59 + 125] = _74
                mem[_59 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_59 + 72] = 85
                mem[64] = _59 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _74, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    stor7.length = mem[96]
    if not mem[96]:
        idx = 0
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(stor7[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    stor9 = 0
    stor10 = arg4
}

function king() payable {
    mem[64] = 96
    if stor3 == 1:
        idx = 0
        s = 0
        s = 0
        while idx < stor6.length:
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if ext_code.size(address(stor7[idx])) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx])
                s = ext_code.size(address(stor7[idx]))
                continue 
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            mem[mem[64] + 4] = address(stor7[idx])
            require ext_code.size(stor6[idx])
            staticcall stor6[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(stor7[idx])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_163] == mem[_163]
            if mem[_163] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx])
                s = mem[_163]
                continue 
            if idx:
                if stor4 and 500 > test266151307() / stor4:
                    revert with 'NH{q', 17
                if mem[_163] < Mask(112, 0, 500 * stor4):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = address(stor7[idx])
                    s = mem[_163]
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if stor6[idx]:
                    require ext_code.size(stor12)
                    staticcall stor12.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_176] == mem[_176 + 12 len 20]
                    if stor6[idx] == mem[_176 + 12 len 20]:
                        _189 = mem[64]
                        require ext_code.size(stor12)
                        staticcall stor12.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_189]:
                            revert with 'NH{q', 50
                        mem[_189 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_189]:
                            revert with 'NH{q', 50
                        mem[_189 + 64] = stor0
                        if stor10:
                            if stor10 == 1:
                                if eth.balance(this.address) < stor11:
                                    stor3 = 0
                                else:
                                    if stor9 >= stor8.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 8
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    mem[_189 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_189 + ceil32(return_data.size) + 100] = 0
                                    mem[_189 + ceil32(return_data.size) + 132] = 128
                                    mem[_189 + ceil32(return_data.size) + 228] = mem[_189]
                                    idx = 0
                                    s = _189 + 32
                                    t = _189 + ceil32(return_data.size) + 260
                                    while idx < mem[_189]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_189 + ceil32(return_data.size) + 164] = address(stor8[stor9])
                                    mem[_189 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                    require ext_code.size(stor12)
                                    call stor12.mem[mem[64] len 4] with:
                                       value stor11 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _189 + ceil32(return_data.size) + (32 * mem[_189]) + -mem[64] + 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _421 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _433 = mem[_421]
                                    require mem[_421] <= test266151307()
                                    require _421 + mem[_421] + 31 < _421 + return_data.size
                                    _445 = mem[_421 + mem[_421]]
                                    if mem[_421 + mem[_421]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1 > test266151307() or floor32(mem[_421 + mem[_421]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1
                                    mem[_421 + ceil32(return_data.size)] = _445
                                    require _433 + (32 * _445) + 32 <= return_data.size
                                    idx = 0
                                    s = _421 + _433 + 32
                                    t = _421 + ceil32(return_data.size) + 32
                                    while idx < _445:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if stor9 == -1:
                                        revert with 'NH{q', 17
                                    stor9++
                        else:
                            stor3 = 0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_189 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_189 + ceil32(return_data.size) + 100] = 0
                            mem[_189 + ceil32(return_data.size) + 132] = 128
                            mem[_189 + ceil32(return_data.size) + 228] = mem[_189]
                            idx = 0
                            s = _189 + 32
                            t = _189 + ceil32(return_data.size) + 260
                            while idx < mem[_189]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_189 + ceil32(return_data.size) + 164] = stor1
                            mem[_189 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                            require ext_code.size(stor12)
                            call stor12.mem[mem[64] len 4] with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _189 + ceil32(return_data.size) + (32 * mem[_189]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _422 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _434 = mem[_422]
                            require mem[_422] <= test266151307()
                            require _422 + mem[_422] + 31 < _422 + return_data.size
                            _446 = mem[_422 + mem[_422]]
                            if mem[_422 + mem[_422]] > test266151307():
                                revert with 'NH{q', 65
                            if _422 + ceil32(return_data.size) + floor32(mem[_422 + mem[_422]]) + 1 > test266151307() or floor32(mem[_422 + mem[_422]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _422 + ceil32(return_data.size) + floor32(mem[_422 + mem[_422]]) + 1
                            mem[_422 + ceil32(return_data.size)] = _446
                            require _434 + (32 * _446) + 32 <= return_data.size
                            idx = 0
                            s = _422 + _434 + 32
                            t = _422 + ceil32(return_data.size) + 32
                            while idx < _446:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if stor10 == 1:
                                if eth.balance(this.address) < stor11:
                                    stor3 = 0
                                else:
                                    if stor9 >= stor8.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 8
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    _558 = mem[64]
                                    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _564 = mem[_189]
                                    mem[mem[64] + 132] = mem[_189]
                                    idx = 0
                                    s = _189 + 32
                                    t = mem[64] + 164
                                    while idx < _564:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_558 + 68] = address(stor8[stor9])
                                    mem[_558 + 100] = block.timestamp + 1200
                                    require ext_code.size(stor12)
                                    call stor12.mem[mem[64] len 4] with:
                                       value stor11 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _558 + (32 * _564) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _624 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _630 = mem[_624]
                                    require mem[_624] <= test266151307()
                                    require _624 + mem[_624] + 31 < _624 + return_data.size
                                    _636 = mem[_624 + mem[_624]]
                                    if mem[_624 + mem[_624]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _624 + ceil32(return_data.size) + floor32(mem[_624 + mem[_624]]) + 1 > test266151307() or floor32(mem[_624 + mem[_624]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _624 + ceil32(return_data.size) + floor32(mem[_624 + mem[_624]]) + 1
                                    mem[_624 + ceil32(return_data.size)] = _636
                                    require _630 + (32 * _636) + 32 <= return_data.size
                                    idx = 0
                                    s = _624 + _630 + 32
                                    t = _624 + ceil32(return_data.size) + 32
                                    while idx < _636:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if stor9 == -1:
                                        revert with 'NH{q', 17
                                    stor9++
                    else:
                        _188 = mem[64]
                        require ext_code.size(stor12)
                        staticcall stor12.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64] + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_188]:
                            revert with 'NH{q', 50
                        mem[_188 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_188]:
                            revert with 'NH{q', 50
                        mem[_188 + 64] = stor6[idx]
                        if 2 >= mem[_188]:
                            revert with 'NH{q', 50
                        mem[_188 + 96] = stor0
                        if stor10:
                            if stor10 == 1:
                                if eth.balance(this.address) < stor11:
                                    stor3 = 0
                                else:
                                    if stor9 >= stor8.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 8
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    mem[_188 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_188 + ceil32(return_data.size) + 132] = 0
                                    mem[_188 + ceil32(return_data.size) + 164] = 128
                                    mem[_188 + ceil32(return_data.size) + 260] = mem[_188]
                                    idx = 0
                                    s = _188 + 32
                                    t = _188 + ceil32(return_data.size) + 292
                                    while idx < mem[_188]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_188 + ceil32(return_data.size) + 196] = address(stor8[stor9])
                                    mem[_188 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                    require ext_code.size(stor12)
                                    call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value stor11 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(stor8[stor9]), block.timestamp + 1200, mem[_188 + ceil32(return_data.size) + 260 len (32 * mem[_188]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_188 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _188 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _431 = mem[_188 + ceil32(return_data.size) + 128 len 4], 0
                                    require mem[_188 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                    require _188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _188 + ceil32(return_data.size) + return_data.size + 128
                                    _443 = mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                    if mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                        revert with 'NH{q', 65
                                    if _188 + (2 * ceil32(return_data.size)) + floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _188 + (2 * ceil32(return_data.size)) + floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                                    mem[_188 + (2 * ceil32(return_data.size)) + 128] = mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                    require _431 + (32 * _443) + 32 <= return_data.size
                                    idx = 0
                                    s = _188 + ceil32(return_data.size) + _431 + 160
                                    t = _188 + (2 * ceil32(return_data.size)) + 160
                                    while idx < _443:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if stor9 == -1:
                                        revert with 'NH{q', 17
                                    stor9++
                        else:
                            stor3 = 0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_188 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_188 + ceil32(return_data.size) + 132] = 0
                            mem[_188 + ceil32(return_data.size) + 164] = 128
                            mem[_188 + ceil32(return_data.size) + 260] = mem[_188]
                            idx = 0
                            s = _188 + 32
                            t = _188 + ceil32(return_data.size) + 292
                            while idx < mem[_188]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_188 + ceil32(return_data.size) + 196] = stor1
                            mem[_188 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                            require ext_code.size(stor12)
                            call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_188 + ceil32(return_data.size) + 260 len (32 * mem[_188]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_188 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _188 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _432 = mem[_188 + ceil32(return_data.size) + 128 len 4], 0
                            require mem[_188 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                            require _188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _188 + ceil32(return_data.size) + return_data.size + 128
                            _444 = mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            if mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                revert with 'NH{q', 65
                            if _188 + (2 * ceil32(return_data.size)) + floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _188 + (2 * ceil32(return_data.size)) + floor32(mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                            mem[_188 + (2 * ceil32(return_data.size)) + 128] = mem[_188 + ceil32(return_data.size) + mem[_188 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            require _432 + (32 * _444) + 32 <= return_data.size
                            idx = 0
                            s = _188 + ceil32(return_data.size) + _432 + 160
                            t = _188 + (2 * ceil32(return_data.size)) + 160
                            while idx < _444:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if stor10 == 1:
                                if eth.balance(this.address) < stor11:
                                    stor3 = 0
                                else:
                                    if stor9 >= stor8.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 8
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    _557 = mem[64]
                                    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _563 = mem[_188]
                                    mem[mem[64] + 132] = mem[_188]
                                    idx = 0
                                    s = _188 + 32
                                    t = mem[64] + 164
                                    while idx < _563:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_557 + 68] = address(stor8[stor9])
                                    mem[_557 + 100] = block.timestamp + 1200
                                    require ext_code.size(stor12)
                                    call stor12.mem[mem[64] len 4] with:
                                       value stor11 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _557 + (32 * _563) + -mem[64] + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _623 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _629 = mem[_623]
                                    require mem[_623] <= test266151307()
                                    require _623 + mem[_623] + 31 < _623 + return_data.size
                                    _635 = mem[_623 + mem[_623]]
                                    if mem[_623 + mem[_623]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1 > test266151307() or floor32(mem[_623 + mem[_623]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1
                                    mem[_623 + ceil32(return_data.size)] = _635
                                    require _629 + (32 * _635) + 32 <= return_data.size
                                    idx = 0
                                    s = _623 + _629 + 32
                                    t = _623 + ceil32(return_data.size) + 32
                                    while idx < _635:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if stor9 == -1:
                                        revert with 'NH{q', 17
                                    stor9++
            else:
                if mem[_163] >= stor4:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        require ext_code.size(stor12)
                        staticcall stor12.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_168] == mem[_168 + 12 len 20]
                        if stor6[idx] == mem[_168 + 12 len 20]:
                            _181 = mem[64]
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_181]:
                                revert with 'NH{q', 50
                            mem[_181 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_181]:
                                revert with 'NH{q', 50
                            mem[_181 + 64] = stor0
                            if stor10:
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        mem[_181 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[_181 + ceil32(return_data.size) + 100] = 0
                                        mem[_181 + ceil32(return_data.size) + 132] = 128
                                        mem[_181 + ceil32(return_data.size) + 228] = mem[_181]
                                        idx = 0
                                        s = _181 + 32
                                        t = _181 + ceil32(return_data.size) + 260
                                        while idx < mem[_181]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_181 + ceil32(return_data.size) + 164] = address(stor8[stor9])
                                        mem[_181 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _181 + ceil32(return_data.size) + (32 * mem[_181]) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _429 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _441 = mem[_429]
                                        require mem[_429] <= test266151307()
                                        require _429 + mem[_429] + 31 < _429 + return_data.size
                                        _453 = mem[_429 + mem[_429]]
                                        if mem[_429 + mem[_429]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _429 + ceil32(return_data.size) + floor32(mem[_429 + mem[_429]]) + 1 > test266151307() or floor32(mem[_429 + mem[_429]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _429 + ceil32(return_data.size) + floor32(mem[_429 + mem[_429]]) + 1
                                        mem[_429 + ceil32(return_data.size)] = _453
                                        require _441 + (32 * _453) + 32 <= return_data.size
                                        idx = 0
                                        s = _429 + _441 + 32
                                        t = _429 + ceil32(return_data.size) + 32
                                        while idx < _453:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                            else:
                                stor3 = 0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_181 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_181 + ceil32(return_data.size) + 100] = 0
                                mem[_181 + ceil32(return_data.size) + 132] = 128
                                mem[_181 + ceil32(return_data.size) + 228] = mem[_181]
                                idx = 0
                                s = _181 + 32
                                t = _181 + ceil32(return_data.size) + 260
                                while idx < mem[_181]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_181 + ceil32(return_data.size) + 164] = stor1
                                mem[_181 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                require ext_code.size(stor12)
                                call stor12.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _181 + ceil32(return_data.size) + (32 * mem[_181]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _430 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _442 = mem[_430]
                                require mem[_430] <= test266151307()
                                require _430 + mem[_430] + 31 < _430 + return_data.size
                                _454 = mem[_430 + mem[_430]]
                                if mem[_430 + mem[_430]] > test266151307():
                                    revert with 'NH{q', 65
                                if _430 + ceil32(return_data.size) + floor32(mem[_430 + mem[_430]]) + 1 > test266151307() or floor32(mem[_430 + mem[_430]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _430 + ceil32(return_data.size) + floor32(mem[_430 + mem[_430]]) + 1
                                mem[_430 + ceil32(return_data.size)] = _454
                                require _442 + (32 * _454) + 32 <= return_data.size
                                idx = 0
                                s = _430 + _442 + 32
                                t = _430 + ceil32(return_data.size) + 32
                                while idx < _454:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        _562 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _568 = mem[_181]
                                        mem[mem[64] + 132] = mem[_181]
                                        idx = 0
                                        s = _181 + 32
                                        t = mem[64] + 164
                                        while idx < _568:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_562 + 68] = address(stor8[stor9])
                                        mem[_562 + 100] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _562 + (32 * _568) + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _628 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _634 = mem[_628]
                                        require mem[_628] <= test266151307()
                                        require _628 + mem[_628] + 31 < _628 + return_data.size
                                        _640 = mem[_628 + mem[_628]]
                                        if mem[_628 + mem[_628]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _628 + ceil32(return_data.size) + floor32(mem[_628 + mem[_628]]) + 1 > test266151307() or floor32(mem[_628 + mem[_628]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _628 + ceil32(return_data.size) + floor32(mem[_628 + mem[_628]]) + 1
                                        mem[_628 + ceil32(return_data.size)] = _640
                                        require _634 + (32 * _640) + 32 <= return_data.size
                                        idx = 0
                                        s = _628 + _634 + 32
                                        t = _628 + ceil32(return_data.size) + 32
                                        while idx < _640:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                        else:
                            _180 = mem[64]
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_180]:
                                revert with 'NH{q', 50
                            mem[_180 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_180]:
                                revert with 'NH{q', 50
                            mem[_180 + 64] = stor6[idx]
                            if 2 >= mem[_180]:
                                revert with 'NH{q', 50
                            mem[_180 + 96] = stor0
                            if stor10:
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        mem[_180 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[_180 + ceil32(return_data.size) + 132] = 0
                                        mem[_180 + ceil32(return_data.size) + 164] = 128
                                        mem[_180 + ceil32(return_data.size) + 260] = mem[_180]
                                        idx = 0
                                        s = _180 + 32
                                        t = _180 + ceil32(return_data.size) + 292
                                        while idx < mem[_180]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_180 + ceil32(return_data.size) + 196] = address(stor8[stor9])
                                        mem[_180 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(stor8[stor9]), block.timestamp + 1200, mem[_180 + ceil32(return_data.size) + 260 len (32 * mem[_180]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_180 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _180 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _439 = mem[_180 + ceil32(return_data.size) + 128 len 4], 0
                                        require mem[_180 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                        require _180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _180 + ceil32(return_data.size) + return_data.size + 128
                                        _451 = mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                        if mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                            revert with 'NH{q', 65
                                        if _180 + (2 * ceil32(return_data.size)) + floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _180 + (2 * ceil32(return_data.size)) + floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                                        mem[_180 + (2 * ceil32(return_data.size)) + 128] = mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                        require _439 + (32 * _451) + 32 <= return_data.size
                                        idx = 0
                                        s = _180 + ceil32(return_data.size) + _439 + 160
                                        t = _180 + (2 * ceil32(return_data.size)) + 160
                                        while idx < _451:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                            else:
                                stor3 = 0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_180 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_180 + ceil32(return_data.size) + 132] = 0
                                mem[_180 + ceil32(return_data.size) + 164] = 128
                                mem[_180 + ceil32(return_data.size) + 260] = mem[_180]
                                idx = 0
                                s = _180 + 32
                                t = _180 + ceil32(return_data.size) + 292
                                while idx < mem[_180]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_180 + ceil32(return_data.size) + 196] = stor1
                                mem[_180 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                require ext_code.size(stor12)
                                call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_180 + ceil32(return_data.size) + 260 len (32 * mem[_180]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_180 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _180 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _440 = mem[_180 + ceil32(return_data.size) + 128 len 4], 0
                                require mem[_180 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                require _180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _180 + ceil32(return_data.size) + return_data.size + 128
                                _452 = mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                if mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if _180 + (2 * ceil32(return_data.size)) + floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _180 + (2 * ceil32(return_data.size)) + floor32(mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                                mem[_180 + (2 * ceil32(return_data.size)) + 128] = mem[_180 + ceil32(return_data.size) + mem[_180 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                require _440 + (32 * _452) + 32 <= return_data.size
                                idx = 0
                                s = _180 + ceil32(return_data.size) + _440 + 160
                                t = _180 + (2 * ceil32(return_data.size)) + 160
                                while idx < _452:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        _561 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _567 = mem[_180]
                                        mem[mem[64] + 132] = mem[_180]
                                        idx = 0
                                        s = _180 + 32
                                        t = mem[64] + 164
                                        while idx < _567:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_561 + 68] = address(stor8[stor9])
                                        mem[_561 + 100] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _561 + (32 * _567) + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _627 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _633 = mem[_627]
                                        require mem[_627] <= test266151307()
                                        require _627 + mem[_627] + 31 < _627 + return_data.size
                                        _639 = mem[_627 + mem[_627]]
                                        if mem[_627 + mem[_627]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _627 + ceil32(return_data.size) + floor32(mem[_627 + mem[_627]]) + 1 > test266151307() or floor32(mem[_627 + mem[_627]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _627 + ceil32(return_data.size) + floor32(mem[_627 + mem[_627]]) + 1
                                        mem[_627 + ceil32(return_data.size)] = _639
                                        require _633 + (32 * _639) + 32 <= return_data.size
                                        idx = 0
                                        s = _627 + _633 + 32
                                        t = _627 + ceil32(return_data.size) + 32
                                        while idx < _639:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                else:
                    if stor4 and 500 > test266151307() / stor4:
                        revert with 'NH{q', 17
                    if mem[_163] < Mask(112, 0, 500 * stor4):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = address(stor7[idx])
                        s = mem[_163]
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        require ext_code.size(stor12)
                        staticcall stor12.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _177 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_177] == mem[_177 + 12 len 20]
                        if stor6[idx] == mem[_177 + 12 len 20]:
                            _193 = mem[64]
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_193]:
                                revert with 'NH{q', 50
                            mem[_193 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_193]:
                                revert with 'NH{q', 50
                            mem[_193 + 64] = stor0
                            if stor10:
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        mem[_193 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[_193 + ceil32(return_data.size) + 100] = 0
                                        mem[_193 + ceil32(return_data.size) + 132] = 128
                                        mem[_193 + ceil32(return_data.size) + 228] = mem[_193]
                                        idx = 0
                                        s = _193 + 32
                                        t = _193 + ceil32(return_data.size) + 260
                                        while idx < mem[_193]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_193 + ceil32(return_data.size) + 164] = address(stor8[stor9])
                                        mem[_193 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _193 + ceil32(return_data.size) + (32 * mem[_193]) + -mem[64] + 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _425 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _437 = mem[_425]
                                        require mem[_425] <= test266151307()
                                        require _425 + mem[_425] + 31 < _425 + return_data.size
                                        _449 = mem[_425 + mem[_425]]
                                        if mem[_425 + mem[_425]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _425 + ceil32(return_data.size) + floor32(mem[_425 + mem[_425]]) + 1 > test266151307() or floor32(mem[_425 + mem[_425]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _425 + ceil32(return_data.size) + floor32(mem[_425 + mem[_425]]) + 1
                                        mem[_425 + ceil32(return_data.size)] = _449
                                        require _437 + (32 * _449) + 32 <= return_data.size
                                        idx = 0
                                        s = _425 + _437 + 32
                                        t = _425 + ceil32(return_data.size) + 32
                                        while idx < _449:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                            else:
                                stor3 = 0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_193 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_193 + ceil32(return_data.size) + 100] = 0
                                mem[_193 + ceil32(return_data.size) + 132] = 128
                                mem[_193 + ceil32(return_data.size) + 228] = mem[_193]
                                idx = 0
                                s = _193 + 32
                                t = _193 + ceil32(return_data.size) + 260
                                while idx < mem[_193]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_193 + ceil32(return_data.size) + 164] = stor1
                                mem[_193 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                require ext_code.size(stor12)
                                call stor12.mem[mem[64] len 4] with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _193 + ceil32(return_data.size) + (32 * mem[_193]) + -mem[64] + 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _426 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _438 = mem[_426]
                                require mem[_426] <= test266151307()
                                require _426 + mem[_426] + 31 < _426 + return_data.size
                                _450 = mem[_426 + mem[_426]]
                                if mem[_426 + mem[_426]] > test266151307():
                                    revert with 'NH{q', 65
                                if _426 + ceil32(return_data.size) + floor32(mem[_426 + mem[_426]]) + 1 > test266151307() or floor32(mem[_426 + mem[_426]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _426 + ceil32(return_data.size) + floor32(mem[_426 + mem[_426]]) + 1
                                mem[_426 + ceil32(return_data.size)] = _450
                                require _438 + (32 * _450) + 32 <= return_data.size
                                idx = 0
                                s = _426 + _438 + 32
                                t = _426 + ceil32(return_data.size) + 32
                                while idx < _450:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        _560 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _566 = mem[_193]
                                        mem[mem[64] + 132] = mem[_193]
                                        idx = 0
                                        s = _193 + 32
                                        t = mem[64] + 164
                                        while idx < _566:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_560 + 68] = address(stor8[stor9])
                                        mem[_560 + 100] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _560 + (32 * _566) + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _626 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _632 = mem[_626]
                                        require mem[_626] <= test266151307()
                                        require _626 + mem[_626] + 31 < _626 + return_data.size
                                        _638 = mem[_626 + mem[_626]]
                                        if mem[_626 + mem[_626]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _626 + ceil32(return_data.size) + floor32(mem[_626 + mem[_626]]) + 1 > test266151307() or floor32(mem[_626 + mem[_626]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _626 + ceil32(return_data.size) + floor32(mem[_626 + mem[_626]]) + 1
                                        mem[_626 + ceil32(return_data.size)] = _638
                                        require _632 + (32 * _638) + 32 <= return_data.size
                                        idx = 0
                                        s = _626 + _632 + 32
                                        t = _626 + ceil32(return_data.size) + 32
                                        while idx < _638:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                        else:
                            _192 = mem[64]
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_192]:
                                revert with 'NH{q', 50
                            mem[_192 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_192]:
                                revert with 'NH{q', 50
                            mem[_192 + 64] = stor6[idx]
                            if 2 >= mem[_192]:
                                revert with 'NH{q', 50
                            mem[_192 + 96] = stor0
                            if stor10:
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        mem[_192 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[_192 + ceil32(return_data.size) + 132] = 0
                                        mem[_192 + ceil32(return_data.size) + 164] = 128
                                        mem[_192 + ceil32(return_data.size) + 260] = mem[_192]
                                        idx = 0
                                        s = _192 + 32
                                        t = _192 + ceil32(return_data.size) + 292
                                        while idx < mem[_192]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_192 + ceil32(return_data.size) + 196] = address(stor8[stor9])
                                        mem[_192 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(stor8[stor9]), block.timestamp + 1200, mem[_192 + ceil32(return_data.size) + 260 len (32 * mem[_192]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_192 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _192 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _435 = mem[_192 + ceil32(return_data.size) + 128 len 4], 0
                                        require mem[_192 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                        require _192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _192 + ceil32(return_data.size) + return_data.size + 128
                                        _447 = mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                        if mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                            revert with 'NH{q', 65
                                        if _192 + (2 * ceil32(return_data.size)) + floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _192 + (2 * ceil32(return_data.size)) + floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                                        mem[_192 + (2 * ceil32(return_data.size)) + 128] = mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                        require _435 + (32 * _447) + 32 <= return_data.size
                                        idx = 0
                                        s = _192 + ceil32(return_data.size) + _435 + 160
                                        t = _192 + (2 * ceil32(return_data.size)) + 160
                                        while idx < _447:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
                            else:
                                stor3 = 0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_192 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_192 + ceil32(return_data.size) + 132] = 0
                                mem[_192 + ceil32(return_data.size) + 164] = 128
                                mem[_192 + ceil32(return_data.size) + 260] = mem[_192]
                                idx = 0
                                s = _192 + 32
                                t = _192 + ceil32(return_data.size) + 292
                                while idx < mem[_192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_192 + ceil32(return_data.size) + 196] = stor1
                                mem[_192 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                require ext_code.size(stor12)
                                call stor12.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_192 + ceil32(return_data.size) + 260 len (32 * mem[_192]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_192 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _192 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _436 = mem[_192 + ceil32(return_data.size) + 128 len 4], 0
                                require mem[_192 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                require _192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _192 + ceil32(return_data.size) + return_data.size + 128
                                _448 = mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                if mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if _192 + (2 * ceil32(return_data.size)) + floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _192 + (2 * ceil32(return_data.size)) + floor32(mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129
                                mem[_192 + (2 * ceil32(return_data.size)) + 128] = mem[_192 + ceil32(return_data.size) + mem[_192 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                require _436 + (32 * _448) + 32 <= return_data.size
                                idx = 0
                                s = _192 + ceil32(return_data.size) + _436 + 160
                                t = _192 + (2 * ceil32(return_data.size)) + 160
                                while idx < _448:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if stor10 == 1:
                                    if eth.balance(this.address) < stor11:
                                        stor3 = 0
                                    else:
                                        if stor9 >= stor8.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 8
                                        if block.timestamp > -1201:
                                            revert with 'NH{q', 17
                                        _559 = mem[64]
                                        mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _565 = mem[_192]
                                        mem[mem[64] + 132] = mem[_192]
                                        idx = 0
                                        s = _192 + 32
                                        t = mem[64] + 164
                                        while idx < _565:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_559 + 68] = address(stor8[stor9])
                                        mem[_559 + 100] = block.timestamp + 1200
                                        require ext_code.size(stor12)
                                        call stor12.mem[mem[64] len 4] with:
                                           value stor11 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _559 + (32 * _565) + -mem[64] + 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _625 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _631 = mem[_625]
                                        require mem[_625] <= test266151307()
                                        require _625 + mem[_625] + 31 < _625 + return_data.size
                                        _637 = mem[_625 + mem[_625]]
                                        if mem[_625 + mem[_625]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _625 + ceil32(return_data.size) + floor32(mem[_625 + mem[_625]]) + 1 > test266151307() or floor32(mem[_625 + mem[_625]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _625 + ceil32(return_data.size) + floor32(mem[_625 + mem[_625]]) + 1
                                        mem[_625 + ceil32(return_data.size)] = _637
                                        require _631 + (32 * _637) + 32 <= return_data.size
                                        idx = 0
                                        s = _625 + _631 + 32
                                        t = _625 + ceil32(return_data.size) + 32
                                        while idx < _637:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        if stor9 == -1:
                                            revert with 'NH{q', 17
                                        stor9++
}



}
