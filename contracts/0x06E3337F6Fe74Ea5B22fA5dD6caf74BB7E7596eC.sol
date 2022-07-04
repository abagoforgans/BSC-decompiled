contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ec91a7b3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
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
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'invalid params'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'invalid params'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _249 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _253 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        _254 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = address(_253)
        mem[mem[64] + 100] = _249
        _255 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_255 + 32] = mem[_255 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _254 + 196
        mem[_254 + 132] = 30
        mem[_254 + 164] = 'Address: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(stor1) <= 0:
            revert with 0, 'Address: call to non-contract'
        _261 = mem[_255]
        s = 0
        while s < _261:
            mem[_254 + s + 196] = mem[_255 + s + 32]
            s = s + 32
            continue 
        if ceil32(_261) > _261:
            mem[_254 + _261 + 196] = 0
        call stor1.mem[_254 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_254 + 200 len _261 - 4]
        if not return_data.size:
            if ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_254 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_254 + 200] = 32
            idx = 0
            while idx < 30:
                mem[_254 + idx + 264] = mem[_254 + idx + 164]
                idx = idx + 32
                continue 
            revert with 0, 32, 30, mem[_254 + 264 len 30], 0
        mem[64] = _254 + ceil32(return_data.size) + 197
        mem[_254 + 196] = return_data.size
        mem[_254 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_254 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_254 + ceil32(return_data.size) + 201] = 32
        idx = 0
        while idx < 30:
            mem[_254 + ceil32(return_data.size) + idx + 265] = mem[_254 + idx + 164]
            idx = idx + 32
            continue 
        revert with 0, 32, 30, mem[_254 + ceil32(return_data.size) + 265 len 30], 0
}



}
