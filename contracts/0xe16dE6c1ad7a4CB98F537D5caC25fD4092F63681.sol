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



}
