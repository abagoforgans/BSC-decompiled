contract main {




// =====================  Runtime code  =====================


#
#  - sub_c37b9bcd(?)
#
address owner;
array of uint256 stor1;
uint64 sellCount;
uint256 stor4;
address paymentTokenAddress;
address nftOwner;
address feeRecipientAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;
array of struct sub_17b8e1cf;

function sellCount() {
    return sellCount
}

function sub_17b8e1cf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_17b8e1cf.length
    return sub_17b8e1cf[arg1].field_0
}

function enabled() {
    return bool(uint8(stor8.field_160))
}

function paymentToken() {
    return paymentTokenAddress
}

function feeRecipient() {
    return feeRecipientAddress
}

function nftOwner() {
    return nftOwner
}

function owner() {
    return owner
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

function setPackPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function setNFTHolder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftOwner = arg1
}

function setPaymentToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentTokenAddress = arg1
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeRecipientAddress = arg1
}

function setNftAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor8.field_0) = arg1
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 128 < 96 or (32 * arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_529f4f7d(?) {
    mem[64] = (32 * sub_17b8e1cf.length) + 128
    mem[96] = sub_17b8e1cf.length
    s = 128
    idx = 0
    while idx < sub_17b8e1cf.length:
        mem[0] = 9
        _15 = mem[64]
        mem[64] = mem[64] + 64
        mem[_15] = sub_17b8e1cf[idx].field_0
        _16 = mem[64]
        mem[64] = mem[64] + (32 * sub_17b8e1cf[idx].field_256) + 32
        mem[_16] = sub_17b8e1cf[idx].field_256
        if sub_17b8e1cf[idx].field_256:
            mem[0] = sha3(9) + (2 * idx) + 1
            mem[_16 + 32] = stor[sha3(('name', 'sub_17b8e1cf', 9) + (2 * idx) + 1)].field_0
            t = _16 + 32
            u = sha3(mem[0])
            while _16 + (32 * sub_17b8e1cf[idx].field_256) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
        mem[_15 + 32] = _16
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _19 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _19:
        mem[u] = t + -_17 - 64
        _26 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        _28 = mem[_26 + 32]
        mem[t + 32] = 64
        _30 = mem[_28]
        mem[t + 64] = mem[_28]
        v = 0
        w = _28 + 32
        x = t + 96
        while v < _30:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _30 + 1
        w = _28 + (32 * _30) + 64
        t = t + (32 * _30) + 96
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_086d7308(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length <= 0:
        revert with 0, 'TokenIds must not be empty'
    if stor1.length > !uint8(cd[4]):
        revert with 0, 17
    stor1.length += uint8(cd[4])
    if 100 < stor1.length:
        revert with 0, 'Weight Limit exceeds'
    sub_17b8e1cf.length++
    if sub_17b8e1cf.length + 1 < 1:
        revert with 0, 17
    if sub_17b8e1cf.length >= sub_17b8e1cf.length:
        revert with 0, 50
    sub_17b8e1cf[sub_17b8e1cf.length].field_0 = uint8(cd[4])
    sub_17b8e1cf[sub_17b8e1cf.length].field_256 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_17b8e1cf[sub_17b8e1cf.length].field_256 > idx:
            stor[idx + sha3((2 * sub_17b8e1cf.length) + ('name', 'sub_17b8e1cf', 9) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            stor[s + sha3((2 * sub_17b8e1cf.length) + ('name', 'sub_17b8e1cf', 9) + 1)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_17b8e1cf[sub_17b8e1cf.length].field_256 > idx:
            stor[idx + sha3((2 * sub_17b8e1cf.length) + ('name', 'sub_17b8e1cf', 9) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x2713bc07: Array(len=('cd', 36).length, data=mem[128 len 32 * ('cd', 36).length]), uint8(cd[4])
}



}
