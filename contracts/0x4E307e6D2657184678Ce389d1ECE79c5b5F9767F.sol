contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 num;

function num() {
    return num
}

function _fallback() payable {
    revert
}

function setNum(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor1 == msg.sender
    num = arg1
}

function setAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor1 == msg.sender
    stor0 = arg1
}

function balanceTransfer() {
    require stor1 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b4579502(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor1 == msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a1eaf51(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _210 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _212 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        _213 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_210)
        mem[mem[64] + 100] = _212
        _214 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_214 + 32] = mem[_214 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _213 + 196
        mem[_213 + 132] = 32
        mem[_213 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[4])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _220 = mem[_214]
        s = 0
        while s < _220:
            mem[_213 + s + 196] = mem[_214 + s + 32]
            s = s + 32
            continue 
        if ceil32(_220) > _220:
            mem[_213 + _220 + 196] = 0
        call address(cd[4]).mem[_213 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_213 + 200 len _220 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_213 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_213 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_213 + idx + 264] = mem[_213 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_213 + 264]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _213 + ceil32(return_data.size) + 197
            mem[_213 + 196] = return_data.size
            mem[_213 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_213 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_213 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_213 + ceil32(return_data.size) + idx + 265] = mem[_213 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_213 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_213 + 228] == bool(mem[_213 + 228])
                if not mem[_213 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
