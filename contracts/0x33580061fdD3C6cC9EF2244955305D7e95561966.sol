contract main {




// =====================  Runtime code  =====================


#
#  - release(address arg1, address arg2)
#
address owner;
uint256 totalShares;
uint256 totalReleased;
uint8 stor3;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function paused() {
    return bool(stor3)
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= payee.length:
        revert with 'NH{q', 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function _fallback() payable {
    revert
}

function togglePaused() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3:
        stor3 = 0
    else:
        stor3 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shares[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if stor3:
        revert with 0, 'Contract is frozen'
    if shares[address(arg1)] < released[address(arg1)]:
        revert with 'NH{q', 17
    if not shares[address(arg1)] - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > -shares[address(arg1)] + released[address(arg1)] - 1:
        revert with 'NH{q', 17
    released[address(arg1)] = shares[address(arg1)]
    if totalReleased > -shares[address(arg1)] + released[address(arg1)] - 1:
        revert with 'NH{q', 17
    totalReleased = totalReleased + shares[address(arg1)] - released[address(arg1)]
    if eth.balance(this.address) < shares[address(arg1)] - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value shares[address(arg1)] - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), shares[address(arg1)] - released[address(arg1)]);
}

function sub_b5398b0e(?) {
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'PaymentSplitter: account is the zero address'
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
            revert with 0, 'PaymentSplitter: shares are not negative '
        if not shares[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'PaymentSplitter: account must have shares'
        if shares[address(mem[(32 * idx) + 128])] < mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 'NH{q', 17
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        shares[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if totalShares < mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 'NH{q', 17
        totalShares -= mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = mem[(32 * idx) + 140 len 20]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = _62
        emit PayeeAdded(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98], _62);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fec8900f(?) {
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _77 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'PaymentSplitter: account is the zero address'
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] <= 0:
            revert with 0, 'PaymentSplitter: shares are 0'
        if shares[mem[(32 * idx) + 140 len 20]]:
            if shares[address(mem[(32 * idx) + 128])] > -mem[(32 * idx) + floor32(('cd', 4).length) + 129] - 1:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            shares[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        else:
            if shares[address(mem[(32 * idx) + 128])]:
                revert with 0, 'PaymentSplitter: account already has shares'
            payee.length++
            payee[payee.length] = mem[(32 * idx) + 140 len 20]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if totalShares > -mem[(32 * idx) + floor32(('cd', 4).length) + 129] - 1:
            revert with 'NH{q', 17
        totalShares += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = mem[(32 * idx) + 140 len 20]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = _77
        emit PayeeAdded(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98], _77);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
