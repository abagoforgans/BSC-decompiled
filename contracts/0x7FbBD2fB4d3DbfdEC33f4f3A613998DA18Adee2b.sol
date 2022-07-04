contract main {




// =====================  Runtime code  =====================


#
#  - sub_0317cf9a(?)
#  - sub_3c682394(?)
#  - sub_640a8633(?)
#
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function setExecutor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function returnEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function returnToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bec5c170(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[address(msg.sender)]:
        idx = 0
        s = cd[4]
        while idx < ('cd', 100).length:
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _765 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            _767 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_767 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_767]:
                revert with 'NH{q', 50
            mem[_767 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_767]:
                revert with 'NH{q', 50
            mem[_767 + 64] = mem[(32 * idx + 1) + 140 len 20]
            mem[_767 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_767 + 100] = s
            mem[_767 + 132] = 64
            mem[_767 + 164] = mem[_767]
            t = 0
            u = _767 + 32
            v = _767 + 196
            while t < mem[_767]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_765))
            staticcall address(_765).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _767 + (32 * mem[_767]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1039 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1042 = mem[_1039]
            require mem[_1039] <= test266151307()
            require _1039 + mem[_1039] + 31 < _1039 + return_data.size
            _1055 = mem[_1039 + mem[_1039]]
            if mem[_1039 + mem[_1039]] > test266151307():
                revert with 'NH{q', 65
            if _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1 > test266151307() or floor32(mem[_1039 + mem[_1039]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1
            mem[_1039 + ceil32(return_data.size)] = _1055
            require _1042 + (32 * _1055) + 32 <= return_data.size
            t = 0
            u = _1039 + _1042 + 32
            v = _1039 + ceil32(return_data.size) + 32
            while t < _1055:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if 1 >= _1055:
                revert with 'NH{q', 50
            if _1055 == -1:
                revert with 'NH{q', 17
            t = _1055 + 1
            u = mem[_1039 + ceil32(return_data.size) + 64]
            continue 
        if s < cd[36]:
            if not s:
                _770 = mem[64]
                mem[64] = mem[64] + 64
                mem[_770] = 1
                mem[_770 + 32] = '0'
                if not cd[36]:
                    _792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_792] = 1
                    mem[_792 + 32] = '0'
                    _795 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    mem[mem[64] + 55] = '0'
                    mem[mem[64] + 56] = ' is less then minAmountOut = '
                    mem[mem[64] + 85] = '0'
                    mem[mem[64] + 86] = 0
                    _1533 = mem[64]
                    mem[64] = mem[64] + 86
                    mem[_795 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_795 + 90] = 32
                    _1553 = mem[_1533]
                    mem[_795 + 122] = mem[_1533]
                    mem[_795 + 154 len ceil32(_1553)] = mem[_1533 + 32 len ceil32(_1553)]
                    if ceil32(_1553) > _1553:
                        mem[_795 + _1553 + 154] = 0
                    revert with 0, 32, mem[_795 + 122 len ceil32(_1553) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _1024 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_1024]:
                            revert with 'NH{q', 50
                        mem[t + _1024 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _1511 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _1563 = mem[_770]
                    mem[mem[64] + 55 len ceil32(mem[_770])] = mem[_770 + 32 len ceil32(mem[_770])]
                    mem[mem[64] + _1563 + 55] = ' is less then minAmountOut = '
                    if ceil32(_1563) <= _1563:
                        _2251 = mem[_1024]
                        mem[mem[64] + _1563 + 84 len ceil32(mem[_1024])] = mem[_1024 + 32 len ceil32(mem[_1024])]
                        if ceil32(_2251) <= _2251:
                            _3049 = mem[64]
                            mem[64] = mem[64] + _1563 + _2251 + 84
                            mem[_1511 + _1563 + _2251 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1511 + _1563 + _2251 + 88] = 32
                            _3127 = mem[_3049]
                            mem[_1511 + _1563 + _2251 + 120] = mem[_3049]
                            mem[_1511 + _1563 + _2251 + 152 len ceil32(_3127)] = mem[_3049 + 32 len ceil32(_3127)]
                            if ceil32(_3127) > _3127:
                                mem[_1511 + _1563 + _2251 + _3127 + 152] = 0
                            revert with 0, 32, mem[_1511 + _1563 + _2251 + 120 len ceil32(_3127) + 32]
                        mem[mem[64] + _1563 + _2251 + 84] = 0
                        _3081 = mem[64]
                        mem[64] = mem[64] + _1563 + _2251 + 84
                        mem[_1511 + _1563 + _2251 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1511 + _1563 + _2251 + 88] = 32
                        _3149 = mem[_3081]
                        mem[_1511 + _1563 + _2251 + 120] = mem[_3081]
                        mem[_1511 + _1563 + _2251 + 152 len ceil32(_3149)] = mem[_3081 + 32 len ceil32(_3149)]
                        if ceil32(_3149) > _3149:
                            mem[_1511 + _1563 + _2251 + _3149 + 152] = 0
                        revert with 0, 32, mem[_1511 + _1563 + _2251 + 120 len ceil32(_3149) + 32]
                    _2262 = mem[_1024]
                    mem[mem[64] + _1563 + 84 len ceil32(mem[_1024])] = mem[_1024 + 32 len ceil32(mem[_1024])]
                    if ceil32(_2262) <= _2262:
                        _3051 = mem[64]
                        mem[64] = mem[64] + _1563 + _2262 + 84
                        mem[_1511 + _1563 + _2262 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1511 + _1563 + _2262 + 88] = 32
                        _3128 = mem[_3051]
                        mem[_1511 + _1563 + _2262 + 120] = mem[_3051]
                        mem[_1511 + _1563 + _2262 + 152 len ceil32(_3128)] = mem[_3051 + 32 len ceil32(_3128)]
                        if ceil32(_3128) > _3128:
                            mem[_1511 + _1563 + _2262 + _3128 + 152] = 0
                        revert with 0, 32, mem[_1511 + _1563 + _2262 + 120 len ceil32(_3128) + 32]
                    mem[mem[64] + _1563 + _2262 + 84] = 0
                    _3083 = mem[64]
                    mem[64] = _1511 + _1563 + _2262 + 84
                    mem[_1511 + _1563 + _2262 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1511 + _1563 + _2262 + 88] = 32
                    _3150 = mem[_3083]
                    mem[_1511 + _1563 + _2262 + 120] = mem[_3083]
                    mem[_1511 + _1563 + _2262 + 152 len ceil32(_3150)] = mem[_3083 + 32 len ceil32(_3150)]
                    if ceil32(_3150) > _3150:
                        mem[_1511 + _1563 + _2262 + _3150 + 152] = 0
                    revert with 0, 32, mem[_1511 + _1563 + _2262 + 120 len ceil32(_3150) + 32]
                mem[_1024 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1024]:
                        revert with 'NH{q', 50
                    mem[t + _1024 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1512 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _1564 = mem[_770]
                mem[mem[64] + 55 len ceil32(mem[_770])] = mem[_770 + 32 len ceil32(mem[_770])]
                mem[mem[64] + _1564 + 55] = ' is less then minAmountOut = '
                if ceil32(_1564) <= _1564:
                    _2252 = mem[_1024]
                    mem[mem[64] + _1564 + 84 len ceil32(mem[_1024])] = mem[_1024 + 32 len ceil32(mem[_1024])]
                    if ceil32(_2252) <= _2252:
                        _3053 = mem[64]
                        mem[64] = mem[64] + _1564 + _2252 + 84
                        mem[_1512 + _1564 + _2252 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1512 + _1564 + _2252 + 88] = 32
                        _3129 = mem[_3053]
                        mem[_1512 + _1564 + _2252 + 120] = mem[_3053]
                        mem[_1512 + _1564 + _2252 + 152 len ceil32(_3129)] = mem[_3053 + 32 len ceil32(_3129)]
                        if ceil32(_3129) > _3129:
                            mem[_1512 + _1564 + _2252 + _3129 + 152] = 0
                        revert with 0, 32, mem[_1512 + _1564 + _2252 + 120 len ceil32(_3129) + 32]
                    mem[mem[64] + _1564 + _2252 + 84] = 0
                    _3085 = mem[64]
                    mem[64] = _1512 + _1564 + _2252 + 84
                    mem[_1512 + _1564 + _2252 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1512 + _1564 + _2252 + 88] = 32
                    _3151 = mem[_3085]
                    mem[_1512 + _1564 + _2252 + 120] = mem[_3085]
                    mem[_1512 + _1564 + _2252 + 152 len ceil32(_3151)] = mem[_3085 + 32 len ceil32(_3151)]
                    if ceil32(_3151) > _3151:
                        mem[_1512 + _1564 + _2252 + _3151 + 152] = 0
                    revert with 0, 32, mem[_1512 + _1564 + _2252 + 120 len ceil32(_3151) + 32]
                _2263 = mem[_1024]
                mem[mem[64] + _1564 + 84 len ceil32(mem[_1024])] = mem[_1024 + 32 len ceil32(mem[_1024])]
                if ceil32(_2263) <= _2263:
                    _3055 = mem[64]
                    mem[64] = mem[64] + _1564 + _2263 + 84
                    mem[_1512 + _1564 + _2263 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1512 + _1564 + _2263 + 88] = 32
                    _3130 = mem[_3055]
                    mem[_1512 + _1564 + _2263 + 120] = mem[_3055]
                    mem[_1512 + _1564 + _2263 + 152 len ceil32(_3130)] = mem[_3055 + 32 len ceil32(_3130)]
                    if ceil32(_3130) > _3130:
                        mem[_1512 + _1564 + _2263 + _3130 + 152] = 0
                    revert with 0, 32, mem[_1512 + _1564 + _2263 + 120 len ceil32(_3130) + 32]
                mem[mem[64] + _1564 + _2263 + 84] = 0
                _3087 = mem[64]
                mem[64] = mem[64] + _1564 + _2263 + 84
                mem[_1512 + _1564 + _2263 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1512 + _1564 + _2263 + 88] = 32
                _3152 = mem[_3087]
                mem[_1512 + _1564 + _2263 + 120] = mem[_3087]
                mem[_1512 + _1564 + _2263 + 152 len ceil32(_3152)] = mem[_3087 + 32 len ceil32(_3152)]
                if ceil32(_3152) > _3152:
                    mem[_1512 + _1564 + _2263 + _3152 + 152] = 0
                revert with 0, 32, mem[_1512 + _1564 + _2263 + 120 len ceil32(_3152) + 32]
            t = 0
            idx = s
            while idx:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                idx = idx / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _1023 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                idx = s
                while idx:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_1023]:
                        revert with 'NH{q', 50
                    mem[u + _1023 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                if not cd[36]:
                    _1517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1517] = 1
                    mem[_1517 + 32] = '0'
                    _1540 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _1582 = mem[_1023]
                    mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
                    mem[mem[64] + _1582 + 55] = ' is less then minAmountOut = '
                    mem[mem[64] + _1582 + 84] = '0'
                    mem[mem[64] + _1582 + 85] = 0
                    if ceil32(_1582) <= _1582:
                        _3073 = mem[64]
                        mem[64] = mem[64] + _1582 + 85
                        mem[_1540 + _1582 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1540 + _1582 + 89] = 32
                        _3145 = mem[_3073]
                        mem[_1540 + _1582 + 121] = mem[_3073]
                        mem[_1540 + _1582 + 153 len ceil32(_3145)] = mem[_3073 + 32 len ceil32(_3145)]
                        if ceil32(_3145) > _3145:
                            mem[_1540 + _1582 + _3145 + 153] = 0
                        revert with 0, 32, mem[_1540 + _1582 + 121 len ceil32(_3145) + 32]
                    _3075 = mem[64]
                    mem[64] = mem[64] + _1582 + 85
                    mem[_1540 + _1582 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1540 + _1582 + 89] = 32
                    _3146 = mem[_3075]
                    mem[_1540 + _1582 + 121] = mem[_3075]
                    mem[_1540 + _1582 + 153 len ceil32(_3146)] = mem[_3075 + 32 len ceil32(_3146)]
                    if ceil32(_3146) > _3146:
                        mem[_1540 + _1582 + _3146 + 153] = 0
                    revert with 0, 32, mem[_1540 + _1582 + 121 len ceil32(_3146) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _2180 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_2180]:
                            revert with 'NH{q', 50
                        mem[t + _2180 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _3033 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3165 = mem[_1023]
                    mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
                    var111001 = ceil32(_3165)
                    mem[mem[64] + _3165 + 55] = ' is less then minAmountOut = '
                    if ceil32(_3165) <= _3165:
                        _4205 = mem[_2180]
                        mem[mem[64] + _3165 + 84 len ceil32(mem[_2180])] = mem[_2180 + 32 len ceil32(mem[_2180])]
                        if ceil32(_4205) <= _4205:
                            _4825 = mem[64]
                            mem[64] = mem[64] + _3165 + _4205 + 84
                            mem[_3033 + _3165 + _4205 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3033 + _3165 + _4205 + 88] = 32
                            _4937 = mem[_4825]
                            mem[_3033 + _3165 + _4205 + 120] = mem[_4825]
                            mem[_3033 + _3165 + _4205 + 152 len ceil32(_4937)] = mem[_4825 + 32 len ceil32(_4937)]
                            if ceil32(_4937) > _4937:
                                mem[_3033 + _3165 + _4205 + _4937 + 152] = 0
                            revert with 0, 32, mem[_3033 + _3165 + _4205 + 120 len ceil32(_4937) + 32]
                        mem[mem[64] + _3165 + _4205 + 84] = 0
                        _4857 = mem[64]
                        mem[64] = mem[64] + _3165 + _4205 + 84
                        mem[_3033 + _3165 + _4205 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3033 + _3165 + _4205 + 88] = 32
                        _4969 = mem[_4857]
                        mem[_3033 + _3165 + _4205 + 120] = mem[_4857]
                        mem[_3033 + _3165 + _4205 + 152 len ceil32(_4969)] = mem[_4857 + 32 len ceil32(_4969)]
                        if ceil32(_4969) > _4969:
                            mem[_3033 + _3165 + _4205 + _4969 + 152] = 0
                        revert with 0, 32, mem[_3033 + _3165 + _4205 + 120 len ceil32(_4969) + 32]
                    _4217 = mem[_2180]
                    mem[mem[64] + _3165 + 84 len ceil32(mem[_2180])] = mem[_2180 + 32 len ceil32(mem[_2180])]
                    if ceil32(_4217) <= _4217:
                        _4827 = mem[64]
                        mem[64] = mem[64] + _3165 + _4217 + 84
                        mem[_3033 + _3165 + _4217 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3033 + _3165 + _4217 + 88] = 32
                        _4938 = mem[_4827]
                        mem[_3033 + _3165 + _4217 + 120] = mem[_4827]
                        mem[_3033 + _3165 + _4217 + 152 len ceil32(_4938)] = mem[_4827 + 32 len ceil32(_4938)]
                        if ceil32(_4938) > _4938:
                            mem[_3033 + _3165 + _4217 + _4938 + 152] = 0
                        revert with 0, 32, mem[_3033 + _3165 + _4217 + 120 len ceil32(_4938) + 32]
                    mem[mem[64] + _3165 + _4217 + 84] = 0
                    _4859 = mem[64]
                    mem[64] = mem[64] + _3165 + _4217 + 84
                    mem[_3033 + _3165 + _4217 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3033 + _3165 + _4217 + 88] = 32
                    _4970 = mem[_4859]
                    mem[_3033 + _3165 + _4217 + 120] = mem[_4859]
                    mem[_3033 + _3165 + _4217 + 152 len ceil32(_4970)] = mem[_4859 + 32 len ceil32(_4970)]
                    if ceil32(_4970) > _4970:
                        mem[_3033 + _3165 + _4217 + _4970 + 152] = 0
                    revert with 0, 32, mem[_3033 + _3165 + _4217 + 120 len ceil32(_4970) + 32]
                mem[_2180 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2180]:
                        revert with 'NH{q', 50
                    mem[t + _2180 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3034 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3166 = mem[_1023]
                mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
                mem[mem[64] + _3166 + 55] = ' is less then minAmountOut = '
                if ceil32(_3166) <= _3166:
                    _4206 = mem[_2180]
                    mem[mem[64] + _3166 + 84 len ceil32(mem[_2180])] = mem[_2180 + 32 len ceil32(mem[_2180])]
                    if ceil32(_4206) <= _4206:
                        _4829 = mem[64]
                        mem[64] = mem[64] + _3166 + _4206 + 84
                        mem[_3034 + _3166 + _4206 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3034 + _3166 + _4206 + 88] = 32
                        _4939 = mem[_4829]
                        mem[_3034 + _3166 + _4206 + 120] = mem[_4829]
                        mem[_3034 + _3166 + _4206 + 152 len ceil32(_4939)] = mem[_4829 + 32 len ceil32(_4939)]
                        if ceil32(_4939) > _4939:
                            mem[_3034 + _3166 + _4206 + _4939 + 152] = 0
                        revert with 0, 32, mem[_3034 + _3166 + _4206 + 120 len ceil32(_4939) + 32]
                    mem[mem[64] + _3166 + _4206 + 84] = 0
                    _4861 = mem[64]
                    mem[64] = mem[64] + _3166 + _4206 + 84
                    mem[_3034 + _3166 + _4206 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3034 + _3166 + _4206 + 88] = 32
                    _4971 = mem[_4861]
                    mem[_3034 + _3166 + _4206 + 120] = mem[_4861]
                    mem[_3034 + _3166 + _4206 + 152 len ceil32(_4971)] = mem[_4861 + 32 len ceil32(_4971)]
                    if ceil32(_4971) > _4971:
                        mem[_3034 + _3166 + _4206 + _4971 + 152] = 0
                    revert with 0, 32, mem[_3034 + _3166 + _4206 + 120 len ceil32(_4971) + 32]
                _4218 = mem[_2180]
                mem[mem[64] + _3166 + 84 len ceil32(mem[_2180])] = mem[_2180 + 32 len ceil32(mem[_2180])]
                if ceil32(_4218) <= _4218:
                    _4831 = mem[64]
                    mem[64] = mem[64] + _3166 + _4218 + 84
                    mem[_3034 + _3166 + _4218 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3034 + _3166 + _4218 + 88] = 32
                    _4940 = mem[_4831]
                    mem[_3034 + _3166 + _4218 + 120] = mem[_4831]
                    mem[_3034 + _3166 + _4218 + 152 len ceil32(_4940)] = mem[_4831 + 32 len ceil32(_4940)]
                    if ceil32(_4940) > _4940:
                        mem[_3034 + _3166 + _4218 + _4940 + 152] = 0
                    revert with 0, 32, mem[_3034 + _3166 + _4218 + 120 len ceil32(_4940) + 32]
                mem[mem[64] + _3166 + _4218 + 84] = 0
                _4863 = mem[64]
                mem[64] = _3034 + _3166 + _4218 + 84
                mem[_3034 + _3166 + _4218 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3034 + _3166 + _4218 + 88] = 32
                _4972 = mem[_4863]
                mem[_3034 + _3166 + _4218 + 120] = mem[_4863]
                mem[_3034 + _3166 + _4218 + 152 len ceil32(_4972)] = mem[_4863 + 32 len ceil32(_4972)]
                if ceil32(_4972) > _4972:
                    mem[_3034 + _3166 + _4218 + _4972 + 152] = 0
                revert with 0, 32, mem[_3034 + _3166 + _4218 + 120 len ceil32(_4972) + 32]
            mem[_1023 + 32 len t] = call.data[calldata.size len t]
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_1023]:
                    revert with 'NH{q', 50
                mem[u + _1023 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _1518 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1518] = 1
                mem[_1518 + 32] = '0'
                _1541 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _1583 = mem[_1023]
                mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
                mem[mem[64] + _1583 + 55] = ' is less then minAmountOut = '
                mem[_1541 + _1583 + 84] = '0'
                mem[_1541 + _1583 + 85] = 0
                if ceil32(_1583) <= _1583:
                    _3077 = mem[64]
                    mem[64] = _1541 + _1583 + 85
                    mem[_1541 + _1583 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1541 + _1583 + 89] = 32
                    _3147 = mem[_3077]
                    mem[_1541 + _1583 + 121] = mem[_3077]
                    mem[_1541 + _1583 + 153 len ceil32(_3147)] = mem[_3077 + 32 len ceil32(_3147)]
                    if ceil32(_3147) > _3147:
                        mem[_1541 + _1583 + _3147 + 153] = 0
                    revert with 0, 32, mem[_1541 + _1583 + 121 len ceil32(_3147) + 32]
                _3079 = mem[64]
                mem[64] = _1541 + _1583 + 85
                mem[_1541 + _1583 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1541 + _1583 + 89] = 32
                _3148 = mem[_3079]
                mem[_1541 + _1583 + 121] = mem[_3079]
                mem[_1541 + _1583 + 153 len ceil32(_3148)] = mem[_3079 + 32 len ceil32(_3148)]
                if ceil32(_3148) > _3148:
                    mem[_1541 + _1583 + _3148 + 153] = 0
                revert with 0, 32, mem[_1541 + _1583 + 121 len ceil32(_3148) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _2181 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2181]:
                        revert with 'NH{q', 50
                    mem[t + _2181 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3035 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3167 = mem[_1023]
                mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
                mem[mem[64] + _3167 + 55] = ' is less then minAmountOut = '
                if ceil32(_3167) <= _3167:
                    _4207 = mem[_2181]
                    mem[mem[64] + _3167 + 84 len ceil32(mem[_2181])] = mem[_2181 + 32 len ceil32(mem[_2181])]
                    if ceil32(_4207) <= _4207:
                        _4833 = mem[64]
                        mem[64] = mem[64] + _3167 + _4207 + 84
                        mem[_3035 + _3167 + _4207 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3035 + _3167 + _4207 + 88] = 32
                        _4941 = mem[_4833]
                        mem[_3035 + _3167 + _4207 + 120] = mem[_4833]
                        mem[_3035 + _3167 + _4207 + 152 len ceil32(_4941)] = mem[_4833 + 32 len ceil32(_4941)]
                        if ceil32(_4941) > _4941:
                            mem[_3035 + _3167 + _4207 + _4941 + 152] = 0
                        revert with 0, 32, mem[_3035 + _3167 + _4207 + 120 len ceil32(_4941) + 32]
                    mem[mem[64] + _3167 + _4207 + 84] = 0
                    _4865 = mem[64]
                    mem[64] = mem[64] + _3167 + _4207 + 84
                    mem[_3035 + _3167 + _4207 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3035 + _3167 + _4207 + 88] = 32
                    _4973 = mem[_4865]
                    mem[_3035 + _3167 + _4207 + 120] = mem[_4865]
                    mem[_3035 + _3167 + _4207 + 152 len ceil32(_4973)] = mem[_4865 + 32 len ceil32(_4973)]
                    if ceil32(_4973) > _4973:
                        mem[_3035 + _3167 + _4207 + _4973 + 152] = 0
                    revert with 0, 32, mem[_3035 + _3167 + _4207 + 120 len ceil32(_4973) + 32]
                _4219 = mem[_2181]
                mem[mem[64] + _3167 + 84 len ceil32(mem[_2181])] = mem[_2181 + 32 len ceil32(mem[_2181])]
                if ceil32(_4219) <= _4219:
                    _4835 = mem[64]
                    mem[64] = mem[64] + _3167 + _4219 + 84
                    mem[_3035 + _3167 + _4219 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3035 + _3167 + _4219 + 88] = 32
                    _4942 = mem[_4835]
                    mem[_3035 + _3167 + _4219 + 120] = mem[_4835]
                    mem[_3035 + _3167 + _4219 + 152 len ceil32(_4942)] = mem[_4835 + 32 len ceil32(_4942)]
                    if ceil32(_4942) > _4942:
                        mem[_3035 + _3167 + _4219 + _4942 + 152] = 0
                    revert with 0, 32, mem[_3035 + _3167 + _4219 + 120 len ceil32(_4942) + 32]
                mem[mem[64] + _3167 + _4219 + 84] = 0
                _4867 = mem[64]
                mem[64] = _3035 + _3167 + _4219 + 84
                mem[_3035 + _3167 + _4219 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3035 + _3167 + _4219 + 88] = 32
                _4974 = mem[_4867]
                mem[_3035 + _3167 + _4219 + 120] = mem[_4867]
                mem[_3035 + _3167 + _4219 + 152 len ceil32(_4974)] = mem[_4867 + 32 len ceil32(_4974)]
                if ceil32(_4974) > _4974:
                    mem[_3035 + _3167 + _4219 + _4974 + 152] = 0
                revert with 0, 32, mem[_3035 + _3167 + _4219 + 120 len ceil32(_4974) + 32]
            mem[_2181 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2181]:
                    revert with 'NH{q', 50
                mem[t + _2181 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3036 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _3168 = mem[_1023]
            mem[mem[64] + 55 len ceil32(mem[_1023])] = mem[_1023 + 32 len ceil32(mem[_1023])]
            mem[mem[64] + _3168 + 55] = ' is less then minAmountOut = '
            if ceil32(_3168) <= _3168:
                _4208 = mem[_2181]
                mem[mem[64] + _3168 + 84 len ceil32(mem[_2181])] = mem[_2181 + 32 len ceil32(mem[_2181])]
                if ceil32(_4208) <= _4208:
                    _4837 = mem[64]
                    mem[64] = mem[64] + _3168 + _4208 + 84
                    mem[_3036 + _3168 + _4208 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3036 + _3168 + _4208 + 88] = 32
                    _4943 = mem[_4837]
                    mem[_3036 + _3168 + _4208 + 120] = mem[_4837]
                    mem[_3036 + _3168 + _4208 + 152 len ceil32(_4943)] = mem[_4837 + 32 len ceil32(_4943)]
                    if ceil32(_4943) > _4943:
                        mem[_3036 + _3168 + _4208 + _4943 + 152] = 0
                    revert with 0, 32, mem[_3036 + _3168 + _4208 + 120 len ceil32(_4943) + 32]
                mem[mem[64] + _3168 + _4208 + 84] = 0
                _4869 = mem[64]
                mem[64] = mem[64] + _3168 + _4208 + 84
                mem[_3036 + _3168 + _4208 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3036 + _3168 + _4208 + 88] = 32
                _4975 = mem[_4869]
                mem[_3036 + _3168 + _4208 + 120] = mem[_4869]
                mem[_3036 + _3168 + _4208 + 152 len ceil32(_4975)] = mem[_4869 + 32 len ceil32(_4975)]
                if ceil32(_4975) > _4975:
                    mem[_3036 + _3168 + _4208 + _4975 + 152] = 0
                revert with 0, 32, mem[_3036 + _3168 + _4208 + 120 len ceil32(_4975) + 32]
            _4220 = mem[_2181]
            mem[mem[64] + _3168 + 84 len ceil32(mem[_2181])] = mem[_2181 + 32 len ceil32(mem[_2181])]
            if ceil32(_4220) <= _4220:
                _4839 = mem[64]
                mem[64] = mem[64] + _3168 + _4220 + 84
                mem[_3036 + _3168 + _4220 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3036 + _3168 + _4220 + 88] = 32
                _4944 = mem[_4839]
                mem[_3036 + _3168 + _4220 + 120] = mem[_4839]
                mem[_3036 + _3168 + _4220 + 152 len ceil32(_4944)] = mem[_4839 + 32 len ceil32(_4944)]
                if ceil32(_4944) > _4944:
                    mem[_3036 + _3168 + _4220 + _4944 + 152] = 0
                revert with 0, 32, mem[_3036 + _3168 + _4220 + 120 len ceil32(_4944) + 32]
            mem[mem[64] + _3168 + _4220 + 84] = 0
            _4871 = mem[64]
            mem[64] = mem[64] + _3168 + _4220 + 84
            mem[_3036 + _3168 + _4220 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3036 + _3168 + _4220 + 88] = 32
            _4976 = mem[_4871]
            mem[_3036 + _3168 + _4220 + 120] = mem[_4871]
            mem[_3036 + _3168 + _4220 + 152 len ceil32(_4976)] = mem[_4871 + 32 len ceil32(_4976)]
            if ceil32(_4976) > _4976:
                mem[_3036 + _3168 + _4220 + _4976 + 152] = 0
            revert with 0, 32, mem[_3036 + _3168 + _4220 + 120 len ceil32(_4976) + 32]
        _1013 = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = cd[4]
        while idx < _1013:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1021 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
            mem[mem[64] + 36] = s
            require ext_code.size(address(_1021))
            call address(_1021).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1073 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1073] == bool(mem[_1073])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _1153 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1153))
            staticcall address(_1153).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1269 = mem[_1223]
            require mem[_1223] == mem[_1223]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _1355 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1364 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _1453 = mem[(32 * idx + 1) + 128]
            _1465 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1465]:
                revert with 'NH{q', 50
            mem[_1465 + 32] = address(_1364)
            if 1 >= mem[_1465]:
                revert with 'NH{q', 50
            mem[_1465 + 64] = address(_1453)
            mem[_1465 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1465 + 100] = s
            mem[_1465 + 132] = 1
            mem[_1465 + 164] = 160
            mem[_1465 + 260] = mem[_1465]
            s = 0
            t = _1465 + 32
            u = _1465 + 292
            while s < mem[_1465]:
                mem[u] = mem[t + 12 len 20]
                _1013 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1465 + 196] = this.address
            mem[_1465 + 228] = 1922758199
            require ext_code.size(address(_1355))
            call address(_1355).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1465 + (32 * mem[_1465]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1588 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1598 = mem[_1588]
            require mem[_1588] <= test266151307()
            require _1588 + mem[_1588] + 31 < _1588 + return_data.size
            _1620 = mem[_1588 + mem[_1588]]
            if mem[_1588 + mem[_1588]] > test266151307():
                revert with 'NH{q', 65
            if _1588 + ceil32(return_data.size) + floor32(mem[_1588 + mem[_1588]]) + 1 > test266151307() or floor32(mem[_1588 + mem[_1588]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1588 + ceil32(return_data.size) + floor32(mem[_1588 + mem[_1588]]) + 1
            mem[_1588 + ceil32(return_data.size)] = _1620
            require _1598 + (32 * _1620) + 32 <= return_data.size
            s = 0
            t = _1588 + _1598 + 32
            u = _1588 + ceil32(return_data.size) + 32
            while s < _1620:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _1013 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1153))
            staticcall address(_1153).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2275] == mem[_2275]
            if mem[_2275] < _1269:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _1013 = mem[floor32(('cd', 68).length) + 97]
            idx = idx + 1
            s = mem[_2275] - _1269
            continue 
        if s >= cd[36]:
            return s
        if not s:
            _1037 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1037] = 1
            mem[_1037 + 32] = '0'
            if not cd[36]:
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 1
                mem[_1045 + 32] = '0'
                _1053 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                mem[mem[64] + 55] = '0'
                var100001 = 32
                mem[mem[64] + 56] = ' is less then minAmountOut = '
                mem[mem[64] + 85] = '0'
                mem[mem[64] + 86] = 0
                _2205 = mem[64]
                mem[64] = mem[64] + 86
                mem[_1053 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1053 + 90] = 32
                _2244 = mem[_2205]
                mem[_1053 + 122] = mem[_2205]
                mem[_1053 + 154 len ceil32(_2244)] = mem[_2205 + 32 len ceil32(_2244)]
                var134001 = ceil32(_2244)
                if ceil32(_2244) > _2244:
                    mem[_1053 + _2244 + 154] = 0
                revert with 0, 32, mem[_1053 + 122 len ceil32(_2244) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _1506 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1506]:
                        revert with 'NH{q', 50
                    mem[t + _1506 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _2185 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _2247 = mem[_1037]
                mem[mem[64] + 55 len ceil32(mem[_1037])] = mem[_1037 + 32 len ceil32(mem[_1037])]
                mem[mem[64] + _2247 + 55] = ' is less then minAmountOut = '
                if ceil32(_2247) <= _2247:
                    _3163 = mem[_1506]
                    mem[_2185 + _2247 + 84 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                    if ceil32(_3163) <= _3163:
                        _4049 = mem[64]
                        mem[64] = _2185 + _2247 + _3163 + 84
                        mem[_2185 + _2247 + _3163 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2185 + _2247 + _3163 + 88] = 32
                        _4141 = mem[_4049]
                        mem[_2185 + _2247 + _3163 + 120] = mem[_4049]
                        mem[_2185 + _2247 + _3163 + 152 len ceil32(_4141)] = mem[_4049 + 32 len ceil32(_4141)]
                        if ceil32(_4141) > _4141:
                            mem[_2185 + _2247 + _3163 + _4141 + 152] = 0
                        revert with 0, 32, mem[_2185 + _2247 + _3163 + 120 len ceil32(_4141) + 32]
                    mem[_2185 + _2247 + _3163 + 84] = 0
                    _4081 = mem[64]
                    mem[64] = _2185 + _2247 + _3163 + 84
                    mem[_2185 + _2247 + _3163 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2185 + _2247 + _3163 + 88] = 32
                    _4189 = mem[_4081]
                    mem[_2185 + _2247 + _3163 + 120] = mem[_4081]
                    mem[_2185 + _2247 + _3163 + 152 len ceil32(_4189)] = mem[_4081 + 32 len ceil32(_4189)]
                    if ceil32(_4189) > _4189:
                        mem[_2185 + _2247 + _3163 + _4189 + 152] = 0
                    revert with 0, 32, mem[_2185 + _2247 + _3163 + 120 len ceil32(_4189) + 32]
                _3179 = mem[_1506]
                mem[_2185 + _2247 + 84 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                if ceil32(_3179) <= _3179:
                    _4051 = mem[64]
                    mem[64] = _2185 + _2247 + _3179 + 84
                    mem[_2185 + _2247 + _3179 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2185 + _2247 + _3179 + 88] = 32
                    _4142 = mem[_4051]
                    mem[_2185 + _2247 + _3179 + 120] = mem[_4051]
                    mem[_2185 + _2247 + _3179 + 152 len ceil32(_4142)] = mem[_4051 + 32 len ceil32(_4142)]
                    if ceil32(_4142) > _4142:
                        mem[_2185 + _2247 + _3179 + _4142 + 152] = 0
                    revert with 0, 32, mem[_2185 + _2247 + _3179 + 120 len ceil32(_4142) + 32]
                mem[_2185 + _2247 + _3179 + 84] = 0
                _4083 = mem[64]
                mem[64] = _2185 + _2247 + _3179 + 84
                mem[_2185 + _2247 + _3179 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2185 + _2247 + _3179 + 88] = 32
                _4190 = mem[_4083]
                mem[_2185 + _2247 + _3179 + 120] = mem[_4083]
                mem[_2185 + _2247 + _3179 + 152 len ceil32(_4190)] = mem[_4083 + 32 len ceil32(_4190)]
                if ceil32(_4190) > _4190:
                    mem[_2185 + _2247 + _3179 + _4190 + 152] = 0
                revert with 0, 32, mem[_2185 + _2247 + _3179 + 120 len ceil32(_4190) + 32]
            mem[_1506 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1506]:
                    revert with 'NH{q', 50
                mem[t + _1506 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2186 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _2248 = mem[_1037]
            mem[mem[64] + 55 len ceil32(mem[_1037])] = mem[_1037 + 32 len ceil32(mem[_1037])]
            mem[mem[64] + _2248 + 55] = ' is less then minAmountOut = '
            if ceil32(_2248) <= _2248:
                _3164 = mem[_1506]
                mem[mem[64] + _2248 + 84 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                if ceil32(_3164) <= _3164:
                    _4053 = mem[64]
                    mem[64] = mem[64] + _2248 + _3164 + 84
                    mem[_2186 + _2248 + _3164 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2186 + _2248 + _3164 + 88] = 32
                    _4143 = mem[_4053]
                    mem[_2186 + _2248 + _3164 + 120] = mem[_4053]
                    mem[_2186 + _2248 + _3164 + 152 len ceil32(_4143)] = mem[_4053 + 32 len ceil32(_4143)]
                    if ceil32(_4143) > _4143:
                        mem[_2186 + _2248 + _3164 + _4143 + 152] = 0
                    revert with 0, 32, mem[_2186 + _2248 + _3164 + 120 len ceil32(_4143) + 32]
                mem[mem[64] + _2248 + _3164 + 84] = 0
                _4085 = mem[64]
                mem[64] = mem[64] + _2248 + _3164 + 84
                mem[_2186 + _2248 + _3164 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2186 + _2248 + _3164 + 88] = 32
                _4191 = mem[_4085]
                mem[_2186 + _2248 + _3164 + 120] = mem[_4085]
                mem[_2186 + _2248 + _3164 + 152 len ceil32(_4191)] = mem[_4085 + 32 len ceil32(_4191)]
                if ceil32(_4191) > _4191:
                    mem[_2186 + _2248 + _3164 + _4191 + 152] = 0
                revert with 0, 32, mem[_2186 + _2248 + _3164 + 120 len ceil32(_4191) + 32]
            _3180 = mem[_1506]
            mem[mem[64] + _2248 + 84 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
            if ceil32(_3180) <= _3180:
                _4055 = mem[64]
                mem[64] = mem[64] + _2248 + _3180 + 84
                mem[_2186 + _2248 + _3180 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2186 + _2248 + _3180 + 88] = 32
                _4144 = mem[_4055]
                mem[_2186 + _2248 + _3180 + 120] = mem[_4055]
                mem[_2186 + _2248 + _3180 + 152 len ceil32(_4144)] = mem[_4055 + 32 len ceil32(_4144)]
                if ceil32(_4144) > _4144:
                    mem[_2186 + _2248 + _3180 + _4144 + 152] = 0
                revert with 0, 32, mem[_2186 + _2248 + _3180 + 120 len ceil32(_4144) + 32]
            mem[mem[64] + _2248 + _3180 + 84] = 0
            _4087 = mem[64]
            mem[64] = mem[64] + _2248 + _3180 + 84
            mem[_2186 + _2248 + _3180 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2186 + _2248 + _3180 + 88] = 32
            _4192 = mem[_4087]
            mem[_2186 + _2248 + _3180 + 120] = mem[_4087]
            mem[_2186 + _2248 + _3180 + 152 len ceil32(_4192)] = mem[_4087 + 32 len ceil32(_4192)]
            if ceil32(_4192) > _4192:
                mem[_2186 + _2248 + _3180 + _4192 + 152] = 0
            revert with 0, 32, mem[_2186 + _2248 + _3180 + 120 len ceil32(_4192) + 32]
        t = 0
        idx = s
        while idx:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            idx = idx / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _1505 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_1505]:
                    revert with 'NH{q', 50
                mem[u + _1505 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _2189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2189] = 1
                mem[_2189 + 32] = '0'
                _2211 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _2279 = mem[_1505]
                mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
                mem[mem[64] + _2279 + 55] = ' is less then minAmountOut = '
                mem[_2211 + _2279 + 84] = '0'
                mem[_2211 + _2279 + 85] = 0
                if ceil32(_2279) <= _2279:
                    _4073 = mem[64]
                    mem[64] = _2211 + _2279 + 85
                    mem[_2211 + _2279 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2211 + _2279 + 89] = 32
                    _4185 = mem[_4073]
                    mem[_2211 + _2279 + 121] = mem[_4073]
                    mem[_2211 + _2279 + 153 len ceil32(_4185)] = mem[_4073 + 32 len ceil32(_4185)]
                    if ceil32(_4185) > _4185:
                        mem[_2211 + _2279 + _4185 + 153] = 0
                    revert with 0, 32, mem[_2211 + _2279 + 121 len ceil32(_4185) + 32]
                _4075 = mem[64]
                mem[64] = _2211 + _2279 + 85
                mem[_2211 + _2279 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2211 + _2279 + 89] = 32
                _4186 = mem[_4075]
                mem[_2211 + _2279 + 121] = mem[_4075]
                mem[_2211 + _2279 + 153 len ceil32(_4186)] = mem[_4075 + 32 len ceil32(_4186)]
                if ceil32(_4186) > _4186:
                    mem[_2211 + _2279 + _4186 + 153] = 0
                revert with 0, 32, mem[_2211 + _2279 + 121 len ceil32(_4186) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _3029 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_3029]:
                        revert with 'NH{q', 50
                    mem[t + _3029 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _4033 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4201 = mem[_1505]
                mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
                mem[mem[64] + _4201 + 55] = ' is less then minAmountOut = '
                if ceil32(_4201) > _4201:
                    _4993 = mem[_3029]
                    mem[_4033 + _4201 + 84 len ceil32(mem[_3029])] = mem[_3029 + 32 len ceil32(mem[_3029])]
                    if ceil32(_4993) <= _4993:
                        _5355 = mem[64]
                        mem[64] = _4033 + _4201 + _4993 + 84
                        mem[_4033 + _4201 + _4993 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4033 + _4201 + _4993 + 88] = 32
                        _5450 = mem[_5355]
                        mem[_4033 + _4201 + _4993 + 120] = mem[_5355]
                        mem[_4033 + _4201 + _4993 + 152 len ceil32(_5450)] = mem[_5355 + 32 len ceil32(_5450)]
                        if ceil32(_5450) > _5450:
                            mem[_4033 + _4201 + _4993 + _5450 + 152] = 0
                        revert with 0, 32, mem[_4033 + _4201 + _4993 + 120 len ceil32(_5450) + 32]
                    mem[_4033 + _4201 + _4993 + 84] = 0
                    _5387 = mem[64]
                    mem[64] = _4033 + _4201 + _4993 + 84
                    mem[_4033 + _4201 + _4993 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4033 + _4201 + _4993 + 88] = 32
                    _5498 = mem[_5387]
                    mem[_4033 + _4201 + _4993 + 120] = mem[_5387]
                    mem[_4033 + _4201 + _4993 + 152 len ceil32(_5498)] = mem[_5387 + 32 len ceil32(_5498)]
                    if ceil32(_5498) > _5498:
                        mem[_4033 + _4201 + _4993 + _5498 + 152] = 0
                    revert with 0, 32, mem[_4033 + _4201 + _4993 + 120 len ceil32(_5498) + 32]
                _4985 = mem[_3029]
                mem[_4033 + _4201 + 84 len ceil32(mem[_3029])] = mem[_3029 + 32 len ceil32(mem[_3029])]
                var134001 = ceil32(_4985)
                if ceil32(_4985) <= _4985:
                    _5353 = mem[64]
                    mem[64] = _4033 + _4201 + _4985 + 84
                    mem[_4033 + _4201 + _4985 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4033 + _4201 + _4985 + 88] = 32
                    _5449 = mem[_5353]
                    mem[_4033 + _4201 + _4985 + 120] = mem[_5353]
                    mem[_4033 + _4201 + _4985 + 152 len ceil32(_5449)] = mem[_5353 + 32 len ceil32(_5449)]
                    if ceil32(_5449) > _5449:
                        mem[_4033 + _4201 + _4985 + _5449 + 152] = 0
                    revert with 0, 32, mem[_4033 + _4201 + _4985 + 120 len ceil32(_5449) + 32]
                mem[_4033 + _4201 + _4985 + 84] = 0
                _5385 = mem[64]
                mem[64] = _4033 + _4201 + _4985 + 84
                mem[_4033 + _4201 + _4985 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4033 + _4201 + _4985 + 88] = 32
                _5497 = mem[_5385]
                mem[_4033 + _4201 + _4985 + 120] = mem[_5385]
                mem[_4033 + _4201 + _4985 + 152 len ceil32(_5497)] = mem[_5385 + 32 len ceil32(_5497)]
                if ceil32(_5497) > _5497:
                    mem[_4033 + _4201 + _4985 + _5497 + 152] = 0
                revert with 0, 32, mem[_4033 + _4201 + _4985 + 120 len ceil32(_5497) + 32]
            mem[_3029 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3029]:
                    revert with 'NH{q', 50
                mem[t + _3029 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4034 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4202 = mem[_1505]
            mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
            mem[mem[64] + _4202 + 55] = ' is less then minAmountOut = '
            if ceil32(_4202) <= _4202:
                _4986 = mem[_3029]
                mem[_4034 + _4202 + 84 len ceil32(mem[_3029])] = mem[_3029 + 32 len ceil32(mem[_3029])]
                if ceil32(_4986) <= _4986:
                    _5357 = mem[64]
                    mem[64] = _4034 + _4202 + _4986 + 84
                    mem[_4034 + _4202 + _4986 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4034 + _4202 + _4986 + 88] = 32
                    _5451 = mem[_5357]
                    mem[_4034 + _4202 + _4986 + 120] = mem[_5357]
                    mem[_4034 + _4202 + _4986 + 152 len ceil32(_5451)] = mem[_5357 + 32 len ceil32(_5451)]
                    if ceil32(_5451) > _5451:
                        mem[_4034 + _4202 + _4986 + _5451 + 152] = 0
                    revert with 0, 32, mem[_4034 + _4202 + _4986 + 120 len ceil32(_5451) + 32]
                mem[_4034 + _4202 + _4986 + 84] = 0
                _5389 = mem[64]
                mem[64] = _4034 + _4202 + _4986 + 84
                mem[_4034 + _4202 + _4986 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4034 + _4202 + _4986 + 88] = 32
                _5499 = mem[_5389]
                mem[_4034 + _4202 + _4986 + 120] = mem[_5389]
                mem[_4034 + _4202 + _4986 + 152 len ceil32(_5499)] = mem[_5389 + 32 len ceil32(_5499)]
                if ceil32(_5499) > _5499:
                    mem[_4034 + _4202 + _4986 + _5499 + 152] = 0
                revert with 0, 32, mem[_4034 + _4202 + _4986 + 120 len ceil32(_5499) + 32]
            _4994 = mem[_3029]
            mem[_4034 + _4202 + 84 len ceil32(mem[_3029])] = mem[_3029 + 32 len ceil32(mem[_3029])]
            if ceil32(_4994) <= _4994:
                _5359 = mem[64]
                mem[64] = _4034 + _4202 + _4994 + 84
                mem[_4034 + _4202 + _4994 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4034 + _4202 + _4994 + 88] = 32
                _5452 = mem[_5359]
                mem[_4034 + _4202 + _4994 + 120] = mem[_5359]
                mem[_4034 + _4202 + _4994 + 152 len ceil32(_5452)] = mem[_5359 + 32 len ceil32(_5452)]
                if ceil32(_5452) > _5452:
                    mem[_4034 + _4202 + _4994 + _5452 + 152] = 0
                revert with 0, 32, mem[_4034 + _4202 + _4994 + 120 len ceil32(_5452) + 32]
            mem[_4034 + _4202 + _4994 + 84] = 0
            _5391 = mem[64]
            mem[64] = _4034 + _4202 + _4994 + 84
            mem[_4034 + _4202 + _4994 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4034 + _4202 + _4994 + 88] = 32
            _5500 = mem[_5391]
            mem[_4034 + _4202 + _4994 + 120] = mem[_5391]
            mem[_4034 + _4202 + _4994 + 152 len ceil32(_5500)] = mem[_5391 + 32 len ceil32(_5500)]
            if ceil32(_5500) > _5500:
                mem[_4034 + _4202 + _4994 + _5500 + 152] = 0
            revert with 0, 32, mem[_4034 + _4202 + _4994 + 120 len ceil32(_5500) + 32]
        mem[_1505 + 32 len t] = call.data[calldata.size len t]
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_1505]:
                revert with 'NH{q', 50
            mem[u + _1505 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _2190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2190] = 1
            mem[_2190 + 32] = '0'
            _2212 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _2280 = mem[_1505]
            mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
            mem[mem[64] + _2280 + 55] = ' is less then minAmountOut = '
            mem[_2212 + _2280 + 84] = '0'
            mem[_2212 + _2280 + 85] = 0
            if ceil32(_2280) <= _2280:
                _4077 = mem[64]
                mem[64] = _2212 + _2280 + 85
                mem[_2212 + _2280 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2212 + _2280 + 89] = 32
                _4187 = mem[_4077]
                mem[_2212 + _2280 + 121] = mem[_4077]
                mem[_2212 + _2280 + 153 len ceil32(_4187)] = mem[_4077 + 32 len ceil32(_4187)]
                if ceil32(_4187) > _4187:
                    mem[_2212 + _2280 + _4187 + 153] = 0
                revert with 0, 32, mem[_2212 + _2280 + 121 len ceil32(_4187) + 32]
            _4079 = mem[64]
            mem[64] = _2212 + _2280 + 85
            mem[_2212 + _2280 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2212 + _2280 + 89] = 32
            _4188 = mem[_4079]
            mem[_2212 + _2280 + 121] = mem[_4079]
            mem[_2212 + _2280 + 153 len ceil32(_4188)] = mem[_4079 + 32 len ceil32(_4188)]
            if ceil32(_4188) > _4188:
                mem[_2212 + _2280 + _4188 + 153] = 0
            revert with 0, 32, mem[_2212 + _2280 + 121 len ceil32(_4188) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _3030 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3030]:
                    revert with 'NH{q', 50
                mem[t + _3030 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4035 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4203 = mem[_1505]
            mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
            mem[mem[64] + _4203 + 55] = ' is less then minAmountOut = '
            if ceil32(_4203) <= _4203:
                _4987 = mem[_3030]
                mem[mem[64] + _4203 + 84 len ceil32(mem[_3030])] = mem[_3030 + 32 len ceil32(mem[_3030])]
                if ceil32(_4987) <= _4987:
                    _5361 = mem[64]
                    mem[64] = mem[64] + _4203 + _4987 + 84
                    mem[_4035 + _4203 + _4987 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4035 + _4203 + _4987 + 88] = 32
                    _5453 = mem[_5361]
                    mem[_4035 + _4203 + _4987 + 120] = mem[_5361]
                    mem[_4035 + _4203 + _4987 + 152 len ceil32(_5453)] = mem[_5361 + 32 len ceil32(_5453)]
                    if ceil32(_5453) > _5453:
                        mem[_4035 + _4203 + _4987 + _5453 + 152] = 0
                    revert with 0, 32, mem[_4035 + _4203 + _4987 + 120 len ceil32(_5453) + 32]
                mem[mem[64] + _4203 + _4987 + 84] = 0
                _5393 = mem[64]
                mem[64] = mem[64] + _4203 + _4987 + 84
                mem[_4035 + _4203 + _4987 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4035 + _4203 + _4987 + 88] = 32
                _5501 = mem[_5393]
                mem[_4035 + _4203 + _4987 + 120] = mem[_5393]
                mem[_4035 + _4203 + _4987 + 152 len ceil32(_5501)] = mem[_5393 + 32 len ceil32(_5501)]
                if ceil32(_5501) > _5501:
                    mem[_4035 + _4203 + _4987 + _5501 + 152] = 0
                revert with 0, 32, mem[_4035 + _4203 + _4987 + 120 len ceil32(_5501) + 32]
            _4995 = mem[_3030]
            mem[mem[64] + _4203 + 84 len ceil32(mem[_3030])] = mem[_3030 + 32 len ceil32(mem[_3030])]
            if ceil32(_4995) <= _4995:
                _5363 = mem[64]
                mem[64] = mem[64] + _4203 + _4995 + 84
                mem[_4035 + _4203 + _4995 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4035 + _4203 + _4995 + 88] = 32
                _5454 = mem[_5363]
                mem[_4035 + _4203 + _4995 + 120] = mem[_5363]
                mem[_4035 + _4203 + _4995 + 152 len ceil32(_5454)] = mem[_5363 + 32 len ceil32(_5454)]
                if ceil32(_5454) > _5454:
                    mem[_4035 + _4203 + _4995 + _5454 + 152] = 0
                revert with 0, 32, mem[_4035 + _4203 + _4995 + 120 len ceil32(_5454) + 32]
            mem[mem[64] + _4203 + _4995 + 84] = 0
            _5395 = mem[64]
            mem[64] = mem[64] + _4203 + _4995 + 84
            mem[_4035 + _4203 + _4995 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4035 + _4203 + _4995 + 88] = 32
            _5502 = mem[_5395]
            mem[_4035 + _4203 + _4995 + 120] = mem[_5395]
            mem[_4035 + _4203 + _4995 + 152 len ceil32(_5502)] = mem[_5395 + 32 len ceil32(_5502)]
            if ceil32(_5502) > _5502:
                mem[_4035 + _4203 + _4995 + _5502 + 152] = 0
            revert with 0, 32, mem[_4035 + _4203 + _4995 + 120 len ceil32(_5502) + 32]
        mem[_3030 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_3030]:
                revert with 'NH{q', 50
            mem[t + _3030 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _4036 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _4204 = mem[_1505]
        mem[mem[64] + 55 len ceil32(mem[_1505])] = mem[_1505 + 32 len ceil32(mem[_1505])]
        mem[mem[64] + _4204 + 55] = ' is less then minAmountOut = '
        if ceil32(_4204) <= _4204:
            _4988 = mem[_3030]
            mem[mem[64] + _4204 + 84 len ceil32(mem[_3030])] = mem[_3030 + 32 len ceil32(mem[_3030])]
            if ceil32(_4988) <= _4988:
                _5365 = mem[64]
                mem[64] = mem[64] + _4204 + _4988 + 84
                mem[_4036 + _4204 + _4988 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4036 + _4204 + _4988 + 88] = 32
                _5455 = mem[_5365]
                mem[_4036 + _4204 + _4988 + 120] = mem[_5365]
                mem[_4036 + _4204 + _4988 + 152 len ceil32(_5455)] = mem[_5365 + 32 len ceil32(_5455)]
                if ceil32(_5455) > _5455:
                    mem[_4036 + _4204 + _4988 + _5455 + 152] = 0
                revert with 0, 32, mem[_4036 + _4204 + _4988 + 120 len ceil32(_5455) + 32]
            mem[mem[64] + _4204 + _4988 + 84] = 0
            _5397 = mem[64]
            mem[64] = _4036 + _4204 + _4988 + 84
            mem[_4036 + _4204 + _4988 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4036 + _4204 + _4988 + 88] = 32
            _5503 = mem[_5397]
            mem[_4036 + _4204 + _4988 + 120] = mem[_5397]
            mem[_4036 + _4204 + _4988 + 152 len ceil32(_5503)] = mem[_5397 + 32 len ceil32(_5503)]
            if ceil32(_5503) > _5503:
                mem[_4036 + _4204 + _4988 + _5503 + 152] = 0
            revert with 0, 32, mem[_4036 + _4204 + _4988 + 120 len ceil32(_5503) + 32]
        _4996 = mem[_3030]
        mem[mem[64] + _4204 + 84 len ceil32(mem[_3030])] = mem[_3030 + 32 len ceil32(mem[_3030])]
        if ceil32(_4996) <= _4996:
            _5367 = mem[64]
            mem[64] = mem[64] + _4204 + _4996 + 84
            mem[_4036 + _4204 + _4996 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4036 + _4204 + _4996 + 88] = 32
            _5456 = mem[_5367]
            mem[_4036 + _4204 + _4996 + 120] = mem[_5367]
            mem[_4036 + _4204 + _4996 + 152 len ceil32(_5456)] = mem[_5367 + 32 len ceil32(_5456)]
            if ceil32(_5456) > _5456:
                mem[_4036 + _4204 + _4996 + _5456 + 152] = 0
            revert with 0, 32, mem[_4036 + _4204 + _4996 + 120 len ceil32(_5456) + 32]
        mem[mem[64] + _4204 + _4996 + 84] = 0
        _5399 = mem[64]
        mem[64] = mem[64] + _4204 + _4996 + 84
        mem[_4036 + _4204 + _4996 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4036 + _4204 + _4996 + 88] = 32
        _5504 = mem[_5399]
        mem[_4036 + _4204 + _4996 + 120] = mem[_5399]
        mem[_4036 + _4204 + _4996 + 152 len ceil32(_5504)] = mem[_5399 + 32 len ceil32(_5504)]
        if ceil32(_5504) > _5504:
            mem[_4036 + _4204 + _4996 + _5504 + 152] = 0
        revert with 0, 32, mem[_4036 + _4204 + _4996 + 120 len ceil32(_5504) + 32]
    if stor0 != msg.sender:
        revert with 0, 'Not allowed executor'
    idx = 0
    s = cd[4]
    while idx < ('cd', 100).length:
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        _766 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
        _768 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_768 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_768]:
            revert with 'NH{q', 50
        mem[_768 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_768]:
            revert with 'NH{q', 50
        mem[_768 + 64] = mem[(32 * idx + 1) + 140 len 20]
        mem[_768 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_768 + 100] = s
        mem[_768 + 132] = 64
        mem[_768 + 164] = mem[_768]
        t = 0
        u = _768 + 32
        v = _768 + 196
        while t < mem[_768]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_766))
        staticcall address(_766).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _768 + (32 * mem[_768]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1040 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1044 = mem[_1040]
        require mem[_1040] <= test266151307()
        require _1040 + mem[_1040] + 31 < _1040 + return_data.size
        _1058 = mem[_1040 + mem[_1040]]
        if mem[_1040 + mem[_1040]] > test266151307():
            revert with 'NH{q', 65
        if _1040 + ceil32(return_data.size) + floor32(mem[_1040 + mem[_1040]]) + 1 > test266151307() or floor32(mem[_1040 + mem[_1040]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1040 + ceil32(return_data.size) + floor32(mem[_1040 + mem[_1040]]) + 1
        mem[_1040 + ceil32(return_data.size)] = _1058
        require _1044 + (32 * _1058) + 32 <= return_data.size
        t = 0
        u = _1040 + _1044 + 32
        v = _1040 + ceil32(return_data.size) + 32
        while t < _1058:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        if 1 >= _1058:
            revert with 'NH{q', 50
        if _1058 == -1:
            revert with 'NH{q', 17
        t = _1058 + 1
        u = mem[_1040 + ceil32(return_data.size) + 64]
        continue 
    if s < cd[36]:
        if not s:
            _772 = mem[64]
            mem[64] = mem[64] + 64
            mem[_772] = 1
            mem[_772 + 32] = '0'
            if not cd[36]:
                _794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_794] = 1
                mem[_794 + 32] = '0'
                _796 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                mem[mem[64] + 55] = '0'
                mem[mem[64] + 56] = ' is less then minAmountOut = '
                mem[mem[64] + 85] = '0'
                mem[mem[64] + 86] = 0
                _1537 = mem[64]
                mem[64] = mem[64] + 86
                mem[_796 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_796 + 90] = 32
                _1556 = mem[_1537]
                mem[_796 + 122] = mem[_1537]
                mem[_796 + 154 len ceil32(_1556)] = mem[_1537 + 32 len ceil32(_1556)]
                if ceil32(_1556) > _1556:
                    mem[_796 + _1556 + 154] = 0
                revert with 0, 32, mem[_796 + 122 len ceil32(_1556) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _1028 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_1028]:
                        revert with 'NH{q', 50
                    mem[t + _1028 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _1513 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _1567 = mem[_772]
                mem[mem[64] + 55 len ceil32(mem[_772])] = mem[_772 + 32 len ceil32(mem[_772])]
                mem[mem[64] + _1567 + 55] = ' is less then minAmountOut = '
                if ceil32(_1567) <= _1567:
                    _2257 = mem[_1028]
                    mem[_1513 + _1567 + 84 len ceil32(mem[_1028])] = mem[_1028 + 32 len ceil32(mem[_1028])]
                    if ceil32(_2257) <= _2257:
                        _3065 = mem[64]
                        mem[64] = _1513 + _1567 + _2257 + 84
                        mem[_1513 + _1567 + _2257 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1513 + _1567 + _2257 + 88] = 32
                        _3141 = mem[_3065]
                        mem[_1513 + _1567 + _2257 + 120] = mem[_3065]
                        mem[_1513 + _1567 + _2257 + 152 len ceil32(_3141)] = mem[_3065 + 32 len ceil32(_3141)]
                        if ceil32(_3141) > _3141:
                            mem[_1513 + _1567 + _2257 + _3141 + 152] = 0
                        revert with 0, 32, mem[_1513 + _1567 + _2257 + 120 len ceil32(_3141) + 32]
                    mem[_1513 + _1567 + _2257 + 84] = 0
                    _3097 = mem[64]
                    mem[64] = _1513 + _1567 + _2257 + 84
                    mem[_1513 + _1567 + _2257 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1513 + _1567 + _2257 + 88] = 32
                    _3157 = mem[_3097]
                    mem[_1513 + _1567 + _2257 + 120] = mem[_3097]
                    mem[_1513 + _1567 + _2257 + 152 len ceil32(_3157)] = mem[_3097 + 32 len ceil32(_3157)]
                    if ceil32(_3157) > _3157:
                        mem[_1513 + _1567 + _2257 + _3157 + 152] = 0
                    revert with 0, 32, mem[_1513 + _1567 + _2257 + 120 len ceil32(_3157) + 32]
                _2267 = mem[_1028]
                mem[_1513 + _1567 + 84 len ceil32(mem[_1028])] = mem[_1028 + 32 len ceil32(mem[_1028])]
                if ceil32(_2267) <= _2267:
                    _3067 = mem[64]
                    mem[64] = _1513 + _1567 + _2267 + 84
                    mem[_1513 + _1567 + _2267 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1513 + _1567 + _2267 + 88] = 32
                    _3142 = mem[_3067]
                    mem[_1513 + _1567 + _2267 + 120] = mem[_3067]
                    mem[_1513 + _1567 + _2267 + 152 len ceil32(_3142)] = mem[_3067 + 32 len ceil32(_3142)]
                    if ceil32(_3142) > _3142:
                        mem[_1513 + _1567 + _2267 + _3142 + 152] = 0
                    revert with 0, 32, mem[_1513 + _1567 + _2267 + 120 len ceil32(_3142) + 32]
                mem[_1513 + _1567 + _2267 + 84] = 0
                _3099 = mem[64]
                mem[64] = _1513 + _1567 + _2267 + 84
                mem[_1513 + _1567 + _2267 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1513 + _1567 + _2267 + 88] = 32
                _3158 = mem[_3099]
                mem[_1513 + _1567 + _2267 + 120] = mem[_3099]
                mem[_1513 + _1567 + _2267 + 152 len ceil32(_3158)] = mem[_3099 + 32 len ceil32(_3158)]
                if ceil32(_3158) > _3158:
                    mem[_1513 + _1567 + _2267 + _3158 + 152] = 0
                revert with 0, 32, mem[_1513 + _1567 + _2267 + 120 len ceil32(_3158) + 32]
            mem[_1028 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1028]:
                    revert with 'NH{q', 50
                mem[t + _1028 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1514 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _1568 = mem[_772]
            mem[mem[64] + 55 len ceil32(mem[_772])] = mem[_772 + 32 len ceil32(mem[_772])]
            var105001 = ceil32(_1568)
            mem[mem[64] + _1568 + 55] = ' is less then minAmountOut = '
            if ceil32(_1568) <= _1568:
                _2258 = mem[_1028]
                mem[mem[64] + _1568 + 84 len ceil32(mem[_1028])] = mem[_1028 + 32 len ceil32(mem[_1028])]
                if ceil32(_2258) <= _2258:
                    _3069 = mem[64]
                    mem[64] = mem[64] + _1568 + _2258 + 84
                    mem[_1514 + _1568 + _2258 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1514 + _1568 + _2258 + 88] = 32
                    _3143 = mem[_3069]
                    mem[_1514 + _1568 + _2258 + 120] = mem[_3069]
                    mem[_1514 + _1568 + _2258 + 152 len ceil32(_3143)] = mem[_3069 + 32 len ceil32(_3143)]
                    if ceil32(_3143) > _3143:
                        mem[_1514 + _1568 + _2258 + _3143 + 152] = 0
                    revert with 0, 32, mem[_1514 + _1568 + _2258 + 120 len ceil32(_3143) + 32]
                mem[mem[64] + _1568 + _2258 + 84] = 0
                _3101 = mem[64]
                mem[64] = _1514 + _1568 + _2258 + 84
                mem[_1514 + _1568 + _2258 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1514 + _1568 + _2258 + 88] = 32
                _3159 = mem[_3101]
                mem[_1514 + _1568 + _2258 + 120] = mem[_3101]
                mem[_1514 + _1568 + _2258 + 152 len ceil32(_3159)] = mem[_3101 + 32 len ceil32(_3159)]
                if ceil32(_3159) > _3159:
                    mem[_1514 + _1568 + _2258 + _3159 + 152] = 0
                revert with 0, 32, mem[_1514 + _1568 + _2258 + 120 len ceil32(_3159) + 32]
            _2268 = mem[_1028]
            mem[mem[64] + _1568 + 84 len ceil32(mem[_1028])] = mem[_1028 + 32 len ceil32(mem[_1028])]
            if ceil32(_2268) <= _2268:
                _3071 = mem[64]
                mem[64] = mem[64] + _1568 + _2268 + 84
                mem[_1514 + _1568 + _2268 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1514 + _1568 + _2268 + 88] = 32
                _3144 = mem[_3071]
                mem[_1514 + _1568 + _2268 + 120] = mem[_3071]
                mem[_1514 + _1568 + _2268 + 152 len ceil32(_3144)] = mem[_3071 + 32 len ceil32(_3144)]
                if ceil32(_3144) > _3144:
                    mem[_1514 + _1568 + _2268 + _3144 + 152] = 0
                revert with 0, 32, mem[_1514 + _1568 + _2268 + 120 len ceil32(_3144) + 32]
            mem[mem[64] + _1568 + _2268 + 84] = 0
            _3103 = mem[64]
            mem[64] = _1514 + _1568 + _2268 + 84
            mem[_1514 + _1568 + _2268 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1514 + _1568 + _2268 + 88] = 32
            _3160 = mem[_3103]
            mem[_1514 + _1568 + _2268 + 120] = mem[_3103]
            mem[_1514 + _1568 + _2268 + 152 len ceil32(_3160)] = mem[_3103 + 32 len ceil32(_3160)]
            if ceil32(_3160) > _3160:
                mem[_1514 + _1568 + _2268 + _3160 + 152] = 0
            revert with 0, 32, mem[_1514 + _1568 + _2268 + 120 len ceil32(_3160) + 32]
        t = 0
        idx = s
        while idx:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            idx = idx / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _1027 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_1027]:
                    revert with 'NH{q', 50
                mem[u + _1027 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _1524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1524] = 1
                mem[_1524 + 32] = '0'
                _1543 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _1585 = mem[_1027]
                mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
                mem[mem[64] + _1585 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _1585 + 84] = '0'
                mem[mem[64] + _1585 + 85] = 0
                if ceil32(_1585) <= _1585:
                    _3089 = mem[64]
                    mem[64] = mem[64] + _1585 + 85
                    mem[_1543 + _1585 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1543 + _1585 + 89] = 32
                    _3153 = mem[_3089]
                    mem[_1543 + _1585 + 121] = mem[_3089]
                    mem[_1543 + _1585 + 153 len ceil32(_3153)] = mem[_3089 + 32 len ceil32(_3153)]
                    if ceil32(_3153) > _3153:
                        mem[_1543 + _1585 + _3153 + 153] = 0
                    revert with 0, 32, mem[_1543 + _1585 + 121 len ceil32(_3153) + 32]
                _3091 = mem[64]
                mem[64] = mem[64] + _1585 + 85
                mem[_1543 + _1585 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1543 + _1585 + 89] = 32
                _3154 = mem[_3091]
                mem[_1543 + _1585 + 121] = mem[_3091]
                mem[_1543 + _1585 + 153 len ceil32(_3154)] = mem[_3091 + 32 len ceil32(_3154)]
                if ceil32(_3154) > _3154:
                    mem[_1543 + _1585 + _3154 + 153] = 0
                revert with 0, 32, mem[_1543 + _1585 + 121 len ceil32(_3154) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _2183 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2183]:
                        revert with 'NH{q', 50
                    mem[t + _2183 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3037 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3173 = mem[_1027]
                mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
                mem[mem[64] + _3173 + 55] = ' is less then minAmountOut = '
                if ceil32(_3173) <= _3173:
                    _4213 = mem[_2183]
                    mem[mem[64] + _3173 + 84 len ceil32(mem[_2183])] = mem[_2183 + 32 len ceil32(mem[_2183])]
                    if ceil32(_4213) <= _4213:
                        _4841 = mem[64]
                        mem[64] = mem[64] + _3173 + _4213 + 84
                        mem[_3037 + _3173 + _4213 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3037 + _3173 + _4213 + 88] = 32
                        _4961 = mem[_4841]
                        mem[_3037 + _3173 + _4213 + 120] = mem[_4841]
                        mem[_3037 + _3173 + _4213 + 152 len ceil32(_4961)] = mem[_4841 + 32 len ceil32(_4961)]
                        if ceil32(_4961) > _4961:
                            mem[_3037 + _3173 + _4213 + _4961 + 152] = 0
                        revert with 0, 32, mem[_3037 + _3173 + _4213 + 120 len ceil32(_4961) + 32]
                    mem[mem[64] + _3173 + _4213 + 84] = 0
                    _4873 = mem[64]
                    mem[64] = mem[64] + _3173 + _4213 + 84
                    mem[_3037 + _3173 + _4213 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3037 + _3173 + _4213 + 88] = 32
                    _4977 = mem[_4873]
                    mem[_3037 + _3173 + _4213 + 120] = mem[_4873]
                    mem[_3037 + _3173 + _4213 + 152 len ceil32(_4977)] = mem[_4873 + 32 len ceil32(_4977)]
                    if ceil32(_4977) > _4977:
                        mem[_3037 + _3173 + _4213 + _4977 + 152] = 0
                    revert with 0, 32, mem[_3037 + _3173 + _4213 + 120 len ceil32(_4977) + 32]
                _4221 = mem[_2183]
                mem[mem[64] + _3173 + 84 len ceil32(mem[_2183])] = mem[_2183 + 32 len ceil32(mem[_2183])]
                if ceil32(_4221) <= _4221:
                    _4843 = mem[64]
                    mem[64] = mem[64] + _3173 + _4221 + 84
                    mem[_3037 + _3173 + _4221 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3037 + _3173 + _4221 + 88] = 32
                    _4962 = mem[_4843]
                    mem[_3037 + _3173 + _4221 + 120] = mem[_4843]
                    mem[_3037 + _3173 + _4221 + 152 len ceil32(_4962)] = mem[_4843 + 32 len ceil32(_4962)]
                    if ceil32(_4962) > _4962:
                        mem[_3037 + _3173 + _4221 + _4962 + 152] = 0
                    revert with 0, 32, mem[_3037 + _3173 + _4221 + 120 len ceil32(_4962) + 32]
                mem[mem[64] + _3173 + _4221 + 84] = 0
                _4875 = mem[64]
                mem[64] = _3037 + _3173 + _4221 + 84
                mem[_3037 + _3173 + _4221 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3037 + _3173 + _4221 + 88] = 32
                _4978 = mem[_4875]
                mem[_3037 + _3173 + _4221 + 120] = mem[_4875]
                mem[_3037 + _3173 + _4221 + 152 len ceil32(_4978)] = mem[_4875 + 32 len ceil32(_4978)]
                if ceil32(_4978) > _4978:
                    mem[_3037 + _3173 + _4221 + _4978 + 152] = 0
                revert with 0, 32, mem[_3037 + _3173 + _4221 + 120 len ceil32(_4978) + 32]
            mem[_2183 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2183]:
                    revert with 'NH{q', 50
                mem[t + _2183 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3038 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _3174 = mem[_1027]
            mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
            mem[mem[64] + _3174 + 55] = ' is less then minAmountOut = '
            if ceil32(_3174) <= _3174:
                _4214 = mem[_2183]
                mem[mem[64] + _3174 + 84 len ceil32(mem[_2183])] = mem[_2183 + 32 len ceil32(mem[_2183])]
                if ceil32(_4214) <= _4214:
                    _4845 = mem[64]
                    mem[64] = mem[64] + _3174 + _4214 + 84
                    mem[_3038 + _3174 + _4214 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3038 + _3174 + _4214 + 88] = 32
                    _4963 = mem[_4845]
                    mem[_3038 + _3174 + _4214 + 120] = mem[_4845]
                    mem[_3038 + _3174 + _4214 + 152 len ceil32(_4963)] = mem[_4845 + 32 len ceil32(_4963)]
                    if ceil32(_4963) > _4963:
                        mem[_3038 + _3174 + _4214 + _4963 + 152] = 0
                    revert with 0, 32, mem[_3038 + _3174 + _4214 + 120 len ceil32(_4963) + 32]
                mem[mem[64] + _3174 + _4214 + 84] = 0
                _4877 = mem[64]
                mem[64] = _3038 + _3174 + _4214 + 84
                mem[_3038 + _3174 + _4214 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3038 + _3174 + _4214 + 88] = 32
                _4979 = mem[_4877]
                mem[_3038 + _3174 + _4214 + 120] = mem[_4877]
                mem[_3038 + _3174 + _4214 + 152 len ceil32(_4979)] = mem[_4877 + 32 len ceil32(_4979)]
                if ceil32(_4979) > _4979:
                    mem[_3038 + _3174 + _4214 + _4979 + 152] = 0
                revert with 0, 32, mem[_3038 + _3174 + _4214 + 120 len ceil32(_4979) + 32]
            _4222 = mem[_2183]
            mem[mem[64] + _3174 + 84 len ceil32(mem[_2183])] = mem[_2183 + 32 len ceil32(mem[_2183])]
            if ceil32(_4222) <= _4222:
                _4847 = mem[64]
                mem[64] = mem[64] + _3174 + _4222 + 84
                mem[_3038 + _3174 + _4222 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3038 + _3174 + _4222 + 88] = 32
                _4964 = mem[_4847]
                mem[_3038 + _3174 + _4222 + 120] = mem[_4847]
                mem[_3038 + _3174 + _4222 + 152 len ceil32(_4964)] = mem[_4847 + 32 len ceil32(_4964)]
                if ceil32(_4964) > _4964:
                    mem[_3038 + _3174 + _4222 + _4964 + 152] = 0
                revert with 0, 32, mem[_3038 + _3174 + _4222 + 120 len ceil32(_4964) + 32]
            mem[mem[64] + _3174 + _4222 + 84] = 0
            _4879 = mem[64]
            mem[64] = mem[64] + _3174 + _4222 + 84
            mem[_3038 + _3174 + _4222 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3038 + _3174 + _4222 + 88] = 32
            _4980 = mem[_4879]
            mem[_3038 + _3174 + _4222 + 120] = mem[_4879]
            mem[_3038 + _3174 + _4222 + 152 len ceil32(_4980)] = mem[_4879 + 32 len ceil32(_4980)]
            if ceil32(_4980) > _4980:
                mem[_3038 + _3174 + _4222 + _4980 + 152] = 0
            revert with 0, 32, mem[_3038 + _3174 + _4222 + 120 len ceil32(_4980) + 32]
        mem[_1027 + 32 len t] = call.data[calldata.size len t]
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_1027]:
                revert with 'NH{q', 50
            mem[u + _1027 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _1525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1525] = 1
            mem[_1525 + 32] = '0'
            _1544 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _1586 = mem[_1027]
            mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
            var105001 = ceil32(_1586)
            mem[mem[64] + _1586 + 55] = ' is less then minAmountOut = '
            mem[mem[64] + _1586 + 84] = '0'
            mem[mem[64] + _1586 + 85] = 0
            if ceil32(_1586) <= _1586:
                _3093 = mem[64]
                mem[64] = mem[64] + _1586 + 85
                mem[_1544 + _1586 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1544 + _1586 + 89] = 32
                _3155 = mem[_3093]
                mem[_1544 + _1586 + 121] = mem[_3093]
                mem[_1544 + _1586 + 153 len ceil32(_3155)] = mem[_3093 + 32 len ceil32(_3155)]
                if ceil32(_3155) > _3155:
                    mem[_1544 + _1586 + _3155 + 153] = 0
                revert with 0, 32, mem[_1544 + _1586 + 121 len ceil32(_3155) + 32]
            _3095 = mem[64]
            mem[64] = mem[64] + _1586 + 85
            mem[_1544 + _1586 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1544 + _1586 + 89] = 32
            _3156 = mem[_3095]
            mem[_1544 + _1586 + 121] = mem[_3095]
            mem[_1544 + _1586 + 153 len ceil32(_3156)] = mem[_3095 + 32 len ceil32(_3156)]
            if ceil32(_3156) > _3156:
                mem[_1544 + _1586 + _3156 + 153] = 0
            revert with 0, 32, mem[_1544 + _1586 + 121 len ceil32(_3156) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _2184 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2184]:
                    revert with 'NH{q', 50
                mem[t + _2184 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3039 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _3175 = mem[_1027]
            mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
            mem[mem[64] + _3175 + 55] = ' is less then minAmountOut = '
            if ceil32(_3175) <= _3175:
                _4215 = mem[_2184]
                mem[mem[64] + _3175 + 84 len ceil32(mem[_2184])] = mem[_2184 + 32 len ceil32(mem[_2184])]
                if ceil32(_4215) <= _4215:
                    _4849 = mem[64]
                    mem[64] = mem[64] + _3175 + _4215 + 84
                    mem[_3039 + _3175 + _4215 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3039 + _3175 + _4215 + 88] = 32
                    _4965 = mem[_4849]
                    mem[_3039 + _3175 + _4215 + 120] = mem[_4849]
                    mem[_3039 + _3175 + _4215 + 152 len ceil32(_4965)] = mem[_4849 + 32 len ceil32(_4965)]
                    if ceil32(_4965) > _4965:
                        mem[_3039 + _3175 + _4215 + _4965 + 152] = 0
                    revert with 0, 32, mem[_3039 + _3175 + _4215 + 120 len ceil32(_4965) + 32]
                mem[mem[64] + _3175 + _4215 + 84] = 0
                _4881 = mem[64]
                mem[64] = _3039 + _3175 + _4215 + 84
                mem[_3039 + _3175 + _4215 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3039 + _3175 + _4215 + 88] = 32
                _4981 = mem[_4881]
                mem[_3039 + _3175 + _4215 + 120] = mem[_4881]
                mem[_3039 + _3175 + _4215 + 152 len ceil32(_4981)] = mem[_4881 + 32 len ceil32(_4981)]
                if ceil32(_4981) > _4981:
                    mem[_3039 + _3175 + _4215 + _4981 + 152] = 0
                revert with 0, 32, mem[_3039 + _3175 + _4215 + 120 len ceil32(_4981) + 32]
            _4223 = mem[_2184]
            mem[mem[64] + _3175 + 84 len ceil32(mem[_2184])] = mem[_2184 + 32 len ceil32(mem[_2184])]
            if ceil32(_4223) <= _4223:
                _4851 = mem[64]
                mem[64] = mem[64] + _3175 + _4223 + 84
                mem[_3039 + _3175 + _4223 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3039 + _3175 + _4223 + 88] = 32
                _4966 = mem[_4851]
                mem[_3039 + _3175 + _4223 + 120] = mem[_4851]
                mem[_3039 + _3175 + _4223 + 152 len ceil32(_4966)] = mem[_4851 + 32 len ceil32(_4966)]
                if ceil32(_4966) > _4966:
                    mem[_3039 + _3175 + _4223 + _4966 + 152] = 0
                revert with 0, 32, mem[_3039 + _3175 + _4223 + 120 len ceil32(_4966) + 32]
            mem[mem[64] + _3175 + _4223 + 84] = 0
            _4883 = mem[64]
            mem[64] = mem[64] + _3175 + _4223 + 84
            mem[_3039 + _3175 + _4223 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3039 + _3175 + _4223 + 88] = 32
            _4982 = mem[_4883]
            mem[_3039 + _3175 + _4223 + 120] = mem[_4883]
            mem[_3039 + _3175 + _4223 + 152 len ceil32(_4982)] = mem[_4883 + 32 len ceil32(_4982)]
            if ceil32(_4982) > _4982:
                mem[_3039 + _3175 + _4223 + _4982 + 152] = 0
            revert with 0, 32, mem[_3039 + _3175 + _4223 + 120 len ceil32(_4982) + 32]
        mem[_2184 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_2184]:
                revert with 'NH{q', 50
            mem[t + _2184 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3040 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _3176 = mem[_1027]
        mem[mem[64] + 55 len ceil32(mem[_1027])] = mem[_1027 + 32 len ceil32(mem[_1027])]
        mem[mem[64] + _3176 + 55] = ' is less then minAmountOut = '
        if ceil32(_3176) <= _3176:
            _4216 = mem[_2184]
            mem[_3040 + _3176 + 84 len ceil32(mem[_2184])] = mem[_2184 + 32 len ceil32(mem[_2184])]
            if ceil32(_4216) <= _4216:
                _4853 = mem[64]
                mem[64] = _3040 + _3176 + _4216 + 84
                mem[_3040 + _3176 + _4216 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3040 + _3176 + _4216 + 88] = 32
                _4967 = mem[_4853]
                mem[_3040 + _3176 + _4216 + 120] = mem[_4853]
                mem[_3040 + _3176 + _4216 + 152 len ceil32(_4967)] = mem[_4853 + 32 len ceil32(_4967)]
                if ceil32(_4967) > _4967:
                    mem[_3040 + _3176 + _4216 + _4967 + 152] = 0
                revert with 0, 32, mem[_3040 + _3176 + _4216 + 120 len ceil32(_4967) + 32]
            mem[_3040 + _3176 + _4216 + 84] = 0
            _4885 = mem[64]
            mem[64] = _3040 + _3176 + _4216 + 84
            mem[_3040 + _3176 + _4216 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3040 + _3176 + _4216 + 88] = 32
            _4983 = mem[_4885]
            mem[_3040 + _3176 + _4216 + 120] = mem[_4885]
            mem[_3040 + _3176 + _4216 + 152 len ceil32(_4983)] = mem[_4885 + 32 len ceil32(_4983)]
            if ceil32(_4983) > _4983:
                mem[_3040 + _3176 + _4216 + _4983 + 152] = 0
            revert with 0, 32, mem[_3040 + _3176 + _4216 + 120 len ceil32(_4983) + 32]
        _4224 = mem[_2184]
        mem[_3040 + _3176 + 84 len ceil32(mem[_2184])] = mem[_2184 + 32 len ceil32(mem[_2184])]
        var133001 = ceil32(_4224)
        if ceil32(_4224) <= _4224:
            _4855 = mem[64]
            mem[64] = _3040 + _3176 + _4224 + 84
            mem[_3040 + _3176 + _4224 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3040 + _3176 + _4224 + 88] = 32
            _4968 = mem[_4855]
            mem[_3040 + _3176 + _4224 + 120] = mem[_4855]
            mem[_3040 + _3176 + _4224 + 152 len ceil32(_4968)] = mem[_4855 + 32 len ceil32(_4968)]
            if ceil32(_4968) > _4968:
                mem[_3040 + _3176 + _4224 + _4968 + 152] = 0
            revert with 0, 32, mem[_3040 + _3176 + _4224 + 120 len ceil32(_4968) + 32]
        mem[_3040 + _3176 + _4224 + 84] = 0
        _4887 = mem[64]
        mem[64] = _3040 + _3176 + _4224 + 84
        mem[_3040 + _3176 + _4224 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3040 + _3176 + _4224 + 88] = 32
        _4984 = mem[_4887]
        mem[_3040 + _3176 + _4224 + 120] = mem[_4887]
        mem[_3040 + _3176 + _4224 + 152 len ceil32(_4984)] = mem[_4887 + 32 len ceil32(_4984)]
        if ceil32(_4984) > _4984:
            mem[_3040 + _3176 + _4224 + _4984 + 152] = 0
        revert with 0, 32, mem[_3040 + _3176 + _4224 + 120 len ceil32(_4984) + 32]
    _1014 = mem[floor32(('cd', 68).length) + 97]
    idx = 0
    s = cd[4]
    while idx < _1014:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1025 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_1025))
        call address(_1025).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1075 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1075] == bool(mem[_1075])
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _1156 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1156))
        staticcall address(_1156).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1281 = mem[_1231]
        require mem[_1231] == mem[_1231]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        _1360 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1369 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _1458 = mem[(32 * idx + 1) + 128]
        _1466 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1466]:
            revert with 'NH{q', 50
        mem[_1466 + 32] = address(_1369)
        if 1 >= mem[_1466]:
            revert with 'NH{q', 50
        mem[_1466 + 64] = address(_1458)
        mem[_1466 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1466 + 100] = s
        mem[_1466 + 132] = 1
        mem[_1466 + 164] = 160
        mem[_1466 + 260] = mem[_1466]
        s = 0
        t = _1466 + 32
        u = _1466 + 292
        while s < mem[_1466]:
            mem[u] = mem[t + 12 len 20]
            _1014 = mem[floor32(('cd', 68).length) + 97]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_1466 + 196] = this.address
        mem[_1466 + 228] = 1922758199
        require ext_code.size(address(_1360))
        call address(_1360).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1466 + (32 * mem[_1466]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1590 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1600 = mem[_1590]
        require mem[_1590] <= test266151307()
        require _1590 + mem[_1590] + 31 < _1590 + return_data.size
        _1632 = mem[_1590 + mem[_1590]]
        if mem[_1590 + mem[_1590]] > test266151307():
            revert with 'NH{q', 65
        if _1590 + ceil32(return_data.size) + floor32(mem[_1590 + mem[_1590]]) + 1 > test266151307() or floor32(mem[_1590 + mem[_1590]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1590 + ceil32(return_data.size) + floor32(mem[_1590 + mem[_1590]]) + 1
        mem[_1590 + ceil32(return_data.size)] = _1632
        require _1600 + (32 * _1632) + 32 <= return_data.size
        s = 0
        t = _1590 + _1600 + 32
        u = _1590 + ceil32(return_data.size) + 32
        while s < _1632:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _1014 = mem[floor32(('cd', 68).length) + 97]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1156))
        staticcall address(_1156).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2278] == mem[_2278]
        if mem[_2278] < _1281:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _1014 = mem[floor32(('cd', 68).length) + 97]
        idx = idx + 1
        s = mem[_2278] - _1281
        continue 
    if s >= cd[36]:
        return s
    if not s:
        _1038 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1038] = 1
        mem[_1038 + 32] = '0'
        if not cd[36]:
            _1047 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1047] = 1
            mem[_1047 + 32] = '0'
            _1056 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            mem[mem[64] + 55] = '0'
            var101001 = 32
            mem[mem[64] + 56] = ' is less then minAmountOut = '
            mem[mem[64] + 85] = '0'
            mem[mem[64] + 86] = 0
            _2209 = mem[64]
            mem[64] = mem[64] + 86
            mem[_1056 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1056 + 90] = 32
            _2246 = mem[_2209]
            mem[_1056 + 122] = mem[_2209]
            mem[_1056 + 154 len ceil32(_2246)] = mem[_2209 + 32 len ceil32(_2246)]
            if ceil32(_2246) > _2246:
                mem[_1056 + _2246 + 154] = 0
            revert with 0, 32, mem[_1056 + 122 len ceil32(_2246) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _1509 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_1509]:
                    revert with 'NH{q', 50
                mem[t + _1509 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _2187 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _2253 = mem[_1038]
            mem[mem[64] + 55 len ceil32(mem[_1038])] = mem[_1038 + 32 len ceil32(mem[_1038])]
            mem[mem[64] + _2253 + 55] = ' is less then minAmountOut = '
            if ceil32(_2253) <= _2253:
                _3171 = mem[_1509]
                mem[mem[64] + _2253 + 84 len ceil32(mem[_1509])] = mem[_1509 + 32 len ceil32(mem[_1509])]
                if ceil32(_3171) <= _3171:
                    _4065 = mem[64]
                    mem[64] = mem[64] + _2253 + _3171 + 84
                    mem[_2187 + _2253 + _3171 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2187 + _2253 + _3171 + 88] = 32
                    _4165 = mem[_4065]
                    mem[_2187 + _2253 + _3171 + 120] = mem[_4065]
                    mem[_2187 + _2253 + _3171 + 152 len ceil32(_4165)] = mem[_4065 + 32 len ceil32(_4165)]
                    if ceil32(_4165) > _4165:
                        mem[_2187 + _2253 + _3171 + _4165 + 152] = 0
                    revert with 0, 32, mem[_2187 + _2253 + _3171 + 120 len ceil32(_4165) + 32]
                mem[mem[64] + _2253 + _3171 + 84] = 0
                _4097 = mem[64]
                mem[64] = mem[64] + _2253 + _3171 + 84
                mem[_2187 + _2253 + _3171 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2187 + _2253 + _3171 + 88] = 32
                _4197 = mem[_4097]
                mem[_2187 + _2253 + _3171 + 120] = mem[_4097]
                mem[_2187 + _2253 + _3171 + 152 len ceil32(_4197)] = mem[_4097 + 32 len ceil32(_4197)]
                if ceil32(_4197) > _4197:
                    mem[_2187 + _2253 + _3171 + _4197 + 152] = 0
                revert with 0, 32, mem[_2187 + _2253 + _3171 + 120 len ceil32(_4197) + 32]
            _3183 = mem[_1509]
            mem[mem[64] + _2253 + 84 len ceil32(mem[_1509])] = mem[_1509 + 32 len ceil32(mem[_1509])]
            if ceil32(_3183) <= _3183:
                _4067 = mem[64]
                mem[64] = mem[64] + _2253 + _3183 + 84
                mem[_2187 + _2253 + _3183 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2187 + _2253 + _3183 + 88] = 32
                _4166 = mem[_4067]
                mem[_2187 + _2253 + _3183 + 120] = mem[_4067]
                mem[_2187 + _2253 + _3183 + 152 len ceil32(_4166)] = mem[_4067 + 32 len ceil32(_4166)]
                if ceil32(_4166) > _4166:
                    mem[_2187 + _2253 + _3183 + _4166 + 152] = 0
                revert with 0, 32, mem[_2187 + _2253 + _3183 + 120 len ceil32(_4166) + 32]
            mem[mem[64] + _2253 + _3183 + 84] = 0
            _4099 = mem[64]
            mem[64] = _2187 + _2253 + _3183 + 84
            mem[_2187 + _2253 + _3183 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2187 + _2253 + _3183 + 88] = 32
            _4198 = mem[_4099]
            mem[_2187 + _2253 + _3183 + 120] = mem[_4099]
            mem[_2187 + _2253 + _3183 + 152 len ceil32(_4198)] = mem[_4099 + 32 len ceil32(_4198)]
            if ceil32(_4198) > _4198:
                mem[_2187 + _2253 + _3183 + _4198 + 152] = 0
            revert with 0, 32, mem[_2187 + _2253 + _3183 + 120 len ceil32(_4198) + 32]
        mem[_1509 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_1509]:
                revert with 'NH{q', 50
            mem[t + _1509 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _2188 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _2254 = mem[_1038]
        mem[mem[64] + 55 len ceil32(mem[_1038])] = mem[_1038 + 32 len ceil32(mem[_1038])]
        var110001 = ceil32(_2254)
        mem[mem[64] + _2254 + 55] = ' is less then minAmountOut = '
        if ceil32(_2254) <= _2254:
            _3172 = mem[_1509]
            mem[mem[64] + _2254 + 84 len ceil32(mem[_1509])] = mem[_1509 + 32 len ceil32(mem[_1509])]
            if ceil32(_3172) <= _3172:
                _4069 = mem[64]
                mem[64] = mem[64] + _2254 + _3172 + 84
                mem[_2188 + _2254 + _3172 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2188 + _2254 + _3172 + 88] = 32
                _4167 = mem[_4069]
                mem[_2188 + _2254 + _3172 + 120] = mem[_4069]
                mem[_2188 + _2254 + _3172 + 152 len ceil32(_4167)] = mem[_4069 + 32 len ceil32(_4167)]
                if ceil32(_4167) > _4167:
                    mem[_2188 + _2254 + _3172 + _4167 + 152] = 0
                revert with 0, 32, mem[_2188 + _2254 + _3172 + 120 len ceil32(_4167) + 32]
            mem[mem[64] + _2254 + _3172 + 84] = 0
            _4101 = mem[64]
            mem[64] = _2188 + _2254 + _3172 + 84
            mem[_2188 + _2254 + _3172 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2188 + _2254 + _3172 + 88] = 32
            _4199 = mem[_4101]
            mem[_2188 + _2254 + _3172 + 120] = mem[_4101]
            mem[_2188 + _2254 + _3172 + 152 len ceil32(_4199)] = mem[_4101 + 32 len ceil32(_4199)]
            if ceil32(_4199) > _4199:
                mem[_2188 + _2254 + _3172 + _4199 + 152] = 0
            revert with 0, 32, mem[_2188 + _2254 + _3172 + 120 len ceil32(_4199) + 32]
        _3184 = mem[_1509]
        mem[mem[64] + _2254 + 84 len ceil32(mem[_1509])] = mem[_1509 + 32 len ceil32(mem[_1509])]
        if ceil32(_3184) <= _3184:
            _4071 = mem[64]
            mem[64] = mem[64] + _2254 + _3184 + 84
            mem[_2188 + _2254 + _3184 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2188 + _2254 + _3184 + 88] = 32
            _4168 = mem[_4071]
            mem[_2188 + _2254 + _3184 + 120] = mem[_4071]
            mem[_2188 + _2254 + _3184 + 152 len ceil32(_4168)] = mem[_4071 + 32 len ceil32(_4168)]
            if ceil32(_4168) > _4168:
                mem[_2188 + _2254 + _3184 + _4168 + 152] = 0
            revert with 0, 32, mem[_2188 + _2254 + _3184 + 120 len ceil32(_4168) + 32]
        mem[mem[64] + _2254 + _3184 + 84] = 0
        _4103 = mem[64]
        mem[64] = mem[64] + _2254 + _3184 + 84
        mem[_2188 + _2254 + _3184 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_2188 + _2254 + _3184 + 88] = 32
        _4200 = mem[_4103]
        mem[_2188 + _2254 + _3184 + 120] = mem[_4103]
        mem[_2188 + _2254 + _3184 + 152 len ceil32(_4200)] = mem[_4103 + 32 len ceil32(_4200)]
        if ceil32(_4200) > _4200:
            mem[_2188 + _2254 + _3184 + _4200 + 152] = 0
        revert with 0, 32, mem[_2188 + _2254 + _3184 + 120 len ceil32(_4200) + 32]
    t = 0
    idx = s
    while idx:
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        idx = idx / 10
        continue 
    if t > test266151307():
        revert with 'NH{q', 65
    _1508 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + ceil32(t) + 32
    if not t:
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_1508]:
                revert with 'NH{q', 50
            mem[u + _1508 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _2196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2196] = 1
            mem[_2196 + 32] = '0'
            _2219 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _2283 = mem[_1508]
            mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
            mem[mem[64] + _2283 + 55] = ' is less then minAmountOut = '
            mem[_2219 + _2283 + 84] = '0'
            mem[_2219 + _2283 + 85] = 0
            if ceil32(_2283) <= _2283:
                _4089 = mem[64]
                mem[64] = _2219 + _2283 + 85
                mem[_2219 + _2283 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2219 + _2283 + 89] = 32
                _4193 = mem[_4089]
                mem[_2219 + _2283 + 121] = mem[_4089]
                mem[_2219 + _2283 + 153 len ceil32(_4193)] = mem[_4089 + 32 len ceil32(_4193)]
                if ceil32(_4193) > _4193:
                    mem[_2219 + _2283 + _4193 + 153] = 0
                revert with 0, 32, mem[_2219 + _2283 + 121 len ceil32(_4193) + 32]
            _4091 = mem[64]
            mem[64] = _2219 + _2283 + 85
            mem[_2219 + _2283 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2219 + _2283 + 89] = 32
            _4194 = mem[_4091]
            mem[_2219 + _2283 + 121] = mem[_4091]
            mem[_2219 + _2283 + 153 len ceil32(_4194)] = mem[_4091 + 32 len ceil32(_4194)]
            if ceil32(_4194) > _4194:
                mem[_2219 + _2283 + _4194 + 153] = 0
            revert with 0, 32, mem[_2219 + _2283 + 121 len ceil32(_4194) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _3031 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3031]:
                    revert with 'NH{q', 50
                mem[t + _3031 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4037 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4209 = mem[_1508]
            mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
            mem[mem[64] + _4209 + 55] = ' is less then minAmountOut = '
            if ceil32(_4209) <= _4209:
                _4989 = mem[_3031]
                mem[mem[64] + _4209 + 84 len ceil32(mem[_3031])] = mem[_3031 + 32 len ceil32(mem[_3031])]
                if ceil32(_4989) <= _4989:
                    _5369 = mem[64]
                    mem[64] = mem[64] + _4209 + _4989 + 84
                    mem[_4037 + _4209 + _4989 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4037 + _4209 + _4989 + 88] = 32
                    _5473 = mem[_5369]
                    mem[_4037 + _4209 + _4989 + 120] = mem[_5369]
                    mem[_4037 + _4209 + _4989 + 152 len ceil32(_5473)] = mem[_5369 + 32 len ceil32(_5473)]
                    if ceil32(_5473) > _5473:
                        mem[_4037 + _4209 + _4989 + _5473 + 152] = 0
                    revert with 0, 32, mem[_4037 + _4209 + _4989 + 120 len ceil32(_5473) + 32]
                mem[mem[64] + _4209 + _4989 + 84] = 0
                _5401 = mem[64]
                mem[64] = mem[64] + _4209 + _4989 + 84
                mem[_4037 + _4209 + _4989 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4037 + _4209 + _4989 + 88] = 32
                _5505 = mem[_5401]
                mem[_4037 + _4209 + _4989 + 120] = mem[_5401]
                mem[_4037 + _4209 + _4989 + 152 len ceil32(_5505)] = mem[_5401 + 32 len ceil32(_5505)]
                if ceil32(_5505) > _5505:
                    mem[_4037 + _4209 + _4989 + _5505 + 152] = 0
                revert with 0, 32, mem[_4037 + _4209 + _4989 + 120 len ceil32(_5505) + 32]
            _4997 = mem[_3031]
            mem[mem[64] + _4209 + 84 len ceil32(mem[_3031])] = mem[_3031 + 32 len ceil32(mem[_3031])]
            if ceil32(_4997) <= _4997:
                _5371 = mem[64]
                mem[64] = mem[64] + _4209 + _4997 + 84
                mem[_4037 + _4209 + _4997 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4037 + _4209 + _4997 + 88] = 32
                _5474 = mem[_5371]
                mem[_4037 + _4209 + _4997 + 120] = mem[_5371]
                mem[_4037 + _4209 + _4997 + 152 len ceil32(_5474)] = mem[_5371 + 32 len ceil32(_5474)]
                if ceil32(_5474) > _5474:
                    mem[_4037 + _4209 + _4997 + _5474 + 152] = 0
                revert with 0, 32, mem[_4037 + _4209 + _4997 + 120 len ceil32(_5474) + 32]
            mem[mem[64] + _4209 + _4997 + 84] = 0
            _5403 = mem[64]
            mem[64] = _4037 + _4209 + _4997 + 84
            mem[_4037 + _4209 + _4997 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4037 + _4209 + _4997 + 88] = 32
            _5506 = mem[_5403]
            mem[_4037 + _4209 + _4997 + 120] = mem[_5403]
            mem[_4037 + _4209 + _4997 + 152 len ceil32(_5506)] = mem[_5403 + 32 len ceil32(_5506)]
            if ceil32(_5506) > _5506:
                mem[_4037 + _4209 + _4997 + _5506 + 152] = 0
            revert with 0, 32, mem[_4037 + _4209 + _4997 + 120 len ceil32(_5506) + 32]
        mem[_3031 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_3031]:
                revert with 'NH{q', 50
            mem[t + _3031 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _4038 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _4210 = mem[_1508]
        mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
        mem[mem[64] + _4210 + 55] = ' is less then minAmountOut = '
        if ceil32(_4210) <= _4210:
            _4990 = mem[_3031]
            mem[mem[64] + _4210 + 84 len ceil32(mem[_3031])] = mem[_3031 + 32 len ceil32(mem[_3031])]
            if ceil32(_4990) <= _4990:
                _5373 = mem[64]
                mem[64] = mem[64] + _4210 + _4990 + 84
                mem[_4038 + _4210 + _4990 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4038 + _4210 + _4990 + 88] = 32
                _5475 = mem[_5373]
                mem[_4038 + _4210 + _4990 + 120] = mem[_5373]
                mem[_4038 + _4210 + _4990 + 152 len ceil32(_5475)] = mem[_5373 + 32 len ceil32(_5475)]
                if ceil32(_5475) > _5475:
                    mem[_4038 + _4210 + _4990 + _5475 + 152] = 0
                revert with 0, 32, mem[_4038 + _4210 + _4990 + 120 len ceil32(_5475) + 32]
            mem[mem[64] + _4210 + _4990 + 84] = 0
            _5405 = mem[64]
            mem[64] = _4038 + _4210 + _4990 + 84
            mem[_4038 + _4210 + _4990 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4038 + _4210 + _4990 + 88] = 32
            _5507 = mem[_5405]
            mem[_4038 + _4210 + _4990 + 120] = mem[_5405]
            mem[_4038 + _4210 + _4990 + 152 len ceil32(_5507)] = mem[_5405 + 32 len ceil32(_5507)]
            if ceil32(_5507) > _5507:
                mem[_4038 + _4210 + _4990 + _5507 + 152] = 0
            revert with 0, 32, mem[_4038 + _4210 + _4990 + 120 len ceil32(_5507) + 32]
        _4998 = mem[_3031]
        mem[mem[64] + _4210 + 84 len ceil32(mem[_3031])] = mem[_3031 + 32 len ceil32(mem[_3031])]
        if ceil32(_4998) <= _4998:
            _5375 = mem[64]
            mem[64] = mem[64] + _4210 + _4998 + 84
            mem[_4038 + _4210 + _4998 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4038 + _4210 + _4998 + 88] = 32
            _5476 = mem[_5375]
            mem[_4038 + _4210 + _4998 + 120] = mem[_5375]
            mem[_4038 + _4210 + _4998 + 152 len ceil32(_5476)] = mem[_5375 + 32 len ceil32(_5476)]
            if ceil32(_5476) > _5476:
                mem[_4038 + _4210 + _4998 + _5476 + 152] = 0
            revert with 0, 32, mem[_4038 + _4210 + _4998 + 120 len ceil32(_5476) + 32]
        mem[mem[64] + _4210 + _4998 + 84] = 0
        _5407 = mem[64]
        mem[64] = _4038 + _4210 + _4998 + 84
        mem[_4038 + _4210 + _4998 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4038 + _4210 + _4998 + 88] = 32
        _5508 = mem[_5407]
        mem[_4038 + _4210 + _4998 + 120] = mem[_5407]
        mem[_4038 + _4210 + _4998 + 152 len ceil32(_5508)] = mem[_5407 + 32 len ceil32(_5508)]
        if ceil32(_5508) > _5508:
            mem[_4038 + _4210 + _4998 + _5508 + 152] = 0
        revert with 0, 32, mem[_4038 + _4210 + _4998 + 120 len ceil32(_5508) + 32]
    mem[_1508 + 32 len t] = call.data[calldata.size len t]
    u = t
    idx = s
    while idx:
        if u < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if u - 1 >= mem[_1508]:
            revert with 'NH{q', 50
        mem[u + _1508 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        u = u - 1
        idx = idx / 10
        continue 
    if not cd[36]:
        _2197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2197] = 1
        mem[_2197 + 32] = '0'
        _2220 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _2284 = mem[_1508]
        mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
        var110001 = ceil32(_2284)
        mem[mem[64] + _2284 + 55] = ' is less then minAmountOut = '
        mem[mem[64] + _2284 + 84] = '0'
        mem[mem[64] + _2284 + 85] = 0
        if ceil32(_2284) <= _2284:
            _4093 = mem[64]
            mem[64] = mem[64] + _2284 + 85
            mem[_2220 + _2284 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2220 + _2284 + 89] = 32
            _4195 = mem[_4093]
            mem[_2220 + _2284 + 121] = mem[_4093]
            mem[_2220 + _2284 + 153 len ceil32(_4195)] = mem[_4093 + 32 len ceil32(_4195)]
            if ceil32(_4195) > _4195:
                mem[_2220 + _2284 + _4195 + 153] = 0
            revert with 0, 32, mem[_2220 + _2284 + 121 len ceil32(_4195) + 32]
        _4095 = mem[64]
        mem[64] = mem[64] + _2284 + 85
        mem[_2220 + _2284 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_2220 + _2284 + 89] = 32
        _4196 = mem[_4095]
        mem[_2220 + _2284 + 121] = mem[_4095]
        mem[_2220 + _2284 + 153 len ceil32(_4196)] = mem[_4095 + 32 len ceil32(_4196)]
        if ceil32(_4196) > _4196:
            mem[_2220 + _2284 + _4196 + 153] = 0
        revert with 0, 32, mem[_2220 + _2284 + 121 len ceil32(_4196) + 32]
    s = 0
    idx = cd[36]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _3032 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_3032]:
                revert with 'NH{q', 50
            mem[t + _3032 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _4039 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _4211 = mem[_1508]
        mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
        mem[mem[64] + _4211 + 55] = ' is less then minAmountOut = '
        if ceil32(_4211) <= _4211:
            _4991 = mem[_3032]
            mem[mem[64] + _4211 + 84 len ceil32(mem[_3032])] = mem[_3032 + 32 len ceil32(mem[_3032])]
            if ceil32(_4991) <= _4991:
                _5377 = mem[64]
                mem[64] = mem[64] + _4211 + _4991 + 84
                mem[_4039 + _4211 + _4991 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4039 + _4211 + _4991 + 88] = 32
                _5477 = mem[_5377]
                mem[_4039 + _4211 + _4991 + 120] = mem[_5377]
                mem[_4039 + _4211 + _4991 + 152 len ceil32(_5477)] = mem[_5377 + 32 len ceil32(_5477)]
                if ceil32(_5477) > _5477:
                    mem[_4039 + _4211 + _4991 + _5477 + 152] = 0
                revert with 0, 32, mem[_4039 + _4211 + _4991 + 120 len ceil32(_5477) + 32]
            mem[mem[64] + _4211 + _4991 + 84] = 0
            _5409 = mem[64]
            mem[64] = mem[64] + _4211 + _4991 + 84
            mem[_4039 + _4211 + _4991 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4039 + _4211 + _4991 + 88] = 32
            _5509 = mem[_5409]
            mem[_4039 + _4211 + _4991 + 120] = mem[_5409]
            mem[_4039 + _4211 + _4991 + 152 len ceil32(_5509)] = mem[_5409 + 32 len ceil32(_5509)]
            if ceil32(_5509) > _5509:
                mem[_4039 + _4211 + _4991 + _5509 + 152] = 0
            revert with 0, 32, mem[_4039 + _4211 + _4991 + 120 len ceil32(_5509) + 32]
        _4999 = mem[_3032]
        mem[mem[64] + _4211 + 84 len ceil32(mem[_3032])] = mem[_3032 + 32 len ceil32(mem[_3032])]
        if ceil32(_4999) <= _4999:
            _5379 = mem[64]
            mem[64] = mem[64] + _4211 + _4999 + 84
            mem[_4039 + _4211 + _4999 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4039 + _4211 + _4999 + 88] = 32
            _5478 = mem[_5379]
            mem[_4039 + _4211 + _4999 + 120] = mem[_5379]
            mem[_4039 + _4211 + _4999 + 152 len ceil32(_5478)] = mem[_5379 + 32 len ceil32(_5478)]
            if ceil32(_5478) > _5478:
                mem[_4039 + _4211 + _4999 + _5478 + 152] = 0
            revert with 0, 32, mem[_4039 + _4211 + _4999 + 120 len ceil32(_5478) + 32]
        mem[mem[64] + _4211 + _4999 + 84] = 0
        _5411 = mem[64]
        mem[64] = mem[64] + _4211 + _4999 + 84
        mem[_4039 + _4211 + _4999 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4039 + _4211 + _4999 + 88] = 32
        _5510 = mem[_5411]
        mem[_4039 + _4211 + _4999 + 120] = mem[_5411]
        mem[_4039 + _4211 + _4999 + 152 len ceil32(_5510)] = mem[_5411 + 32 len ceil32(_5510)]
        if ceil32(_5510) > _5510:
            mem[_4039 + _4211 + _4999 + _5510 + 152] = 0
        revert with 0, 32, mem[_4039 + _4211 + _4999 + 120 len ceil32(_5510) + 32]
    mem[_3032 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = cd[36]
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_3032]:
            revert with 'NH{q', 50
        mem[t + _3032 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _4040 = mem[64]
    mem[mem[64] + 32] = 'Last token amountOut = '
    _4212 = mem[_1508]
    mem[mem[64] + 55 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
    mem[mem[64] + _4212 + 55] = ' is less then minAmountOut = '
    if ceil32(_4212) <= _4212:
        _4992 = mem[_3032]
        mem[_4040 + _4212 + 84 len ceil32(mem[_3032])] = mem[_3032 + 32 len ceil32(mem[_3032])]
        if ceil32(_4992) <= _4992:
            _5381 = mem[64]
            mem[64] = _4040 + _4212 + _4992 + 84
            mem[_4040 + _4212 + _4992 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4040 + _4212 + _4992 + 88] = 32
            _5479 = mem[_5381]
            mem[_4040 + _4212 + _4992 + 120] = mem[_5381]
            mem[_4040 + _4212 + _4992 + 152 len ceil32(_5479)] = mem[_5381 + 32 len ceil32(_5479)]
            if ceil32(_5479) > _5479:
                mem[_4040 + _4212 + _4992 + _5479 + 152] = 0
            revert with 0, 32, mem[_4040 + _4212 + _4992 + 120 len ceil32(_5479) + 32]
        mem[_4040 + _4212 + _4992 + 84] = 0
        _5413 = mem[64]
        mem[64] = _4040 + _4212 + _4992 + 84
        mem[_4040 + _4212 + _4992 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4040 + _4212 + _4992 + 88] = 32
        _5511 = mem[_5413]
        mem[_4040 + _4212 + _4992 + 120] = mem[_5413]
        mem[_4040 + _4212 + _4992 + 152 len ceil32(_5511)] = mem[_5413 + 32 len ceil32(_5511)]
        if ceil32(_5511) > _5511:
            mem[_4040 + _4212 + _4992 + _5511 + 152] = 0
        revert with 0, 32, mem[_4040 + _4212 + _4992 + 120 len ceil32(_5511) + 32]
    _5000 = mem[_3032]
    mem[_4040 + _4212 + 84 len ceil32(mem[_3032])] = mem[_3032 + 32 len ceil32(mem[_3032])]
    if ceil32(_5000) <= _5000:
        _5383 = mem[64]
        mem[64] = _4040 + _4212 + _5000 + 84
        mem[_4040 + _4212 + _5000 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4040 + _4212 + _5000 + 88] = 32
        _5480 = mem[_5383]
        mem[_4040 + _4212 + _5000 + 120] = mem[_5383]
        mem[_4040 + _4212 + _5000 + 152 len ceil32(_5480)] = mem[_5383 + 32 len ceil32(_5480)]
        if ceil32(_5480) > _5480:
            mem[_4040 + _4212 + _5000 + _5480 + 152] = 0
        revert with 0, 32, mem[_4040 + _4212 + _5000 + 120 len ceil32(_5480) + 32]
    mem[_4040 + _4212 + _5000 + 84] = 0
    _5415 = mem[64]
    mem[64] = _4040 + _4212 + _5000 + 84
    mem[_4040 + _4212 + _5000 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_4040 + _4212 + _5000 + 88] = 32
    _5512 = mem[_5415]
    mem[_4040 + _4212 + _5000 + 120] = mem[_5415]
    mem[_4040 + _4212 + _5000 + 152 len ceil32(_5512)] = mem[_5415 + 32 len ceil32(_5512)]
    if ceil32(_5512) > _5512:
        mem[_4040 + _4212 + _5000 + _5512 + 152] = 0
    revert with 0, 32, mem[_4040 + _4212 + _5000 + 120 len ceil32(_5512) + 32]
}

function sub_bdcaf47c(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if stor1[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 1
        if stor1[address(msg.sender)]:
            idx = 0
            s = cd[4]
            while idx < ('cd', 100).length:
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _1588 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                _1592 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1592 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1592]:
                    revert with 'NH{q', 50
                mem[_1592 + 32] = mem[(32 * idx) + 140 len 20]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_1592]:
                    revert with 'NH{q', 50
                mem[_1592 + 64] = mem[(32 * idx + 1) + 140 len 20]
                mem[_1592 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1592 + 100] = s
                mem[_1592 + 132] = 64
                mem[_1592 + 164] = mem[_1592]
                t = 0
                u = _1592 + 32
                v = _1592 + 196
                while t < mem[_1592]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_1588))
                staticcall address(_1588).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1592 + (32 * mem[_1592]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2156 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2161 = mem[_2156]
                require mem[_2156] <= test266151307()
                require _2156 + mem[_2156] + 31 < _2156 + return_data.size
                _2183 = mem[_2156 + mem[_2156]]
                if mem[_2156 + mem[_2156]] > test266151307():
                    revert with 'NH{q', 65
                if _2156 + ceil32(return_data.size) + floor32(mem[_2156 + mem[_2156]]) + 1 > test266151307() or floor32(mem[_2156 + mem[_2156]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2156 + ceil32(return_data.size) + floor32(mem[_2156 + mem[_2156]]) + 1
                mem[_2156 + ceil32(return_data.size)] = _2183
                require _2161 + (32 * _2183) + 32 <= return_data.size
                t = 0
                u = _2156 + _2161 + 32
                v = _2156 + ceil32(return_data.size) + 32
                while t < _2183:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if 1 >= _2183:
                    revert with 'NH{q', 50
                if _2183 == -1:
                    revert with 'NH{q', 17
                t = _2183 + 1
                u = mem[_2156 + ceil32(return_data.size) + 64]
                continue 
            if s < cd[36]:
                if not s:
                    _1597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1597] = 1
                    mem[_1597 + 32] = '0'
                    if not cd[36]:
                        _1641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1641] = 1
                        mem[_1641 + 32] = '0'
                        _1648 = mem[64]
                        mem[mem[64] + 32] = 'Last token amountOut = '
                        mem[mem[64] + 55] = '0'
                        var107001 = 32
                        mem[mem[64] + 56] = ' is less then minAmountOut = '
                        mem[mem[64] + 85] = '0'
                        mem[mem[64] + 86] = 0
                        _3162 = mem[64]
                        mem[64] = mem[64] + 86
                        mem[_1648 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1648 + 90] = 32
                        _3202 = mem[_3162]
                        mem[_1648 + 122] = mem[_3162]
                        mem[_1648 + 154 len ceil32(_3202)] = mem[_3162 + 32 len ceil32(_3202)]
                        if ceil32(_3202) > _3202:
                            mem[_1648 + _3202 + 154] = 0
                        revert with 0, 32, mem[_1648 + 122 len ceil32(_3202) + 32]
                    s = 0
                    idx = cd[36]
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    _2123 = mem[64]
                    mem[mem[64]] = s
                    mem[64] = mem[64] + ceil32(s) + 32
                    if not s:
                        t = s
                        idx = cd[36]
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[_2123]:
                                revert with 'NH{q', 50
                            mem[t + _2123 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _3120 = mem[64]
                        mem[mem[64] + 32] = 'Last token amountOut = '
                        _3222 = mem[_1597]
                        mem[mem[64] + 55 len ceil32(mem[_1597])] = mem[_1597 + 32 len ceil32(mem[_1597])]
                        var115001 = ceil32(_3222)
                        mem[mem[64] + _3222 + 55] = ' is less then minAmountOut = '
                        if ceil32(_3222) <= _3222:
                            _4596 = mem[_2123]
                            mem[mem[64] + _3222 + 84 len ceil32(mem[_2123])] = mem[_2123 + 32 len ceil32(mem[_2123])]
                            if ceil32(_4596) <= _4596:
                                _6188 = mem[64]
                                mem[64] = mem[64] + _3222 + _4596 + 84
                                mem[_3120 + _3222 + _4596 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_3120 + _3222 + _4596 + 88] = 32
                                _6342 = mem[_6188]
                                mem[_3120 + _3222 + _4596 + 120] = mem[_6188]
                                mem[_3120 + _3222 + _4596 + 152 len ceil32(_6342)] = mem[_6188 + 32 len ceil32(_6342)]
                                var147001 = ceil32(_6342)
                                if ceil32(_6342) > _6342:
                                    mem[_3120 + _3222 + _4596 + _6342 + 152] = 0
                                revert with 0, 32, mem[_3120 + _3222 + _4596 + 120 len ceil32(_6342) + 32]
                            mem[mem[64] + _3222 + _4596 + 84] = 0
                            _6252 = mem[64]
                            mem[64] = mem[64] + _3222 + _4596 + 84
                            mem[_3120 + _3222 + _4596 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3120 + _3222 + _4596 + 88] = 32
                            _6392 = mem[_6252]
                            mem[_3120 + _3222 + _4596 + 120] = mem[_6252]
                            mem[_3120 + _3222 + _4596 + 152 len ceil32(_6392)] = mem[_6252 + 32 len ceil32(_6392)]
                            if ceil32(_6392) > _6392:
                                mem[_3120 + _3222 + _4596 + _6392 + 152] = 0
                            revert with 0, 32, mem[_3120 + _3222 + _4596 + 120 len ceil32(_6392) + 32]
                        _4619 = mem[_2123]
                        mem[mem[64] + _3222 + 84 len ceil32(mem[_2123])] = mem[_2123 + 32 len ceil32(mem[_2123])]
                        if ceil32(_4619) <= _4619:
                            _6190 = mem[64]
                            mem[64] = mem[64] + _3222 + _4619 + 84
                            mem[_3120 + _3222 + _4619 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3120 + _3222 + _4619 + 88] = 32
                            _6343 = mem[_6190]
                            mem[_3120 + _3222 + _4619 + 120] = mem[_6190]
                            mem[_3120 + _3222 + _4619 + 152 len ceil32(_6343)] = mem[_6190 + 32 len ceil32(_6343)]
                            if ceil32(_6343) > _6343:
                                mem[_3120 + _3222 + _4619 + _6343 + 152] = 0
                            revert with 0, 32, mem[_3120 + _3222 + _4619 + 120 len ceil32(_6343) + 32]
                        mem[mem[64] + _3222 + _4619 + 84] = 0
                        _6254 = mem[64]
                        mem[64] = mem[64] + _3222 + _4619 + 84
                        mem[_3120 + _3222 + _4619 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3120 + _3222 + _4619 + 88] = 32
                        _6393 = mem[_6254]
                        mem[_3120 + _3222 + _4619 + 120] = mem[_6254]
                        mem[_3120 + _3222 + _4619 + 152 len ceil32(_6393)] = mem[_6254 + 32 len ceil32(_6393)]
                        if ceil32(_6393) > _6393:
                            mem[_3120 + _3222 + _4619 + _6393 + 152] = 0
                        revert with 0, 32, mem[_3120 + _3222 + _4619 + 120 len ceil32(_6393) + 32]
                    mem[_2123 + 32 len s] = call.data[calldata.size len s]
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_2123]:
                            revert with 'NH{q', 50
                        mem[t + _2123 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _3121 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3223 = mem[_1597]
                    mem[mem[64] + 55 len ceil32(mem[_1597])] = mem[_1597 + 32 len ceil32(mem[_1597])]
                    mem[mem[64] + _3223 + 55] = ' is less then minAmountOut = '
                    if ceil32(_3223) <= _3223:
                        _4597 = mem[_2123]
                        mem[_3121 + _3223 + 84 len ceil32(mem[_2123])] = mem[_2123 + 32 len ceil32(mem[_2123])]
                        if ceil32(_4597) <= _4597:
                            _6192 = mem[64]
                            mem[64] = _3121 + _3223 + _4597 + 84
                            mem[_3121 + _3223 + _4597 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3121 + _3223 + _4597 + 88] = 32
                            _6344 = mem[_6192]
                            mem[_3121 + _3223 + _4597 + 120] = mem[_6192]
                            mem[_3121 + _3223 + _4597 + 152 len ceil32(_6344)] = mem[_6192 + 32 len ceil32(_6344)]
                            if ceil32(_6344) > _6344:
                                mem[_3121 + _3223 + _4597 + _6344 + 152] = 0
                            revert with 0, 32, mem[_3121 + _3223 + _4597 + 120 len ceil32(_6344) + 32]
                        mem[_3121 + _3223 + _4597 + 84] = 0
                        _6256 = mem[64]
                        mem[64] = _3121 + _3223 + _4597 + 84
                        mem[_3121 + _3223 + _4597 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3121 + _3223 + _4597 + 88] = 32
                        _6394 = mem[_6256]
                        mem[_3121 + _3223 + _4597 + 120] = mem[_6256]
                        mem[_3121 + _3223 + _4597 + 152 len ceil32(_6394)] = mem[_6256 + 32 len ceil32(_6394)]
                        if ceil32(_6394) > _6394:
                            mem[_3121 + _3223 + _4597 + _6394 + 152] = 0
                        revert with 0, 32, mem[_3121 + _3223 + _4597 + 120 len ceil32(_6394) + 32]
                    _4620 = mem[_2123]
                    mem[_3121 + _3223 + 84 len ceil32(mem[_2123])] = mem[_2123 + 32 len ceil32(mem[_2123])]
                    if ceil32(_4620) <= _4620:
                        _6194 = mem[64]
                        mem[64] = _3121 + _3223 + _4620 + 84
                        mem[_3121 + _3223 + _4620 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3121 + _3223 + _4620 + 88] = 32
                        _6345 = mem[_6194]
                        mem[_3121 + _3223 + _4620 + 120] = mem[_6194]
                        mem[_3121 + _3223 + _4620 + 152 len ceil32(_6345)] = mem[_6194 + 32 len ceil32(_6345)]
                        if ceil32(_6345) > _6345:
                            mem[_3121 + _3223 + _4620 + _6345 + 152] = 0
                        revert with 0, 32, mem[_3121 + _3223 + _4620 + 120 len ceil32(_6345) + 32]
                    mem[_3121 + _3223 + _4620 + 84] = 0
                    _6258 = mem[64]
                    mem[64] = _3121 + _3223 + _4620 + 84
                    mem[_3121 + _3223 + _4620 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3121 + _3223 + _4620 + 88] = 32
                    _6395 = mem[_6258]
                    mem[_3121 + _3223 + _4620 + 120] = mem[_6258]
                    mem[_3121 + _3223 + _4620 + 152 len ceil32(_6395)] = mem[_6258 + 32 len ceil32(_6395)]
                    if ceil32(_6395) > _6395:
                        mem[_3121 + _3223 + _4620 + _6395 + 152] = 0
                    revert with 0, 32, mem[_3121 + _3223 + _4620 + 120 len ceil32(_6395) + 32]
                t = 0
                idx = s
                while idx:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    idx = idx / 10
                    continue 
                if t > test266151307():
                    revert with 'NH{q', 65
                _2122 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    idx = s
                    while idx:
                        if u < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if u - 1 >= mem[_2122]:
                            revert with 'NH{q', 50
                        mem[u + _2122 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        u = u - 1
                        idx = idx / 10
                        continue 
                    if not cd[36]:
                        _3132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3132] = 1
                        mem[_3132 + 32] = '0'
                        _3177 = mem[64]
                        mem[mem[64] + 32] = 'Last token amountOut = '
                        _3261 = mem[_2122]
                        mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                        var115001 = ceil32(_3261)
                        mem[mem[64] + _3261 + 55] = ' is less then minAmountOut = '
                        mem[_3177 + _3261 + 84] = '0'
                        mem[_3177 + _3261 + 85] = 0
                        if ceil32(_3261) <= _3261:
                            _6244 = mem[64]
                            mem[64] = _3177 + _3261 + 85
                            mem[_3177 + _3261 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3177 + _3261 + 89] = 32
                            _6388 = mem[_6244]
                            mem[_3177 + _3261 + 121] = mem[_6244]
                            mem[_3177 + _3261 + 153 len ceil32(_6388)] = mem[_6244 + 32 len ceil32(_6388)]
                            if ceil32(_6388) > _6388:
                                mem[_3177 + _3261 + _6388 + 153] = 0
                            revert with 0, 32, mem[_3177 + _3261 + 121 len ceil32(_6388) + 32]
                        _6246 = mem[64]
                        mem[64] = _3177 + _3261 + 85
                        mem[_3177 + _3261 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3177 + _3261 + 89] = 32
                        _6389 = mem[_6246]
                        mem[_3177 + _3261 + 121] = mem[_6246]
                        mem[_3177 + _3261 + 153 len ceil32(_6389)] = mem[_6246 + 32 len ceil32(_6389)]
                        if ceil32(_6389) > _6389:
                            mem[_3177 + _3261 + _6389 + 153] = 0
                        revert with 0, 32, mem[_3177 + _3261 + 121 len ceil32(_6389) + 32]
                    s = 0
                    idx = cd[36]
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    _4457 = mem[64]
                    mem[mem[64]] = s
                    mem[64] = mem[64] + ceil32(s) + 32
                    if not s:
                        t = s
                        idx = cd[36]
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[_4457]:
                                revert with 'NH{q', 50
                            mem[t + _4457 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _6164 = mem[64]
                        mem[mem[64] + 32] = 'Last token amountOut = '
                        _6424 = mem[_2122]
                        mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                        var123001 = ceil32(_6424)
                        mem[mem[64] + _6424 + 55] = ' is less then minAmountOut = '
                        if ceil32(_6424) <= _6424:
                            _8504 = mem[_4457]
                            mem[mem[64] + _6424 + 84 len ceil32(mem[_4457])] = mem[_4457 + 32 len ceil32(mem[_4457])]
                            if ceil32(_8504) <= _8504:
                                _9748 = mem[64]
                                mem[64] = mem[64] + _6424 + _8504 + 84
                                mem[_6164 + _6424 + _8504 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6164 + _6424 + _8504 + 88] = 32
                                _9956 = mem[_9748]
                                mem[_6164 + _6424 + _8504 + 120] = mem[_9748]
                                mem[_6164 + _6424 + _8504 + 152 len ceil32(_9956)] = mem[_9748 + 32 len ceil32(_9956)]
                                if ceil32(_9956) > _9956:
                                    mem[_6164 + _6424 + _8504 + _9956 + 152] = 0
                                revert with 0, 32, mem[_6164 + _6424 + _8504 + 120 len ceil32(_9956) + 32]
                            mem[mem[64] + _6424 + _8504 + 84] = 0
                            _9812 = mem[64]
                            mem[64] = mem[64] + _6424 + _8504 + 84
                            mem[_6164 + _6424 + _8504 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6164 + _6424 + _8504 + 88] = 32
                            _10036 = mem[_9812]
                            mem[_6164 + _6424 + _8504 + 120] = mem[_9812]
                            mem[_6164 + _6424 + _8504 + 152 len ceil32(_10036)] = mem[_9812 + 32 len ceil32(_10036)]
                            if ceil32(_10036) > _10036:
                                mem[_6164 + _6424 + _8504 + _10036 + 152] = 0
                            revert with 0, 32, mem[_6164 + _6424 + _8504 + 120 len ceil32(_10036) + 32]
                        _8532 = mem[_4457]
                        mem[mem[64] + _6424 + 84 len ceil32(mem[_4457])] = mem[_4457 + 32 len ceil32(mem[_4457])]
                        if ceil32(_8532) <= _8532:
                            _9750 = mem[64]
                            mem[64] = mem[64] + _6424 + _8532 + 84
                            mem[_6164 + _6424 + _8532 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6164 + _6424 + _8532 + 88] = 32
                            _9957 = mem[_9750]
                            mem[_6164 + _6424 + _8532 + 120] = mem[_9750]
                            mem[_6164 + _6424 + _8532 + 152 len ceil32(_9957)] = mem[_9750 + 32 len ceil32(_9957)]
                            if ceil32(_9957) > _9957:
                                mem[_6164 + _6424 + _8532 + _9957 + 152] = 0
                            revert with 0, 32, mem[_6164 + _6424 + _8532 + 120 len ceil32(_9957) + 32]
                        mem[mem[64] + _6424 + _8532 + 84] = 0
                        _9814 = mem[64]
                        mem[64] = mem[64] + _6424 + _8532 + 84
                        mem[_6164 + _6424 + _8532 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6164 + _6424 + _8532 + 88] = 32
                        _10037 = mem[_9814]
                        mem[_6164 + _6424 + _8532 + 120] = mem[_9814]
                        mem[_6164 + _6424 + _8532 + 152 len ceil32(_10037)] = mem[_9814 + 32 len ceil32(_10037)]
                        if ceil32(_10037) > _10037:
                            mem[_6164 + _6424 + _8532 + _10037 + 152] = 0
                        revert with 0, 32, mem[_6164 + _6424 + _8532 + 120 len ceil32(_10037) + 32]
                    mem[_4457 + 32 len s] = call.data[calldata.size len s]
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_4457]:
                            revert with 'NH{q', 50
                        mem[t + _4457 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _6165 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _6425 = mem[_2122]
                    mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                    var124001 = ceil32(_6425)
                    mem[mem[64] + _6425 + 55] = ' is less then minAmountOut = '
                    if ceil32(_6425) <= _6425:
                        _8505 = mem[_4457]
                        mem[mem[64] + _6425 + 84 len ceil32(mem[_4457])] = mem[_4457 + 32 len ceil32(mem[_4457])]
                        if ceil32(_8505) <= _8505:
                            _9752 = mem[64]
                            mem[64] = mem[64] + _6425 + _8505 + 84
                            mem[_6165 + _6425 + _8505 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6165 + _6425 + _8505 + 88] = 32
                            _9958 = mem[_9752]
                            mem[_6165 + _6425 + _8505 + 120] = mem[_9752]
                            mem[_6165 + _6425 + _8505 + 152 len ceil32(_9958)] = mem[_9752 + 32 len ceil32(_9958)]
                            if ceil32(_9958) > _9958:
                                mem[_6165 + _6425 + _8505 + _9958 + 152] = 0
                            revert with 0, 32, mem[_6165 + _6425 + _8505 + 120 len ceil32(_9958) + 32]
                        mem[mem[64] + _6425 + _8505 + 84] = 0
                        _9816 = mem[64]
                        mem[64] = mem[64] + _6425 + _8505 + 84
                        mem[_6165 + _6425 + _8505 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6165 + _6425 + _8505 + 88] = 32
                        _10038 = mem[_9816]
                        mem[_6165 + _6425 + _8505 + 120] = mem[_9816]
                        mem[_6165 + _6425 + _8505 + 152 len ceil32(_10038)] = mem[_9816 + 32 len ceil32(_10038)]
                        if ceil32(_10038) > _10038:
                            mem[_6165 + _6425 + _8505 + _10038 + 152] = 0
                        revert with 0, 32, mem[_6165 + _6425 + _8505 + 120 len ceil32(_10038) + 32]
                    _8533 = mem[_4457]
                    mem[mem[64] + _6425 + 84 len ceil32(mem[_4457])] = mem[_4457 + 32 len ceil32(mem[_4457])]
                    if ceil32(_8533) <= _8533:
                        _9754 = mem[64]
                        mem[64] = mem[64] + _6425 + _8533 + 84
                        mem[_6165 + _6425 + _8533 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6165 + _6425 + _8533 + 88] = 32
                        _9959 = mem[_9754]
                        mem[_6165 + _6425 + _8533 + 120] = mem[_9754]
                        mem[_6165 + _6425 + _8533 + 152 len ceil32(_9959)] = mem[_9754 + 32 len ceil32(_9959)]
                        if ceil32(_9959) > _9959:
                            mem[_6165 + _6425 + _8533 + _9959 + 152] = 0
                        revert with 0, 32, mem[_6165 + _6425 + _8533 + 120 len ceil32(_9959) + 32]
                    mem[mem[64] + _6425 + _8533 + 84] = 0
                    _9818 = mem[64]
                    mem[64] = _6165 + _6425 + _8533 + 84
                    mem[_6165 + _6425 + _8533 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6165 + _6425 + _8533 + 88] = 32
                    _10039 = mem[_9818]
                    mem[_6165 + _6425 + _8533 + 120] = mem[_9818]
                    mem[_6165 + _6425 + _8533 + 152 len ceil32(_10039)] = mem[_9818 + 32 len ceil32(_10039)]
                    if ceil32(_10039) > _10039:
                        mem[_6165 + _6425 + _8533 + _10039 + 152] = 0
                    revert with 0, 32, mem[_6165 + _6425 + _8533 + 120 len ceil32(_10039) + 32]
                mem[_2122 + 32 len t] = call.data[calldata.size len t]
                u = t
                idx = s
                while idx:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_2122]:
                        revert with 'NH{q', 50
                    mem[u + _2122 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                if not cd[36]:
                    _3133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3133] = 1
                    mem[_3133 + 32] = '0'
                    _3178 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3262 = mem[_2122]
                    mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                    mem[mem[64] + _3262 + 55] = ' is less then minAmountOut = '
                    mem[mem[64] + _3262 + 84] = '0'
                    mem[mem[64] + _3262 + 85] = 0
                    if ceil32(_3262) <= _3262:
                        _6248 = mem[64]
                        mem[64] = mem[64] + _3262 + 85
                        mem[_3178 + _3262 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3178 + _3262 + 89] = 32
                        _6390 = mem[_6248]
                        mem[_3178 + _3262 + 121] = mem[_6248]
                        mem[_3178 + _3262 + 153 len ceil32(_6390)] = mem[_6248 + 32 len ceil32(_6390)]
                        if ceil32(_6390) > _6390:
                            mem[_3178 + _3262 + _6390 + 153] = 0
                        revert with 0, 32, mem[_3178 + _3262 + 121 len ceil32(_6390) + 32]
                    _6250 = mem[64]
                    mem[64] = mem[64] + _3262 + 85
                    mem[_3178 + _3262 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3178 + _3262 + 89] = 32
                    _6391 = mem[_6250]
                    mem[_3178 + _3262 + 121] = mem[_6250]
                    mem[_3178 + _3262 + 153 len ceil32(_6391)] = mem[_6250 + 32 len ceil32(_6391)]
                    if ceil32(_6391) > _6391:
                        mem[_3178 + _3262 + _6391 + 153] = 0
                    revert with 0, 32, mem[_3178 + _3262 + 121 len ceil32(_6391) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _4458 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_4458]:
                            revert with 'NH{q', 50
                        mem[t + _4458 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _6166 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _6426 = mem[_2122]
                    mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                    var124001 = ceil32(_6426)
                    mem[mem[64] + _6426 + 55] = ' is less then minAmountOut = '
                    if ceil32(_6426) <= _6426:
                        _8506 = mem[_4458]
                        mem[mem[64] + _6426 + 84 len ceil32(mem[_4458])] = mem[_4458 + 32 len ceil32(mem[_4458])]
                        if ceil32(_8506) <= _8506:
                            _9756 = mem[64]
                            mem[64] = mem[64] + _6426 + _8506 + 84
                            mem[_6166 + _6426 + _8506 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6166 + _6426 + _8506 + 88] = 32
                            _9960 = mem[_9756]
                            mem[_6166 + _6426 + _8506 + 120] = mem[_9756]
                            mem[_6166 + _6426 + _8506 + 152 len ceil32(_9960)] = mem[_9756 + 32 len ceil32(_9960)]
                            if ceil32(_9960) > _9960:
                                mem[_6166 + _6426 + _8506 + _9960 + 152] = 0
                            revert with 0, 32, mem[_6166 + _6426 + _8506 + 120 len ceil32(_9960) + 32]
                        mem[mem[64] + _6426 + _8506 + 84] = 0
                        _9820 = mem[64]
                        mem[64] = mem[64] + _6426 + _8506 + 84
                        mem[_6166 + _6426 + _8506 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6166 + _6426 + _8506 + 88] = 32
                        _10040 = mem[_9820]
                        mem[_6166 + _6426 + _8506 + 120] = mem[_9820]
                        mem[_6166 + _6426 + _8506 + 152 len ceil32(_10040)] = mem[_9820 + 32 len ceil32(_10040)]
                        if ceil32(_10040) > _10040:
                            mem[_6166 + _6426 + _8506 + _10040 + 152] = 0
                        revert with 0, 32, mem[_6166 + _6426 + _8506 + 120 len ceil32(_10040) + 32]
                    _8534 = mem[_4458]
                    mem[mem[64] + _6426 + 84 len ceil32(mem[_4458])] = mem[_4458 + 32 len ceil32(mem[_4458])]
                    if ceil32(_8534) <= _8534:
                        _9758 = mem[64]
                        mem[64] = mem[64] + _6426 + _8534 + 84
                        mem[_6166 + _6426 + _8534 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6166 + _6426 + _8534 + 88] = 32
                        _9961 = mem[_9758]
                        mem[_6166 + _6426 + _8534 + 120] = mem[_9758]
                        mem[_6166 + _6426 + _8534 + 152 len ceil32(_9961)] = mem[_9758 + 32 len ceil32(_9961)]
                        if ceil32(_9961) > _9961:
                            mem[_6166 + _6426 + _8534 + _9961 + 152] = 0
                        revert with 0, 32, mem[_6166 + _6426 + _8534 + 120 len ceil32(_9961) + 32]
                    mem[mem[64] + _6426 + _8534 + 84] = 0
                    _9822 = mem[64]
                    mem[64] = mem[64] + _6426 + _8534 + 84
                    mem[_6166 + _6426 + _8534 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6166 + _6426 + _8534 + 88] = 32
                    _10041 = mem[_9822]
                    mem[_6166 + _6426 + _8534 + 120] = mem[_9822]
                    mem[_6166 + _6426 + _8534 + 152 len ceil32(_10041)] = mem[_9822 + 32 len ceil32(_10041)]
                    if ceil32(_10041) > _10041:
                        mem[_6166 + _6426 + _8534 + _10041 + 152] = 0
                    revert with 0, 32, mem[_6166 + _6426 + _8534 + 120 len ceil32(_10041) + 32]
                mem[_4458 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4458]:
                        revert with 'NH{q', 50
                    mem[t + _4458 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6167 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6427 = mem[_2122]
                mem[mem[64] + 55 len ceil32(mem[_2122])] = mem[_2122 + 32 len ceil32(mem[_2122])]
                mem[mem[64] + _6427 + 55] = ' is less then minAmountOut = '
                if ceil32(_6427) <= _6427:
                    _8507 = mem[_4458]
                    mem[mem[64] + _6427 + 84 len ceil32(mem[_4458])] = mem[_4458 + 32 len ceil32(mem[_4458])]
                    if ceil32(_8507) <= _8507:
                        _9760 = mem[64]
                        mem[64] = mem[64] + _6427 + _8507 + 84
                        mem[_6167 + _6427 + _8507 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6167 + _6427 + _8507 + 88] = 32
                        _9962 = mem[_9760]
                        mem[_6167 + _6427 + _8507 + 120] = mem[_9760]
                        mem[_6167 + _6427 + _8507 + 152 len ceil32(_9962)] = mem[_9760 + 32 len ceil32(_9962)]
                        if ceil32(_9962) > _9962:
                            mem[_6167 + _6427 + _8507 + _9962 + 152] = 0
                        revert with 0, 32, mem[_6167 + _6427 + _8507 + 120 len ceil32(_9962) + 32]
                    mem[mem[64] + _6427 + _8507 + 84] = 0
                    _9824 = mem[64]
                    mem[64] = mem[64] + _6427 + _8507 + 84
                    mem[_6167 + _6427 + _8507 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6167 + _6427 + _8507 + 88] = 32
                    _10042 = mem[_9824]
                    mem[_6167 + _6427 + _8507 + 120] = mem[_9824]
                    mem[_6167 + _6427 + _8507 + 152 len ceil32(_10042)] = mem[_9824 + 32 len ceil32(_10042)]
                    if ceil32(_10042) > _10042:
                        mem[_6167 + _6427 + _8507 + _10042 + 152] = 0
                    revert with 0, 32, mem[_6167 + _6427 + _8507 + 120 len ceil32(_10042) + 32]
                _8535 = mem[_4458]
                mem[mem[64] + _6427 + 84 len ceil32(mem[_4458])] = mem[_4458 + 32 len ceil32(mem[_4458])]
                if ceil32(_8535) <= _8535:
                    _9762 = mem[64]
                    mem[64] = mem[64] + _6427 + _8535 + 84
                    mem[_6167 + _6427 + _8535 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6167 + _6427 + _8535 + 88] = 32
                    _9963 = mem[_9762]
                    mem[_6167 + _6427 + _8535 + 120] = mem[_9762]
                    mem[_6167 + _6427 + _8535 + 152 len ceil32(_9963)] = mem[_9762 + 32 len ceil32(_9963)]
                    if ceil32(_9963) > _9963:
                        mem[_6167 + _6427 + _8535 + _9963 + 152] = 0
                    revert with 0, 32, mem[_6167 + _6427 + _8535 + 120 len ceil32(_9963) + 32]
                mem[mem[64] + _6427 + _8535 + 84] = 0
                _9826 = mem[64]
                mem[64] = mem[64] + _6427 + _8535 + 84
                mem[_6167 + _6427 + _8535 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6167 + _6427 + _8535 + 88] = 32
                _10043 = mem[_9826]
                mem[_6167 + _6427 + _8535 + 120] = mem[_9826]
                mem[_6167 + _6427 + _8535 + 152 len ceil32(_10043)] = mem[_9826 + 32 len ceil32(_10043)]
                if ceil32(_10043) > _10043:
                    mem[_6167 + _6427 + _8535 + _10043 + 152] = 0
                revert with 0, 32, mem[_6167 + _6427 + _8535 + 120 len ceil32(_10043) + 32]
            _2104 = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = cd[4]
            while idx < _2104:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2120 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
                mem[mem[64] + 36] = s
                require ext_code.size(address(_2120))
                call address(_2120).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2232] == bool(mem[_2232])
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _2404 = mem[(32 * idx + 1) + 128]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2404))
                staticcall address(_2404).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2634 = mem[_2544]
                require mem[_2544] == mem[_2544]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _2806 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2825 = mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _3004 = mem[(32 * idx + 1) + 128]
                _3028 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_3028]:
                    revert with 'NH{q', 50
                mem[_3028 + 32] = address(_2825)
                if 1 >= mem[_3028]:
                    revert with 'NH{q', 50
                mem[_3028 + 64] = address(_3004)
                mem[_3028 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_3028 + 100] = s
                mem[_3028 + 132] = 1
                mem[_3028 + 164] = 160
                mem[_3028 + 260] = mem[_3028]
                s = 0
                t = _3028 + 32
                u = _3028 + 292
                while s < mem[_3028]:
                    mem[u] = mem[t + 12 len 20]
                    _2104 = mem[floor32(('cd', 68).length) + 97]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_3028 + 196] = this.address
                mem[_3028 + 228] = 1922758199
                require ext_code.size(address(_2806))
                call address(_2806).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3028 + (32 * mem[_3028]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3273 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3293 = mem[_3273]
                require mem[_3273] <= test266151307()
                require _3273 + mem[_3273] + 31 < _3273 + return_data.size
                _3335 = mem[_3273 + mem[_3273]]
                if mem[_3273 + mem[_3273]] > test266151307():
                    revert with 'NH{q', 65
                if _3273 + ceil32(return_data.size) + floor32(mem[_3273 + mem[_3273]]) + 1 > test266151307() or floor32(mem[_3273 + mem[_3273]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3273 + ceil32(return_data.size) + floor32(mem[_3273 + mem[_3273]]) + 1
                mem[_3273 + ceil32(return_data.size)] = _3335
                require _3293 + (32 * _3335) + 32 <= return_data.size
                s = 0
                t = _3273 + _3293 + 32
                u = _3273 + ceil32(return_data.size) + 32
                while s < _3335:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _2104 = mem[floor32(('cd', 68).length) + 97]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2404))
                staticcall address(_2404).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4646] == mem[_4646]
                if mem[_4646] < _2634:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _2104 = mem[floor32(('cd', 68).length) + 97]
                idx = idx + 1
                s = mem[_4646] - _2634
                continue 
            if s >= cd[36]:
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                _2196 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = s
                require ext_code.size(address(_2196))
                call address(_2196).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[132]), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2316] == bool(mem[_2316])
            if not s:
                _2152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2152] = 1
                mem[_2152 + 32] = '0'
                if not cd[36]:
                    _2168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2168] = 1
                    mem[_2168 + 32] = '0'
                    _2181 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    mem[mem[64] + 55] = '0'
                    var112001 = 32
                    mem[mem[64] + 56] = ' is less then minAmountOut = '
                    mem[mem[64] + 85] = '0'
                    mem[mem[64] + 86] = 0
                    _4506 = mem[64]
                    mem[64] = mem[64] + 86
                    mem[_2181 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2181 + 90] = 32
                    _4585 = mem[_4506]
                    mem[_2181 + 122] = mem[_4506]
                    mem[_2181 + 154 len ceil32(_4585)] = mem[_4506 + 32 len ceil32(_4585)]
                    var146001 = ceil32(_4585)
                    if ceil32(_4585) > _4585:
                        mem[_2181 + _4585 + 154] = 0
                    revert with 0, 32, mem[_2181 + 122 len ceil32(_4585) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _3109 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_3109]:
                            revert with 'NH{q', 50
                        mem[t + _3109 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _4468 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _4592 = mem[_2152]
                    mem[mem[64] + 55 len ceil32(mem[_2152])] = mem[_2152 + 32 len ceil32(mem[_2152])]
                    var120001 = ceil32(_4592)
                    mem[mem[64] + _4592 + 55] = ' is less then minAmountOut = '
                    if ceil32(_4592) <= _4592:
                        _6422 = mem[_3109]
                        mem[mem[64] + _4592 + 84 len ceil32(mem[_3109])] = mem[_3109 + 32 len ceil32(mem[_3109])]
                        if ceil32(_6422) <= _6422:
                            _8188 = mem[64]
                            mem[64] = mem[64] + _4592 + _6422 + 84
                            mem[_4468 + _4592 + _6422 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_4468 + _4592 + _6422 + 88] = 32
                            _8376 = mem[_8188]
                            mem[_4468 + _4592 + _6422 + 120] = mem[_8188]
                            mem[_4468 + _4592 + _6422 + 152 len ceil32(_8376)] = mem[_8188 + 32 len ceil32(_8376)]
                            if ceil32(_8376) > _8376:
                                mem[_4468 + _4592 + _6422 + _8376 + 152] = 0
                            revert with 0, 32, mem[_4468 + _4592 + _6422 + 120 len ceil32(_8376) + 32]
                        mem[mem[64] + _4592 + _6422 + 84] = 0
                        _8252 = mem[64]
                        mem[64] = mem[64] + _4592 + _6422 + 84
                        mem[_4468 + _4592 + _6422 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4468 + _4592 + _6422 + 88] = 32
                        _8472 = mem[_8252]
                        mem[_4468 + _4592 + _6422 + 120] = mem[_8252]
                        mem[_4468 + _4592 + _6422 + 152 len ceil32(_8472)] = mem[_8252 + 32 len ceil32(_8472)]
                        if ceil32(_8472) > _8472:
                            mem[_4468 + _4592 + _6422 + _8472 + 152] = 0
                        revert with 0, 32, mem[_4468 + _4592 + _6422 + 120 len ceil32(_8472) + 32]
                    _6454 = mem[_3109]
                    mem[mem[64] + _4592 + 84 len ceil32(mem[_3109])] = mem[_3109 + 32 len ceil32(mem[_3109])]
                    if ceil32(_6454) <= _6454:
                        _8190 = mem[64]
                        mem[64] = mem[64] + _4592 + _6454 + 84
                        mem[_4468 + _4592 + _6454 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4468 + _4592 + _6454 + 88] = 32
                        _8377 = mem[_8190]
                        mem[_4468 + _4592 + _6454 + 120] = mem[_8190]
                        mem[_4468 + _4592 + _6454 + 152 len ceil32(_8377)] = mem[_8190 + 32 len ceil32(_8377)]
                        if ceil32(_8377) > _8377:
                            mem[_4468 + _4592 + _6454 + _8377 + 152] = 0
                        revert with 0, 32, mem[_4468 + _4592 + _6454 + 120 len ceil32(_8377) + 32]
                    mem[mem[64] + _4592 + _6454 + 84] = 0
                    _8254 = mem[64]
                    mem[64] = mem[64] + _4592 + _6454 + 84
                    mem[_4468 + _4592 + _6454 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4468 + _4592 + _6454 + 88] = 32
                    _8473 = mem[_8254]
                    mem[_4468 + _4592 + _6454 + 120] = mem[_8254]
                    mem[_4468 + _4592 + _6454 + 152 len ceil32(_8473)] = mem[_8254 + 32 len ceil32(_8473)]
                    if ceil32(_8473) > _8473:
                        mem[_4468 + _4592 + _6454 + _8473 + 152] = 0
                    revert with 0, 32, mem[_4468 + _4592 + _6454 + 120 len ceil32(_8473) + 32]
                mem[_3109 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_3109]:
                        revert with 'NH{q', 50
                    mem[t + _3109 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _4469 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4593 = mem[_2152]
                mem[mem[64] + 55 len ceil32(mem[_2152])] = mem[_2152 + 32 len ceil32(mem[_2152])]
                mem[mem[64] + _4593 + 55] = ' is less then minAmountOut = '
                if ceil32(_4593) <= _4593:
                    _6423 = mem[_3109]
                    mem[mem[64] + _4593 + 84 len ceil32(mem[_3109])] = mem[_3109 + 32 len ceil32(mem[_3109])]
                    if ceil32(_6423) <= _6423:
                        _8192 = mem[64]
                        mem[64] = mem[64] + _4593 + _6423 + 84
                        mem[_4469 + _4593 + _6423 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4469 + _4593 + _6423 + 88] = 32
                        _8378 = mem[_8192]
                        mem[_4469 + _4593 + _6423 + 120] = mem[_8192]
                        mem[_4469 + _4593 + _6423 + 152 len ceil32(_8378)] = mem[_8192 + 32 len ceil32(_8378)]
                        if ceil32(_8378) > _8378:
                            mem[_4469 + _4593 + _6423 + _8378 + 152] = 0
                        revert with 0, 32, mem[_4469 + _4593 + _6423 + 120 len ceil32(_8378) + 32]
                    mem[mem[64] + _4593 + _6423 + 84] = 0
                    _8256 = mem[64]
                    mem[64] = _4469 + _4593 + _6423 + 84
                    mem[_4469 + _4593 + _6423 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4469 + _4593 + _6423 + 88] = 32
                    _8474 = mem[_8256]
                    mem[_4469 + _4593 + _6423 + 120] = mem[_8256]
                    mem[_4469 + _4593 + _6423 + 152 len ceil32(_8474)] = mem[_8256 + 32 len ceil32(_8474)]
                    if ceil32(_8474) > _8474:
                        mem[_4469 + _4593 + _6423 + _8474 + 152] = 0
                    revert with 0, 32, mem[_4469 + _4593 + _6423 + 120 len ceil32(_8474) + 32]
                _6455 = mem[_3109]
                mem[mem[64] + _4593 + 84 len ceil32(mem[_3109])] = mem[_3109 + 32 len ceil32(mem[_3109])]
                if ceil32(_6455) <= _6455:
                    _8194 = mem[64]
                    mem[64] = mem[64] + _4593 + _6455 + 84
                    mem[_4469 + _4593 + _6455 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4469 + _4593 + _6455 + 88] = 32
                    _8379 = mem[_8194]
                    mem[_4469 + _4593 + _6455 + 120] = mem[_8194]
                    mem[_4469 + _4593 + _6455 + 152 len ceil32(_8379)] = mem[_8194 + 32 len ceil32(_8379)]
                    if ceil32(_8379) > _8379:
                        mem[_4469 + _4593 + _6455 + _8379 + 152] = 0
                    revert with 0, 32, mem[_4469 + _4593 + _6455 + 120 len ceil32(_8379) + 32]
                mem[mem[64] + _4593 + _6455 + 84] = 0
                _8258 = mem[64]
                mem[64] = mem[64] + _4593 + _6455 + 84
                mem[_4469 + _4593 + _6455 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4469 + _4593 + _6455 + 88] = 32
                _8475 = mem[_8258]
                mem[_4469 + _4593 + _6455 + 120] = mem[_8258]
                mem[_4469 + _4593 + _6455 + 152 len ceil32(_8475)] = mem[_8258 + 32 len ceil32(_8475)]
                if ceil32(_8475) > _8475:
                    mem[_4469 + _4593 + _6455 + _8475 + 152] = 0
                revert with 0, 32, mem[_4469 + _4593 + _6455 + 120 len ceil32(_8475) + 32]
            t = 0
            idx = s
            while idx:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                idx = idx / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _3108 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                idx = s
                while idx:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_3108]:
                        revert with 'NH{q', 50
                    mem[u + _3108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                if not cd[36]:
                    _4476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4476] = 1
                    mem[_4476 + 32] = '0'
                    _4520 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _4656 = mem[_3108]
                    mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
                    var120001 = ceil32(_4656)
                    mem[mem[64] + _4656 + 55] = ' is less then minAmountOut = '
                    mem[mem[64] + _4656 + 84] = '0'
                    mem[mem[64] + _4656 + 85] = 0
                    if ceil32(_4656) <= _4656:
                        _8244 = mem[64]
                        mem[64] = mem[64] + _4656 + 85
                        mem[_4520 + _4656 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4520 + _4656 + 89] = 32
                        _8468 = mem[_8244]
                        mem[_4520 + _4656 + 121] = mem[_8244]
                        mem[_4520 + _4656 + 153 len ceil32(_8468)] = mem[_8244 + 32 len ceil32(_8468)]
                        if ceil32(_8468) > _8468:
                            mem[_4520 + _4656 + _8468 + 153] = 0
                        revert with 0, 32, mem[_4520 + _4656 + 121 len ceil32(_8468) + 32]
                    _8246 = mem[64]
                    mem[64] = mem[64] + _4656 + 85
                    mem[_4520 + _4656 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4520 + _4656 + 89] = 32
                    _8469 = mem[_8246]
                    mem[_4520 + _4656 + 121] = mem[_8246]
                    mem[_4520 + _4656 + 153 len ceil32(_8469)] = mem[_8246 + 32 len ceil32(_8469)]
                    if ceil32(_8469) > _8469:
                        mem[_4520 + _4656 + _8469 + 153] = 0
                    revert with 0, 32, mem[_4520 + _4656 + 121 len ceil32(_8469) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _6156 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_6156]:
                            revert with 'NH{q', 50
                        mem[t + _6156 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _8164 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _8500 = mem[_3108]
                    mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
                    mem[mem[64] + _8500 + 55] = ' is less then minAmountOut = '
                    if ceil32(_8500) <= _8500:
                        _10068 = mem[_6156]
                        mem[mem[64] + _8500 + 84 len ceil32(mem[_6156])] = mem[_6156 + 32 len ceil32(mem[_6156])]
                        var146001 = ceil32(_10068)
                        if ceil32(_10068) <= _10068:
                            _10804 = mem[64]
                            mem[64] = mem[64] + _8500 + _10068 + 84
                            mem[_8164 + _8500 + _10068 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8164 + _8500 + _10068 + 88] = 32
                            _10996 = mem[_10804]
                            mem[_8164 + _8500 + _10068 + 120] = mem[_10804]
                            mem[_8164 + _8500 + _10068 + 152 len ceil32(_10996)] = mem[_10804 + 32 len ceil32(_10996)]
                            if ceil32(_10996) > _10996:
                                mem[_8164 + _8500 + _10068 + _10996 + 152] = 0
                            revert with 0, 32, mem[_8164 + _8500 + _10068 + 120 len ceil32(_10996) + 32]
                        mem[mem[64] + _8500 + _10068 + 84] = 0
                        _10868 = mem[64]
                        mem[64] = mem[64] + _8500 + _10068 + 84
                        mem[_8164 + _8500 + _10068 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8164 + _8500 + _10068 + 88] = 32
                        _11092 = mem[_10868]
                        mem[_8164 + _8500 + _10068 + 120] = mem[_10868]
                        mem[_8164 + _8500 + _10068 + 152 len ceil32(_11092)] = mem[_10868 + 32 len ceil32(_11092)]
                        if ceil32(_11092) > _11092:
                            mem[_8164 + _8500 + _10068 + _11092 + 152] = 0
                        revert with 0, 32, mem[_8164 + _8500 + _10068 + 120 len ceil32(_11092) + 32]
                    _10084 = mem[_6156]
                    mem[mem[64] + _8500 + 84 len ceil32(mem[_6156])] = mem[_6156 + 32 len ceil32(mem[_6156])]
                    var147001 = ceil32(_10084)
                    if ceil32(_10084) <= _10084:
                        _10806 = mem[64]
                        mem[64] = mem[64] + _8500 + _10084 + 84
                        mem[_8164 + _8500 + _10084 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8164 + _8500 + _10084 + 88] = 32
                        _10997 = mem[_10806]
                        mem[_8164 + _8500 + _10084 + 120] = mem[_10806]
                        mem[_8164 + _8500 + _10084 + 152 len ceil32(_10997)] = mem[_10806 + 32 len ceil32(_10997)]
                        if ceil32(_10997) > _10997:
                            mem[_8164 + _8500 + _10084 + _10997 + 152] = 0
                        revert with 0, 32, mem[_8164 + _8500 + _10084 + 120 len ceil32(_10997) + 32]
                    mem[mem[64] + _8500 + _10084 + 84] = 0
                    _10870 = mem[64]
                    mem[64] = mem[64] + _8500 + _10084 + 84
                    mem[_8164 + _8500 + _10084 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8164 + _8500 + _10084 + 88] = 32
                    _11093 = mem[_10870]
                    mem[_8164 + _8500 + _10084 + 120] = mem[_10870]
                    mem[_8164 + _8500 + _10084 + 152 len ceil32(_11093)] = mem[_10870 + 32 len ceil32(_11093)]
                    if ceil32(_11093) > _11093:
                        mem[_8164 + _8500 + _10084 + _11093 + 152] = 0
                    revert with 0, 32, mem[_8164 + _8500 + _10084 + 120 len ceil32(_11093) + 32]
                mem[_6156 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_6156]:
                        revert with 'NH{q', 50
                    mem[t + _6156 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _8165 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _8501 = mem[_3108]
                mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
                mem[mem[64] + _8501 + 55] = ' is less then minAmountOut = '
                if ceil32(_8501) > _8501:
                    _10085 = mem[_6156]
                    mem[_8165 + _8501 + 84 len ceil32(mem[_6156])] = mem[_6156 + 32 len ceil32(mem[_6156])]
                    if ceil32(_10085) <= _10085:
                        _10810 = mem[64]
                        mem[64] = _8165 + _8501 + _10085 + 84
                        mem[_8165 + _8501 + _10085 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8165 + _8501 + _10085 + 88] = 32
                        _10999 = mem[_10810]
                        mem[_8165 + _8501 + _10085 + 120] = mem[_10810]
                        mem[_8165 + _8501 + _10085 + 152 len ceil32(_10999)] = mem[_10810 + 32 len ceil32(_10999)]
                        if ceil32(_10999) > _10999:
                            mem[_8165 + _8501 + _10085 + _10999 + 152] = 0
                        revert with 0, 32, mem[_8165 + _8501 + _10085 + 120 len ceil32(_10999) + 32]
                    mem[_8165 + _8501 + _10085 + 84] = 0
                    _10874 = mem[64]
                    mem[64] = _8165 + _8501 + _10085 + 84
                    mem[_8165 + _8501 + _10085 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8165 + _8501 + _10085 + 88] = 32
                    _11095 = mem[_10874]
                    mem[_8165 + _8501 + _10085 + 120] = mem[_10874]
                    mem[_8165 + _8501 + _10085 + 152 len ceil32(_11095)] = mem[_10874 + 32 len ceil32(_11095)]
                    if ceil32(_11095) > _11095:
                        mem[_8165 + _8501 + _10085 + _11095 + 152] = 0
                    revert with 0, 32, mem[_8165 + _8501 + _10085 + 120 len ceil32(_11095) + 32]
                _10069 = mem[_6156]
                mem[_8165 + _8501 + 84 len ceil32(mem[_6156])] = mem[_6156 + 32 len ceil32(mem[_6156])]
                var147001 = ceil32(_10069)
                if ceil32(_10069) <= _10069:
                    _10808 = mem[64]
                    mem[64] = _8165 + _8501 + _10069 + 84
                    mem[_8165 + _8501 + _10069 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8165 + _8501 + _10069 + 88] = 32
                    _10998 = mem[_10808]
                    mem[_8165 + _8501 + _10069 + 120] = mem[_10808]
                    mem[_8165 + _8501 + _10069 + 152 len ceil32(_10998)] = mem[_10808 + 32 len ceil32(_10998)]
                    if ceil32(_10998) > _10998:
                        mem[_8165 + _8501 + _10069 + _10998 + 152] = 0
                    revert with 0, 32, mem[_8165 + _8501 + _10069 + 120 len ceil32(_10998) + 32]
                mem[_8165 + _8501 + _10069 + 84] = 0
                _10872 = mem[64]
                mem[64] = _8165 + _8501 + _10069 + 84
                mem[_8165 + _8501 + _10069 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8165 + _8501 + _10069 + 88] = 32
                _11094 = mem[_10872]
                mem[_8165 + _8501 + _10069 + 120] = mem[_10872]
                mem[_8165 + _8501 + _10069 + 152 len ceil32(_11094)] = mem[_10872 + 32 len ceil32(_11094)]
                if ceil32(_11094) > _11094:
                    mem[_8165 + _8501 + _10069 + _11094 + 152] = 0
                revert with 0, 32, mem[_8165 + _8501 + _10069 + 120 len ceil32(_11094) + 32]
            mem[_3108 + 32 len t] = call.data[calldata.size len t]
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_3108]:
                    revert with 'NH{q', 50
                mem[u + _3108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _4477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4477] = 1
                mem[_4477 + 32] = '0'
                _4521 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4657 = mem[_3108]
                mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
                mem[mem[64] + _4657 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _4657 + 84] = '0'
                mem[mem[64] + _4657 + 85] = 0
                if ceil32(_4657) <= _4657:
                    _8248 = mem[64]
                    mem[64] = mem[64] + _4657 + 85
                    mem[_4521 + _4657 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4521 + _4657 + 89] = 32
                    _8470 = mem[_8248]
                    mem[_4521 + _4657 + 121] = mem[_8248]
                    mem[_4521 + _4657 + 153 len ceil32(_8470)] = mem[_8248 + 32 len ceil32(_8470)]
                    if ceil32(_8470) > _8470:
                        mem[_4521 + _4657 + _8470 + 153] = 0
                    revert with 0, 32, mem[_4521 + _4657 + 121 len ceil32(_8470) + 32]
                _8250 = mem[64]
                mem[64] = mem[64] + _4657 + 85
                mem[_4521 + _4657 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4521 + _4657 + 89] = 32
                _8471 = mem[_8250]
                mem[_4521 + _4657 + 121] = mem[_8250]
                mem[_4521 + _4657 + 153 len ceil32(_8471)] = mem[_8250 + 32 len ceil32(_8471)]
                if ceil32(_8471) > _8471:
                    mem[_4521 + _4657 + _8471 + 153] = 0
                revert with 0, 32, mem[_4521 + _4657 + 121 len ceil32(_8471) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _6157 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_6157]:
                        revert with 'NH{q', 50
                    mem[t + _6157 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _8166 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _8502 = mem[_3108]
                mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
                mem[mem[64] + _8502 + 55] = ' is less then minAmountOut = '
                if ceil32(_8502) > _8502:
                    _10086 = mem[_6157]
                    mem[_8166 + _8502 + 84 len ceil32(mem[_6157])] = mem[_6157 + 32 len ceil32(mem[_6157])]
                    if ceil32(_10086) <= _10086:
                        _10814 = mem[64]
                        mem[64] = _8166 + _8502 + _10086 + 84
                        mem[_8166 + _8502 + _10086 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8166 + _8502 + _10086 + 88] = 32
                        _11001 = mem[_10814]
                        mem[_8166 + _8502 + _10086 + 120] = mem[_10814]
                        mem[_8166 + _8502 + _10086 + 152 len ceil32(_11001)] = mem[_10814 + 32 len ceil32(_11001)]
                        if ceil32(_11001) > _11001:
                            mem[_8166 + _8502 + _10086 + _11001 + 152] = 0
                        revert with 0, 32, mem[_8166 + _8502 + _10086 + 120 len ceil32(_11001) + 32]
                    mem[_8166 + _8502 + _10086 + 84] = 0
                    _10878 = mem[64]
                    mem[64] = _8166 + _8502 + _10086 + 84
                    mem[_8166 + _8502 + _10086 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8166 + _8502 + _10086 + 88] = 32
                    _11097 = mem[_10878]
                    mem[_8166 + _8502 + _10086 + 120] = mem[_10878]
                    mem[_8166 + _8502 + _10086 + 152 len ceil32(_11097)] = mem[_10878 + 32 len ceil32(_11097)]
                    if ceil32(_11097) > _11097:
                        mem[_8166 + _8502 + _10086 + _11097 + 152] = 0
                    revert with 0, 32, mem[_8166 + _8502 + _10086 + 120 len ceil32(_11097) + 32]
                _10070 = mem[_6157]
                mem[_8166 + _8502 + 84 len ceil32(mem[_6157])] = mem[_6157 + 32 len ceil32(mem[_6157])]
                var147001 = ceil32(_10070)
                if ceil32(_10070) <= _10070:
                    _10812 = mem[64]
                    mem[64] = _8166 + _8502 + _10070 + 84
                    mem[_8166 + _8502 + _10070 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8166 + _8502 + _10070 + 88] = 32
                    _11000 = mem[_10812]
                    mem[_8166 + _8502 + _10070 + 120] = mem[_10812]
                    mem[_8166 + _8502 + _10070 + 152 len ceil32(_11000)] = mem[_10812 + 32 len ceil32(_11000)]
                    if ceil32(_11000) > _11000:
                        mem[_8166 + _8502 + _10070 + _11000 + 152] = 0
                    revert with 0, 32, mem[_8166 + _8502 + _10070 + 120 len ceil32(_11000) + 32]
                mem[_8166 + _8502 + _10070 + 84] = 0
                _10876 = mem[64]
                mem[64] = _8166 + _8502 + _10070 + 84
                mem[_8166 + _8502 + _10070 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8166 + _8502 + _10070 + 88] = 32
                _11096 = mem[_10876]
                mem[_8166 + _8502 + _10070 + 120] = mem[_10876]
                mem[_8166 + _8502 + _10070 + 152 len ceil32(_11096)] = mem[_10876 + 32 len ceil32(_11096)]
                if ceil32(_11096) > _11096:
                    mem[_8166 + _8502 + _10070 + _11096 + 152] = 0
                revert with 0, 32, mem[_8166 + _8502 + _10070 + 120 len ceil32(_11096) + 32]
            mem[_6157 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6157]:
                    revert with 'NH{q', 50
                mem[t + _6157 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8167 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8503 = mem[_3108]
            mem[mem[64] + 55 len ceil32(mem[_3108])] = mem[_3108 + 32 len ceil32(mem[_3108])]
            mem[mem[64] + _8503 + 55] = ' is less then minAmountOut = '
            if ceil32(_8503) <= _8503:
                _10071 = mem[_6157]
                mem[_8167 + _8503 + 84 len ceil32(mem[_6157])] = mem[_6157 + 32 len ceil32(mem[_6157])]
                if ceil32(_10071) <= _10071:
                    _10816 = mem[64]
                    mem[64] = _8167 + _8503 + _10071 + 84
                    mem[_8167 + _8503 + _10071 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8167 + _8503 + _10071 + 88] = 32
                    _11002 = mem[_10816]
                    mem[_8167 + _8503 + _10071 + 120] = mem[_10816]
                    mem[_8167 + _8503 + _10071 + 152 len ceil32(_11002)] = mem[_10816 + 32 len ceil32(_11002)]
                    if ceil32(_11002) > _11002:
                        mem[_8167 + _8503 + _10071 + _11002 + 152] = 0
                    revert with 0, 32, mem[_8167 + _8503 + _10071 + 120 len ceil32(_11002) + 32]
                mem[_8167 + _8503 + _10071 + 84] = 0
                _10880 = mem[64]
                mem[64] = _8167 + _8503 + _10071 + 84
                mem[_8167 + _8503 + _10071 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8167 + _8503 + _10071 + 88] = 32
                _11098 = mem[_10880]
                mem[_8167 + _8503 + _10071 + 120] = mem[_10880]
                mem[_8167 + _8503 + _10071 + 152 len ceil32(_11098)] = mem[_10880 + 32 len ceil32(_11098)]
                if ceil32(_11098) > _11098:
                    mem[_8167 + _8503 + _10071 + _11098 + 152] = 0
                revert with 0, 32, mem[_8167 + _8503 + _10071 + 120 len ceil32(_11098) + 32]
            _10087 = mem[_6157]
            mem[_8167 + _8503 + 84 len ceil32(mem[_6157])] = mem[_6157 + 32 len ceil32(mem[_6157])]
            if ceil32(_10087) <= _10087:
                _10818 = mem[64]
                mem[64] = _8167 + _8503 + _10087 + 84
                mem[_8167 + _8503 + _10087 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8167 + _8503 + _10087 + 88] = 32
                _11003 = mem[_10818]
                mem[_8167 + _8503 + _10087 + 120] = mem[_10818]
                mem[_8167 + _8503 + _10087 + 152 len ceil32(_11003)] = mem[_10818 + 32 len ceil32(_11003)]
                if ceil32(_11003) > _11003:
                    mem[_8167 + _8503 + _10087 + _11003 + 152] = 0
                revert with 0, 32, mem[_8167 + _8503 + _10087 + 120 len ceil32(_11003) + 32]
            mem[_8167 + _8503 + _10087 + 84] = 0
            _10882 = mem[64]
            mem[64] = _8167 + _8503 + _10087 + 84
            mem[_8167 + _8503 + _10087 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8167 + _8503 + _10087 + 88] = 32
            _11099 = mem[_10882]
            mem[_8167 + _8503 + _10087 + 120] = mem[_10882]
            mem[_8167 + _8503 + _10087 + 152 len ceil32(_11099)] = mem[_10882 + 32 len ceil32(_11099)]
            if ceil32(_11099) > _11099:
                mem[_8167 + _8503 + _10087 + _11099 + 152] = 0
            revert with 0, 32, mem[_8167 + _8503 + _10087 + 120 len ceil32(_11099) + 32]
        if stor0 != msg.sender:
            revert with 0, 'Not allowed executor'
        idx = 0
        s = cd[4]
        while idx < ('cd', 100).length:
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _1589 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            _1593 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1593 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_1593]:
                revert with 'NH{q', 50
            mem[_1593 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_1593]:
                revert with 'NH{q', 50
            mem[_1593 + 64] = mem[(32 * idx + 1) + 140 len 20]
            mem[_1593 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1593 + 100] = s
            mem[_1593 + 132] = 64
            mem[_1593 + 164] = mem[_1593]
            t = 0
            u = _1593 + 32
            v = _1593 + 196
            while t < mem[_1593]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_1589))
            staticcall address(_1589).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1593 + (32 * mem[_1593]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2157 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2163 = mem[_2157]
            require mem[_2157] <= test266151307()
            require _2157 + mem[_2157] + 31 < _2157 + return_data.size
            _2187 = mem[_2157 + mem[_2157]]
            if mem[_2157 + mem[_2157]] > test266151307():
                revert with 'NH{q', 65
            if _2157 + ceil32(return_data.size) + floor32(mem[_2157 + mem[_2157]]) + 1 > test266151307() or floor32(mem[_2157 + mem[_2157]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2157 + ceil32(return_data.size) + floor32(mem[_2157 + mem[_2157]]) + 1
            mem[_2157 + ceil32(return_data.size)] = _2187
            require _2163 + (32 * _2187) + 32 <= return_data.size
            t = 0
            u = _2157 + _2163 + 32
            v = _2157 + ceil32(return_data.size) + 32
            while t < _2187:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if 1 >= _2187:
                revert with 'NH{q', 50
            if _2187 == -1:
                revert with 'NH{q', 17
            t = _2187 + 1
            u = mem[_2157 + ceil32(return_data.size) + 64]
            continue 
        if s < cd[36]:
            if not s:
                _1599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1599] = 1
                mem[_1599 + 32] = '0'
                if not cd[36]:
                    _1643 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1643] = 1
                    mem[_1643 + 32] = '0'
                    _1649 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    mem[mem[64] + 55] = '0'
                    mem[mem[64] + 56] = ' is less then minAmountOut = '
                    mem[mem[64] + 85] = '0'
                    mem[mem[64] + 86] = 0
                    _3166 = mem[64]
                    mem[64] = mem[64] + 86
                    mem[_1649 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1649 + 90] = 32
                    _3205 = mem[_3166]
                    mem[_1649 + 122] = mem[_3166]
                    mem[_1649 + 154 len ceil32(_3205)] = mem[_3166 + 32 len ceil32(_3205)]
                    if ceil32(_3205) > _3205:
                        mem[_1649 + _3205 + 154] = 0
                    revert with 0, 32, mem[_1649 + 122 len ceil32(_3205) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _2127 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_2127]:
                            revert with 'NH{q', 50
                        mem[t + _2127 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _3122 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3226 = mem[_1599]
                    mem[mem[64] + 55 len ceil32(mem[_1599])] = mem[_1599 + 32 len ceil32(mem[_1599])]
                    mem[mem[64] + _3226 + 55] = ' is less then minAmountOut = '
                    if ceil32(_3226) <= _3226:
                        _4602 = mem[_2127]
                        mem[mem[64] + _3226 + 84 len ceil32(mem[_2127])] = mem[_2127 + 32 len ceil32(mem[_2127])]
                        if ceil32(_4602) <= _4602:
                            _6204 = mem[64]
                            mem[64] = mem[64] + _3226 + _4602 + 84
                            mem[_3122 + _3226 + _4602 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3122 + _3226 + _4602 + 88] = 32
                            _6356 = mem[_6204]
                            mem[_3122 + _3226 + _4602 + 120] = mem[_6204]
                            mem[_3122 + _3226 + _4602 + 152 len ceil32(_6356)] = mem[_6204 + 32 len ceil32(_6356)]
                            if ceil32(_6356) > _6356:
                                mem[_3122 + _3226 + _4602 + _6356 + 152] = 0
                            revert with 0, 32, mem[_3122 + _3226 + _4602 + 120 len ceil32(_6356) + 32]
                        mem[mem[64] + _3226 + _4602 + 84] = 0
                        _6268 = mem[64]
                        mem[64] = mem[64] + _3226 + _4602 + 84
                        mem[_3122 + _3226 + _4602 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3122 + _3226 + _4602 + 88] = 32
                        _6400 = mem[_6268]
                        mem[_3122 + _3226 + _4602 + 120] = mem[_6268]
                        mem[_3122 + _3226 + _4602 + 152 len ceil32(_6400)] = mem[_6268 + 32 len ceil32(_6400)]
                        if ceil32(_6400) > _6400:
                            mem[_3122 + _3226 + _4602 + _6400 + 152] = 0
                        revert with 0, 32, mem[_3122 + _3226 + _4602 + 120 len ceil32(_6400) + 32]
                    _4624 = mem[_2127]
                    mem[mem[64] + _3226 + 84 len ceil32(mem[_2127])] = mem[_2127 + 32 len ceil32(mem[_2127])]
                    if ceil32(_4624) <= _4624:
                        _6206 = mem[64]
                        mem[64] = mem[64] + _3226 + _4624 + 84
                        mem[_3122 + _3226 + _4624 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3122 + _3226 + _4624 + 88] = 32
                        _6357 = mem[_6206]
                        mem[_3122 + _3226 + _4624 + 120] = mem[_6206]
                        mem[_3122 + _3226 + _4624 + 152 len ceil32(_6357)] = mem[_6206 + 32 len ceil32(_6357)]
                        if ceil32(_6357) > _6357:
                            mem[_3122 + _3226 + _4624 + _6357 + 152] = 0
                        revert with 0, 32, mem[_3122 + _3226 + _4624 + 120 len ceil32(_6357) + 32]
                    mem[mem[64] + _3226 + _4624 + 84] = 0
                    _6270 = mem[64]
                    mem[64] = _3122 + _3226 + _4624 + 84
                    mem[_3122 + _3226 + _4624 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3122 + _3226 + _4624 + 88] = 32
                    _6401 = mem[_6270]
                    mem[_3122 + _3226 + _4624 + 120] = mem[_6270]
                    mem[_3122 + _3226 + _4624 + 152 len ceil32(_6401)] = mem[_6270 + 32 len ceil32(_6401)]
                    if ceil32(_6401) > _6401:
                        mem[_3122 + _3226 + _4624 + _6401 + 152] = 0
                    revert with 0, 32, mem[_3122 + _3226 + _4624 + 120 len ceil32(_6401) + 32]
                mem[_2127 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2127]:
                        revert with 'NH{q', 50
                    mem[t + _2127 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3123 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3227 = mem[_1599]
                mem[mem[64] + 55 len ceil32(mem[_1599])] = mem[_1599 + 32 len ceil32(mem[_1599])]
                var117001 = ceil32(_3227)
                mem[mem[64] + _3227 + 55] = ' is less then minAmountOut = '
                if ceil32(_3227) <= _3227:
                    _4603 = mem[_2127]
                    mem[mem[64] + _3227 + 84 len ceil32(mem[_2127])] = mem[_2127 + 32 len ceil32(mem[_2127])]
                    if ceil32(_4603) <= _4603:
                        _6208 = mem[64]
                        mem[64] = mem[64] + _3227 + _4603 + 84
                        mem[_3123 + _3227 + _4603 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3123 + _3227 + _4603 + 88] = 32
                        _6358 = mem[_6208]
                        mem[_3123 + _3227 + _4603 + 120] = mem[_6208]
                        mem[_3123 + _3227 + _4603 + 152 len ceil32(_6358)] = mem[_6208 + 32 len ceil32(_6358)]
                        if ceil32(_6358) > _6358:
                            mem[_3123 + _3227 + _4603 + _6358 + 152] = 0
                        revert with 0, 32, mem[_3123 + _3227 + _4603 + 120 len ceil32(_6358) + 32]
                    mem[mem[64] + _3227 + _4603 + 84] = 0
                    _6272 = mem[64]
                    mem[64] = mem[64] + _3227 + _4603 + 84
                    mem[_3123 + _3227 + _4603 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3123 + _3227 + _4603 + 88] = 32
                    _6402 = mem[_6272]
                    mem[_3123 + _3227 + _4603 + 120] = mem[_6272]
                    mem[_3123 + _3227 + _4603 + 152 len ceil32(_6402)] = mem[_6272 + 32 len ceil32(_6402)]
                    if ceil32(_6402) > _6402:
                        mem[_3123 + _3227 + _4603 + _6402 + 152] = 0
                    revert with 0, 32, mem[_3123 + _3227 + _4603 + 120 len ceil32(_6402) + 32]
                _4625 = mem[_2127]
                mem[mem[64] + _3227 + 84 len ceil32(mem[_2127])] = mem[_2127 + 32 len ceil32(mem[_2127])]
                if ceil32(_4625) <= _4625:
                    _6210 = mem[64]
                    mem[64] = mem[64] + _3227 + _4625 + 84
                    mem[_3123 + _3227 + _4625 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3123 + _3227 + _4625 + 88] = 32
                    _6359 = mem[_6210]
                    mem[_3123 + _3227 + _4625 + 120] = mem[_6210]
                    mem[_3123 + _3227 + _4625 + 152 len ceil32(_6359)] = mem[_6210 + 32 len ceil32(_6359)]
                    if ceil32(_6359) > _6359:
                        mem[_3123 + _3227 + _4625 + _6359 + 152] = 0
                    revert with 0, 32, mem[_3123 + _3227 + _4625 + 120 len ceil32(_6359) + 32]
                mem[mem[64] + _3227 + _4625 + 84] = 0
                _6274 = mem[64]
                mem[64] = _3123 + _3227 + _4625 + 84
                mem[_3123 + _3227 + _4625 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3123 + _3227 + _4625 + 88] = 32
                _6403 = mem[_6274]
                mem[_3123 + _3227 + _4625 + 120] = mem[_6274]
                mem[_3123 + _3227 + _4625 + 152 len ceil32(_6403)] = mem[_6274 + 32 len ceil32(_6403)]
                if ceil32(_6403) > _6403:
                    mem[_3123 + _3227 + _4625 + _6403 + 152] = 0
                revert with 0, 32, mem[_3123 + _3227 + _4625 + 120 len ceil32(_6403) + 32]
            t = 0
            idx = s
            while idx:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                idx = idx / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _2126 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                idx = s
                while idx:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_2126]:
                        revert with 'NH{q', 50
                    mem[u + _2126 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                if not cd[36]:
                    _3139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3139] = 1
                    mem[_3139 + 32] = '0'
                    _3180 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3264 = mem[_2126]
                    mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
                    mem[mem[64] + _3264 + 55] = ' is less then minAmountOut = '
                    mem[_3180 + _3264 + 84] = '0'
                    mem[_3180 + _3264 + 85] = 0
                    if ceil32(_3264) <= _3264:
                        _6260 = mem[64]
                        mem[64] = _3180 + _3264 + 85
                        mem[_3180 + _3264 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3180 + _3264 + 89] = 32
                        _6396 = mem[_6260]
                        mem[_3180 + _3264 + 121] = mem[_6260]
                        mem[_3180 + _3264 + 153 len ceil32(_6396)] = mem[_6260 + 32 len ceil32(_6396)]
                        if ceil32(_6396) > _6396:
                            mem[_3180 + _3264 + _6396 + 153] = 0
                        revert with 0, 32, mem[_3180 + _3264 + 121 len ceil32(_6396) + 32]
                    _6262 = mem[64]
                    mem[64] = _3180 + _3264 + 85
                    mem[_3180 + _3264 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3180 + _3264 + 89] = 32
                    _6397 = mem[_6262]
                    mem[_3180 + _3264 + 121] = mem[_6262]
                    mem[_3180 + _3264 + 153 len ceil32(_6397)] = mem[_6262 + 32 len ceil32(_6397)]
                    if ceil32(_6397) > _6397:
                        mem[_3180 + _3264 + _6397 + 153] = 0
                    revert with 0, 32, mem[_3180 + _3264 + 121 len ceil32(_6397) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _4460 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_4460]:
                            revert with 'NH{q', 50
                        mem[t + _4460 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _6168 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _6432 = mem[_2126]
                    mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
                    var124001 = ceil32(_6432)
                    mem[mem[64] + _6432 + 55] = ' is less then minAmountOut = '
                    if ceil32(_6432) <= _6432:
                        _8512 = mem[_4460]
                        mem[_6168 + _6432 + 84 len ceil32(mem[_4460])] = mem[_4460 + 32 len ceil32(mem[_4460])]
                        if ceil32(_8512) <= _8512:
                            _9764 = mem[64]
                            mem[64] = _6168 + _6432 + _8512 + 84
                            mem[_6168 + _6432 + _8512 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6168 + _6432 + _8512 + 88] = 32
                            _9980 = mem[_9764]
                            mem[_6168 + _6432 + _8512 + 120] = mem[_9764]
                            mem[_6168 + _6432 + _8512 + 152 len ceil32(_9980)] = mem[_9764 + 32 len ceil32(_9980)]
                            if ceil32(_9980) > _9980:
                                mem[_6168 + _6432 + _8512 + _9980 + 152] = 0
                            revert with 0, 32, mem[_6168 + _6432 + _8512 + 120 len ceil32(_9980) + 32]
                        mem[_6168 + _6432 + _8512 + 84] = 0
                        _9828 = mem[64]
                        mem[64] = _6168 + _6432 + _8512 + 84
                        mem[_6168 + _6432 + _8512 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6168 + _6432 + _8512 + 88] = 32
                        _10044 = mem[_9828]
                        mem[_6168 + _6432 + _8512 + 120] = mem[_9828]
                        mem[_6168 + _6432 + _8512 + 152 len ceil32(_10044)] = mem[_9828 + 32 len ceil32(_10044)]
                        if ceil32(_10044) > _10044:
                            mem[_6168 + _6432 + _8512 + _10044 + 152] = 0
                        revert with 0, 32, mem[_6168 + _6432 + _8512 + 120 len ceil32(_10044) + 32]
                    _8536 = mem[_4460]
                    mem[_6168 + _6432 + 84 len ceil32(mem[_4460])] = mem[_4460 + 32 len ceil32(mem[_4460])]
                    if ceil32(_8536) <= _8536:
                        _9766 = mem[64]
                        mem[64] = _6168 + _6432 + _8536 + 84
                        mem[_6168 + _6432 + _8536 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6168 + _6432 + _8536 + 88] = 32
                        _9981 = mem[_9766]
                        mem[_6168 + _6432 + _8536 + 120] = mem[_9766]
                        mem[_6168 + _6432 + _8536 + 152 len ceil32(_9981)] = mem[_9766 + 32 len ceil32(_9981)]
                        if ceil32(_9981) > _9981:
                            mem[_6168 + _6432 + _8536 + _9981 + 152] = 0
                        revert with 0, 32, mem[_6168 + _6432 + _8536 + 120 len ceil32(_9981) + 32]
                    mem[_6168 + _6432 + _8536 + 84] = 0
                    _9830 = mem[64]
                    mem[64] = _6168 + _6432 + _8536 + 84
                    mem[_6168 + _6432 + _8536 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6168 + _6432 + _8536 + 88] = 32
                    _10045 = mem[_9830]
                    mem[_6168 + _6432 + _8536 + 120] = mem[_9830]
                    mem[_6168 + _6432 + _8536 + 152 len ceil32(_10045)] = mem[_9830 + 32 len ceil32(_10045)]
                    if ceil32(_10045) > _10045:
                        mem[_6168 + _6432 + _8536 + _10045 + 152] = 0
                    revert with 0, 32, mem[_6168 + _6432 + _8536 + 120 len ceil32(_10045) + 32]
                mem[_4460 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4460]:
                        revert with 'NH{q', 50
                    mem[t + _4460 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6169 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6433 = mem[_2126]
                mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
                mem[mem[64] + _6433 + 55] = ' is less then minAmountOut = '
                if ceil32(_6433) <= _6433:
                    _8513 = mem[_4460]
                    mem[mem[64] + _6433 + 84 len ceil32(mem[_4460])] = mem[_4460 + 32 len ceil32(mem[_4460])]
                    if ceil32(_8513) <= _8513:
                        _9768 = mem[64]
                        mem[64] = mem[64] + _6433 + _8513 + 84
                        mem[_6169 + _6433 + _8513 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6169 + _6433 + _8513 + 88] = 32
                        _9982 = mem[_9768]
                        mem[_6169 + _6433 + _8513 + 120] = mem[_9768]
                        mem[_6169 + _6433 + _8513 + 152 len ceil32(_9982)] = mem[_9768 + 32 len ceil32(_9982)]
                        if ceil32(_9982) > _9982:
                            mem[_6169 + _6433 + _8513 + _9982 + 152] = 0
                        revert with 0, 32, mem[_6169 + _6433 + _8513 + 120 len ceil32(_9982) + 32]
                    mem[mem[64] + _6433 + _8513 + 84] = 0
                    _9832 = mem[64]
                    mem[64] = mem[64] + _6433 + _8513 + 84
                    mem[_6169 + _6433 + _8513 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6169 + _6433 + _8513 + 88] = 32
                    _10046 = mem[_9832]
                    mem[_6169 + _6433 + _8513 + 120] = mem[_9832]
                    mem[_6169 + _6433 + _8513 + 152 len ceil32(_10046)] = mem[_9832 + 32 len ceil32(_10046)]
                    if ceil32(_10046) > _10046:
                        mem[_6169 + _6433 + _8513 + _10046 + 152] = 0
                    revert with 0, 32, mem[_6169 + _6433 + _8513 + 120 len ceil32(_10046) + 32]
                _8537 = mem[_4460]
                mem[mem[64] + _6433 + 84 len ceil32(mem[_4460])] = mem[_4460 + 32 len ceil32(mem[_4460])]
                if ceil32(_8537) <= _8537:
                    _9770 = mem[64]
                    mem[64] = mem[64] + _6433 + _8537 + 84
                    mem[_6169 + _6433 + _8537 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6169 + _6433 + _8537 + 88] = 32
                    _9983 = mem[_9770]
                    mem[_6169 + _6433 + _8537 + 120] = mem[_9770]
                    mem[_6169 + _6433 + _8537 + 152 len ceil32(_9983)] = mem[_9770 + 32 len ceil32(_9983)]
                    if ceil32(_9983) > _9983:
                        mem[_6169 + _6433 + _8537 + _9983 + 152] = 0
                    revert with 0, 32, mem[_6169 + _6433 + _8537 + 120 len ceil32(_9983) + 32]
                mem[mem[64] + _6433 + _8537 + 84] = 0
                _9834 = mem[64]
                mem[64] = mem[64] + _6433 + _8537 + 84
                mem[_6169 + _6433 + _8537 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6169 + _6433 + _8537 + 88] = 32
                _10047 = mem[_9834]
                mem[_6169 + _6433 + _8537 + 120] = mem[_9834]
                mem[_6169 + _6433 + _8537 + 152 len ceil32(_10047)] = mem[_9834 + 32 len ceil32(_10047)]
                if ceil32(_10047) > _10047:
                    mem[_6169 + _6433 + _8537 + _10047 + 152] = 0
                revert with 0, 32, mem[_6169 + _6433 + _8537 + 120 len ceil32(_10047) + 32]
            mem[_2126 + 32 len t] = call.data[calldata.size len t]
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_2126]:
                    revert with 'NH{q', 50
                mem[u + _2126 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _3140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3140] = 1
                mem[_3140 + 32] = '0'
                _3181 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3265 = mem[_2126]
                mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
                var117001 = ceil32(_3265)
                mem[mem[64] + _3265 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _3265 + 84] = '0'
                mem[mem[64] + _3265 + 85] = 0
                if ceil32(_3265) <= _3265:
                    _6264 = mem[64]
                    mem[64] = mem[64] + _3265 + 85
                    mem[_3181 + _3265 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3181 + _3265 + 89] = 32
                    _6398 = mem[_6264]
                    mem[_3181 + _3265 + 121] = mem[_6264]
                    mem[_3181 + _3265 + 153 len ceil32(_6398)] = mem[_6264 + 32 len ceil32(_6398)]
                    if ceil32(_6398) > _6398:
                        mem[_3181 + _3265 + _6398 + 153] = 0
                    revert with 0, 32, mem[_3181 + _3265 + 121 len ceil32(_6398) + 32]
                _6266 = mem[64]
                mem[64] = mem[64] + _3265 + 85
                mem[_3181 + _3265 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3181 + _3265 + 89] = 32
                _6399 = mem[_6266]
                mem[_3181 + _3265 + 121] = mem[_6266]
                mem[_3181 + _3265 + 153 len ceil32(_6399)] = mem[_6266 + 32 len ceil32(_6399)]
                if ceil32(_6399) > _6399:
                    mem[_3181 + _3265 + _6399 + 153] = 0
                revert with 0, 32, mem[_3181 + _3265 + 121 len ceil32(_6399) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _4461 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4461]:
                        revert with 'NH{q', 50
                    mem[t + _4461 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6170 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6434 = mem[_2126]
                mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
                mem[mem[64] + _6434 + 55] = ' is less then minAmountOut = '
                if ceil32(_6434) <= _6434:
                    _8514 = mem[_4461]
                    mem[_6170 + _6434 + 84 len ceil32(mem[_4461])] = mem[_4461 + 32 len ceil32(mem[_4461])]
                    if ceil32(_8514) <= _8514:
                        _9772 = mem[64]
                        mem[64] = _6170 + _6434 + _8514 + 84
                        mem[_6170 + _6434 + _8514 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6170 + _6434 + _8514 + 88] = 32
                        _9984 = mem[_9772]
                        mem[_6170 + _6434 + _8514 + 120] = mem[_9772]
                        mem[_6170 + _6434 + _8514 + 152 len ceil32(_9984)] = mem[_9772 + 32 len ceil32(_9984)]
                        if ceil32(_9984) > _9984:
                            mem[_6170 + _6434 + _8514 + _9984 + 152] = 0
                        revert with 0, 32, mem[_6170 + _6434 + _8514 + 120 len ceil32(_9984) + 32]
                    mem[_6170 + _6434 + _8514 + 84] = 0
                    _9836 = mem[64]
                    mem[64] = _6170 + _6434 + _8514 + 84
                    mem[_6170 + _6434 + _8514 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6170 + _6434 + _8514 + 88] = 32
                    _10048 = mem[_9836]
                    mem[_6170 + _6434 + _8514 + 120] = mem[_9836]
                    mem[_6170 + _6434 + _8514 + 152 len ceil32(_10048)] = mem[_9836 + 32 len ceil32(_10048)]
                    if ceil32(_10048) > _10048:
                        mem[_6170 + _6434 + _8514 + _10048 + 152] = 0
                    revert with 0, 32, mem[_6170 + _6434 + _8514 + 120 len ceil32(_10048) + 32]
                _8538 = mem[_4461]
                mem[_6170 + _6434 + 84 len ceil32(mem[_4461])] = mem[_4461 + 32 len ceil32(mem[_4461])]
                if ceil32(_8538) <= _8538:
                    _9774 = mem[64]
                    mem[64] = _6170 + _6434 + _8538 + 84
                    mem[_6170 + _6434 + _8538 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6170 + _6434 + _8538 + 88] = 32
                    _9985 = mem[_9774]
                    mem[_6170 + _6434 + _8538 + 120] = mem[_9774]
                    mem[_6170 + _6434 + _8538 + 152 len ceil32(_9985)] = mem[_9774 + 32 len ceil32(_9985)]
                    if ceil32(_9985) > _9985:
                        mem[_6170 + _6434 + _8538 + _9985 + 152] = 0
                    revert with 0, 32, mem[_6170 + _6434 + _8538 + 120 len ceil32(_9985) + 32]
                mem[_6170 + _6434 + _8538 + 84] = 0
                _9838 = mem[64]
                mem[64] = _6170 + _6434 + _8538 + 84
                mem[_6170 + _6434 + _8538 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6170 + _6434 + _8538 + 88] = 32
                _10049 = mem[_9838]
                mem[_6170 + _6434 + _8538 + 120] = mem[_9838]
                mem[_6170 + _6434 + _8538 + 152 len ceil32(_10049)] = mem[_9838 + 32 len ceil32(_10049)]
                if ceil32(_10049) > _10049:
                    mem[_6170 + _6434 + _8538 + _10049 + 152] = 0
                revert with 0, 32, mem[_6170 + _6434 + _8538 + 120 len ceil32(_10049) + 32]
            mem[_4461 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_4461]:
                    revert with 'NH{q', 50
                mem[t + _4461 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _6171 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _6435 = mem[_2126]
            mem[mem[64] + 55 len ceil32(mem[_2126])] = mem[_2126 + 32 len ceil32(mem[_2126])]
            mem[mem[64] + _6435 + 55] = ' is less then minAmountOut = '
            if ceil32(_6435) <= _6435:
                _8515 = mem[_4461]
                mem[_6171 + _6435 + 84 len ceil32(mem[_4461])] = mem[_4461 + 32 len ceil32(mem[_4461])]
                if ceil32(_8515) <= _8515:
                    _9776 = mem[64]
                    mem[64] = _6171 + _6435 + _8515 + 84
                    mem[_6171 + _6435 + _8515 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6171 + _6435 + _8515 + 88] = 32
                    _9986 = mem[_9776]
                    mem[_6171 + _6435 + _8515 + 120] = mem[_9776]
                    mem[_6171 + _6435 + _8515 + 152 len ceil32(_9986)] = mem[_9776 + 32 len ceil32(_9986)]
                    if ceil32(_9986) > _9986:
                        mem[_6171 + _6435 + _8515 + _9986 + 152] = 0
                    revert with 0, 32, mem[_6171 + _6435 + _8515 + 120 len ceil32(_9986) + 32]
                mem[_6171 + _6435 + _8515 + 84] = 0
                _9840 = mem[64]
                mem[64] = _6171 + _6435 + _8515 + 84
                mem[_6171 + _6435 + _8515 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6171 + _6435 + _8515 + 88] = 32
                _10050 = mem[_9840]
                mem[_6171 + _6435 + _8515 + 120] = mem[_9840]
                mem[_6171 + _6435 + _8515 + 152 len ceil32(_10050)] = mem[_9840 + 32 len ceil32(_10050)]
                if ceil32(_10050) > _10050:
                    mem[_6171 + _6435 + _8515 + _10050 + 152] = 0
                revert with 0, 32, mem[_6171 + _6435 + _8515 + 120 len ceil32(_10050) + 32]
            _8539 = mem[_4461]
            mem[_6171 + _6435 + 84 len ceil32(mem[_4461])] = mem[_4461 + 32 len ceil32(mem[_4461])]
            var145001 = ceil32(_8539)
            if ceil32(_8539) <= _8539:
                _9778 = mem[64]
                mem[64] = _6171 + _6435 + _8539 + 84
                mem[_6171 + _6435 + _8539 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6171 + _6435 + _8539 + 88] = 32
                _9987 = mem[_9778]
                mem[_6171 + _6435 + _8539 + 120] = mem[_9778]
                mem[_6171 + _6435 + _8539 + 152 len ceil32(_9987)] = mem[_9778 + 32 len ceil32(_9987)]
                if ceil32(_9987) > _9987:
                    mem[_6171 + _6435 + _8539 + _9987 + 152] = 0
                revert with 0, 32, mem[_6171 + _6435 + _8539 + 120 len ceil32(_9987) + 32]
            mem[_6171 + _6435 + _8539 + 84] = 0
            _9842 = mem[64]
            mem[64] = _6171 + _6435 + _8539 + 84
            mem[_6171 + _6435 + _8539 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6171 + _6435 + _8539 + 88] = 32
            _10051 = mem[_9842]
            mem[_6171 + _6435 + _8539 + 120] = mem[_9842]
            mem[_6171 + _6435 + _8539 + 152 len ceil32(_10051)] = mem[_9842 + 32 len ceil32(_10051)]
            if ceil32(_10051) > _10051:
                mem[_6171 + _6435 + _8539 + _10051 + 152] = 0
            revert with 0, 32, mem[_6171 + _6435 + _8539 + 120 len ceil32(_10051) + 32]
        _2105 = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = cd[4]
        while idx < _2105:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2124 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
            mem[mem[64] + 36] = s
            require ext_code.size(address(_2124))
            call address(_2124).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2234] == bool(mem[_2234])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _2407 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2407))
            staticcall address(_2407).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2646 = mem[_2552]
            require mem[_2552] == mem[_2552]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _2811 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2830 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _3009 = mem[(32 * idx + 1) + 128]
            _3029 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_3029]:
                revert with 'NH{q', 50
            mem[_3029 + 32] = address(_2830)
            if 1 >= mem[_3029]:
                revert with 'NH{q', 50
            mem[_3029 + 64] = address(_3009)
            mem[_3029 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_3029 + 100] = s
            mem[_3029 + 132] = 1
            mem[_3029 + 164] = 160
            mem[_3029 + 260] = mem[_3029]
            s = 0
            t = _3029 + 32
            u = _3029 + 292
            while s < mem[_3029]:
                mem[u] = mem[t + 12 len 20]
                _2105 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_3029 + 196] = this.address
            mem[_3029 + 228] = 1922758199
            require ext_code.size(address(_2811))
            call address(_2811).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3029 + (32 * mem[_3029]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3275 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3295 = mem[_3275]
            require mem[_3275] <= test266151307()
            require _3275 + mem[_3275] + 31 < _3275 + return_data.size
            _3347 = mem[_3275 + mem[_3275]]
            if mem[_3275 + mem[_3275]] > test266151307():
                revert with 'NH{q', 65
            if _3275 + ceil32(return_data.size) + floor32(mem[_3275 + mem[_3275]]) + 1 > test266151307() or floor32(mem[_3275 + mem[_3275]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _3275 + ceil32(return_data.size) + floor32(mem[_3275 + mem[_3275]]) + 1
            mem[_3275 + ceil32(return_data.size)] = _3347
            require _3295 + (32 * _3347) + 32 <= return_data.size
            s = 0
            t = _3275 + _3295 + 32
            u = _3275 + ceil32(return_data.size) + 32
            while s < _3347:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _2105 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2407))
            staticcall address(_2407).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4649 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4649] == mem[_4649]
            if mem[_4649] < _2646:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _2105 = mem[floor32(('cd', 68).length) + 97]
            idx = idx + 1
            s = mem[_4649] - _2646
            continue 
        if s >= cd[36]:
            if mem[96] < 1:
                revert with 'NH{q', 17
            if mem[96] - 1 >= mem[96]:
                revert with 'NH{q', 50
            _2198 = mem[(32 * mem[96] - 1) + 128]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = s
            require ext_code.size(address(_2198))
            call address(_2198).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2322] == bool(mem[_2322])
        if not s:
            _2153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2153] = 1
            mem[_2153 + 32] = '0'
            if not cd[36]:
                _2170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2170] = 1
                mem[_2170 + 32] = '0'
                _2185 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                mem[mem[64] + 55] = '0'
                var113001 = 32
                mem[mem[64] + 56] = ' is less then minAmountOut = '
                mem[mem[64] + 85] = '0'
                mem[mem[64] + 86] = 0
                _4510 = mem[64]
                mem[64] = mem[64] + 86
                mem[_2185 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2185 + 90] = 32
                _4587 = mem[_4510]
                mem[_2185 + 122] = mem[_4510]
                mem[_2185 + 154 len ceil32(_4587)] = mem[_4510 + 32 len ceil32(_4587)]
                var147001 = ceil32(_4587)
                if ceil32(_4587) > _4587:
                    mem[_2185 + _4587 + 154] = 0
                revert with 0, 32, mem[_2185 + 122 len ceil32(_4587) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _3112 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_3112]:
                        revert with 'NH{q', 50
                    mem[t + _3112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _4470 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4598 = mem[_2153]
                mem[mem[64] + 55 len ceil32(mem[_2153])] = mem[_2153 + 32 len ceil32(mem[_2153])]
                mem[mem[64] + _4598 + 55] = ' is less then minAmountOut = '
                if ceil32(_4598) <= _4598:
                    _6430 = mem[_3112]
                    mem[mem[64] + _4598 + 84 len ceil32(mem[_3112])] = mem[_3112 + 32 len ceil32(mem[_3112])]
                    if ceil32(_6430) <= _6430:
                        _8204 = mem[64]
                        mem[64] = mem[64] + _4598 + _6430 + 84
                        mem[_4470 + _4598 + _6430 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4470 + _4598 + _6430 + 88] = 32
                        _8400 = mem[_8204]
                        mem[_4470 + _4598 + _6430 + 120] = mem[_8204]
                        mem[_4470 + _4598 + _6430 + 152 len ceil32(_8400)] = mem[_8204 + 32 len ceil32(_8400)]
                        if ceil32(_8400) > _8400:
                            mem[_4470 + _4598 + _6430 + _8400 + 152] = 0
                        revert with 0, 32, mem[_4470 + _4598 + _6430 + 120 len ceil32(_8400) + 32]
                    mem[mem[64] + _4598 + _6430 + 84] = 0
                    _8268 = mem[64]
                    mem[64] = mem[64] + _4598 + _6430 + 84
                    mem[_4470 + _4598 + _6430 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4470 + _4598 + _6430 + 88] = 32
                    _8480 = mem[_8268]
                    mem[_4470 + _4598 + _6430 + 120] = mem[_8268]
                    mem[_4470 + _4598 + _6430 + 152 len ceil32(_8480)] = mem[_8268 + 32 len ceil32(_8480)]
                    if ceil32(_8480) > _8480:
                        mem[_4470 + _4598 + _6430 + _8480 + 152] = 0
                    revert with 0, 32, mem[_4470 + _4598 + _6430 + 120 len ceil32(_8480) + 32]
                _6458 = mem[_3112]
                mem[mem[64] + _4598 + 84 len ceil32(mem[_3112])] = mem[_3112 + 32 len ceil32(mem[_3112])]
                if ceil32(_6458) <= _6458:
                    _8206 = mem[64]
                    mem[64] = mem[64] + _4598 + _6458 + 84
                    mem[_4470 + _4598 + _6458 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4470 + _4598 + _6458 + 88] = 32
                    _8401 = mem[_8206]
                    mem[_4470 + _4598 + _6458 + 120] = mem[_8206]
                    mem[_4470 + _4598 + _6458 + 152 len ceil32(_8401)] = mem[_8206 + 32 len ceil32(_8401)]
                    if ceil32(_8401) > _8401:
                        mem[_4470 + _4598 + _6458 + _8401 + 152] = 0
                    revert with 0, 32, mem[_4470 + _4598 + _6458 + 120 len ceil32(_8401) + 32]
                mem[mem[64] + _4598 + _6458 + 84] = 0
                _8270 = mem[64]
                mem[64] = _4470 + _4598 + _6458 + 84
                mem[_4470 + _4598 + _6458 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4470 + _4598 + _6458 + 88] = 32
                _8481 = mem[_8270]
                mem[_4470 + _4598 + _6458 + 120] = mem[_8270]
                mem[_4470 + _4598 + _6458 + 152 len ceil32(_8481)] = mem[_8270 + 32 len ceil32(_8481)]
                if ceil32(_8481) > _8481:
                    mem[_4470 + _4598 + _6458 + _8481 + 152] = 0
                revert with 0, 32, mem[_4470 + _4598 + _6458 + 120 len ceil32(_8481) + 32]
            mem[_3112 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3112]:
                    revert with 'NH{q', 50
                mem[t + _3112 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4471 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4599 = mem[_2153]
            mem[mem[64] + 55 len ceil32(mem[_2153])] = mem[_2153 + 32 len ceil32(mem[_2153])]
            var122001 = ceil32(_4599)
            mem[mem[64] + _4599 + 55] = ' is less then minAmountOut = '
            if ceil32(_4599) <= _4599:
                _6431 = mem[_3112]
                mem[mem[64] + _4599 + 84 len ceil32(mem[_3112])] = mem[_3112 + 32 len ceil32(mem[_3112])]
                if ceil32(_6431) <= _6431:
                    _8208 = mem[64]
                    mem[64] = mem[64] + _4599 + _6431 + 84
                    mem[_4471 + _4599 + _6431 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4471 + _4599 + _6431 + 88] = 32
                    _8402 = mem[_8208]
                    mem[_4471 + _4599 + _6431 + 120] = mem[_8208]
                    mem[_4471 + _4599 + _6431 + 152 len ceil32(_8402)] = mem[_8208 + 32 len ceil32(_8402)]
                    if ceil32(_8402) > _8402:
                        mem[_4471 + _4599 + _6431 + _8402 + 152] = 0
                    revert with 0, 32, mem[_4471 + _4599 + _6431 + 120 len ceil32(_8402) + 32]
                mem[mem[64] + _4599 + _6431 + 84] = 0
                _8272 = mem[64]
                mem[64] = mem[64] + _4599 + _6431 + 84
                mem[_4471 + _4599 + _6431 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4471 + _4599 + _6431 + 88] = 32
                _8482 = mem[_8272]
                mem[_4471 + _4599 + _6431 + 120] = mem[_8272]
                mem[_4471 + _4599 + _6431 + 152 len ceil32(_8482)] = mem[_8272 + 32 len ceil32(_8482)]
                if ceil32(_8482) > _8482:
                    mem[_4471 + _4599 + _6431 + _8482 + 152] = 0
                revert with 0, 32, mem[_4471 + _4599 + _6431 + 120 len ceil32(_8482) + 32]
            _6459 = mem[_3112]
            mem[mem[64] + _4599 + 84 len ceil32(mem[_3112])] = mem[_3112 + 32 len ceil32(mem[_3112])]
            if ceil32(_6459) <= _6459:
                _8210 = mem[64]
                mem[64] = mem[64] + _4599 + _6459 + 84
                mem[_4471 + _4599 + _6459 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4471 + _4599 + _6459 + 88] = 32
                _8403 = mem[_8210]
                mem[_4471 + _4599 + _6459 + 120] = mem[_8210]
                mem[_4471 + _4599 + _6459 + 152 len ceil32(_8403)] = mem[_8210 + 32 len ceil32(_8403)]
                if ceil32(_8403) > _8403:
                    mem[_4471 + _4599 + _6459 + _8403 + 152] = 0
                revert with 0, 32, mem[_4471 + _4599 + _6459 + 120 len ceil32(_8403) + 32]
            mem[mem[64] + _4599 + _6459 + 84] = 0
            _8274 = mem[64]
            mem[64] = mem[64] + _4599 + _6459 + 84
            mem[_4471 + _4599 + _6459 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4471 + _4599 + _6459 + 88] = 32
            _8483 = mem[_8274]
            mem[_4471 + _4599 + _6459 + 120] = mem[_8274]
            mem[_4471 + _4599 + _6459 + 152 len ceil32(_8483)] = mem[_8274 + 32 len ceil32(_8483)]
            if ceil32(_8483) > _8483:
                mem[_4471 + _4599 + _6459 + _8483 + 152] = 0
            revert with 0, 32, mem[_4471 + _4599 + _6459 + 120 len ceil32(_8483) + 32]
        t = 0
        idx = s
        while idx:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            idx = idx / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _3111 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_3111]:
                    revert with 'NH{q', 50
                mem[u + _3111 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _4483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4483] = 1
                mem[_4483 + 32] = '0'
                _4528 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4660 = mem[_3111]
                mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
                mem[mem[64] + _4660 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _4660 + 84] = '0'
                mem[mem[64] + _4660 + 85] = 0
                if ceil32(_4660) <= _4660:
                    _8260 = mem[64]
                    mem[64] = mem[64] + _4660 + 85
                    mem[_4528 + _4660 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4528 + _4660 + 89] = 32
                    _8476 = mem[_8260]
                    mem[_4528 + _4660 + 121] = mem[_8260]
                    mem[_4528 + _4660 + 153 len ceil32(_8476)] = mem[_8260 + 32 len ceil32(_8476)]
                    if ceil32(_8476) > _8476:
                        mem[_4528 + _4660 + _8476 + 153] = 0
                    revert with 0, 32, mem[_4528 + _4660 + 121 len ceil32(_8476) + 32]
                _8262 = mem[64]
                mem[64] = mem[64] + _4660 + 85
                mem[_4528 + _4660 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4528 + _4660 + 89] = 32
                _8477 = mem[_8262]
                mem[_4528 + _4660 + 121] = mem[_8262]
                mem[_4528 + _4660 + 153 len ceil32(_8477)] = mem[_8262 + 32 len ceil32(_8477)]
                if ceil32(_8477) > _8477:
                    mem[_4528 + _4660 + _8477 + 153] = 0
                revert with 0, 32, mem[_4528 + _4660 + 121 len ceil32(_8477) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _6158 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_6158]:
                        revert with 'NH{q', 50
                    mem[t + _6158 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _8168 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _8508 = mem[_3111]
                mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
                mem[mem[64] + _8508 + 55] = ' is less then minAmountOut = '
                if ceil32(_8508) > _8508:
                    _10088 = mem[_6158]
                    mem[mem[64] + _8508 + 84 len ceil32(mem[_6158])] = mem[_6158 + 32 len ceil32(mem[_6158])]
                    if ceil32(_10088) <= _10088:
                        _10822 = mem[64]
                        mem[64] = mem[64] + _8508 + _10088 + 84
                        mem[_8168 + _8508 + _10088 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8168 + _8508 + _10088 + 88] = 32
                        _11021 = mem[_10822]
                        mem[_8168 + _8508 + _10088 + 120] = mem[_10822]
                        mem[_8168 + _8508 + _10088 + 152 len ceil32(_11021)] = mem[_10822 + 32 len ceil32(_11021)]
                        if ceil32(_11021) > _11021:
                            mem[_8168 + _8508 + _10088 + _11021 + 152] = 0
                        revert with 0, 32, mem[_8168 + _8508 + _10088 + 120 len ceil32(_11021) + 32]
                    mem[mem[64] + _8508 + _10088 + 84] = 0
                    _10886 = mem[64]
                    mem[64] = mem[64] + _8508 + _10088 + 84
                    mem[_8168 + _8508 + _10088 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8168 + _8508 + _10088 + 88] = 32
                    _11101 = mem[_10886]
                    mem[_8168 + _8508 + _10088 + 120] = mem[_10886]
                    mem[_8168 + _8508 + _10088 + 152 len ceil32(_11101)] = mem[_10886 + 32 len ceil32(_11101)]
                    if ceil32(_11101) > _11101:
                        mem[_8168 + _8508 + _10088 + _11101 + 152] = 0
                    revert with 0, 32, mem[_8168 + _8508 + _10088 + 120 len ceil32(_11101) + 32]
                _10072 = mem[_6158]
                mem[mem[64] + _8508 + 84 len ceil32(mem[_6158])] = mem[_6158 + 32 len ceil32(mem[_6158])]
                var147001 = ceil32(_10072)
                if ceil32(_10072) <= _10072:
                    _10820 = mem[64]
                    mem[64] = mem[64] + _8508 + _10072 + 84
                    mem[_8168 + _8508 + _10072 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8168 + _8508 + _10072 + 88] = 32
                    _11020 = mem[_10820]
                    mem[_8168 + _8508 + _10072 + 120] = mem[_10820]
                    mem[_8168 + _8508 + _10072 + 152 len ceil32(_11020)] = mem[_10820 + 32 len ceil32(_11020)]
                    if ceil32(_11020) > _11020:
                        mem[_8168 + _8508 + _10072 + _11020 + 152] = 0
                    revert with 0, 32, mem[_8168 + _8508 + _10072 + 120 len ceil32(_11020) + 32]
                mem[mem[64] + _8508 + _10072 + 84] = 0
                _10884 = mem[64]
                mem[64] = mem[64] + _8508 + _10072 + 84
                mem[_8168 + _8508 + _10072 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8168 + _8508 + _10072 + 88] = 32
                _11100 = mem[_10884]
                mem[_8168 + _8508 + _10072 + 120] = mem[_10884]
                mem[_8168 + _8508 + _10072 + 152 len ceil32(_11100)] = mem[_10884 + 32 len ceil32(_11100)]
                if ceil32(_11100) > _11100:
                    mem[_8168 + _8508 + _10072 + _11100 + 152] = 0
                revert with 0, 32, mem[_8168 + _8508 + _10072 + 120 len ceil32(_11100) + 32]
            mem[_6158 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6158]:
                    revert with 'NH{q', 50
                mem[t + _6158 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8169 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8509 = mem[_3111]
            mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
            mem[mem[64] + _8509 + 55] = ' is less then minAmountOut = '
            if ceil32(_8509) <= _8509:
                _10073 = mem[_6158]
                mem[_8169 + _8509 + 84 len ceil32(mem[_6158])] = mem[_6158 + 32 len ceil32(mem[_6158])]
                if ceil32(_10073) <= _10073:
                    _10824 = mem[64]
                    mem[64] = _8169 + _8509 + _10073 + 84
                    mem[_8169 + _8509 + _10073 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8169 + _8509 + _10073 + 88] = 32
                    _11022 = mem[_10824]
                    mem[_8169 + _8509 + _10073 + 120] = mem[_10824]
                    mem[_8169 + _8509 + _10073 + 152 len ceil32(_11022)] = mem[_10824 + 32 len ceil32(_11022)]
                    if ceil32(_11022) > _11022:
                        mem[_8169 + _8509 + _10073 + _11022 + 152] = 0
                    revert with 0, 32, mem[_8169 + _8509 + _10073 + 120 len ceil32(_11022) + 32]
                mem[_8169 + _8509 + _10073 + 84] = 0
                _10888 = mem[64]
                mem[64] = _8169 + _8509 + _10073 + 84
                mem[_8169 + _8509 + _10073 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8169 + _8509 + _10073 + 88] = 32
                _11102 = mem[_10888]
                mem[_8169 + _8509 + _10073 + 120] = mem[_10888]
                mem[_8169 + _8509 + _10073 + 152 len ceil32(_11102)] = mem[_10888 + 32 len ceil32(_11102)]
                if ceil32(_11102) > _11102:
                    mem[_8169 + _8509 + _10073 + _11102 + 152] = 0
                revert with 0, 32, mem[_8169 + _8509 + _10073 + 120 len ceil32(_11102) + 32]
            _10089 = mem[_6158]
            mem[_8169 + _8509 + 84 len ceil32(mem[_6158])] = mem[_6158 + 32 len ceil32(mem[_6158])]
            if ceil32(_10089) <= _10089:
                _10826 = mem[64]
                mem[64] = _8169 + _8509 + _10089 + 84
                mem[_8169 + _8509 + _10089 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8169 + _8509 + _10089 + 88] = 32
                _11023 = mem[_10826]
                mem[_8169 + _8509 + _10089 + 120] = mem[_10826]
                mem[_8169 + _8509 + _10089 + 152 len ceil32(_11023)] = mem[_10826 + 32 len ceil32(_11023)]
                if ceil32(_11023) > _11023:
                    mem[_8169 + _8509 + _10089 + _11023 + 152] = 0
                revert with 0, 32, mem[_8169 + _8509 + _10089 + 120 len ceil32(_11023) + 32]
            mem[_8169 + _8509 + _10089 + 84] = 0
            _10890 = mem[64]
            mem[64] = _8169 + _8509 + _10089 + 84
            mem[_8169 + _8509 + _10089 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8169 + _8509 + _10089 + 88] = 32
            _11103 = mem[_10890]
            mem[_8169 + _8509 + _10089 + 120] = mem[_10890]
            mem[_8169 + _8509 + _10089 + 152 len ceil32(_11103)] = mem[_10890 + 32 len ceil32(_11103)]
            if ceil32(_11103) > _11103:
                mem[_8169 + _8509 + _10089 + _11103 + 152] = 0
            revert with 0, 32, mem[_8169 + _8509 + _10089 + 120 len ceil32(_11103) + 32]
        mem[_3111 + 32 len t] = call.data[calldata.size len t]
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_3111]:
                revert with 'NH{q', 50
            mem[u + _3111 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _4484 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4484] = 1
            mem[_4484 + 32] = '0'
            _4529 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4661 = mem[_3111]
            mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
            var122001 = ceil32(_4661)
            mem[mem[64] + _4661 + 55] = ' is less then minAmountOut = '
            mem[mem[64] + _4661 + 84] = '0'
            mem[mem[64] + _4661 + 85] = 0
            if ceil32(_4661) <= _4661:
                _8264 = mem[64]
                mem[64] = mem[64] + _4661 + 85
                mem[_4529 + _4661 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4529 + _4661 + 89] = 32
                _8478 = mem[_8264]
                mem[_4529 + _4661 + 121] = mem[_8264]
                mem[_4529 + _4661 + 153 len ceil32(_8478)] = mem[_8264 + 32 len ceil32(_8478)]
                if ceil32(_8478) > _8478:
                    mem[_4529 + _4661 + _8478 + 153] = 0
                revert with 0, 32, mem[_4529 + _4661 + 121 len ceil32(_8478) + 32]
            _8266 = mem[64]
            mem[64] = mem[64] + _4661 + 85
            mem[_4529 + _4661 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4529 + _4661 + 89] = 32
            _8479 = mem[_8266]
            mem[_4529 + _4661 + 121] = mem[_8266]
            mem[_4529 + _4661 + 153 len ceil32(_8479)] = mem[_8266 + 32 len ceil32(_8479)]
            if ceil32(_8479) > _8479:
                mem[_4529 + _4661 + _8479 + 153] = 0
            revert with 0, 32, mem[_4529 + _4661 + 121 len ceil32(_8479) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _6159 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6159]:
                    revert with 'NH{q', 50
                mem[t + _6159 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8170 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8510 = mem[_3111]
            mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
            mem[mem[64] + _8510 + 55] = ' is less then minAmountOut = '
            if ceil32(_8510) <= _8510:
                _10074 = mem[_6159]
                mem[mem[64] + _8510 + 84 len ceil32(mem[_6159])] = mem[_6159 + 32 len ceil32(mem[_6159])]
                if ceil32(_10074) <= _10074:
                    _10828 = mem[64]
                    mem[64] = mem[64] + _8510 + _10074 + 84
                    mem[_8170 + _8510 + _10074 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8170 + _8510 + _10074 + 88] = 32
                    _11024 = mem[_10828]
                    mem[_8170 + _8510 + _10074 + 120] = mem[_10828]
                    mem[_8170 + _8510 + _10074 + 152 len ceil32(_11024)] = mem[_10828 + 32 len ceil32(_11024)]
                    if ceil32(_11024) > _11024:
                        mem[_8170 + _8510 + _10074 + _11024 + 152] = 0
                    revert with 0, 32, mem[_8170 + _8510 + _10074 + 120 len ceil32(_11024) + 32]
                mem[mem[64] + _8510 + _10074 + 84] = 0
                _10892 = mem[64]
                mem[64] = _8170 + _8510 + _10074 + 84
                mem[_8170 + _8510 + _10074 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8170 + _8510 + _10074 + 88] = 32
                _11104 = mem[_10892]
                mem[_8170 + _8510 + _10074 + 120] = mem[_10892]
                mem[_8170 + _8510 + _10074 + 152 len ceil32(_11104)] = mem[_10892 + 32 len ceil32(_11104)]
                if ceil32(_11104) > _11104:
                    mem[_8170 + _8510 + _10074 + _11104 + 152] = 0
                revert with 0, 32, mem[_8170 + _8510 + _10074 + 120 len ceil32(_11104) + 32]
            _10090 = mem[_6159]
            mem[mem[64] + _8510 + 84 len ceil32(mem[_6159])] = mem[_6159 + 32 len ceil32(mem[_6159])]
            if ceil32(_10090) <= _10090:
                _10830 = mem[64]
                mem[64] = mem[64] + _8510 + _10090 + 84
                mem[_8170 + _8510 + _10090 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8170 + _8510 + _10090 + 88] = 32
                _11025 = mem[_10830]
                mem[_8170 + _8510 + _10090 + 120] = mem[_10830]
                mem[_8170 + _8510 + _10090 + 152 len ceil32(_11025)] = mem[_10830 + 32 len ceil32(_11025)]
                if ceil32(_11025) > _11025:
                    mem[_8170 + _8510 + _10090 + _11025 + 152] = 0
                revert with 0, 32, mem[_8170 + _8510 + _10090 + 120 len ceil32(_11025) + 32]
            mem[mem[64] + _8510 + _10090 + 84] = 0
            _10894 = mem[64]
            mem[64] = mem[64] + _8510 + _10090 + 84
            mem[_8170 + _8510 + _10090 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8170 + _8510 + _10090 + 88] = 32
            _11105 = mem[_10894]
            mem[_8170 + _8510 + _10090 + 120] = mem[_10894]
            mem[_8170 + _8510 + _10090 + 152 len ceil32(_11105)] = mem[_10894 + 32 len ceil32(_11105)]
            if ceil32(_11105) > _11105:
                mem[_8170 + _8510 + _10090 + _11105 + 152] = 0
            revert with 0, 32, mem[_8170 + _8510 + _10090 + 120 len ceil32(_11105) + 32]
        mem[_6159 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_6159]:
                revert with 'NH{q', 50
            mem[t + _6159 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _8171 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _8511 = mem[_3111]
        mem[mem[64] + 55 len ceil32(mem[_3111])] = mem[_3111 + 32 len ceil32(mem[_3111])]
        mem[mem[64] + _8511 + 55] = ' is less then minAmountOut = '
        if ceil32(_8511) <= _8511:
            _10075 = mem[_6159]
            mem[mem[64] + _8511 + 84 len ceil32(mem[_6159])] = mem[_6159 + 32 len ceil32(mem[_6159])]
            if ceil32(_10075) <= _10075:
                _10832 = mem[64]
                mem[64] = mem[64] + _8511 + _10075 + 84
                mem[_8171 + _8511 + _10075 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8171 + _8511 + _10075 + 88] = 32
                _11026 = mem[_10832]
                mem[_8171 + _8511 + _10075 + 120] = mem[_10832]
                mem[_8171 + _8511 + _10075 + 152 len ceil32(_11026)] = mem[_10832 + 32 len ceil32(_11026)]
                if ceil32(_11026) > _11026:
                    mem[_8171 + _8511 + _10075 + _11026 + 152] = 0
                revert with 0, 32, mem[_8171 + _8511 + _10075 + 120 len ceil32(_11026) + 32]
            mem[mem[64] + _8511 + _10075 + 84] = 0
            _10896 = mem[64]
            mem[64] = mem[64] + _8511 + _10075 + 84
            mem[_8171 + _8511 + _10075 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8171 + _8511 + _10075 + 88] = 32
            _11106 = mem[_10896]
            mem[_8171 + _8511 + _10075 + 120] = mem[_10896]
            mem[_8171 + _8511 + _10075 + 152 len ceil32(_11106)] = mem[_10896 + 32 len ceil32(_11106)]
            if ceil32(_11106) > _11106:
                mem[_8171 + _8511 + _10075 + _11106 + 152] = 0
            revert with 0, 32, mem[_8171 + _8511 + _10075 + 120 len ceil32(_11106) + 32]
        _10091 = mem[_6159]
        mem[mem[64] + _8511 + 84 len ceil32(mem[_6159])] = mem[_6159 + 32 len ceil32(mem[_6159])]
        if ceil32(_10091) <= _10091:
            _10834 = mem[64]
            mem[64] = mem[64] + _8511 + _10091 + 84
            mem[_8171 + _8511 + _10091 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8171 + _8511 + _10091 + 88] = 32
            _11027 = mem[_10834]
            mem[_8171 + _8511 + _10091 + 120] = mem[_10834]
            mem[_8171 + _8511 + _10091 + 152 len ceil32(_11027)] = mem[_10834 + 32 len ceil32(_11027)]
            if ceil32(_11027) > _11027:
                mem[_8171 + _8511 + _10091 + _11027 + 152] = 0
            revert with 0, 32, mem[_8171 + _8511 + _10091 + 120 len ceil32(_11027) + 32]
        mem[mem[64] + _8511 + _10091 + 84] = 0
        _10898 = mem[64]
        mem[64] = _8171 + _8511 + _10091 + 84
        mem[_8171 + _8511 + _10091 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8171 + _8511 + _10091 + 88] = 32
        _11107 = mem[_10898]
        mem[_8171 + _8511 + _10091 + 120] = mem[_10898]
        mem[_8171 + _8511 + _10091 + 152 len ceil32(_11107)] = mem[_10898 + 32 len ceil32(_11107)]
        if ceil32(_11107) > _11107:
            mem[_8171 + _8511 + _10091 + _11107 + 152] = 0
        revert with 0, 32, mem[_8171 + _8511 + _10091 + 120 len ceil32(_11107) + 32]
    if stor0 != msg.sender:
        revert with 0, 'Not allowed executor'
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[address(msg.sender)]:
        idx = 0
        s = cd[4]
        while idx < ('cd', 100).length:
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _1590 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            _1594 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1594 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_1594]:
                revert with 'NH{q', 50
            mem[_1594 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_1594]:
                revert with 'NH{q', 50
            mem[_1594 + 64] = mem[(32 * idx + 1) + 140 len 20]
            mem[_1594 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1594 + 100] = s
            mem[_1594 + 132] = 64
            mem[_1594 + 164] = mem[_1594]
            t = 0
            u = _1594 + 32
            v = _1594 + 196
            while t < mem[_1594]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_1590))
            staticcall address(_1590).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1594 + (32 * mem[_1594]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2158 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2165 = mem[_2158]
            require mem[_2158] <= test266151307()
            require _2158 + mem[_2158] + 31 < _2158 + return_data.size
            _2191 = mem[_2158 + mem[_2158]]
            if mem[_2158 + mem[_2158]] > test266151307():
                revert with 'NH{q', 65
            if _2158 + ceil32(return_data.size) + floor32(mem[_2158 + mem[_2158]]) + 1 > test266151307() or floor32(mem[_2158 + mem[_2158]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2158 + ceil32(return_data.size) + floor32(mem[_2158 + mem[_2158]]) + 1
            mem[_2158 + ceil32(return_data.size)] = _2191
            require _2165 + (32 * _2191) + 32 <= return_data.size
            t = 0
            u = _2158 + _2165 + 32
            v = _2158 + ceil32(return_data.size) + 32
            while t < _2191:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if 1 >= _2191:
                revert with 'NH{q', 50
            if _2191 == -1:
                revert with 'NH{q', 17
            t = _2191 + 1
            u = mem[_2158 + ceil32(return_data.size) + 64]
            continue 
        if s < cd[36]:
            if not s:
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 1
                mem[_1601 + 32] = '0'
                if not cd[36]:
                    _1645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1645] = 1
                    mem[_1645 + 32] = '0'
                    _1650 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    mem[mem[64] + 55] = '0'
                    mem[mem[64] + 56] = ' is less then minAmountOut = '
                    mem[mem[64] + 85] = '0'
                    mem[mem[64] + 86] = 0
                    _3170 = mem[64]
                    mem[64] = mem[64] + 86
                    mem[_1650 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1650 + 90] = 32
                    _3208 = mem[_3170]
                    mem[_1650 + 122] = mem[_3170]
                    mem[_1650 + 154 len ceil32(_3208)] = mem[_3170 + 32 len ceil32(_3208)]
                    if ceil32(_3208) > _3208:
                        mem[_1650 + _3208 + 154] = 0
                    revert with 0, 32, mem[_1650 + 122 len ceil32(_3208) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _2131 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_2131]:
                            revert with 'NH{q', 50
                        mem[t + _2131 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _3124 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3230 = mem[_1601]
                    mem[mem[64] + 55 len ceil32(mem[_1601])] = mem[_1601 + 32 len ceil32(mem[_1601])]
                    mem[mem[64] + _3230 + 55] = ' is less then minAmountOut = '
                    if ceil32(_3230) <= _3230:
                        _4608 = mem[_2131]
                        mem[mem[64] + _3230 + 84 len ceil32(mem[_2131])] = mem[_2131 + 32 len ceil32(mem[_2131])]
                        if ceil32(_4608) <= _4608:
                            _6220 = mem[64]
                            mem[64] = mem[64] + _3230 + _4608 + 84
                            mem[_3124 + _3230 + _4608 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3124 + _3230 + _4608 + 88] = 32
                            _6370 = mem[_6220]
                            mem[_3124 + _3230 + _4608 + 120] = mem[_6220]
                            mem[_3124 + _3230 + _4608 + 152 len ceil32(_6370)] = mem[_6220 + 32 len ceil32(_6370)]
                            if ceil32(_6370) > _6370:
                                mem[_3124 + _3230 + _4608 + _6370 + 152] = 0
                            revert with 0, 32, mem[_3124 + _3230 + _4608 + 120 len ceil32(_6370) + 32]
                        mem[mem[64] + _3230 + _4608 + 84] = 0
                        _6284 = mem[64]
                        mem[64] = _3124 + _3230 + _4608 + 84
                        mem[_3124 + _3230 + _4608 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3124 + _3230 + _4608 + 88] = 32
                        _6408 = mem[_6284]
                        mem[_3124 + _3230 + _4608 + 120] = mem[_6284]
                        mem[_3124 + _3230 + _4608 + 152 len ceil32(_6408)] = mem[_6284 + 32 len ceil32(_6408)]
                        if ceil32(_6408) > _6408:
                            mem[_3124 + _3230 + _4608 + _6408 + 152] = 0
                        revert with 0, 32, mem[_3124 + _3230 + _4608 + 120 len ceil32(_6408) + 32]
                    _4629 = mem[_2131]
                    mem[mem[64] + _3230 + 84 len ceil32(mem[_2131])] = mem[_2131 + 32 len ceil32(mem[_2131])]
                    if ceil32(_4629) <= _4629:
                        _6222 = mem[64]
                        mem[64] = mem[64] + _3230 + _4629 + 84
                        mem[_3124 + _3230 + _4629 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3124 + _3230 + _4629 + 88] = 32
                        _6371 = mem[_6222]
                        mem[_3124 + _3230 + _4629 + 120] = mem[_6222]
                        mem[_3124 + _3230 + _4629 + 152 len ceil32(_6371)] = mem[_6222 + 32 len ceil32(_6371)]
                        if ceil32(_6371) > _6371:
                            mem[_3124 + _3230 + _4629 + _6371 + 152] = 0
                        revert with 0, 32, mem[_3124 + _3230 + _4629 + 120 len ceil32(_6371) + 32]
                    mem[mem[64] + _3230 + _4629 + 84] = 0
                    _6286 = mem[64]
                    mem[64] = mem[64] + _3230 + _4629 + 84
                    mem[_3124 + _3230 + _4629 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3124 + _3230 + _4629 + 88] = 32
                    _6409 = mem[_6286]
                    mem[_3124 + _3230 + _4629 + 120] = mem[_6286]
                    mem[_3124 + _3230 + _4629 + 152 len ceil32(_6409)] = mem[_6286 + 32 len ceil32(_6409)]
                    if ceil32(_6409) > _6409:
                        mem[_3124 + _3230 + _4629 + _6409 + 152] = 0
                    revert with 0, 32, mem[_3124 + _3230 + _4629 + 120 len ceil32(_6409) + 32]
                mem[_2131 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2131]:
                        revert with 'NH{q', 50
                    mem[t + _2131 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3125 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3231 = mem[_1601]
                mem[mem[64] + 55 len ceil32(mem[_1601])] = mem[_1601 + 32 len ceil32(mem[_1601])]
                var117001 = ceil32(_3231)
                mem[mem[64] + _3231 + 55] = ' is less then minAmountOut = '
                if ceil32(_3231) <= _3231:
                    _4609 = mem[_2131]
                    mem[mem[64] + _3231 + 84 len ceil32(mem[_2131])] = mem[_2131 + 32 len ceil32(mem[_2131])]
                    if ceil32(_4609) <= _4609:
                        _6224 = mem[64]
                        mem[64] = mem[64] + _3231 + _4609 + 84
                        mem[_3125 + _3231 + _4609 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3125 + _3231 + _4609 + 88] = 32
                        _6372 = mem[_6224]
                        mem[_3125 + _3231 + _4609 + 120] = mem[_6224]
                        mem[_3125 + _3231 + _4609 + 152 len ceil32(_6372)] = mem[_6224 + 32 len ceil32(_6372)]
                        if ceil32(_6372) > _6372:
                            mem[_3125 + _3231 + _4609 + _6372 + 152] = 0
                        revert with 0, 32, mem[_3125 + _3231 + _4609 + 120 len ceil32(_6372) + 32]
                    mem[mem[64] + _3231 + _4609 + 84] = 0
                    _6288 = mem[64]
                    mem[64] = mem[64] + _3231 + _4609 + 84
                    mem[_3125 + _3231 + _4609 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3125 + _3231 + _4609 + 88] = 32
                    _6410 = mem[_6288]
                    mem[_3125 + _3231 + _4609 + 120] = mem[_6288]
                    mem[_3125 + _3231 + _4609 + 152 len ceil32(_6410)] = mem[_6288 + 32 len ceil32(_6410)]
                    if ceil32(_6410) > _6410:
                        mem[_3125 + _3231 + _4609 + _6410 + 152] = 0
                    revert with 0, 32, mem[_3125 + _3231 + _4609 + 120 len ceil32(_6410) + 32]
                _4630 = mem[_2131]
                mem[mem[64] + _3231 + 84 len ceil32(mem[_2131])] = mem[_2131 + 32 len ceil32(mem[_2131])]
                if ceil32(_4630) <= _4630:
                    _6226 = mem[64]
                    mem[64] = mem[64] + _3231 + _4630 + 84
                    mem[_3125 + _3231 + _4630 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3125 + _3231 + _4630 + 88] = 32
                    _6373 = mem[_6226]
                    mem[_3125 + _3231 + _4630 + 120] = mem[_6226]
                    mem[_3125 + _3231 + _4630 + 152 len ceil32(_6373)] = mem[_6226 + 32 len ceil32(_6373)]
                    if ceil32(_6373) > _6373:
                        mem[_3125 + _3231 + _4630 + _6373 + 152] = 0
                    revert with 0, 32, mem[_3125 + _3231 + _4630 + 120 len ceil32(_6373) + 32]
                mem[mem[64] + _3231 + _4630 + 84] = 0
                _6290 = mem[64]
                mem[64] = mem[64] + _3231 + _4630 + 84
                mem[_3125 + _3231 + _4630 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3125 + _3231 + _4630 + 88] = 32
                _6411 = mem[_6290]
                mem[_3125 + _3231 + _4630 + 120] = mem[_6290]
                mem[_3125 + _3231 + _4630 + 152 len ceil32(_6411)] = mem[_6290 + 32 len ceil32(_6411)]
                if ceil32(_6411) > _6411:
                    mem[_3125 + _3231 + _4630 + _6411 + 152] = 0
                revert with 0, 32, mem[_3125 + _3231 + _4630 + 120 len ceil32(_6411) + 32]
            t = 0
            idx = s
            while idx:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                idx = idx / 10
                continue 
            if t > test266151307():
                revert with 'NH{q', 65
            _2130 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                idx = s
                while idx:
                    if u < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if u - 1 >= mem[_2130]:
                        revert with 'NH{q', 50
                    mem[u + _2130 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    u = u - 1
                    idx = idx / 10
                    continue 
                if not cd[36]:
                    _3146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3146] = 1
                    mem[_3146 + 32] = '0'
                    _3183 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _3267 = mem[_2130]
                    mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
                    mem[mem[64] + _3267 + 55] = ' is less then minAmountOut = '
                    mem[mem[64] + _3267 + 84] = '0'
                    mem[mem[64] + _3267 + 85] = 0
                    if ceil32(_3267) <= _3267:
                        _6276 = mem[64]
                        mem[64] = mem[64] + _3267 + 85
                        mem[_3183 + _3267 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3183 + _3267 + 89] = 32
                        _6404 = mem[_6276]
                        mem[_3183 + _3267 + 121] = mem[_6276]
                        mem[_3183 + _3267 + 153 len ceil32(_6404)] = mem[_6276 + 32 len ceil32(_6404)]
                        if ceil32(_6404) > _6404:
                            mem[_3183 + _3267 + _6404 + 153] = 0
                        revert with 0, 32, mem[_3183 + _3267 + 121 len ceil32(_6404) + 32]
                    _6278 = mem[64]
                    mem[64] = mem[64] + _3267 + 85
                    mem[_3183 + _3267 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3183 + _3267 + 89] = 32
                    _6405 = mem[_6278]
                    mem[_3183 + _3267 + 121] = mem[_6278]
                    mem[_3183 + _3267 + 153 len ceil32(_6405)] = mem[_6278 + 32 len ceil32(_6405)]
                    if ceil32(_6405) > _6405:
                        mem[_3183 + _3267 + _6405 + 153] = 0
                    revert with 0, 32, mem[_3183 + _3267 + 121 len ceil32(_6405) + 32]
                s = 0
                idx = cd[36]
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                _4463 = mem[64]
                mem[mem[64]] = s
                mem[64] = mem[64] + ceil32(s) + 32
                if not s:
                    t = s
                    idx = cd[36]
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[_4463]:
                            revert with 'NH{q', 50
                        mem[t + _4463 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _6172 = mem[64]
                    mem[mem[64] + 32] = 'Last token amountOut = '
                    _6440 = mem[_2130]
                    mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
                    var124001 = ceil32(_6440)
                    mem[mem[64] + _6440 + 55] = ' is less then minAmountOut = '
                    if ceil32(_6440) <= _6440:
                        _8520 = mem[_4463]
                        mem[_6172 + _6440 + 84 len ceil32(mem[_4463])] = mem[_4463 + 32 len ceil32(mem[_4463])]
                        if ceil32(_8520) <= _8520:
                            _9780 = mem[64]
                            mem[64] = _6172 + _6440 + _8520 + 84
                            mem[_6172 + _6440 + _8520 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6172 + _6440 + _8520 + 88] = 32
                            _10004 = mem[_9780]
                            mem[_6172 + _6440 + _8520 + 120] = mem[_9780]
                            mem[_6172 + _6440 + _8520 + 152 len ceil32(_10004)] = mem[_9780 + 32 len ceil32(_10004)]
                            if ceil32(_10004) > _10004:
                                mem[_6172 + _6440 + _8520 + _10004 + 152] = 0
                            revert with 0, 32, mem[_6172 + _6440 + _8520 + 120 len ceil32(_10004) + 32]
                        mem[_6172 + _6440 + _8520 + 84] = 0
                        _9844 = mem[64]
                        mem[64] = _6172 + _6440 + _8520 + 84
                        mem[_6172 + _6440 + _8520 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6172 + _6440 + _8520 + 88] = 32
                        _10052 = mem[_9844]
                        mem[_6172 + _6440 + _8520 + 120] = mem[_9844]
                        mem[_6172 + _6440 + _8520 + 152 len ceil32(_10052)] = mem[_9844 + 32 len ceil32(_10052)]
                        if ceil32(_10052) > _10052:
                            mem[_6172 + _6440 + _8520 + _10052 + 152] = 0
                        revert with 0, 32, mem[_6172 + _6440 + _8520 + 120 len ceil32(_10052) + 32]
                    _8540 = mem[_4463]
                    mem[_6172 + _6440 + 84 len ceil32(mem[_4463])] = mem[_4463 + 32 len ceil32(mem[_4463])]
                    if ceil32(_8540) <= _8540:
                        _9782 = mem[64]
                        mem[64] = _6172 + _6440 + _8540 + 84
                        mem[_6172 + _6440 + _8540 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6172 + _6440 + _8540 + 88] = 32
                        _10005 = mem[_9782]
                        mem[_6172 + _6440 + _8540 + 120] = mem[_9782]
                        mem[_6172 + _6440 + _8540 + 152 len ceil32(_10005)] = mem[_9782 + 32 len ceil32(_10005)]
                        if ceil32(_10005) > _10005:
                            mem[_6172 + _6440 + _8540 + _10005 + 152] = 0
                        revert with 0, 32, mem[_6172 + _6440 + _8540 + 120 len ceil32(_10005) + 32]
                    mem[_6172 + _6440 + _8540 + 84] = 0
                    _9846 = mem[64]
                    mem[64] = _6172 + _6440 + _8540 + 84
                    mem[_6172 + _6440 + _8540 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6172 + _6440 + _8540 + 88] = 32
                    _10053 = mem[_9846]
                    mem[_6172 + _6440 + _8540 + 120] = mem[_9846]
                    mem[_6172 + _6440 + _8540 + 152 len ceil32(_10053)] = mem[_9846 + 32 len ceil32(_10053)]
                    if ceil32(_10053) > _10053:
                        mem[_6172 + _6440 + _8540 + _10053 + 152] = 0
                    revert with 0, 32, mem[_6172 + _6440 + _8540 + 120 len ceil32(_10053) + 32]
                mem[_4463 + 32 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4463]:
                        revert with 'NH{q', 50
                    mem[t + _4463 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6173 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6441 = mem[_2130]
                mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
                mem[mem[64] + _6441 + 55] = ' is less then minAmountOut = '
                if ceil32(_6441) <= _6441:
                    _8521 = mem[_4463]
                    mem[mem[64] + _6441 + 84 len ceil32(mem[_4463])] = mem[_4463 + 32 len ceil32(mem[_4463])]
                    if ceil32(_8521) <= _8521:
                        _9784 = mem[64]
                        mem[64] = mem[64] + _6441 + _8521 + 84
                        mem[_6173 + _6441 + _8521 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6173 + _6441 + _8521 + 88] = 32
                        _10006 = mem[_9784]
                        mem[_6173 + _6441 + _8521 + 120] = mem[_9784]
                        mem[_6173 + _6441 + _8521 + 152 len ceil32(_10006)] = mem[_9784 + 32 len ceil32(_10006)]
                        if ceil32(_10006) > _10006:
                            mem[_6173 + _6441 + _8521 + _10006 + 152] = 0
                        revert with 0, 32, mem[_6173 + _6441 + _8521 + 120 len ceil32(_10006) + 32]
                    mem[mem[64] + _6441 + _8521 + 84] = 0
                    _9848 = mem[64]
                    mem[64] = mem[64] + _6441 + _8521 + 84
                    mem[_6173 + _6441 + _8521 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6173 + _6441 + _8521 + 88] = 32
                    _10054 = mem[_9848]
                    mem[_6173 + _6441 + _8521 + 120] = mem[_9848]
                    mem[_6173 + _6441 + _8521 + 152 len ceil32(_10054)] = mem[_9848 + 32 len ceil32(_10054)]
                    if ceil32(_10054) > _10054:
                        mem[_6173 + _6441 + _8521 + _10054 + 152] = 0
                    revert with 0, 32, mem[_6173 + _6441 + _8521 + 120 len ceil32(_10054) + 32]
                _8541 = mem[_4463]
                mem[mem[64] + _6441 + 84 len ceil32(mem[_4463])] = mem[_4463 + 32 len ceil32(mem[_4463])]
                if ceil32(_8541) <= _8541:
                    _9786 = mem[64]
                    mem[64] = mem[64] + _6441 + _8541 + 84
                    mem[_6173 + _6441 + _8541 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6173 + _6441 + _8541 + 88] = 32
                    _10007 = mem[_9786]
                    mem[_6173 + _6441 + _8541 + 120] = mem[_9786]
                    mem[_6173 + _6441 + _8541 + 152 len ceil32(_10007)] = mem[_9786 + 32 len ceil32(_10007)]
                    if ceil32(_10007) > _10007:
                        mem[_6173 + _6441 + _8541 + _10007 + 152] = 0
                    revert with 0, 32, mem[_6173 + _6441 + _8541 + 120 len ceil32(_10007) + 32]
                mem[mem[64] + _6441 + _8541 + 84] = 0
                _9850 = mem[64]
                mem[64] = _6173 + _6441 + _8541 + 84
                mem[_6173 + _6441 + _8541 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6173 + _6441 + _8541 + 88] = 32
                _10055 = mem[_9850]
                mem[_6173 + _6441 + _8541 + 120] = mem[_9850]
                mem[_6173 + _6441 + _8541 + 152 len ceil32(_10055)] = mem[_9850 + 32 len ceil32(_10055)]
                if ceil32(_10055) > _10055:
                    mem[_6173 + _6441 + _8541 + _10055 + 152] = 0
                revert with 0, 32, mem[_6173 + _6441 + _8541 + 120 len ceil32(_10055) + 32]
            mem[_2130 + 32 len t] = call.data[calldata.size len t]
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_2130]:
                    revert with 'NH{q', 50
                mem[u + _2130 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _3147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3147] = 1
                mem[_3147 + 32] = '0'
                _3184 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3268 = mem[_2130]
                mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
                var117001 = ceil32(_3268)
                mem[mem[64] + _3268 + 55] = ' is less then minAmountOut = '
                mem[_3184 + _3268 + 84] = '0'
                mem[_3184 + _3268 + 85] = 0
                if ceil32(_3268) <= _3268:
                    _6280 = mem[64]
                    mem[64] = _3184 + _3268 + 85
                    mem[_3184 + _3268 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3184 + _3268 + 89] = 32
                    _6406 = mem[_6280]
                    mem[_3184 + _3268 + 121] = mem[_6280]
                    mem[_3184 + _3268 + 153 len ceil32(_6406)] = mem[_6280 + 32 len ceil32(_6406)]
                    if ceil32(_6406) > _6406:
                        mem[_3184 + _3268 + _6406 + 153] = 0
                    revert with 0, 32, mem[_3184 + _3268 + 121 len ceil32(_6406) + 32]
                _6282 = mem[64]
                mem[64] = _3184 + _3268 + 85
                mem[_3184 + _3268 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3184 + _3268 + 89] = 32
                _6407 = mem[_6282]
                mem[_3184 + _3268 + 121] = mem[_6282]
                mem[_3184 + _3268 + 153 len ceil32(_6407)] = mem[_6282 + 32 len ceil32(_6407)]
                if ceil32(_6407) > _6407:
                    mem[_3184 + _3268 + _6407 + 153] = 0
                revert with 0, 32, mem[_3184 + _3268 + 121 len ceil32(_6407) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _4464 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4464]:
                        revert with 'NH{q', 50
                    mem[t + _4464 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6174 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6442 = mem[_2130]
                mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
                mem[mem[64] + _6442 + 55] = ' is less then minAmountOut = '
                if ceil32(_6442) <= _6442:
                    _8522 = mem[_4464]
                    mem[mem[64] + _6442 + 84 len ceil32(mem[_4464])] = mem[_4464 + 32 len ceil32(mem[_4464])]
                    if ceil32(_8522) <= _8522:
                        _9788 = mem[64]
                        mem[64] = mem[64] + _6442 + _8522 + 84
                        mem[_6174 + _6442 + _8522 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6174 + _6442 + _8522 + 88] = 32
                        _10008 = mem[_9788]
                        mem[_6174 + _6442 + _8522 + 120] = mem[_9788]
                        mem[_6174 + _6442 + _8522 + 152 len ceil32(_10008)] = mem[_9788 + 32 len ceil32(_10008)]
                        if ceil32(_10008) > _10008:
                            mem[_6174 + _6442 + _8522 + _10008 + 152] = 0
                        revert with 0, 32, mem[_6174 + _6442 + _8522 + 120 len ceil32(_10008) + 32]
                    mem[mem[64] + _6442 + _8522 + 84] = 0
                    _9852 = mem[64]
                    mem[64] = mem[64] + _6442 + _8522 + 84
                    mem[_6174 + _6442 + _8522 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6174 + _6442 + _8522 + 88] = 32
                    _10056 = mem[_9852]
                    mem[_6174 + _6442 + _8522 + 120] = mem[_9852]
                    mem[_6174 + _6442 + _8522 + 152 len ceil32(_10056)] = mem[_9852 + 32 len ceil32(_10056)]
                    if ceil32(_10056) > _10056:
                        mem[_6174 + _6442 + _8522 + _10056 + 152] = 0
                    revert with 0, 32, mem[_6174 + _6442 + _8522 + 120 len ceil32(_10056) + 32]
                _8542 = mem[_4464]
                mem[mem[64] + _6442 + 84 len ceil32(mem[_4464])] = mem[_4464 + 32 len ceil32(mem[_4464])]
                if ceil32(_8542) <= _8542:
                    _9790 = mem[64]
                    mem[64] = mem[64] + _6442 + _8542 + 84
                    mem[_6174 + _6442 + _8542 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6174 + _6442 + _8542 + 88] = 32
                    _10009 = mem[_9790]
                    mem[_6174 + _6442 + _8542 + 120] = mem[_9790]
                    mem[_6174 + _6442 + _8542 + 152 len ceil32(_10009)] = mem[_9790 + 32 len ceil32(_10009)]
                    if ceil32(_10009) > _10009:
                        mem[_6174 + _6442 + _8542 + _10009 + 152] = 0
                    revert with 0, 32, mem[_6174 + _6442 + _8542 + 120 len ceil32(_10009) + 32]
                mem[mem[64] + _6442 + _8542 + 84] = 0
                _9854 = mem[64]
                mem[64] = _6174 + _6442 + _8542 + 84
                mem[_6174 + _6442 + _8542 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6174 + _6442 + _8542 + 88] = 32
                _10057 = mem[_9854]
                mem[_6174 + _6442 + _8542 + 120] = mem[_9854]
                mem[_6174 + _6442 + _8542 + 152 len ceil32(_10057)] = mem[_9854 + 32 len ceil32(_10057)]
                if ceil32(_10057) > _10057:
                    mem[_6174 + _6442 + _8542 + _10057 + 152] = 0
                revert with 0, 32, mem[_6174 + _6442 + _8542 + 120 len ceil32(_10057) + 32]
            mem[_4464 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_4464]:
                    revert with 'NH{q', 50
                mem[t + _4464 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _6175 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _6443 = mem[_2130]
            mem[mem[64] + 55 len ceil32(mem[_2130])] = mem[_2130 + 32 len ceil32(mem[_2130])]
            mem[mem[64] + _6443 + 55] = ' is less then minAmountOut = '
            if ceil32(_6443) <= _6443:
                _8523 = mem[_4464]
                mem[_6175 + _6443 + 84 len ceil32(mem[_4464])] = mem[_4464 + 32 len ceil32(mem[_4464])]
                if ceil32(_8523) <= _8523:
                    _9792 = mem[64]
                    mem[64] = _6175 + _6443 + _8523 + 84
                    mem[_6175 + _6443 + _8523 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6175 + _6443 + _8523 + 88] = 32
                    _10010 = mem[_9792]
                    mem[_6175 + _6443 + _8523 + 120] = mem[_9792]
                    mem[_6175 + _6443 + _8523 + 152 len ceil32(_10010)] = mem[_9792 + 32 len ceil32(_10010)]
                    if ceil32(_10010) > _10010:
                        mem[_6175 + _6443 + _8523 + _10010 + 152] = 0
                    revert with 0, 32, mem[_6175 + _6443 + _8523 + 120 len ceil32(_10010) + 32]
                mem[_6175 + _6443 + _8523 + 84] = 0
                _9856 = mem[64]
                mem[64] = _6175 + _6443 + _8523 + 84
                mem[_6175 + _6443 + _8523 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6175 + _6443 + _8523 + 88] = 32
                _10058 = mem[_9856]
                mem[_6175 + _6443 + _8523 + 120] = mem[_9856]
                mem[_6175 + _6443 + _8523 + 152 len ceil32(_10058)] = mem[_9856 + 32 len ceil32(_10058)]
                if ceil32(_10058) > _10058:
                    mem[_6175 + _6443 + _8523 + _10058 + 152] = 0
                revert with 0, 32, mem[_6175 + _6443 + _8523 + 120 len ceil32(_10058) + 32]
            _8543 = mem[_4464]
            mem[_6175 + _6443 + 84 len ceil32(mem[_4464])] = mem[_4464 + 32 len ceil32(mem[_4464])]
            var145001 = ceil32(_8543)
            if ceil32(_8543) <= _8543:
                _9794 = mem[64]
                mem[64] = _6175 + _6443 + _8543 + 84
                mem[_6175 + _6443 + _8543 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6175 + _6443 + _8543 + 88] = 32
                _10011 = mem[_9794]
                mem[_6175 + _6443 + _8543 + 120] = mem[_9794]
                mem[_6175 + _6443 + _8543 + 152 len ceil32(_10011)] = mem[_9794 + 32 len ceil32(_10011)]
                if ceil32(_10011) > _10011:
                    mem[_6175 + _6443 + _8543 + _10011 + 152] = 0
                revert with 0, 32, mem[_6175 + _6443 + _8543 + 120 len ceil32(_10011) + 32]
            mem[_6175 + _6443 + _8543 + 84] = 0
            _9858 = mem[64]
            mem[64] = _6175 + _6443 + _8543 + 84
            mem[_6175 + _6443 + _8543 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6175 + _6443 + _8543 + 88] = 32
            _10059 = mem[_9858]
            mem[_6175 + _6443 + _8543 + 120] = mem[_9858]
            mem[_6175 + _6443 + _8543 + 152 len ceil32(_10059)] = mem[_9858 + 32 len ceil32(_10059)]
            if ceil32(_10059) > _10059:
                mem[_6175 + _6443 + _8543 + _10059 + 152] = 0
            revert with 0, 32, mem[_6175 + _6443 + _8543 + 120 len ceil32(_10059) + 32]
        _2106 = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = cd[4]
        while idx < _2106:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2128 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
            mem[mem[64] + 36] = s
            require ext_code.size(address(_2128))
            call address(_2128).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2236] == bool(mem[_2236])
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _2410 = mem[(32 * idx + 1) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2410))
            staticcall address(_2410).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2560 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2658 = mem[_2560]
            require mem[_2560] == mem[_2560]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _2816 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2835 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _3014 = mem[(32 * idx + 1) + 128]
            _3030 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_3030]:
                revert with 'NH{q', 50
            mem[_3030 + 32] = address(_2835)
            if 1 >= mem[_3030]:
                revert with 'NH{q', 50
            mem[_3030 + 64] = address(_3014)
            mem[_3030 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_3030 + 100] = s
            mem[_3030 + 132] = 1
            mem[_3030 + 164] = 160
            mem[_3030 + 260] = mem[_3030]
            s = 0
            t = _3030 + 32
            u = _3030 + 292
            while s < mem[_3030]:
                mem[u] = mem[t + 12 len 20]
                _2106 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_3030 + 196] = this.address
            mem[_3030 + 228] = 1922758199
            require ext_code.size(address(_2816))
            call address(_2816).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3030 + (32 * mem[_3030]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3277 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3297 = mem[_3277]
            require mem[_3277] <= test266151307()
            require _3277 + mem[_3277] + 31 < _3277 + return_data.size
            _3359 = mem[_3277 + mem[_3277]]
            if mem[_3277 + mem[_3277]] > test266151307():
                revert with 'NH{q', 65
            if _3277 + ceil32(return_data.size) + floor32(mem[_3277 + mem[_3277]]) + 1 > test266151307() or floor32(mem[_3277 + mem[_3277]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _3277 + ceil32(return_data.size) + floor32(mem[_3277 + mem[_3277]]) + 1
            mem[_3277 + ceil32(return_data.size)] = _3359
            require _3297 + (32 * _3359) + 32 <= return_data.size
            s = 0
            t = _3277 + _3297 + 32
            u = _3277 + ceil32(return_data.size) + 32
            while s < _3359:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _2106 = mem[floor32(('cd', 68).length) + 97]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2410))
            staticcall address(_2410).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4652] == mem[_4652]
            if mem[_4652] < _2658:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _2106 = mem[floor32(('cd', 68).length) + 97]
            idx = idx + 1
            s = mem[_4652] - _2658
            continue 
        if s >= cd[36]:
            if mem[96] < 1:
                revert with 'NH{q', 17
            if mem[96] - 1 >= mem[96]:
                revert with 'NH{q', 50
            _2200 = mem[(32 * mem[96] - 1) + 128]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = s
            require ext_code.size(address(_2200))
            call address(_2200).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2328 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2328] == bool(mem[_2328])
        if not s:
            _2154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2154] = 1
            mem[_2154 + 32] = '0'
            if not cd[36]:
                _2172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2172] = 1
                mem[_2172 + 32] = '0'
                _2189 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                mem[mem[64] + 55] = '0'
                var113001 = 32
                mem[mem[64] + 56] = ' is less then minAmountOut = '
                mem[mem[64] + 85] = '0'
                mem[mem[64] + 86] = 0
                _4514 = mem[64]
                mem[64] = mem[64] + 86
                mem[_2189 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2189 + 90] = 32
                _4589 = mem[_4514]
                mem[_2189 + 122] = mem[_4514]
                mem[_2189 + 154 len ceil32(_4589)] = mem[_4514 + 32 len ceil32(_4589)]
                var147001 = ceil32(_4589)
                if ceil32(_4589) > _4589:
                    mem[_2189 + _4589 + 154] = 0
                revert with 0, 32, mem[_2189 + 122 len ceil32(_4589) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _3115 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_3115]:
                        revert with 'NH{q', 50
                    mem[t + _3115 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _4472 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4604 = mem[_2154]
                mem[mem[64] + 55 len ceil32(mem[_2154])] = mem[_2154 + 32 len ceil32(mem[_2154])]
                mem[mem[64] + _4604 + 55] = ' is less then minAmountOut = '
                if ceil32(_4604) <= _4604:
                    _6438 = mem[_3115]
                    mem[mem[64] + _4604 + 84 len ceil32(mem[_3115])] = mem[_3115 + 32 len ceil32(mem[_3115])]
                    if ceil32(_6438) <= _6438:
                        _8220 = mem[64]
                        mem[64] = mem[64] + _4604 + _6438 + 84
                        mem[_4472 + _4604 + _6438 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_4472 + _4604 + _6438 + 88] = 32
                        _8424 = mem[_8220]
                        mem[_4472 + _4604 + _6438 + 120] = mem[_8220]
                        mem[_4472 + _4604 + _6438 + 152 len ceil32(_8424)] = mem[_8220 + 32 len ceil32(_8424)]
                        if ceil32(_8424) > _8424:
                            mem[_4472 + _4604 + _6438 + _8424 + 152] = 0
                        revert with 0, 32, mem[_4472 + _4604 + _6438 + 120 len ceil32(_8424) + 32]
                    mem[mem[64] + _4604 + _6438 + 84] = 0
                    _8284 = mem[64]
                    mem[64] = mem[64] + _4604 + _6438 + 84
                    mem[_4472 + _4604 + _6438 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4472 + _4604 + _6438 + 88] = 32
                    _8488 = mem[_8284]
                    mem[_4472 + _4604 + _6438 + 120] = mem[_8284]
                    mem[_4472 + _4604 + _6438 + 152 len ceil32(_8488)] = mem[_8284 + 32 len ceil32(_8488)]
                    if ceil32(_8488) > _8488:
                        mem[_4472 + _4604 + _6438 + _8488 + 152] = 0
                    revert with 0, 32, mem[_4472 + _4604 + _6438 + 120 len ceil32(_8488) + 32]
                _6462 = mem[_3115]
                mem[mem[64] + _4604 + 84 len ceil32(mem[_3115])] = mem[_3115 + 32 len ceil32(mem[_3115])]
                if ceil32(_6462) <= _6462:
                    _8222 = mem[64]
                    mem[64] = mem[64] + _4604 + _6462 + 84
                    mem[_4472 + _4604 + _6462 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4472 + _4604 + _6462 + 88] = 32
                    _8425 = mem[_8222]
                    mem[_4472 + _4604 + _6462 + 120] = mem[_8222]
                    mem[_4472 + _4604 + _6462 + 152 len ceil32(_8425)] = mem[_8222 + 32 len ceil32(_8425)]
                    if ceil32(_8425) > _8425:
                        mem[_4472 + _4604 + _6462 + _8425 + 152] = 0
                    revert with 0, 32, mem[_4472 + _4604 + _6462 + 120 len ceil32(_8425) + 32]
                mem[mem[64] + _4604 + _6462 + 84] = 0
                _8286 = mem[64]
                mem[64] = _4472 + _4604 + _6462 + 84
                mem[_4472 + _4604 + _6462 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4472 + _4604 + _6462 + 88] = 32
                _8489 = mem[_8286]
                mem[_4472 + _4604 + _6462 + 120] = mem[_8286]
                mem[_4472 + _4604 + _6462 + 152 len ceil32(_8489)] = mem[_8286 + 32 len ceil32(_8489)]
                if ceil32(_8489) > _8489:
                    mem[_4472 + _4604 + _6462 + _8489 + 152] = 0
                revert with 0, 32, mem[_4472 + _4604 + _6462 + 120 len ceil32(_8489) + 32]
            mem[_3115 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3115]:
                    revert with 'NH{q', 50
                mem[t + _3115 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4473 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4605 = mem[_2154]
            mem[mem[64] + 55 len ceil32(mem[_2154])] = mem[_2154 + 32 len ceil32(mem[_2154])]
            var122001 = ceil32(_4605)
            mem[mem[64] + _4605 + 55] = ' is less then minAmountOut = '
            if ceil32(_4605) <= _4605:
                _6439 = mem[_3115]
                mem[_4473 + _4605 + 84 len ceil32(mem[_3115])] = mem[_3115 + 32 len ceil32(mem[_3115])]
                if ceil32(_6439) <= _6439:
                    _8224 = mem[64]
                    mem[64] = _4473 + _4605 + _6439 + 84
                    mem[_4473 + _4605 + _6439 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4473 + _4605 + _6439 + 88] = 32
                    _8426 = mem[_8224]
                    mem[_4473 + _4605 + _6439 + 120] = mem[_8224]
                    mem[_4473 + _4605 + _6439 + 152 len ceil32(_8426)] = mem[_8224 + 32 len ceil32(_8426)]
                    if ceil32(_8426) > _8426:
                        mem[_4473 + _4605 + _6439 + _8426 + 152] = 0
                    revert with 0, 32, mem[_4473 + _4605 + _6439 + 120 len ceil32(_8426) + 32]
                mem[_4473 + _4605 + _6439 + 84] = 0
                _8288 = mem[64]
                mem[64] = _4473 + _4605 + _6439 + 84
                mem[_4473 + _4605 + _6439 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4473 + _4605 + _6439 + 88] = 32
                _8490 = mem[_8288]
                mem[_4473 + _4605 + _6439 + 120] = mem[_8288]
                mem[_4473 + _4605 + _6439 + 152 len ceil32(_8490)] = mem[_8288 + 32 len ceil32(_8490)]
                if ceil32(_8490) > _8490:
                    mem[_4473 + _4605 + _6439 + _8490 + 152] = 0
                revert with 0, 32, mem[_4473 + _4605 + _6439 + 120 len ceil32(_8490) + 32]
            _6463 = mem[_3115]
            mem[_4473 + _4605 + 84 len ceil32(mem[_3115])] = mem[_3115 + 32 len ceil32(mem[_3115])]
            if ceil32(_6463) <= _6463:
                _8226 = mem[64]
                mem[64] = _4473 + _4605 + _6463 + 84
                mem[_4473 + _4605 + _6463 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4473 + _4605 + _6463 + 88] = 32
                _8427 = mem[_8226]
                mem[_4473 + _4605 + _6463 + 120] = mem[_8226]
                mem[_4473 + _4605 + _6463 + 152 len ceil32(_8427)] = mem[_8226 + 32 len ceil32(_8427)]
                if ceil32(_8427) > _8427:
                    mem[_4473 + _4605 + _6463 + _8427 + 152] = 0
                revert with 0, 32, mem[_4473 + _4605 + _6463 + 120 len ceil32(_8427) + 32]
            mem[_4473 + _4605 + _6463 + 84] = 0
            _8290 = mem[64]
            mem[64] = _4473 + _4605 + _6463 + 84
            mem[_4473 + _4605 + _6463 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4473 + _4605 + _6463 + 88] = 32
            _8491 = mem[_8290]
            mem[_4473 + _4605 + _6463 + 120] = mem[_8290]
            mem[_4473 + _4605 + _6463 + 152 len ceil32(_8491)] = mem[_8290 + 32 len ceil32(_8491)]
            if ceil32(_8491) > _8491:
                mem[_4473 + _4605 + _6463 + _8491 + 152] = 0
            revert with 0, 32, mem[_4473 + _4605 + _6463 + 120 len ceil32(_8491) + 32]
        t = 0
        idx = s
        while idx:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            idx = idx / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _3114 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_3114]:
                    revert with 'NH{q', 50
                mem[u + _3114 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _4490 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4490] = 1
                mem[_4490 + 32] = '0'
                _4536 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _4664 = mem[_3114]
                mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
                mem[mem[64] + _4664 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _4664 + 84] = '0'
                mem[mem[64] + _4664 + 85] = 0
                if ceil32(_4664) <= _4664:
                    _8276 = mem[64]
                    mem[64] = mem[64] + _4664 + 85
                    mem[_4536 + _4664 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4536 + _4664 + 89] = 32
                    _8484 = mem[_8276]
                    mem[_4536 + _4664 + 121] = mem[_8276]
                    mem[_4536 + _4664 + 153 len ceil32(_8484)] = mem[_8276 + 32 len ceil32(_8484)]
                    if ceil32(_8484) > _8484:
                        mem[_4536 + _4664 + _8484 + 153] = 0
                    revert with 0, 32, mem[_4536 + _4664 + 121 len ceil32(_8484) + 32]
                _8278 = mem[64]
                mem[64] = mem[64] + _4664 + 85
                mem[_4536 + _4664 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4536 + _4664 + 89] = 32
                _8485 = mem[_8278]
                mem[_4536 + _4664 + 121] = mem[_8278]
                mem[_4536 + _4664 + 153 len ceil32(_8485)] = mem[_8278 + 32 len ceil32(_8485)]
                if ceil32(_8485) > _8485:
                    mem[_4536 + _4664 + _8485 + 153] = 0
                revert with 0, 32, mem[_4536 + _4664 + 121 len ceil32(_8485) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _6160 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_6160]:
                        revert with 'NH{q', 50
                    mem[t + _6160 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _8172 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _8516 = mem[_3114]
                mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
                mem[mem[64] + _8516 + 55] = ' is less then minAmountOut = '
                if ceil32(_8516) > _8516:
                    _10092 = mem[_6160]
                    mem[mem[64] + _8516 + 84 len ceil32(mem[_6160])] = mem[_6160 + 32 len ceil32(mem[_6160])]
                    if ceil32(_10092) <= _10092:
                        _10838 = mem[64]
                        mem[64] = mem[64] + _8516 + _10092 + 84
                        mem[_8172 + _8516 + _10092 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8172 + _8516 + _10092 + 88] = 32
                        _11045 = mem[_10838]
                        mem[_8172 + _8516 + _10092 + 120] = mem[_10838]
                        mem[_8172 + _8516 + _10092 + 152 len ceil32(_11045)] = mem[_10838 + 32 len ceil32(_11045)]
                        if ceil32(_11045) > _11045:
                            mem[_8172 + _8516 + _10092 + _11045 + 152] = 0
                        revert with 0, 32, mem[_8172 + _8516 + _10092 + 120 len ceil32(_11045) + 32]
                    mem[mem[64] + _8516 + _10092 + 84] = 0
                    _10902 = mem[64]
                    mem[64] = _8172 + _8516 + _10092 + 84
                    mem[_8172 + _8516 + _10092 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8172 + _8516 + _10092 + 88] = 32
                    _11109 = mem[_10902]
                    mem[_8172 + _8516 + _10092 + 120] = mem[_10902]
                    mem[_8172 + _8516 + _10092 + 152 len ceil32(_11109)] = mem[_10902 + 32 len ceil32(_11109)]
                    if ceil32(_11109) > _11109:
                        mem[_8172 + _8516 + _10092 + _11109 + 152] = 0
                    revert with 0, 32, mem[_8172 + _8516 + _10092 + 120 len ceil32(_11109) + 32]
                _10076 = mem[_6160]
                mem[mem[64] + _8516 + 84 len ceil32(mem[_6160])] = mem[_6160 + 32 len ceil32(mem[_6160])]
                var147001 = ceil32(_10076)
                if ceil32(_10076) <= _10076:
                    _10836 = mem[64]
                    mem[64] = mem[64] + _8516 + _10076 + 84
                    mem[_8172 + _8516 + _10076 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8172 + _8516 + _10076 + 88] = 32
                    _11044 = mem[_10836]
                    mem[_8172 + _8516 + _10076 + 120] = mem[_10836]
                    mem[_8172 + _8516 + _10076 + 152 len ceil32(_11044)] = mem[_10836 + 32 len ceil32(_11044)]
                    if ceil32(_11044) > _11044:
                        mem[_8172 + _8516 + _10076 + _11044 + 152] = 0
                    revert with 0, 32, mem[_8172 + _8516 + _10076 + 120 len ceil32(_11044) + 32]
                mem[mem[64] + _8516 + _10076 + 84] = 0
                _10900 = mem[64]
                mem[64] = mem[64] + _8516 + _10076 + 84
                mem[_8172 + _8516 + _10076 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8172 + _8516 + _10076 + 88] = 32
                _11108 = mem[_10900]
                mem[_8172 + _8516 + _10076 + 120] = mem[_10900]
                mem[_8172 + _8516 + _10076 + 152 len ceil32(_11108)] = mem[_10900 + 32 len ceil32(_11108)]
                if ceil32(_11108) > _11108:
                    mem[_8172 + _8516 + _10076 + _11108 + 152] = 0
                revert with 0, 32, mem[_8172 + _8516 + _10076 + 120 len ceil32(_11108) + 32]
            mem[_6160 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6160]:
                    revert with 'NH{q', 50
                mem[t + _6160 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8173 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8517 = mem[_3114]
            mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
            mem[mem[64] + _8517 + 55] = ' is less then minAmountOut = '
            if ceil32(_8517) <= _8517:
                _10077 = mem[_6160]
                mem[mem[64] + _8517 + 84 len ceil32(mem[_6160])] = mem[_6160 + 32 len ceil32(mem[_6160])]
                if ceil32(_10077) <= _10077:
                    _10840 = mem[64]
                    mem[64] = mem[64] + _8517 + _10077 + 84
                    mem[_8173 + _8517 + _10077 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8173 + _8517 + _10077 + 88] = 32
                    _11046 = mem[_10840]
                    mem[_8173 + _8517 + _10077 + 120] = mem[_10840]
                    mem[_8173 + _8517 + _10077 + 152 len ceil32(_11046)] = mem[_10840 + 32 len ceil32(_11046)]
                    if ceil32(_11046) > _11046:
                        mem[_8173 + _8517 + _10077 + _11046 + 152] = 0
                    revert with 0, 32, mem[_8173 + _8517 + _10077 + 120 len ceil32(_11046) + 32]
                mem[mem[64] + _8517 + _10077 + 84] = 0
                _10904 = mem[64]
                mem[64] = mem[64] + _8517 + _10077 + 84
                mem[_8173 + _8517 + _10077 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8173 + _8517 + _10077 + 88] = 32
                _11110 = mem[_10904]
                mem[_8173 + _8517 + _10077 + 120] = mem[_10904]
                mem[_8173 + _8517 + _10077 + 152 len ceil32(_11110)] = mem[_10904 + 32 len ceil32(_11110)]
                if ceil32(_11110) > _11110:
                    mem[_8173 + _8517 + _10077 + _11110 + 152] = 0
                revert with 0, 32, mem[_8173 + _8517 + _10077 + 120 len ceil32(_11110) + 32]
            _10093 = mem[_6160]
            mem[mem[64] + _8517 + 84 len ceil32(mem[_6160])] = mem[_6160 + 32 len ceil32(mem[_6160])]
            if ceil32(_10093) <= _10093:
                _10842 = mem[64]
                mem[64] = mem[64] + _8517 + _10093 + 84
                mem[_8173 + _8517 + _10093 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8173 + _8517 + _10093 + 88] = 32
                _11047 = mem[_10842]
                mem[_8173 + _8517 + _10093 + 120] = mem[_10842]
                mem[_8173 + _8517 + _10093 + 152 len ceil32(_11047)] = mem[_10842 + 32 len ceil32(_11047)]
                if ceil32(_11047) > _11047:
                    mem[_8173 + _8517 + _10093 + _11047 + 152] = 0
                revert with 0, 32, mem[_8173 + _8517 + _10093 + 120 len ceil32(_11047) + 32]
            mem[mem[64] + _8517 + _10093 + 84] = 0
            _10906 = mem[64]
            mem[64] = mem[64] + _8517 + _10093 + 84
            mem[_8173 + _8517 + _10093 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8173 + _8517 + _10093 + 88] = 32
            _11111 = mem[_10906]
            mem[_8173 + _8517 + _10093 + 120] = mem[_10906]
            mem[_8173 + _8517 + _10093 + 152 len ceil32(_11111)] = mem[_10906 + 32 len ceil32(_11111)]
            if ceil32(_11111) > _11111:
                mem[_8173 + _8517 + _10093 + _11111 + 152] = 0
            revert with 0, 32, mem[_8173 + _8517 + _10093 + 120 len ceil32(_11111) + 32]
        mem[_3114 + 32 len t] = call.data[calldata.size len t]
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_3114]:
                revert with 'NH{q', 50
            mem[u + _3114 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _4491 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4491] = 1
            mem[_4491 + 32] = '0'
            _4537 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4665 = mem[_3114]
            mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
            var122001 = ceil32(_4665)
            mem[mem[64] + _4665 + 55] = ' is less then minAmountOut = '
            mem[mem[64] + _4665 + 84] = '0'
            mem[mem[64] + _4665 + 85] = 0
            if ceil32(_4665) <= _4665:
                _8280 = mem[64]
                mem[64] = mem[64] + _4665 + 85
                mem[_4537 + _4665 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4537 + _4665 + 89] = 32
                _8486 = mem[_8280]
                mem[_4537 + _4665 + 121] = mem[_8280]
                mem[_4537 + _4665 + 153 len ceil32(_8486)] = mem[_8280 + 32 len ceil32(_8486)]
                if ceil32(_8486) > _8486:
                    mem[_4537 + _4665 + _8486 + 153] = 0
                revert with 0, 32, mem[_4537 + _4665 + 121 len ceil32(_8486) + 32]
            _8282 = mem[64]
            mem[64] = mem[64] + _4665 + 85
            mem[_4537 + _4665 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4537 + _4665 + 89] = 32
            _8487 = mem[_8282]
            mem[_4537 + _4665 + 121] = mem[_8282]
            mem[_4537 + _4665 + 153 len ceil32(_8487)] = mem[_8282 + 32 len ceil32(_8487)]
            if ceil32(_8487) > _8487:
                mem[_4537 + _4665 + _8487 + 153] = 0
            revert with 0, 32, mem[_4537 + _4665 + 121 len ceil32(_8487) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _6161 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6161]:
                    revert with 'NH{q', 50
                mem[t + _6161 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8174 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8518 = mem[_3114]
            mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
            mem[mem[64] + _8518 + 55] = ' is less then minAmountOut = '
            if ceil32(_8518) <= _8518:
                _10078 = mem[_6161]
                mem[mem[64] + _8518 + 84 len ceil32(mem[_6161])] = mem[_6161 + 32 len ceil32(mem[_6161])]
                if ceil32(_10078) <= _10078:
                    _10844 = mem[64]
                    mem[64] = mem[64] + _8518 + _10078 + 84
                    mem[_8174 + _8518 + _10078 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8174 + _8518 + _10078 + 88] = 32
                    _11048 = mem[_10844]
                    mem[_8174 + _8518 + _10078 + 120] = mem[_10844]
                    mem[_8174 + _8518 + _10078 + 152 len ceil32(_11048)] = mem[_10844 + 32 len ceil32(_11048)]
                    if ceil32(_11048) > _11048:
                        mem[_8174 + _8518 + _10078 + _11048 + 152] = 0
                    revert with 0, 32, mem[_8174 + _8518 + _10078 + 120 len ceil32(_11048) + 32]
                mem[mem[64] + _8518 + _10078 + 84] = 0
                _10908 = mem[64]
                mem[64] = _8174 + _8518 + _10078 + 84
                mem[_8174 + _8518 + _10078 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8174 + _8518 + _10078 + 88] = 32
                _11112 = mem[_10908]
                mem[_8174 + _8518 + _10078 + 120] = mem[_10908]
                mem[_8174 + _8518 + _10078 + 152 len ceil32(_11112)] = mem[_10908 + 32 len ceil32(_11112)]
                if ceil32(_11112) > _11112:
                    mem[_8174 + _8518 + _10078 + _11112 + 152] = 0
                revert with 0, 32, mem[_8174 + _8518 + _10078 + 120 len ceil32(_11112) + 32]
            _10094 = mem[_6161]
            mem[mem[64] + _8518 + 84 len ceil32(mem[_6161])] = mem[_6161 + 32 len ceil32(mem[_6161])]
            if ceil32(_10094) <= _10094:
                _10846 = mem[64]
                mem[64] = mem[64] + _8518 + _10094 + 84
                mem[_8174 + _8518 + _10094 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8174 + _8518 + _10094 + 88] = 32
                _11049 = mem[_10846]
                mem[_8174 + _8518 + _10094 + 120] = mem[_10846]
                mem[_8174 + _8518 + _10094 + 152 len ceil32(_11049)] = mem[_10846 + 32 len ceil32(_11049)]
                if ceil32(_11049) > _11049:
                    mem[_8174 + _8518 + _10094 + _11049 + 152] = 0
                revert with 0, 32, mem[_8174 + _8518 + _10094 + 120 len ceil32(_11049) + 32]
            mem[mem[64] + _8518 + _10094 + 84] = 0
            _10910 = mem[64]
            mem[64] = mem[64] + _8518 + _10094 + 84
            mem[_8174 + _8518 + _10094 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8174 + _8518 + _10094 + 88] = 32
            _11113 = mem[_10910]
            mem[_8174 + _8518 + _10094 + 120] = mem[_10910]
            mem[_8174 + _8518 + _10094 + 152 len ceil32(_11113)] = mem[_10910 + 32 len ceil32(_11113)]
            if ceil32(_11113) > _11113:
                mem[_8174 + _8518 + _10094 + _11113 + 152] = 0
            revert with 0, 32, mem[_8174 + _8518 + _10094 + 120 len ceil32(_11113) + 32]
        mem[_6161 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_6161]:
                revert with 'NH{q', 50
            mem[t + _6161 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _8175 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _8519 = mem[_3114]
        mem[mem[64] + 55 len ceil32(mem[_3114])] = mem[_3114 + 32 len ceil32(mem[_3114])]
        mem[mem[64] + _8519 + 55] = ' is less then minAmountOut = '
        if ceil32(_8519) <= _8519:
            _10079 = mem[_6161]
            mem[mem[64] + _8519 + 84 len ceil32(mem[_6161])] = mem[_6161 + 32 len ceil32(mem[_6161])]
            if ceil32(_10079) <= _10079:
                _10848 = mem[64]
                mem[64] = mem[64] + _8519 + _10079 + 84
                mem[_8175 + _8519 + _10079 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8175 + _8519 + _10079 + 88] = 32
                _11050 = mem[_10848]
                mem[_8175 + _8519 + _10079 + 120] = mem[_10848]
                mem[_8175 + _8519 + _10079 + 152 len ceil32(_11050)] = mem[_10848 + 32 len ceil32(_11050)]
                if ceil32(_11050) > _11050:
                    mem[_8175 + _8519 + _10079 + _11050 + 152] = 0
                revert with 0, 32, mem[_8175 + _8519 + _10079 + 120 len ceil32(_11050) + 32]
            mem[mem[64] + _8519 + _10079 + 84] = 0
            _10912 = mem[64]
            mem[64] = mem[64] + _8519 + _10079 + 84
            mem[_8175 + _8519 + _10079 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8175 + _8519 + _10079 + 88] = 32
            _11114 = mem[_10912]
            mem[_8175 + _8519 + _10079 + 120] = mem[_10912]
            mem[_8175 + _8519 + _10079 + 152 len ceil32(_11114)] = mem[_10912 + 32 len ceil32(_11114)]
            if ceil32(_11114) > _11114:
                mem[_8175 + _8519 + _10079 + _11114 + 152] = 0
            revert with 0, 32, mem[_8175 + _8519 + _10079 + 120 len ceil32(_11114) + 32]
        _10095 = mem[_6161]
        mem[mem[64] + _8519 + 84 len ceil32(mem[_6161])] = mem[_6161 + 32 len ceil32(mem[_6161])]
        if ceil32(_10095) <= _10095:
            _10850 = mem[64]
            mem[64] = mem[64] + _8519 + _10095 + 84
            mem[_8175 + _8519 + _10095 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8175 + _8519 + _10095 + 88] = 32
            _11051 = mem[_10850]
            mem[_8175 + _8519 + _10095 + 120] = mem[_10850]
            mem[_8175 + _8519 + _10095 + 152 len ceil32(_11051)] = mem[_10850 + 32 len ceil32(_11051)]
            if ceil32(_11051) > _11051:
                mem[_8175 + _8519 + _10095 + _11051 + 152] = 0
            revert with 0, 32, mem[_8175 + _8519 + _10095 + 120 len ceil32(_11051) + 32]
        mem[mem[64] + _8519 + _10095 + 84] = 0
        _10914 = mem[64]
        mem[64] = mem[64] + _8519 + _10095 + 84
        mem[_8175 + _8519 + _10095 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8175 + _8519 + _10095 + 88] = 32
        _11115 = mem[_10914]
        mem[_8175 + _8519 + _10095 + 120] = mem[_10914]
        mem[_8175 + _8519 + _10095 + 152 len ceil32(_11115)] = mem[_10914 + 32 len ceil32(_11115)]
        if ceil32(_11115) > _11115:
            mem[_8175 + _8519 + _10095 + _11115 + 152] = 0
        revert with 0, 32, mem[_8175 + _8519 + _10095 + 120 len ceil32(_11115) + 32]
    if stor0 != msg.sender:
        revert with 0, 'Not allowed executor'
    idx = 0
    s = cd[4]
    while idx < ('cd', 100).length:
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        _1591 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
        _1595 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1595 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_1595]:
            revert with 'NH{q', 50
        mem[_1595 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_1595]:
            revert with 'NH{q', 50
        mem[_1595 + 64] = mem[(32 * idx + 1) + 140 len 20]
        mem[_1595 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1595 + 100] = s
        mem[_1595 + 132] = 64
        mem[_1595 + 164] = mem[_1595]
        t = 0
        u = _1595 + 32
        v = _1595 + 196
        while t < mem[_1595]:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_1591))
        staticcall address(_1591).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1595 + (32 * mem[_1595]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2159 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2167 = mem[_2159]
        require mem[_2159] <= test266151307()
        require _2159 + mem[_2159] + 31 < _2159 + return_data.size
        _2195 = mem[_2159 + mem[_2159]]
        if mem[_2159 + mem[_2159]] > test266151307():
            revert with 'NH{q', 65
        if _2159 + ceil32(return_data.size) + floor32(mem[_2159 + mem[_2159]]) + 1 > test266151307() or floor32(mem[_2159 + mem[_2159]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2159 + ceil32(return_data.size) + floor32(mem[_2159 + mem[_2159]]) + 1
        mem[_2159 + ceil32(return_data.size)] = _2195
        require _2167 + (32 * _2195) + 32 <= return_data.size
        t = 0
        u = _2159 + _2167 + 32
        v = _2159 + ceil32(return_data.size) + 32
        while t < _2195:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        if 1 >= _2195:
            revert with 'NH{q', 50
        if _2195 == -1:
            revert with 'NH{q', 17
        t = _2195 + 1
        u = mem[_2159 + ceil32(return_data.size) + 64]
        continue 
    if s < cd[36]:
        if not s:
            _1603 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1603] = 1
            mem[_1603 + 32] = '0'
            if not cd[36]:
                _1647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1647] = 1
                mem[_1647 + 32] = '0'
                _1651 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                mem[mem[64] + 55] = '0'
                var109001 = 32
                mem[mem[64] + 56] = ' is less then minAmountOut = '
                mem[mem[64] + 85] = '0'
                mem[mem[64] + 86] = 0
                _3174 = mem[64]
                mem[64] = mem[64] + 86
                mem[_1651 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1651 + 90] = 32
                _3211 = mem[_3174]
                mem[_1651 + 122] = mem[_3174]
                mem[_1651 + 154 len ceil32(_3211)] = mem[_3174 + 32 len ceil32(_3211)]
                if ceil32(_3211) > _3211:
                    mem[_1651 + _3211 + 154] = 0
                revert with 0, 32, mem[_1651 + 122 len ceil32(_3211) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _2135 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_2135]:
                        revert with 'NH{q', 50
                    mem[t + _2135 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3126 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3234 = mem[_1603]
                mem[mem[64] + 55 len ceil32(mem[_1603])] = mem[_1603 + 32 len ceil32(mem[_1603])]
                var117001 = ceil32(_3234)
                mem[mem[64] + _3234 + 55] = ' is less then minAmountOut = '
                if ceil32(_3234) <= _3234:
                    _4614 = mem[_2135]
                    mem[mem[64] + _3234 + 84 len ceil32(mem[_2135])] = mem[_2135 + 32 len ceil32(mem[_2135])]
                    if ceil32(_4614) <= _4614:
                        _6236 = mem[64]
                        mem[64] = mem[64] + _3234 + _4614 + 84
                        mem[_3126 + _3234 + _4614 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3126 + _3234 + _4614 + 88] = 32
                        _6384 = mem[_6236]
                        mem[_3126 + _3234 + _4614 + 120] = mem[_6236]
                        mem[_3126 + _3234 + _4614 + 152 len ceil32(_6384)] = mem[_6236 + 32 len ceil32(_6384)]
                        if ceil32(_6384) > _6384:
                            mem[_3126 + _3234 + _4614 + _6384 + 152] = 0
                        revert with 0, 32, mem[_3126 + _3234 + _4614 + 120 len ceil32(_6384) + 32]
                    mem[mem[64] + _3234 + _4614 + 84] = 0
                    _6300 = mem[64]
                    mem[64] = mem[64] + _3234 + _4614 + 84
                    mem[_3126 + _3234 + _4614 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3126 + _3234 + _4614 + 88] = 32
                    _6416 = mem[_6300]
                    mem[_3126 + _3234 + _4614 + 120] = mem[_6300]
                    mem[_3126 + _3234 + _4614 + 152 len ceil32(_6416)] = mem[_6300 + 32 len ceil32(_6416)]
                    if ceil32(_6416) > _6416:
                        mem[_3126 + _3234 + _4614 + _6416 + 152] = 0
                    revert with 0, 32, mem[_3126 + _3234 + _4614 + 120 len ceil32(_6416) + 32]
                _4634 = mem[_2135]
                mem[mem[64] + _3234 + 84 len ceil32(mem[_2135])] = mem[_2135 + 32 len ceil32(mem[_2135])]
                if ceil32(_4634) <= _4634:
                    _6238 = mem[64]
                    mem[64] = mem[64] + _3234 + _4634 + 84
                    mem[_3126 + _3234 + _4634 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3126 + _3234 + _4634 + 88] = 32
                    _6385 = mem[_6238]
                    mem[_3126 + _3234 + _4634 + 120] = mem[_6238]
                    mem[_3126 + _3234 + _4634 + 152 len ceil32(_6385)] = mem[_6238 + 32 len ceil32(_6385)]
                    if ceil32(_6385) > _6385:
                        mem[_3126 + _3234 + _4634 + _6385 + 152] = 0
                    revert with 0, 32, mem[_3126 + _3234 + _4634 + 120 len ceil32(_6385) + 32]
                mem[mem[64] + _3234 + _4634 + 84] = 0
                _6302 = mem[64]
                mem[64] = _3126 + _3234 + _4634 + 84
                mem[_3126 + _3234 + _4634 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3126 + _3234 + _4634 + 88] = 32
                _6417 = mem[_6302]
                mem[_3126 + _3234 + _4634 + 120] = mem[_6302]
                mem[_3126 + _3234 + _4634 + 152 len ceil32(_6417)] = mem[_6302 + 32 len ceil32(_6417)]
                if ceil32(_6417) > _6417:
                    mem[_3126 + _3234 + _4634 + _6417 + 152] = 0
                revert with 0, 32, mem[_3126 + _3234 + _4634 + 120 len ceil32(_6417) + 32]
            mem[_2135 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_2135]:
                    revert with 'NH{q', 50
                mem[t + _2135 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3127 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _3235 = mem[_1603]
            mem[mem[64] + 55 len ceil32(mem[_1603])] = mem[_1603 + 32 len ceil32(mem[_1603])]
            var118001 = ceil32(_3235)
            mem[mem[64] + _3235 + 55] = ' is less then minAmountOut = '
            if ceil32(_3235) <= _3235:
                _4615 = mem[_2135]
                mem[_3127 + _3235 + 84 len ceil32(mem[_2135])] = mem[_2135 + 32 len ceil32(mem[_2135])]
                if ceil32(_4615) <= _4615:
                    _6240 = mem[64]
                    mem[64] = _3127 + _3235 + _4615 + 84
                    mem[_3127 + _3235 + _4615 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3127 + _3235 + _4615 + 88] = 32
                    _6386 = mem[_6240]
                    mem[_3127 + _3235 + _4615 + 120] = mem[_6240]
                    mem[_3127 + _3235 + _4615 + 152 len ceil32(_6386)] = mem[_6240 + 32 len ceil32(_6386)]
                    if ceil32(_6386) > _6386:
                        mem[_3127 + _3235 + _4615 + _6386 + 152] = 0
                    revert with 0, 32, mem[_3127 + _3235 + _4615 + 120 len ceil32(_6386) + 32]
                mem[_3127 + _3235 + _4615 + 84] = 0
                _6304 = mem[64]
                mem[64] = _3127 + _3235 + _4615 + 84
                mem[_3127 + _3235 + _4615 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3127 + _3235 + _4615 + 88] = 32
                _6418 = mem[_6304]
                mem[_3127 + _3235 + _4615 + 120] = mem[_6304]
                mem[_3127 + _3235 + _4615 + 152 len ceil32(_6418)] = mem[_6304 + 32 len ceil32(_6418)]
                if ceil32(_6418) > _6418:
                    mem[_3127 + _3235 + _4615 + _6418 + 152] = 0
                revert with 0, 32, mem[_3127 + _3235 + _4615 + 120 len ceil32(_6418) + 32]
            _4635 = mem[_2135]
            mem[_3127 + _3235 + 84 len ceil32(mem[_2135])] = mem[_2135 + 32 len ceil32(mem[_2135])]
            if ceil32(_4635) <= _4635:
                _6242 = mem[64]
                mem[64] = _3127 + _3235 + _4635 + 84
                mem[_3127 + _3235 + _4635 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3127 + _3235 + _4635 + 88] = 32
                _6387 = mem[_6242]
                mem[_3127 + _3235 + _4635 + 120] = mem[_6242]
                mem[_3127 + _3235 + _4635 + 152 len ceil32(_6387)] = mem[_6242 + 32 len ceil32(_6387)]
                if ceil32(_6387) > _6387:
                    mem[_3127 + _3235 + _4635 + _6387 + 152] = 0
                revert with 0, 32, mem[_3127 + _3235 + _4635 + 120 len ceil32(_6387) + 32]
            mem[_3127 + _3235 + _4635 + 84] = 0
            _6306 = mem[64]
            mem[64] = _3127 + _3235 + _4635 + 84
            mem[_3127 + _3235 + _4635 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3127 + _3235 + _4635 + 88] = 32
            _6419 = mem[_6306]
            mem[_3127 + _3235 + _4635 + 120] = mem[_6306]
            mem[_3127 + _3235 + _4635 + 152 len ceil32(_6419)] = mem[_6306 + 32 len ceil32(_6419)]
            if ceil32(_6419) > _6419:
                mem[_3127 + _3235 + _4635 + _6419 + 152] = 0
            revert with 0, 32, mem[_3127 + _3235 + _4635 + 120 len ceil32(_6419) + 32]
        t = 0
        idx = s
        while idx:
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            idx = idx / 10
            continue 
        if t > test266151307():
            revert with 'NH{q', 65
        _2134 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            idx = s
            while idx:
                if u < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if u - 1 >= mem[_2134]:
                    revert with 'NH{q', 50
                mem[u + _2134 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                u = u - 1
                idx = idx / 10
                continue 
            if not cd[36]:
                _3153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3153] = 1
                mem[_3153 + 32] = '0'
                _3186 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _3270 = mem[_2134]
                mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
                var117001 = ceil32(_3270)
                mem[mem[64] + _3270 + 55] = ' is less then minAmountOut = '
                mem[mem[64] + _3270 + 84] = '0'
                mem[mem[64] + _3270 + 85] = 0
                if ceil32(_3270) <= _3270:
                    _6292 = mem[64]
                    mem[64] = mem[64] + _3270 + 85
                    mem[_3186 + _3270 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3186 + _3270 + 89] = 32
                    _6412 = mem[_6292]
                    mem[_3186 + _3270 + 121] = mem[_6292]
                    mem[_3186 + _3270 + 153 len ceil32(_6412)] = mem[_6292 + 32 len ceil32(_6412)]
                    if ceil32(_6412) > _6412:
                        mem[_3186 + _3270 + _6412 + 153] = 0
                    revert with 0, 32, mem[_3186 + _3270 + 121 len ceil32(_6412) + 32]
                _6294 = mem[64]
                mem[64] = mem[64] + _3270 + 85
                mem[_3186 + _3270 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3186 + _3270 + 89] = 32
                _6413 = mem[_6294]
                mem[_3186 + _3270 + 121] = mem[_6294]
                mem[_3186 + _3270 + 153 len ceil32(_6413)] = mem[_6294 + 32 len ceil32(_6413)]
                if ceil32(_6413) > _6413:
                    mem[_3186 + _3270 + _6413 + 153] = 0
                revert with 0, 32, mem[_3186 + _3270 + 121 len ceil32(_6413) + 32]
            s = 0
            idx = cd[36]
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            _4466 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = cd[36]
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[_4466]:
                        revert with 'NH{q', 50
                    mem[t + _4466 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _6176 = mem[64]
                mem[mem[64] + 32] = 'Last token amountOut = '
                _6448 = mem[_2134]
                mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
                mem[mem[64] + _6448 + 55] = ' is less then minAmountOut = '
                if ceil32(_6448) <= _6448:
                    _8528 = mem[_4466]
                    mem[_6176 + _6448 + 84 len ceil32(mem[_4466])] = mem[_4466 + 32 len ceil32(mem[_4466])]
                    if ceil32(_8528) <= _8528:
                        _9796 = mem[64]
                        mem[64] = _6176 + _6448 + _8528 + 84
                        mem[_6176 + _6448 + _8528 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6176 + _6448 + _8528 + 88] = 32
                        _10028 = mem[_9796]
                        mem[_6176 + _6448 + _8528 + 120] = mem[_9796]
                        mem[_6176 + _6448 + _8528 + 152 len ceil32(_10028)] = mem[_9796 + 32 len ceil32(_10028)]
                        if ceil32(_10028) > _10028:
                            mem[_6176 + _6448 + _8528 + _10028 + 152] = 0
                        revert with 0, 32, mem[_6176 + _6448 + _8528 + 120 len ceil32(_10028) + 32]
                    mem[_6176 + _6448 + _8528 + 84] = 0
                    _9860 = mem[64]
                    mem[64] = _6176 + _6448 + _8528 + 84
                    mem[_6176 + _6448 + _8528 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6176 + _6448 + _8528 + 88] = 32
                    _10060 = mem[_9860]
                    mem[_6176 + _6448 + _8528 + 120] = mem[_9860]
                    mem[_6176 + _6448 + _8528 + 152 len ceil32(_10060)] = mem[_9860 + 32 len ceil32(_10060)]
                    if ceil32(_10060) > _10060:
                        mem[_6176 + _6448 + _8528 + _10060 + 152] = 0
                    revert with 0, 32, mem[_6176 + _6448 + _8528 + 120 len ceil32(_10060) + 32]
                _8544 = mem[_4466]
                mem[_6176 + _6448 + 84 len ceil32(mem[_4466])] = mem[_4466 + 32 len ceil32(mem[_4466])]
                if ceil32(_8544) <= _8544:
                    _9798 = mem[64]
                    mem[64] = _6176 + _6448 + _8544 + 84
                    mem[_6176 + _6448 + _8544 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6176 + _6448 + _8544 + 88] = 32
                    _10029 = mem[_9798]
                    mem[_6176 + _6448 + _8544 + 120] = mem[_9798]
                    mem[_6176 + _6448 + _8544 + 152 len ceil32(_10029)] = mem[_9798 + 32 len ceil32(_10029)]
                    if ceil32(_10029) > _10029:
                        mem[_6176 + _6448 + _8544 + _10029 + 152] = 0
                    revert with 0, 32, mem[_6176 + _6448 + _8544 + 120 len ceil32(_10029) + 32]
                mem[_6176 + _6448 + _8544 + 84] = 0
                _9862 = mem[64]
                mem[64] = _6176 + _6448 + _8544 + 84
                mem[_6176 + _6448 + _8544 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6176 + _6448 + _8544 + 88] = 32
                _10061 = mem[_9862]
                mem[_6176 + _6448 + _8544 + 120] = mem[_9862]
                mem[_6176 + _6448 + _8544 + 152 len ceil32(_10061)] = mem[_9862 + 32 len ceil32(_10061)]
                if ceil32(_10061) > _10061:
                    mem[_6176 + _6448 + _8544 + _10061 + 152] = 0
                revert with 0, 32, mem[_6176 + _6448 + _8544 + 120 len ceil32(_10061) + 32]
            mem[_4466 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_4466]:
                    revert with 'NH{q', 50
                mem[t + _4466 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _6177 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _6449 = mem[_2134]
            mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
            mem[mem[64] + _6449 + 55] = ' is less then minAmountOut = '
            if ceil32(_6449) <= _6449:
                _8529 = mem[_4466]
                mem[_6177 + _6449 + 84 len ceil32(mem[_4466])] = mem[_4466 + 32 len ceil32(mem[_4466])]
                if ceil32(_8529) <= _8529:
                    _9800 = mem[64]
                    mem[64] = _6177 + _6449 + _8529 + 84
                    mem[_6177 + _6449 + _8529 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6177 + _6449 + _8529 + 88] = 32
                    _10030 = mem[_9800]
                    mem[_6177 + _6449 + _8529 + 120] = mem[_9800]
                    mem[_6177 + _6449 + _8529 + 152 len ceil32(_10030)] = mem[_9800 + 32 len ceil32(_10030)]
                    if ceil32(_10030) > _10030:
                        mem[_6177 + _6449 + _8529 + _10030 + 152] = 0
                    revert with 0, 32, mem[_6177 + _6449 + _8529 + 120 len ceil32(_10030) + 32]
                mem[_6177 + _6449 + _8529 + 84] = 0
                _9864 = mem[64]
                mem[64] = _6177 + _6449 + _8529 + 84
                mem[_6177 + _6449 + _8529 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6177 + _6449 + _8529 + 88] = 32
                _10062 = mem[_9864]
                mem[_6177 + _6449 + _8529 + 120] = mem[_9864]
                mem[_6177 + _6449 + _8529 + 152 len ceil32(_10062)] = mem[_9864 + 32 len ceil32(_10062)]
                if ceil32(_10062) > _10062:
                    mem[_6177 + _6449 + _8529 + _10062 + 152] = 0
                revert with 0, 32, mem[_6177 + _6449 + _8529 + 120 len ceil32(_10062) + 32]
            _8545 = mem[_4466]
            mem[_6177 + _6449 + 84 len ceil32(mem[_4466])] = mem[_4466 + 32 len ceil32(mem[_4466])]
            var145001 = ceil32(_8545)
            if ceil32(_8545) <= _8545:
                _9802 = mem[64]
                mem[64] = _6177 + _6449 + _8545 + 84
                mem[_6177 + _6449 + _8545 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6177 + _6449 + _8545 + 88] = 32
                _10031 = mem[_9802]
                mem[_6177 + _6449 + _8545 + 120] = mem[_9802]
                mem[_6177 + _6449 + _8545 + 152 len ceil32(_10031)] = mem[_9802 + 32 len ceil32(_10031)]
                if ceil32(_10031) > _10031:
                    mem[_6177 + _6449 + _8545 + _10031 + 152] = 0
                revert with 0, 32, mem[_6177 + _6449 + _8545 + 120 len ceil32(_10031) + 32]
            mem[_6177 + _6449 + _8545 + 84] = 0
            _9866 = mem[64]
            mem[64] = _6177 + _6449 + _8545 + 84
            mem[_6177 + _6449 + _8545 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6177 + _6449 + _8545 + 88] = 32
            _10063 = mem[_9866]
            mem[_6177 + _6449 + _8545 + 120] = mem[_9866]
            mem[_6177 + _6449 + _8545 + 152 len ceil32(_10063)] = mem[_9866 + 32 len ceil32(_10063)]
            if ceil32(_10063) > _10063:
                mem[_6177 + _6449 + _8545 + _10063 + 152] = 0
            revert with 0, 32, mem[_6177 + _6449 + _8545 + 120 len ceil32(_10063) + 32]
        mem[_2134 + 32 len t] = call.data[calldata.size len t]
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_2134]:
                revert with 'NH{q', 50
            mem[u + _2134 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _3154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3154] = 1
            mem[_3154 + 32] = '0'
            _3187 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _3271 = mem[_2134]
            mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
            var118001 = ceil32(_3271)
            mem[mem[64] + _3271 + 55] = ' is less then minAmountOut = '
            mem[mem[64] + _3271 + 84] = '0'
            mem[mem[64] + _3271 + 85] = 0
            if ceil32(_3271) <= _3271:
                _6296 = mem[64]
                mem[64] = mem[64] + _3271 + 85
                mem[_3187 + _3271 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3187 + _3271 + 89] = 32
                _6414 = mem[_6296]
                mem[_3187 + _3271 + 121] = mem[_6296]
                mem[_3187 + _3271 + 153 len ceil32(_6414)] = mem[_6296 + 32 len ceil32(_6414)]
                if ceil32(_6414) > _6414:
                    mem[_3187 + _3271 + _6414 + 153] = 0
                revert with 0, 32, mem[_3187 + _3271 + 121 len ceil32(_6414) + 32]
            _6298 = mem[64]
            mem[64] = mem[64] + _3271 + 85
            mem[_3187 + _3271 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3187 + _3271 + 89] = 32
            _6415 = mem[_6298]
            mem[_3187 + _3271 + 121] = mem[_6298]
            mem[_3187 + _3271 + 153 len ceil32(_6415)] = mem[_6298 + 32 len ceil32(_6415)]
            if ceil32(_6415) > _6415:
                mem[_3187 + _3271 + _6415 + 153] = 0
            revert with 0, 32, mem[_3187 + _3271 + 121 len ceil32(_6415) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _4467 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_4467]:
                    revert with 'NH{q', 50
                mem[t + _4467 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _6178 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _6450 = mem[_2134]
            mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
            mem[mem[64] + _6450 + 55] = ' is less then minAmountOut = '
            if ceil32(_6450) <= _6450:
                _8530 = mem[_4467]
                mem[_6178 + _6450 + 84 len ceil32(mem[_4467])] = mem[_4467 + 32 len ceil32(mem[_4467])]
                if ceil32(_8530) <= _8530:
                    _9804 = mem[64]
                    mem[64] = _6178 + _6450 + _8530 + 84
                    mem[_6178 + _6450 + _8530 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6178 + _6450 + _8530 + 88] = 32
                    _10032 = mem[_9804]
                    mem[_6178 + _6450 + _8530 + 120] = mem[_9804]
                    mem[_6178 + _6450 + _8530 + 152 len ceil32(_10032)] = mem[_9804 + 32 len ceil32(_10032)]
                    if ceil32(_10032) > _10032:
                        mem[_6178 + _6450 + _8530 + _10032 + 152] = 0
                    revert with 0, 32, mem[_6178 + _6450 + _8530 + 120 len ceil32(_10032) + 32]
                mem[_6178 + _6450 + _8530 + 84] = 0
                _9868 = mem[64]
                mem[64] = _6178 + _6450 + _8530 + 84
                mem[_6178 + _6450 + _8530 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6178 + _6450 + _8530 + 88] = 32
                _10064 = mem[_9868]
                mem[_6178 + _6450 + _8530 + 120] = mem[_9868]
                mem[_6178 + _6450 + _8530 + 152 len ceil32(_10064)] = mem[_9868 + 32 len ceil32(_10064)]
                if ceil32(_10064) > _10064:
                    mem[_6178 + _6450 + _8530 + _10064 + 152] = 0
                revert with 0, 32, mem[_6178 + _6450 + _8530 + 120 len ceil32(_10064) + 32]
            _8546 = mem[_4467]
            mem[_6178 + _6450 + 84 len ceil32(mem[_4467])] = mem[_4467 + 32 len ceil32(mem[_4467])]
            var145001 = ceil32(_8546)
            if ceil32(_8546) <= _8546:
                _9806 = mem[64]
                mem[64] = _6178 + _6450 + _8546 + 84
                mem[_6178 + _6450 + _8546 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6178 + _6450 + _8546 + 88] = 32
                _10033 = mem[_9806]
                mem[_6178 + _6450 + _8546 + 120] = mem[_9806]
                mem[_6178 + _6450 + _8546 + 152 len ceil32(_10033)] = mem[_9806 + 32 len ceil32(_10033)]
                if ceil32(_10033) > _10033:
                    mem[_6178 + _6450 + _8546 + _10033 + 152] = 0
                revert with 0, 32, mem[_6178 + _6450 + _8546 + 120 len ceil32(_10033) + 32]
            mem[_6178 + _6450 + _8546 + 84] = 0
            _9870 = mem[64]
            mem[64] = _6178 + _6450 + _8546 + 84
            mem[_6178 + _6450 + _8546 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6178 + _6450 + _8546 + 88] = 32
            _10065 = mem[_9870]
            mem[_6178 + _6450 + _8546 + 120] = mem[_9870]
            mem[_6178 + _6450 + _8546 + 152 len ceil32(_10065)] = mem[_9870 + 32 len ceil32(_10065)]
            if ceil32(_10065) > _10065:
                mem[_6178 + _6450 + _8546 + _10065 + 152] = 0
            revert with 0, 32, mem[_6178 + _6450 + _8546 + 120 len ceil32(_10065) + 32]
        mem[_4467 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_4467]:
                revert with 'NH{q', 50
            mem[t + _4467 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _6179 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _6451 = mem[_2134]
        mem[mem[64] + 55 len ceil32(mem[_2134])] = mem[_2134 + 32 len ceil32(mem[_2134])]
        mem[mem[64] + _6451 + 55] = ' is less then minAmountOut = '
        if ceil32(_6451) <= _6451:
            _8531 = mem[_4467]
            mem[mem[64] + _6451 + 84 len ceil32(mem[_4467])] = mem[_4467 + 32 len ceil32(mem[_4467])]
            var145001 = ceil32(_8531)
            if ceil32(_8531) <= _8531:
                _9808 = mem[64]
                mem[64] = mem[64] + _6451 + _8531 + 84
                mem[_6179 + _6451 + _8531 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6179 + _6451 + _8531 + 88] = 32
                _10034 = mem[_9808]
                mem[_6179 + _6451 + _8531 + 120] = mem[_9808]
                mem[_6179 + _6451 + _8531 + 152 len ceil32(_10034)] = mem[_9808 + 32 len ceil32(_10034)]
                if ceil32(_10034) > _10034:
                    mem[_6179 + _6451 + _8531 + _10034 + 152] = 0
                revert with 0, 32, mem[_6179 + _6451 + _8531 + 120 len ceil32(_10034) + 32]
            mem[mem[64] + _6451 + _8531 + 84] = 0
            _9872 = mem[64]
            mem[64] = _6179 + _6451 + _8531 + 84
            mem[_6179 + _6451 + _8531 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6179 + _6451 + _8531 + 88] = 32
            _10066 = mem[_9872]
            mem[_6179 + _6451 + _8531 + 120] = mem[_9872]
            mem[_6179 + _6451 + _8531 + 152 len ceil32(_10066)] = mem[_9872 + 32 len ceil32(_10066)]
            if ceil32(_10066) > _10066:
                mem[_6179 + _6451 + _8531 + _10066 + 152] = 0
            revert with 0, 32, mem[_6179 + _6451 + _8531 + 120 len ceil32(_10066) + 32]
        _8547 = mem[_4467]
        mem[mem[64] + _6451 + 84 len ceil32(mem[_4467])] = mem[_4467 + 32 len ceil32(mem[_4467])]
        var146001 = ceil32(_8547)
        if ceil32(_8547) <= _8547:
            _9810 = mem[64]
            mem[64] = mem[64] + _6451 + _8547 + 84
            mem[_6179 + _6451 + _8547 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_6179 + _6451 + _8547 + 88] = 32
            _10035 = mem[_9810]
            mem[_6179 + _6451 + _8547 + 120] = mem[_9810]
            mem[_6179 + _6451 + _8547 + 152 len ceil32(_10035)] = mem[_9810 + 32 len ceil32(_10035)]
            if ceil32(_10035) > _10035:
                mem[_6179 + _6451 + _8547 + _10035 + 152] = 0
            revert with 0, 32, mem[_6179 + _6451 + _8547 + 120 len ceil32(_10035) + 32]
        mem[mem[64] + _6451 + _8547 + 84] = 0
        _9874 = mem[64]
        mem[64] = mem[64] + _6451 + _8547 + 84
        mem[_6179 + _6451 + _8547 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_6179 + _6451 + _8547 + 88] = 32
        _10067 = mem[_9874]
        mem[_6179 + _6451 + _8547 + 120] = mem[_9874]
        mem[_6179 + _6451 + _8547 + 152 len ceil32(_10067)] = mem[_9874 + 32 len ceil32(_10067)]
        if ceil32(_10067) > _10067:
            mem[_6179 + _6451 + _8547 + _10067 + 152] = 0
        revert with 0, 32, mem[_6179 + _6451 + _8547 + 120 len ceil32(_10067) + 32]
    _2107 = mem[floor32(('cd', 68).length) + 97]
    idx = 0
    s = cd[4]
    while idx < _2107:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2132 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 68).length) + 141 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_2132))
        call address(_2132).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2238] == bool(mem[_2238])
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _2413 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2413))
        staticcall address(_2413).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2568 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2670 = mem[_2568]
        require mem[_2568] == mem[_2568]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        _2821 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2840 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _3019 = mem[(32 * idx + 1) + 128]
        _3031 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_3031]:
            revert with 'NH{q', 50
        mem[_3031 + 32] = address(_2840)
        if 1 >= mem[_3031]:
            revert with 'NH{q', 50
        mem[_3031 + 64] = address(_3019)
        mem[_3031 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_3031 + 100] = s
        mem[_3031 + 132] = 1
        mem[_3031 + 164] = 160
        mem[_3031 + 260] = mem[_3031]
        s = 0
        t = _3031 + 32
        u = _3031 + 292
        while s < mem[_3031]:
            mem[u] = mem[t + 12 len 20]
            _2107 = mem[floor32(('cd', 68).length) + 97]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_3031 + 196] = this.address
        mem[_3031 + 228] = 1922758199
        require ext_code.size(address(_2821))
        call address(_2821).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _3031 + (32 * mem[_3031]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3279 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3299 = mem[_3279]
        require mem[_3279] <= test266151307()
        require _3279 + mem[_3279] + 31 < _3279 + return_data.size
        _3371 = mem[_3279 + mem[_3279]]
        if mem[_3279 + mem[_3279]] > test266151307():
            revert with 'NH{q', 65
        if _3279 + ceil32(return_data.size) + floor32(mem[_3279 + mem[_3279]]) + 1 > test266151307() or floor32(mem[_3279 + mem[_3279]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _3279 + ceil32(return_data.size) + floor32(mem[_3279 + mem[_3279]]) + 1
        mem[_3279 + ceil32(return_data.size)] = _3371
        require _3299 + (32 * _3371) + 32 <= return_data.size
        s = 0
        t = _3279 + _3299 + 32
        u = _3279 + ceil32(return_data.size) + 32
        while s < _3371:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _2107 = mem[floor32(('cd', 68).length) + 97]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_2413))
        staticcall address(_2413).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4655 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4655] == mem[_4655]
        if mem[_4655] < _2670:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _2107 = mem[floor32(('cd', 68).length) + 97]
        idx = idx + 1
        s = mem[_4655] - _2670
        continue 
    if s >= cd[36]:
        if mem[96] < 1:
            revert with 'NH{q', 17
        if mem[96] - 1 >= mem[96]:
            revert with 'NH{q', 50
        _2202 = mem[(32 * mem[96] - 1) + 128]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = s
        require ext_code.size(address(_2202))
        call address(_2202).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[132]), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2334] == bool(mem[_2334])
    if not s:
        _2155 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2155] = 1
        mem[_2155 + 32] = '0'
        if not cd[36]:
            _2174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2174] = 1
            mem[_2174 + 32] = '0'
            _2193 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            mem[mem[64] + 55] = '0'
            var114001 = 32
            mem[mem[64] + 56] = ' is less then minAmountOut = '
            mem[mem[64] + 85] = '0'
            mem[mem[64] + 86] = 0
            _4518 = mem[64]
            mem[64] = mem[64] + 86
            mem[_2193 + 86] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2193 + 90] = 32
            _4591 = mem[_4518]
            mem[_2193 + 122] = mem[_4518]
            mem[_2193 + 154 len ceil32(_4591)] = mem[_4518 + 32 len ceil32(_4591)]
            if ceil32(_4591) > _4591:
                mem[_2193 + _4591 + 154] = 0
            revert with 0, 32, mem[_2193 + 122 len ceil32(_4591) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _3118 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_3118]:
                    revert with 'NH{q', 50
                mem[t + _3118 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _4474 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4610 = mem[_2155]
            mem[mem[64] + 55 len ceil32(mem[_2155])] = mem[_2155 + 32 len ceil32(mem[_2155])]
            var122001 = ceil32(_4610)
            mem[mem[64] + _4610 + 55] = ' is less then minAmountOut = '
            if ceil32(_4610) <= _4610:
                _6446 = mem[_3118]
                mem[mem[64] + _4610 + 84 len ceil32(mem[_3118])] = mem[_3118 + 32 len ceil32(mem[_3118])]
                if ceil32(_6446) <= _6446:
                    _8236 = mem[64]
                    mem[64] = mem[64] + _4610 + _6446 + 84
                    mem[_4474 + _4610 + _6446 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_4474 + _4610 + _6446 + 88] = 32
                    _8448 = mem[_8236]
                    mem[_4474 + _4610 + _6446 + 120] = mem[_8236]
                    mem[_4474 + _4610 + _6446 + 152 len ceil32(_8448)] = mem[_8236 + 32 len ceil32(_8448)]
                    if ceil32(_8448) > _8448:
                        mem[_4474 + _4610 + _6446 + _8448 + 152] = 0
                    revert with 0, 32, mem[_4474 + _4610 + _6446 + 120 len ceil32(_8448) + 32]
                mem[mem[64] + _4610 + _6446 + 84] = 0
                _8300 = mem[64]
                mem[64] = mem[64] + _4610 + _6446 + 84
                mem[_4474 + _4610 + _6446 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4474 + _4610 + _6446 + 88] = 32
                _8496 = mem[_8300]
                mem[_4474 + _4610 + _6446 + 120] = mem[_8300]
                mem[_4474 + _4610 + _6446 + 152 len ceil32(_8496)] = mem[_8300 + 32 len ceil32(_8496)]
                if ceil32(_8496) > _8496:
                    mem[_4474 + _4610 + _6446 + _8496 + 152] = 0
                revert with 0, 32, mem[_4474 + _4610 + _6446 + 120 len ceil32(_8496) + 32]
            _6466 = mem[_3118]
            mem[mem[64] + _4610 + 84 len ceil32(mem[_3118])] = mem[_3118 + 32 len ceil32(mem[_3118])]
            if ceil32(_6466) <= _6466:
                _8238 = mem[64]
                mem[64] = mem[64] + _4610 + _6466 + 84
                mem[_4474 + _4610 + _6466 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4474 + _4610 + _6466 + 88] = 32
                _8449 = mem[_8238]
                mem[_4474 + _4610 + _6466 + 120] = mem[_8238]
                mem[_4474 + _4610 + _6466 + 152 len ceil32(_8449)] = mem[_8238 + 32 len ceil32(_8449)]
                if ceil32(_8449) > _8449:
                    mem[_4474 + _4610 + _6466 + _8449 + 152] = 0
                revert with 0, 32, mem[_4474 + _4610 + _6466 + 120 len ceil32(_8449) + 32]
            mem[mem[64] + _4610 + _6466 + 84] = 0
            _8302 = mem[64]
            mem[64] = mem[64] + _4610 + _6466 + 84
            mem[_4474 + _4610 + _6466 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4474 + _4610 + _6466 + 88] = 32
            _8497 = mem[_8302]
            mem[_4474 + _4610 + _6466 + 120] = mem[_8302]
            mem[_4474 + _4610 + _6466 + 152 len ceil32(_8497)] = mem[_8302 + 32 len ceil32(_8497)]
            if ceil32(_8497) > _8497:
                mem[_4474 + _4610 + _6466 + _8497 + 152] = 0
            revert with 0, 32, mem[_4474 + _4610 + _6466 + 120 len ceil32(_8497) + 32]
        mem[_3118 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_3118]:
                revert with 'NH{q', 50
            mem[t + _3118 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _4475 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _4611 = mem[_2155]
        mem[mem[64] + 55 len ceil32(mem[_2155])] = mem[_2155 + 32 len ceil32(mem[_2155])]
        var123001 = ceil32(_4611)
        mem[mem[64] + _4611 + 55] = ' is less then minAmountOut = '
        if ceil32(_4611) <= _4611:
            _6447 = mem[_3118]
            mem[_4475 + _4611 + 84 len ceil32(mem[_3118])] = mem[_3118 + 32 len ceil32(mem[_3118])]
            if ceil32(_6447) <= _6447:
                _8240 = mem[64]
                mem[64] = _4475 + _4611 + _6447 + 84
                mem[_4475 + _4611 + _6447 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4475 + _4611 + _6447 + 88] = 32
                _8450 = mem[_8240]
                mem[_4475 + _4611 + _6447 + 120] = mem[_8240]
                mem[_4475 + _4611 + _6447 + 152 len ceil32(_8450)] = mem[_8240 + 32 len ceil32(_8450)]
                if ceil32(_8450) > _8450:
                    mem[_4475 + _4611 + _6447 + _8450 + 152] = 0
                revert with 0, 32, mem[_4475 + _4611 + _6447 + 120 len ceil32(_8450) + 32]
            mem[_4475 + _4611 + _6447 + 84] = 0
            _8304 = mem[64]
            mem[64] = _4475 + _4611 + _6447 + 84
            mem[_4475 + _4611 + _6447 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4475 + _4611 + _6447 + 88] = 32
            _8498 = mem[_8304]
            mem[_4475 + _4611 + _6447 + 120] = mem[_8304]
            mem[_4475 + _4611 + _6447 + 152 len ceil32(_8498)] = mem[_8304 + 32 len ceil32(_8498)]
            if ceil32(_8498) > _8498:
                mem[_4475 + _4611 + _6447 + _8498 + 152] = 0
            revert with 0, 32, mem[_4475 + _4611 + _6447 + 120 len ceil32(_8498) + 32]
        _6467 = mem[_3118]
        mem[_4475 + _4611 + 84 len ceil32(mem[_3118])] = mem[_3118 + 32 len ceil32(mem[_3118])]
        if ceil32(_6467) <= _6467:
            _8242 = mem[64]
            mem[64] = _4475 + _4611 + _6467 + 84
            mem[_4475 + _4611 + _6467 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4475 + _4611 + _6467 + 88] = 32
            _8451 = mem[_8242]
            mem[_4475 + _4611 + _6467 + 120] = mem[_8242]
            mem[_4475 + _4611 + _6467 + 152 len ceil32(_8451)] = mem[_8242 + 32 len ceil32(_8451)]
            if ceil32(_8451) > _8451:
                mem[_4475 + _4611 + _6467 + _8451 + 152] = 0
            revert with 0, 32, mem[_4475 + _4611 + _6467 + 120 len ceil32(_8451) + 32]
        mem[_4475 + _4611 + _6467 + 84] = 0
        _8306 = mem[64]
        mem[64] = _4475 + _4611 + _6467 + 84
        mem[_4475 + _4611 + _6467 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4475 + _4611 + _6467 + 88] = 32
        _8499 = mem[_8306]
        mem[_4475 + _4611 + _6467 + 120] = mem[_8306]
        mem[_4475 + _4611 + _6467 + 152 len ceil32(_8499)] = mem[_8306 + 32 len ceil32(_8499)]
        if ceil32(_8499) > _8499:
            mem[_4475 + _4611 + _6467 + _8499 + 152] = 0
        revert with 0, 32, mem[_4475 + _4611 + _6467 + 120 len ceil32(_8499) + 32]
    t = 0
    idx = s
    while idx:
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        idx = idx / 10
        continue 
    if t > test266151307():
        revert with 'NH{q', 65
    _3117 = mem[64]
    mem[mem[64]] = t
    mem[64] = mem[64] + ceil32(t) + 32
    if not t:
        u = t
        idx = s
        while idx:
            if u < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if u - 1 >= mem[_3117]:
                revert with 'NH{q', 50
            mem[u + _3117 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        if not cd[36]:
            _4497 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4497] = 1
            mem[_4497 + 32] = '0'
            _4544 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _4668 = mem[_3117]
            mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
            var122001 = ceil32(_4668)
            mem[mem[64] + _4668 + 55] = ' is less then minAmountOut = '
            mem[_4544 + _4668 + 84] = '0'
            mem[_4544 + _4668 + 85] = 0
            if ceil32(_4668) <= _4668:
                _8292 = mem[64]
                mem[64] = _4544 + _4668 + 85
                mem[_4544 + _4668 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_4544 + _4668 + 89] = 32
                _8492 = mem[_8292]
                mem[_4544 + _4668 + 121] = mem[_8292]
                mem[_4544 + _4668 + 153 len ceil32(_8492)] = mem[_8292 + 32 len ceil32(_8492)]
                if ceil32(_8492) > _8492:
                    mem[_4544 + _4668 + _8492 + 153] = 0
                revert with 0, 32, mem[_4544 + _4668 + 121 len ceil32(_8492) + 32]
            _8294 = mem[64]
            mem[64] = _4544 + _4668 + 85
            mem[_4544 + _4668 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4544 + _4668 + 89] = 32
            _8493 = mem[_8294]
            mem[_4544 + _4668 + 121] = mem[_8294]
            mem[_4544 + _4668 + 153 len ceil32(_8493)] = mem[_8294 + 32 len ceil32(_8493)]
            if ceil32(_8493) > _8493:
                mem[_4544 + _4668 + _8493 + 153] = 0
            revert with 0, 32, mem[_4544 + _4668 + 121 len ceil32(_8493) + 32]
        s = 0
        idx = cd[36]
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _6162 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = cd[36]
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[_6162]:
                    revert with 'NH{q', 50
                mem[t + _6162 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _8176 = mem[64]
            mem[mem[64] + 32] = 'Last token amountOut = '
            _8524 = mem[_3117]
            mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
            mem[mem[64] + _8524 + 55] = ' is less then minAmountOut = '
            if ceil32(_8524) <= _8524:
                _10080 = mem[_6162]
                mem[_8176 + _8524 + 84 len ceil32(mem[_6162])] = mem[_6162 + 32 len ceil32(mem[_6162])]
                if ceil32(_10080) <= _10080:
                    _10852 = mem[64]
                    mem[64] = _8176 + _8524 + _10080 + 84
                    mem[_8176 + _8524 + _10080 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8176 + _8524 + _10080 + 88] = 32
                    _11068 = mem[_10852]
                    mem[_8176 + _8524 + _10080 + 120] = mem[_10852]
                    mem[_8176 + _8524 + _10080 + 152 len ceil32(_11068)] = mem[_10852 + 32 len ceil32(_11068)]
                    if ceil32(_11068) > _11068:
                        mem[_8176 + _8524 + _10080 + _11068 + 152] = 0
                    revert with 0, 32, mem[_8176 + _8524 + _10080 + 120 len ceil32(_11068) + 32]
                mem[_8176 + _8524 + _10080 + 84] = 0
                _10916 = mem[64]
                mem[64] = _8176 + _8524 + _10080 + 84
                mem[_8176 + _8524 + _10080 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8176 + _8524 + _10080 + 88] = 32
                _11116 = mem[_10916]
                mem[_8176 + _8524 + _10080 + 120] = mem[_10916]
                mem[_8176 + _8524 + _10080 + 152 len ceil32(_11116)] = mem[_10916 + 32 len ceil32(_11116)]
                if ceil32(_11116) > _11116:
                    mem[_8176 + _8524 + _10080 + _11116 + 152] = 0
                revert with 0, 32, mem[_8176 + _8524 + _10080 + 120 len ceil32(_11116) + 32]
            _10096 = mem[_6162]
            mem[_8176 + _8524 + 84 len ceil32(mem[_6162])] = mem[_6162 + 32 len ceil32(mem[_6162])]
            if ceil32(_10096) <= _10096:
                _10854 = mem[64]
                mem[64] = _8176 + _8524 + _10096 + 84
                mem[_8176 + _8524 + _10096 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8176 + _8524 + _10096 + 88] = 32
                _11069 = mem[_10854]
                mem[_8176 + _8524 + _10096 + 120] = mem[_10854]
                mem[_8176 + _8524 + _10096 + 152 len ceil32(_11069)] = mem[_10854 + 32 len ceil32(_11069)]
                if ceil32(_11069) > _11069:
                    mem[_8176 + _8524 + _10096 + _11069 + 152] = 0
                revert with 0, 32, mem[_8176 + _8524 + _10096 + 120 len ceil32(_11069) + 32]
            mem[_8176 + _8524 + _10096 + 84] = 0
            _10918 = mem[64]
            mem[64] = _8176 + _8524 + _10096 + 84
            mem[_8176 + _8524 + _10096 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8176 + _8524 + _10096 + 88] = 32
            _11117 = mem[_10918]
            mem[_8176 + _8524 + _10096 + 120] = mem[_10918]
            mem[_8176 + _8524 + _10096 + 152 len ceil32(_11117)] = mem[_10918 + 32 len ceil32(_11117)]
            if ceil32(_11117) > _11117:
                mem[_8176 + _8524 + _10096 + _11117 + 152] = 0
            revert with 0, 32, mem[_8176 + _8524 + _10096 + 120 len ceil32(_11117) + 32]
        mem[_6162 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_6162]:
                revert with 'NH{q', 50
            mem[t + _6162 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _8177 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _8525 = mem[_3117]
        mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
        mem[mem[64] + _8525 + 55] = ' is less then minAmountOut = '
        if ceil32(_8525) <= _8525:
            _10081 = mem[_6162]
            mem[mem[64] + _8525 + 84 len ceil32(mem[_6162])] = mem[_6162 + 32 len ceil32(mem[_6162])]
            if ceil32(_10081) <= _10081:
                _10856 = mem[64]
                mem[64] = mem[64] + _8525 + _10081 + 84
                mem[_8177 + _8525 + _10081 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8177 + _8525 + _10081 + 88] = 32
                _11070 = mem[_10856]
                mem[_8177 + _8525 + _10081 + 120] = mem[_10856]
                mem[_8177 + _8525 + _10081 + 152 len ceil32(_11070)] = mem[_10856 + 32 len ceil32(_11070)]
                if ceil32(_11070) > _11070:
                    mem[_8177 + _8525 + _10081 + _11070 + 152] = 0
                revert with 0, 32, mem[_8177 + _8525 + _10081 + 120 len ceil32(_11070) + 32]
            mem[mem[64] + _8525 + _10081 + 84] = 0
            _10920 = mem[64]
            mem[64] = mem[64] + _8525 + _10081 + 84
            mem[_8177 + _8525 + _10081 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8177 + _8525 + _10081 + 88] = 32
            _11118 = mem[_10920]
            mem[_8177 + _8525 + _10081 + 120] = mem[_10920]
            mem[_8177 + _8525 + _10081 + 152 len ceil32(_11118)] = mem[_10920 + 32 len ceil32(_11118)]
            if ceil32(_11118) > _11118:
                mem[_8177 + _8525 + _10081 + _11118 + 152] = 0
            revert with 0, 32, mem[_8177 + _8525 + _10081 + 120 len ceil32(_11118) + 32]
        _10097 = mem[_6162]
        mem[mem[64] + _8525 + 84 len ceil32(mem[_6162])] = mem[_6162 + 32 len ceil32(mem[_6162])]
        if ceil32(_10097) <= _10097:
            _10858 = mem[64]
            mem[64] = mem[64] + _8525 + _10097 + 84
            mem[_8177 + _8525 + _10097 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8177 + _8525 + _10097 + 88] = 32
            _11071 = mem[_10858]
            mem[_8177 + _8525 + _10097 + 120] = mem[_10858]
            mem[_8177 + _8525 + _10097 + 152 len ceil32(_11071)] = mem[_10858 + 32 len ceil32(_11071)]
            if ceil32(_11071) > _11071:
                mem[_8177 + _8525 + _10097 + _11071 + 152] = 0
            revert with 0, 32, mem[_8177 + _8525 + _10097 + 120 len ceil32(_11071) + 32]
        mem[mem[64] + _8525 + _10097 + 84] = 0
        _10922 = mem[64]
        mem[64] = _8177 + _8525 + _10097 + 84
        mem[_8177 + _8525 + _10097 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8177 + _8525 + _10097 + 88] = 32
        _11119 = mem[_10922]
        mem[_8177 + _8525 + _10097 + 120] = mem[_10922]
        mem[_8177 + _8525 + _10097 + 152 len ceil32(_11119)] = mem[_10922 + 32 len ceil32(_11119)]
        if ceil32(_11119) > _11119:
            mem[_8177 + _8525 + _10097 + _11119 + 152] = 0
        revert with 0, 32, mem[_8177 + _8525 + _10097 + 120 len ceil32(_11119) + 32]
    mem[_3117 + 32 len t] = call.data[calldata.size len t]
    u = t
    idx = s
    while idx:
        if u < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if u - 1 >= mem[_3117]:
            revert with 'NH{q', 50
        mem[u + _3117 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        u = u - 1
        idx = idx / 10
        continue 
    if not cd[36]:
        _4498 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4498] = 1
        mem[_4498 + 32] = '0'
        _4545 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _4669 = mem[_3117]
        mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
        var123001 = ceil32(_4669)
        mem[mem[64] + _4669 + 55] = ' is less then minAmountOut = '
        mem[_4545 + _4669 + 84] = '0'
        mem[_4545 + _4669 + 85] = 0
        if ceil32(_4669) <= _4669:
            _8296 = mem[64]
            mem[64] = _4545 + _4669 + 85
            mem[_4545 + _4669 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_4545 + _4669 + 89] = 32
            _8494 = mem[_8296]
            mem[_4545 + _4669 + 121] = mem[_8296]
            mem[_4545 + _4669 + 153 len ceil32(_8494)] = mem[_8296 + 32 len ceil32(_8494)]
            if ceil32(_8494) > _8494:
                mem[_4545 + _4669 + _8494 + 153] = 0
            revert with 0, 32, mem[_4545 + _4669 + 121 len ceil32(_8494) + 32]
        _8298 = mem[64]
        mem[64] = _4545 + _4669 + 85
        mem[_4545 + _4669 + 85] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_4545 + _4669 + 89] = 32
        _8495 = mem[_8298]
        mem[_4545 + _4669 + 121] = mem[_8298]
        mem[_4545 + _4669 + 153 len ceil32(_8495)] = mem[_8298 + 32 len ceil32(_8495)]
        if ceil32(_8495) > _8495:
            mem[_4545 + _4669 + _8495 + 153] = 0
        revert with 0, 32, mem[_4545 + _4669 + 121 len ceil32(_8495) + 32]
    s = 0
    idx = cd[36]
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _6163 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = cd[36]
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[_6163]:
                revert with 'NH{q', 50
            mem[t + _6163 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _8178 = mem[64]
        mem[mem[64] + 32] = 'Last token amountOut = '
        _8526 = mem[_3117]
        mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
        mem[mem[64] + _8526 + 55] = ' is less then minAmountOut = '
        if ceil32(_8526) <= _8526:
            _10082 = mem[_6163]
            mem[_8178 + _8526 + 84 len ceil32(mem[_6163])] = mem[_6163 + 32 len ceil32(mem[_6163])]
            if ceil32(_10082) <= _10082:
                _10860 = mem[64]
                mem[64] = _8178 + _8526 + _10082 + 84
                mem[_8178 + _8526 + _10082 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8178 + _8526 + _10082 + 88] = 32
                _11072 = mem[_10860]
                mem[_8178 + _8526 + _10082 + 120] = mem[_10860]
                mem[_8178 + _8526 + _10082 + 152 len ceil32(_11072)] = mem[_10860 + 32 len ceil32(_11072)]
                if ceil32(_11072) > _11072:
                    mem[_8178 + _8526 + _10082 + _11072 + 152] = 0
                revert with 0, 32, mem[_8178 + _8526 + _10082 + 120 len ceil32(_11072) + 32]
            mem[_8178 + _8526 + _10082 + 84] = 0
            _10924 = mem[64]
            mem[64] = _8178 + _8526 + _10082 + 84
            mem[_8178 + _8526 + _10082 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8178 + _8526 + _10082 + 88] = 32
            _11120 = mem[_10924]
            mem[_8178 + _8526 + _10082 + 120] = mem[_10924]
            mem[_8178 + _8526 + _10082 + 152 len ceil32(_11120)] = mem[_10924 + 32 len ceil32(_11120)]
            if ceil32(_11120) > _11120:
                mem[_8178 + _8526 + _10082 + _11120 + 152] = 0
            revert with 0, 32, mem[_8178 + _8526 + _10082 + 120 len ceil32(_11120) + 32]
        _10098 = mem[_6163]
        mem[_8178 + _8526 + 84 len ceil32(mem[_6163])] = mem[_6163 + 32 len ceil32(mem[_6163])]
        if ceil32(_10098) <= _10098:
            _10862 = mem[64]
            mem[64] = _8178 + _8526 + _10098 + 84
            mem[_8178 + _8526 + _10098 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8178 + _8526 + _10098 + 88] = 32
            _11073 = mem[_10862]
            mem[_8178 + _8526 + _10098 + 120] = mem[_10862]
            mem[_8178 + _8526 + _10098 + 152 len ceil32(_11073)] = mem[_10862 + 32 len ceil32(_11073)]
            if ceil32(_11073) > _11073:
                mem[_8178 + _8526 + _10098 + _11073 + 152] = 0
            revert with 0, 32, mem[_8178 + _8526 + _10098 + 120 len ceil32(_11073) + 32]
        mem[_8178 + _8526 + _10098 + 84] = 0
        _10926 = mem[64]
        mem[64] = _8178 + _8526 + _10098 + 84
        mem[_8178 + _8526 + _10098 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8178 + _8526 + _10098 + 88] = 32
        _11121 = mem[_10926]
        mem[_8178 + _8526 + _10098 + 120] = mem[_10926]
        mem[_8178 + _8526 + _10098 + 152 len ceil32(_11121)] = mem[_10926 + 32 len ceil32(_11121)]
        if ceil32(_11121) > _11121:
            mem[_8178 + _8526 + _10098 + _11121 + 152] = 0
        revert with 0, 32, mem[_8178 + _8526 + _10098 + 120 len ceil32(_11121) + 32]
    mem[_6163 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = cd[36]
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[_6163]:
            revert with 'NH{q', 50
        mem[t + _6163 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _8179 = mem[64]
    mem[mem[64] + 32] = 'Last token amountOut = '
    _8527 = mem[_3117]
    mem[mem[64] + 55 len ceil32(mem[_3117])] = mem[_3117 + 32 len ceil32(mem[_3117])]
    mem[mem[64] + _8527 + 55] = ' is less then minAmountOut = '
    if ceil32(_8527) <= _8527:
        _10083 = mem[_6163]
        mem[_8179 + _8527 + 84 len ceil32(mem[_6163])] = mem[_6163 + 32 len ceil32(mem[_6163])]
        if ceil32(_10083) <= _10083:
            _10864 = mem[64]
            mem[64] = _8179 + _8527 + _10083 + 84
            mem[_8179 + _8527 + _10083 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_8179 + _8527 + _10083 + 88] = 32
            _11074 = mem[_10864]
            mem[_8179 + _8527 + _10083 + 120] = mem[_10864]
            mem[_8179 + _8527 + _10083 + 152 len ceil32(_11074)] = mem[_10864 + 32 len ceil32(_11074)]
            if ceil32(_11074) > _11074:
                mem[_8179 + _8527 + _10083 + _11074 + 152] = 0
            revert with 0, 32, mem[_8179 + _8527 + _10083 + 120 len ceil32(_11074) + 32]
        mem[_8179 + _8527 + _10083 + 84] = 0
        _10928 = mem[64]
        mem[64] = _8179 + _8527 + _10083 + 84
        mem[_8179 + _8527 + _10083 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8179 + _8527 + _10083 + 88] = 32
        _11122 = mem[_10928]
        mem[_8179 + _8527 + _10083 + 120] = mem[_10928]
        mem[_8179 + _8527 + _10083 + 152 len ceil32(_11122)] = mem[_10928 + 32 len ceil32(_11122)]
        if ceil32(_11122) > _11122:
            mem[_8179 + _8527 + _10083 + _11122 + 152] = 0
        revert with 0, 32, mem[_8179 + _8527 + _10083 + 120 len ceil32(_11122) + 32]
    _10099 = mem[_6163]
    mem[_8179 + _8527 + 84 len ceil32(mem[_6163])] = mem[_6163 + 32 len ceil32(mem[_6163])]
    if ceil32(_10099) <= _10099:
        _10866 = mem[64]
        mem[64] = _8179 + _8527 + _10099 + 84
        mem[_8179 + _8527 + _10099 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_8179 + _8527 + _10099 + 88] = 32
        _11075 = mem[_10866]
        mem[_8179 + _8527 + _10099 + 120] = mem[_10866]
        mem[_8179 + _8527 + _10099 + 152 len ceil32(_11075)] = mem[_10866 + 32 len ceil32(_11075)]
        if ceil32(_11075) > _11075:
            mem[_8179 + _8527 + _10099 + _11075 + 152] = 0
        revert with 0, 32, mem[_8179 + _8527 + _10099 + 120 len ceil32(_11075) + 32]
    mem[_8179 + _8527 + _10099 + 84] = 0
    _10930 = mem[64]
    mem[64] = _8179 + _8527 + _10099 + 84
    mem[_8179 + _8527 + _10099 + 84] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_8179 + _8527 + _10099 + 88] = 32
    _11123 = mem[_10930]
    mem[_8179 + _8527 + _10099 + 120] = mem[_10930]
    mem[_8179 + _8527 + _10099 + 152 len ceil32(_11123)] = mem[_10930 + 32 len ceil32(_11123)]
    if ceil32(_11123) > _11123:
        mem[_8179 + _8527 + _10099 + _11123 + 152] = 0
    revert with 0, 32, mem[_8179 + _8527 + _10099 + 120 len ceil32(_11123) + 32]
}



}
