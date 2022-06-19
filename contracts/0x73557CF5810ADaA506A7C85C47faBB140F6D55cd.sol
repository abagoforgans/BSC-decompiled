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
uint256 stor8;
address stor9;

function _fallback() payable {
    revert
}

function sub_c0336629(?) {
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor3 = 0
}

function sub_c8ce6c78(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    if not address(cd[4]):
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value cd[68] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = cd[68]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], cd[68]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_40] == bool(mem[_40])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_defc4bb8(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == Mask(112, 0, arg4)
    if stor2 != msg.sender:
        revert with 0, 'notowner'
    stor0 = address(arg1)
    stor1 = address(arg2)
    stor4 = Mask(112, 0, arg4)
    stor3 = 1
    stor8 = arg3
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
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == mem[_87]
            if mem[_87] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx])
                s = mem[_87]
                continue 
            if idx:
                if stor4 and 500 > test266151307() / stor4:
                    revert with 'NH{q', 17
                if mem[_87] < Mask(112, 0, 500 * stor4):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = address(stor7[idx])
                    s = mem[_87]
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if stor6[idx]:
                    stor3 = 0
                    require ext_code.size(stor9)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_100] == mem[_100 + 12 len 20]
                    if stor6[idx] != mem[_100 + 12 len 20]:
                        _112 = mem[64]
                        require ext_code.size(stor9)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64] + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_112]:
                            revert with 'NH{q', 50
                        mem[_112 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_112]:
                            revert with 'NH{q', 50
                        mem[_112 + 64] = stor6[idx]
                        if 2 >= mem[_112]:
                            revert with 'NH{q', 50
                        mem[_112 + 96] = stor0
                        if block.timestamp > -1201:
                            revert with 'NH{q', 17
                        mem[_112 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_112 + ceil32(return_data.size) + 132] = 0
                        mem[_112 + ceil32(return_data.size) + 164] = 128
                        mem[_112 + ceil32(return_data.size) + 260] = mem[_112]
                        idx = 0
                        s = _112 + 32
                        t = _112 + ceil32(return_data.size) + 292
                        while idx < mem[_112]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_112 + ceil32(return_data.size) + 196] = stor1
                        mem[_112 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                        require ext_code.size(stor9)
                        call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args 0, 128, stor1, block.timestamp + 1200, mem[_112 + ceil32(return_data.size) + 260 len (32 * mem[_112]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_112 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _112 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _221 = mem[_112 + ceil32(return_data.size) + 128 len 4], 0
                        require mem[_112 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                        require _112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _112 + ceil32(return_data.size) + return_data.size + 128
                        _227 = mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                        if mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                            revert with 'NH{q', 65
                        if _112 + (2 * ceil32(return_data.size)) + floor32(mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[_112 + (2 * ceil32(return_data.size)) + 128] = mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                        require _221 + (32 * _227) + 32 <= return_data.size
                        idx = 0
                        s = _112 + ceil32(return_data.size) + _221 + 160
                        t = _112 + (2 * ceil32(return_data.size)) + 160
                        while idx < _227:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        _113 = mem[64]
                        require ext_code.size(stor9)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_113]:
                            revert with 'NH{q', 50
                        mem[_113 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_113]:
                            revert with 'NH{q', 50
                        mem[_113 + 64] = stor0
                        if block.timestamp > -1201:
                            revert with 'NH{q', 17
                        mem[_113 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_113 + ceil32(return_data.size) + 100] = 0
                        mem[_113 + ceil32(return_data.size) + 132] = 128
                        mem[_113 + ceil32(return_data.size) + 228] = mem[_113]
                        idx = 0
                        s = _113 + 32
                        t = _113 + ceil32(return_data.size) + 260
                        while idx < mem[_113]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_113 + ceil32(return_data.size) + 164] = stor1
                        mem[_113 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                        require ext_code.size(stor9)
                        call stor9.mem[mem[64] len 4] with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _113 + ceil32(return_data.size) + (32 * mem[_113]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _216 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _222 = mem[_216]
                        require mem[_216] <= test266151307()
                        require _216 + mem[_216] + 31 < _216 + return_data.size
                        _228 = mem[_216 + mem[_216]]
                        if mem[_216 + mem[_216]] > test266151307():
                            revert with 'NH{q', 65
                        if _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1 > test266151307() or floor32(mem[_216 + mem[_216]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1
                        mem[_216 + ceil32(return_data.size)] = _228
                        require _222 + (32 * _228) + 32 <= return_data.size
                        idx = 0
                        s = _216 + _222 + 32
                        t = _216 + ceil32(return_data.size) + 32
                        while idx < _228:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if mem[_87] >= stor4:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        stor3 = 0
                        require ext_code.size(stor9)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _92 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_92] == mem[_92 + 12 len 20]
                        if stor6[idx] == mem[_92 + 12 len 20]:
                            _105 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_105]:
                                revert with 'NH{q', 50
                            mem[_105 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_105]:
                                revert with 'NH{q', 50
                            mem[_105 + 64] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_105 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_105 + ceil32(return_data.size) + 100] = 0
                            mem[_105 + ceil32(return_data.size) + 132] = 128
                            mem[_105 + ceil32(return_data.size) + 228] = mem[_105]
                            idx = 0
                            s = _105 + 32
                            t = _105 + ceil32(return_data.size) + 260
                            while idx < mem[_105]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_105 + ceil32(return_data.size) + 164] = stor1
                            mem[_105 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_105 + ceil32(return_data.size) + 228 len (32 * mem[_105]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_105 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _105 + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _226 = mem[_105 + ceil32(return_data.size) + 96 len 4], 0
                            require mem[_105 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                            require _105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _105 + ceil32(return_data.size) + return_data.size + 96
                            _232 = mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                            if mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if _105 + (2 * ceil32(return_data.size)) + floor32(mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[_105 + (2 * ceil32(return_data.size)) + 96] = mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                            require _226 + (32 * _232) + 32 <= return_data.size
                            idx = 0
                            s = _105 + ceil32(return_data.size) + _226 + 128
                            t = _105 + (2 * ceil32(return_data.size)) + 128
                            while idx < _232:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            _104 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_104]:
                                revert with 'NH{q', 50
                            mem[_104 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_104]:
                                revert with 'NH{q', 50
                            mem[_104 + 64] = stor6[idx]
                            if 2 >= mem[_104]:
                                revert with 'NH{q', 50
                            mem[_104 + 96] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_104 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_104 + ceil32(return_data.size) + 132] = 0
                            mem[_104 + ceil32(return_data.size) + 164] = 128
                            mem[_104 + ceil32(return_data.size) + 260] = mem[_104]
                            idx = 0
                            s = _104 + 32
                            t = _104 + ceil32(return_data.size) + 292
                            while idx < mem[_104]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_104 + ceil32(return_data.size) + 196] = stor1
                            mem[_104 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_104 + ceil32(return_data.size) + 260 len (32 * mem[_104]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_104 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _104 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _225 = mem[_104 + ceil32(return_data.size) + 128 len 4], 0
                            require mem[_104 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                            require _104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _104 + ceil32(return_data.size) + return_data.size + 128
                            _231 = mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            if mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                revert with 'NH{q', 65
                            if _104 + (2 * ceil32(return_data.size)) + floor32(mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[_104 + (2 * ceil32(return_data.size)) + 128] = mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            require _225 + (32 * _231) + 32 <= return_data.size
                            idx = 0
                            s = _104 + ceil32(return_data.size) + _225 + 160
                            t = _104 + (2 * ceil32(return_data.size)) + 160
                            while idx < _231:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if stor4 and 500 > test266151307() / stor4:
                        revert with 'NH{q', 17
                    if mem[_87] < Mask(112, 0, 500 * stor4):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = address(stor7[idx])
                        s = mem[_87]
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        stor3 = 0
                        require ext_code.size(stor9)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_101] == mem[_101 + 12 len 20]
                        if stor6[idx] == mem[_101 + 12 len 20]:
                            _117 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_117]:
                                revert with 'NH{q', 50
                            mem[_117 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_117]:
                                revert with 'NH{q', 50
                            mem[_117 + 64] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_117 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_117 + ceil32(return_data.size) + 100] = 0
                            mem[_117 + ceil32(return_data.size) + 132] = 128
                            mem[_117 + ceil32(return_data.size) + 228] = mem[_117]
                            idx = 0
                            s = _117 + 32
                            t = _117 + ceil32(return_data.size) + 260
                            while idx < mem[_117]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_117 + ceil32(return_data.size) + 164] = stor1
                            mem[_117 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_117 + ceil32(return_data.size) + 228 len (32 * mem[_117]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_117 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _117 + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _224 = mem[_117 + ceil32(return_data.size) + 96 len 4], 0
                            require mem[_117 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                            require _117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _117 + ceil32(return_data.size) + return_data.size + 96
                            _230 = mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                            if mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                                revert with 'NH{q', 65
                            if _117 + (2 * ceil32(return_data.size)) + floor32(mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[_117 + (2 * ceil32(return_data.size)) + 96] = mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                            require _224 + (32 * _230) + 32 <= return_data.size
                            idx = 0
                            s = _117 + ceil32(return_data.size) + _224 + 128
                            t = _117 + (2 * ceil32(return_data.size)) + 128
                            while idx < _230:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            _116 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_116]:
                                revert with 'NH{q', 50
                            mem[_116 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_116]:
                                revert with 'NH{q', 50
                            mem[_116 + 64] = stor6[idx]
                            if 2 >= mem[_116]:
                                revert with 'NH{q', 50
                            mem[_116 + 96] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_116 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_116 + ceil32(return_data.size) + 132] = 0
                            mem[_116 + ceil32(return_data.size) + 164] = 128
                            mem[_116 + ceil32(return_data.size) + 260] = mem[_116]
                            idx = 0
                            s = _116 + 32
                            t = _116 + ceil32(return_data.size) + 292
                            while idx < mem[_116]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_116 + ceil32(return_data.size) + 196] = stor1
                            mem[_116 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_116 + ceil32(return_data.size) + 260 len (32 * mem[_116]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_116 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _116 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _223 = mem[_116 + ceil32(return_data.size) + 128 len 4], 0
                            require mem[_116 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                            require _116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _116 + ceil32(return_data.size) + return_data.size + 128
                            _229 = mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            if mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                revert with 'NH{q', 65
                            if _116 + (2 * ceil32(return_data.size)) + floor32(mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[_116 + (2 * ceil32(return_data.size)) + 128] = mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            require _223 + (32 * _229) + 32 <= return_data.size
                            idx = 0
                            s = _116 + ceil32(return_data.size) + _223 + 160
                            t = _116 + (2 * ceil32(return_data.size)) + 160
                            while idx < _229:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
}

function sub_8284789b(?) payable {
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
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == mem[_87]
            if mem[_87] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = address(stor7[idx])
                s = mem[_87]
                continue 
            if idx:
                if stor4 and 500 > test266151307() / stor4:
                    revert with 'NH{q', 17
                if mem[_87] < Mask(112, 0, 500 * stor4):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = address(stor7[idx])
                    s = mem[_87]
                    continue 
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if stor6[idx]:
                    if eth.balance(this.address) <= stor8:
                        stor3 = 0
                    else:
                        require ext_code.size(stor9)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_100] == mem[_100 + 12 len 20]
                        if stor6[idx] != mem[_100 + 12 len 20]:
                            _112 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_112]:
                                revert with 'NH{q', 50
                            mem[_112 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_112]:
                                revert with 'NH{q', 50
                            mem[_112 + 64] = stor6[idx]
                            if 2 >= mem[_112]:
                                revert with 'NH{q', 50
                            mem[_112 + 96] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_112 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_112 + ceil32(return_data.size) + 132] = 0
                            mem[_112 + ceil32(return_data.size) + 164] = 128
                            mem[_112 + ceil32(return_data.size) + 260] = mem[_112]
                            idx = 0
                            s = _112 + 32
                            t = _112 + ceil32(return_data.size) + 292
                            while idx < mem[_112]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_112 + ceil32(return_data.size) + 196] = stor1
                            mem[_112 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value stor8 wei
                                 gas gas_remaining wei
                                args 0, 128, stor1, block.timestamp + 1200, mem[_112 + ceil32(return_data.size) + 260 len (32 * mem[_112]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_112 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _112 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _221 = mem[_112 + ceil32(return_data.size) + 128 len 4], 0
                            require mem[_112 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                            require _112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _112 + ceil32(return_data.size) + return_data.size + 128
                            _227 = mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            if mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                revert with 'NH{q', 65
                            if _112 + (2 * ceil32(return_data.size)) + floor32(mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[_112 + (2 * ceil32(return_data.size)) + 128] = mem[_112 + ceil32(return_data.size) + mem[_112 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                            require _221 + (32 * _227) + 32 <= return_data.size
                            idx = 0
                            s = _112 + ceil32(return_data.size) + _221 + 160
                            t = _112 + (2 * ceil32(return_data.size)) + 160
                            while idx < _227:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            _113 = mem[64]
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 0 >= mem[_113]:
                                revert with 'NH{q', 50
                            mem[_113 + 32] = ext_call.return_data[12 len 20]
                            if 1 >= mem[_113]:
                                revert with 'NH{q', 50
                            mem[_113 + 64] = stor0
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[_113 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_113 + ceil32(return_data.size) + 100] = 0
                            mem[_113 + ceil32(return_data.size) + 132] = 128
                            mem[_113 + ceil32(return_data.size) + 228] = mem[_113]
                            idx = 0
                            s = _113 + 32
                            t = _113 + ceil32(return_data.size) + 260
                            while idx < mem[_113]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_113 + ceil32(return_data.size) + 164] = stor1
                            mem[_113 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                            require ext_code.size(stor9)
                            call stor9.mem[mem[64] len 4] with:
                               value stor8 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _113 + ceil32(return_data.size) + (32 * mem[_113]) + -mem[64] + 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _222 = mem[_216]
                            require mem[_216] <= test266151307()
                            require _216 + mem[_216] + 31 < _216 + return_data.size
                            _228 = mem[_216 + mem[_216]]
                            if mem[_216 + mem[_216]] > test266151307():
                                revert with 'NH{q', 65
                            if _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1 > test266151307() or floor32(mem[_216 + mem[_216]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _216 + ceil32(return_data.size) + floor32(mem[_216 + mem[_216]]) + 1
                            mem[_216 + ceil32(return_data.size)] = _228
                            require _222 + (32 * _228) + 32 <= return_data.size
                            idx = 0
                            s = _216 + _222 + 32
                            t = _216 + ceil32(return_data.size) + 32
                            while idx < _228:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                if mem[_87] >= stor4:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        if eth.balance(this.address) <= stor8:
                            stor3 = 0
                        else:
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _93 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_93] == mem[_93 + 12 len 20]
                            if stor6[idx] == mem[_93 + 12 len 20]:
                                _105 = mem[64]
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_105]:
                                    revert with 'NH{q', 50
                                mem[_105 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_105]:
                                    revert with 'NH{q', 50
                                mem[_105 + 64] = stor0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_105 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_105 + ceil32(return_data.size) + 100] = 0
                                mem[_105 + ceil32(return_data.size) + 132] = 128
                                mem[_105 + ceil32(return_data.size) + 228] = mem[_105]
                                idx = 0
                                s = _105 + 32
                                t = _105 + ceil32(return_data.size) + 260
                                while idx < mem[_105]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_105 + ceil32(return_data.size) + 164] = stor1
                                mem[_105 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                require ext_code.size(stor9)
                                call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor8 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_105 + ceil32(return_data.size) + 228 len (32 * mem[_105]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_105 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _105 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _226 = mem[_105 + ceil32(return_data.size) + 96 len 4], 0
                                require mem[_105 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                                require _105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _105 + ceil32(return_data.size) + return_data.size + 96
                                _232 = mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                                if mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if _105 + (2 * ceil32(return_data.size)) + floor32(mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[_105 + (2 * ceil32(return_data.size)) + 96] = mem[_105 + ceil32(return_data.size) + mem[_105 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                                require _226 + (32 * _232) + 32 <= return_data.size
                                idx = 0
                                s = _105 + ceil32(return_data.size) + _226 + 128
                                t = _105 + (2 * ceil32(return_data.size)) + 128
                                while idx < _232:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                _104 = mem[64]
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_104]:
                                    revert with 'NH{q', 50
                                mem[_104 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_104]:
                                    revert with 'NH{q', 50
                                mem[_104 + 64] = stor6[idx]
                                if 2 >= mem[_104]:
                                    revert with 'NH{q', 50
                                mem[_104 + 96] = stor0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_104 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_104 + ceil32(return_data.size) + 132] = 0
                                mem[_104 + ceil32(return_data.size) + 164] = 128
                                mem[_104 + ceil32(return_data.size) + 260] = mem[_104]
                                idx = 0
                                s = _104 + 32
                                t = _104 + ceil32(return_data.size) + 292
                                while idx < mem[_104]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_104 + ceil32(return_data.size) + 196] = stor1
                                mem[_104 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                require ext_code.size(stor9)
                                call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor8 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_104 + ceil32(return_data.size) + 260 len (32 * mem[_104]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_104 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _104 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _225 = mem[_104 + ceil32(return_data.size) + 128 len 4], 0
                                require mem[_104 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                require _104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _104 + ceil32(return_data.size) + return_data.size + 128
                                _231 = mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                if mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if _104 + (2 * ceil32(return_data.size)) + floor32(mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[_104 + (2 * ceil32(return_data.size)) + 128] = mem[_104 + ceil32(return_data.size) + mem[_104 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                require _225 + (32 * _231) + 32 <= return_data.size
                                idx = 0
                                s = _104 + ceil32(return_data.size) + _225 + 160
                                t = _104 + (2 * ceil32(return_data.size)) + 160
                                while idx < _231:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                else:
                    if stor4 and 500 > test266151307() / stor4:
                        revert with 'NH{q', 17
                    if mem[_87] < Mask(112, 0, 500 * stor4):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = address(stor7[idx])
                        s = mem[_87]
                        continue 
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if stor6[idx]:
                        if eth.balance(this.address) <= stor8:
                            stor3 = 0
                        else:
                            require ext_code.size(stor9)
                            staticcall stor9.WETH() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_101] == mem[_101 + 12 len 20]
                            if stor6[idx] == mem[_101 + 12 len 20]:
                                _117 = mem[64]
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_117]:
                                    revert with 'NH{q', 50
                                mem[_117 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_117]:
                                    revert with 'NH{q', 50
                                mem[_117 + 64] = stor0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_117 + ceil32(return_data.size) + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_117 + ceil32(return_data.size) + 100] = 0
                                mem[_117 + ceil32(return_data.size) + 132] = 128
                                mem[_117 + ceil32(return_data.size) + 228] = mem[_117]
                                idx = 0
                                s = _117 + 32
                                t = _117 + ceil32(return_data.size) + 260
                                while idx < mem[_117]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_117 + ceil32(return_data.size) + 164] = stor1
                                mem[_117 + ceil32(return_data.size) + 196] = block.timestamp + 1200
                                require ext_code.size(stor9)
                                call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor8 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_117 + ceil32(return_data.size) + 228 len (32 * mem[_117]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_117 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _117 + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _224 = mem[_117 + ceil32(return_data.size) + 96 len 4], 0
                                require mem[_117 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                                require _117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _117 + ceil32(return_data.size) + return_data.size + 96
                                _230 = mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                                if mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                                    revert with 'NH{q', 65
                                if _117 + (2 * ceil32(return_data.size)) + floor32(mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[_117 + (2 * ceil32(return_data.size)) + 96] = mem[_117 + ceil32(return_data.size) + mem[_117 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                                require _224 + (32 * _230) + 32 <= return_data.size
                                idx = 0
                                s = _117 + ceil32(return_data.size) + _224 + 128
                                t = _117 + (2 * ceil32(return_data.size)) + 128
                                while idx < _230:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                _116 = mem[64]
                                require ext_code.size(stor9)
                                staticcall stor9.WETH() with:
                                        gas gas_remaining wei
                                mem[mem[64] + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 0 >= mem[_116]:
                                    revert with 'NH{q', 50
                                mem[_116 + 32] = ext_call.return_data[12 len 20]
                                if 1 >= mem[_116]:
                                    revert with 'NH{q', 50
                                mem[_116 + 64] = stor6[idx]
                                if 2 >= mem[_116]:
                                    revert with 'NH{q', 50
                                mem[_116 + 96] = stor0
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[_116 + ceil32(return_data.size) + 128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_116 + ceil32(return_data.size) + 132] = 0
                                mem[_116 + ceil32(return_data.size) + 164] = 128
                                mem[_116 + ceil32(return_data.size) + 260] = mem[_116]
                                idx = 0
                                s = _116 + 32
                                t = _116 + ceil32(return_data.size) + 292
                                while idx < mem[_116]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_116 + ceil32(return_data.size) + 196] = stor1
                                mem[_116 + ceil32(return_data.size) + 228] = block.timestamp + 1200
                                require ext_code.size(stor9)
                                call stor9.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value stor8 wei
                                     gas gas_remaining wei
                                    args 0, 128, stor1, block.timestamp + 1200, mem[_116 + ceil32(return_data.size) + 260 len (32 * mem[_116]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_116 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _116 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _223 = mem[_116 + ceil32(return_data.size) + 128 len 4], 0
                                require mem[_116 + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
                                require _116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 159 < _116 + ceil32(return_data.size) + return_data.size + 128
                                _229 = mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                if mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if _116 + (2 * ceil32(return_data.size)) + floor32(mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 129 > test266151307() or floor32(mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[_116 + (2 * ceil32(return_data.size)) + 128] = mem[_116 + ceil32(return_data.size) + mem[_116 + ceil32(return_data.size) + 128 len 4], 0 + 128]
                                require _223 + (32 * _229) + 32 <= return_data.size
                                idx = 0
                                s = _116 + ceil32(return_data.size) + _223 + 160
                                t = _116 + (2 * ceil32(return_data.size)) + 160
                                while idx < _229:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
}



}
