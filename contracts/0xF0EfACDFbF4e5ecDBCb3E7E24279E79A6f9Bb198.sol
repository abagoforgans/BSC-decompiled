contract main {




// =====================  Runtime code  =====================


#
#  - buyPack(uint256 arg1, uint256 arg2)
#
address owner;
array of struct packs;
address feeRecipientAddress;
address sub_6064fcc8Address;

function feeRecipient() {
    return feeRecipientAddress
}

function sub_6064fcc8(?) {
    return sub_6064fcc8Address
}

function owner() {
    return owner
}

function packs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < packs.length
    if packs[arg1].field_512 >= 2:
        revert with 0, 33
    return packs[arg1].field_0, packs[arg1].field_512, packs[arg1].field_512, packs[arg1].field_768, bool(packs[arg1].field_1024)
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

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeRecipientAddress = arg1
}

function setPackPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= packs.length:
        revert with 0, 50
    packs[arg1].field_768 = arg2
}

function sub_88fdfb26(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= packs.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ElvantisLandPresale: Invalid Pack Id'
    packs[arg1].field_1024 = uint8(bool(arg2))
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

function sub_d5e6b49c(?) {
    require calldata.size - 4 >= 32
    if arg1 >= packs.length:
        revert with 0, 50
    if packs[arg1].field_256:
        mem[512] = stor[sha3(('name', 'packs', 1) + (5 * arg1) + 1)].field_0
        idx = 512
        s = 0
        while (32 * packs[arg1].field_256) + 480 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'packs', 1) + (5 * arg1) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if packs[arg1].field_512 > 1:
        revert with 0, 33
    if packs[arg1].field_512 >= 2:
        revert with 0, 33
    return 32, packs[arg1].field_0, 
           192,
           packs[arg1].field_512,
           packs[arg1].field_512,
           packs[arg1].field_768,
           bool(packs[arg1].field_1024),
           packs[arg1].field_256,
           mem[512 len 32 * packs[arg1].field_256]
}

function sub_90838eb0(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 0, 65
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == uint8(cd[68])
    require cd[100] == address(cd[100])
    require cd[164] == bool(cd[164])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[132] <= 0:
        revert with 0, 'ElvantisLandPresale: Invalid Price!'
    if ('cd', 36).length <= 0:
        revert with 0, 'ElvantisLandPresale: Items must not be empty'
    packs.length++
    if packs.length + 1 < 1:
        revert with 0, 17
    if packs.length >= packs.length:
        revert with 0, 50
    mem[0] = 1
    packs[packs.length].field_768 = cd[132]
    packs[packs.length].field_1024 = uint8(bool(cd[164]))
    packs[packs.length].field_520 = address(cd[100])
    packs[packs.length].field_0 = address(cd[4])
    if uint8(cd[68]) > 1:
        revert with 0, 33
    packs[packs.length].field_512 = uint8(cd[68])
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        packs[packs.length].field_256++
        mem[0] = (5 * packs.length) + sha3(1) + 1
        stor[sha3((5 * packs.length) + ('name', 'packs', 1) + 1) + packs[packs.length].field_256].field_0 = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    s = 0
    s = 128
    t = mem[64]
    while ('cd', 36).length < ('cd', 36).length:
        mem[t] = mem[s]
        s = ('cd', 36).length + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xf00e460f: cd[132], bool(cd[164]), sha3(mem[mem[64] len t - mem[64]])
}

function sub_9859ad0e(?) {
    mem[64] = (32 * packs.length) + 128
    mem[96] = packs.length
    s = 128
    idx = 0
    while idx < packs.length:
        mem[0] = 1
        _19 = mem[64]
        mem[64] = mem[64] + 192
        mem[_19] = packs[idx].field_0
        _20 = mem[64]
        mem[64] = mem[64] + (32 * packs[idx].field_256) + 32
        mem[_20] = packs[idx].field_256
        if not packs[idx].field_256:
            mem[_19 + 32] = _20
            if packs[idx].field_512 > 1:
                revert with 0, 33
            mem[_19 + 64] = packs[idx].field_512
            mem[_19 + 96] = packs[idx].field_520
            mem[_19 + 128] = packs[idx].field_768
            mem[_19 + 160] = bool(packs[idx].field_1024)
            mem[s] = _19
            s = s + 32
            idx = idx + 1
            continue 
        mem[0] = sha3(1) + (5 * idx) + 1
        mem[_20 + 32] = stor[sha3(('name', 'packs', 1) + (5 * idx) + 1)].field_0
        t = _20 + 32
        u = sha3(mem[0])
        while _20 + (32 * packs[u].field_256) > t:
            mem[t + 32] = packs[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[_19 + 32] = _20
        if packs[u].field_512 > 1:
            revert with 0, 33
        mem[_19 + 64] = packs[u].field_512
        mem[_19 + 96] = packs[u].field_520
        mem[_19 + 128] = packs[u].field_768
        mem[_19 + 160] = bool(packs[u].field_1024)
        mem[t] = _19
        t = t + 32
        u = u + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _23 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _23:
        mem[t] = u + -_21 - 64
        _34 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        _37 = mem[_34 + 32]
        mem[u + 32] = 192
        _38 = mem[_37]
        mem[u + 192] = mem[_37]
        w = u + 224
        v = 0
        x = _37 + 32
        while v < _38:
            mem[w] = mem[x]
            w = w + 32
            v = v + 1
            x = x + 32
            continue 
        if mem[_34 + 64] >= 2:
            revert with 0, 33
        mem[u + 64] = mem[_34 + 64]
        mem[u + 96] = mem[_34 + 108 len 20]
        mem[u + 128] = mem[_34 + 128]
        mem[u + 160] = bool(mem[_34 + 160])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = u + (32 * _38) + 224
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
