contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


address owner;
uint32 stor1;
address receiverAddress;
uint256 stor1;
uint256 sub_9e7d207d;

function receiverAddress() {
    return address(receiverAddress)
}

function owner() {
    return owner
}

function sub_9e7d207d(?) {
    return sub_9e7d207d
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e7d207d = arg1
}

function setReceiverAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    address(receiverAddress) = arg1
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

function getTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        call address(receiverAddress) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(address(receiverAddress), eth.balance(this.address));
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 132] = address(receiverAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit WithdrawnToken(address(arg1), address(receiverAddress), ext_call.return_data[0]);
}

function sub_289f47c4(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.value < sub_9e7d207d:
        revert with 0, 'No Fees'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid data'
    if msg.value < sub_9e7d207d:
        revert with 'NH{q', 17
    call address(receiverAddress) with:
       value sub_9e7d207d wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = address(receiverAddress)
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_9e7d207d
    emit Withdrawn(address(receiverAddress), sub_9e7d207d);
    idx = 0
    s = msg.value - sub_9e7d207d
    t = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s < mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 'Not enough fund to process the request'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s < mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 'NH{q', 17
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if t > -mem[(32 * idx) + floor32(('cd', 4).length) + 129] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s - mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        t = t + mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        continue 
    emit Transfer(('cd', 4).length, t * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length, msg.sender);
}

function distributeToken(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + 98
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.value < sub_9e7d207d:
        revert with 0, 'No Fees'
    if arg2.length != arg3.length:
        revert with 0, 'Invalid data'
    call address(receiverAddress) with:
       value sub_9e7d207d wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = address(receiverAddress)
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = sub_9e7d207d
    emit Withdrawn(address(receiverAddress), sub_9e7d207d);
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _299 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg2.length) + 97]:
            revert with 'NH{q', 50
        _301 = mem[(32 * idx) + floor32(arg2.length) + 129]
        _302 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_299)
        mem[mem[64] + 100] = _301
        _304 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_304 + 32] = mem[_304 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _302 + 196
        mem[_302 + 132] = 32
        mem[_302 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        _310 = mem[_304]
        t = 0
        while t < _310:
            mem[_302 + t + 196] = mem[_304 + t + 32]
            t = t + 32
            continue 
        if ceil32(_310) > _310:
            mem[_302 + _310 + 196] = 0
        call arg1.mem[_302 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_302 + 200 len _310 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_302 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_302 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_302 + idx + 264] = mem[_302 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_302 + 264]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _302 + ceil32(return_data.size) + 197
            mem[_302 + 196] = return_data.size
            mem[_302 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_302 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_302 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_302 + ceil32(return_data.size) + idx + 265] = mem[_302 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_302 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_302 + 228] == bool(mem[_302 + 228])
                if not mem[_302 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx >= mem[floor32(arg2.length) + 97]:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + floor32(arg2.length) + 129]
        continue 
    mem[mem[64]] = mem[96]
    emit 0x59158d23: mem[mem[64]], s, arg1, msg.sender
}



}
