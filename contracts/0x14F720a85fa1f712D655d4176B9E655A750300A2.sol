contract main {




// =====================  Runtime code  =====================


#
#  - king()
#
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
                _72 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _92 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _94 = sha3(mem[_92 + 32 len mem[_92]])
                mem[_72 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_72 + 105] = stor5
                mem[_72 + 125] = _94
                mem[_72 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_72 + 72] = 85
                mem[64] = _72 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _94, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            else:
                _73 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _96 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _98 = sha3(mem[_96 + 32 len mem[_96]])
                mem[_73 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_73 + 105] = stor5
                mem[_73 + 125] = _98
                mem[_73 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_73 + 72] = 85
                mem[64] = _73 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _98, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor7.length = mem[96]
        mem[0] = 7
        if not mem[96]:
            idx = 0
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor9 = 0
            stor10 = arg4
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = -1
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_132] == bool(mem[_132])
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
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = -1
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_146] == bool(mem[_146])
    else:
        mem[128 len 32 * stor6.length] = call.data[calldata.size len 32 * stor6.length]
        idx = 0
        while idx < stor6.length:
            mem[0] = 6
            if stor6[idx] < address(arg1):
                _74 = mem[64]
                mem[mem[64] + 32] = stor6[idx]
                mem[mem[64] + 52] = address(arg1)
                _100 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _102 = sha3(mem[_100 + 32 len mem[_100]])
                mem[_74 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_74 + 105] = stor5
                mem[_74 + 125] = _102
                mem[_74 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_74 + 72] = 85
                mem[64] = _74 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _102, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            else:
                _75 = mem[64]
                mem[mem[64] + 32] = address(arg1)
                mem[mem[64] + 52] = stor6[idx]
                _104 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _106 = sha3(mem[_104 + 32 len mem[_104]])
                mem[_75 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_75 + 105] = stor5
                mem[_75 + 125] = _106
                mem[_75 + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5
                mem[_75 + 72] = 85
                mem[64] = _75 + 189
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(sha3(0, stor5, _106, 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor7.length = mem[96]
        mem[0] = 7
        if not mem[96]:
            idx = 0
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor9 = 0
            stor10 = arg4
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = -1
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_133] == bool(mem[_133])
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
            mem[mem[64] + 4] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[mem[64] + 36] = -1
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == bool(mem[_147])
}



}
