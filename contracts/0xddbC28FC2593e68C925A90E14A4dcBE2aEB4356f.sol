contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 sub_a4253586;
uint256 sub_25e24977;
address nftAddress;
address sub_035092deAddress;
address rewardPoolAddress;
address sub_1d73112cAddress;
uint256 sub_8282c7f7;
mapping of struct auction;

function sub_035092de(?) {
    return sub_035092deAddress
}

function sub_1d73112c(?) {
    return sub_1d73112cAddress
}

function sub_25e24977(?) {
    return sub_25e24977
}

function sub_5648eef8(?) {
    return stor3.length
}

function sub_56dc6a1e(?) {
    return stor2.length
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return auction[arg1].field_0, 
           uint256(auction[arg1].field_256),
           uint256(auction[arg1].field_512),
           uint256(auction[arg1].field_768)
}

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(stor0)
}

function sub_7318dae0(?) {
    return stor1.length
}

function getAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require uint256(auction[arg1].field_768)
    return auction[arg1].field_0, 
           uint256(auction[arg1].field_256),
           uint256(auction[arg1].field_512),
           uint256(auction[arg1].field_768)
}

function sub_8282c7f7(?) {
    return sub_8282c7f7
}

function rewardPoolAddress() {
    return rewardPoolAddress
}

function owner() {
    return owner
}

function sub_a4253586(?) {
    return sub_a4253586
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

function sub_7adfee58(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_25e24977 = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_b439a8b6(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length = arg1
    stor2.length = arg2
    stor3.length = arg3
    sub_a4253586 = arg4
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

function sub_801715d9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftAddress = address(arg1)
    sub_035092deAddress = address(arg2)
    rewardPoolAddress = address(arg3)
    sub_1d73112cAddress = address(arg4)
}

function sub_2af8a5db(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint256(auction[arg1].field_768):
        revert with 0, 'NintiaMarketplace: given NFT is not for sale'
    auction[arg1].field_0 = 0
    uint256(auction[arg1].field_256) = 0
    uint256(auction[arg1].field_512) = 0
    uint256(auction[arg1].field_768) = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe6a8488: uint256(auction[arg1].field_256), arg1
}

function sub_4c33fbb7(?) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.value < sub_a4253586:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NintiaMarketplace: not enough BNB for fee'
    call sub_035092deAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NintiaMarketplace: transfer to BNB fee address failed'
    else:
        if not ext_call.success:
            revert with 0, 'NintiaMarketplace: transfer to BNB fee address failed'
    ('bool', 'ext_call.success')
    if not uint256(auction[arg1].field_768):
        revert with 0, 'NintiaMarketplace: given NFT is not for sale'
    require auction[arg1].field_0 == msg.sender
    auction[arg1].field_0 = auction[arg1].field_0
    uint256(auction[arg1].field_512) = arg2
    emit 0x65728be6: arg2, uint256(auction[arg1].field_256), arg1
}

function sub_e95e7d6f(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.value < stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NintiaMarketplace: not enough BNB for fee'
    call sub_035092deAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NintiaMarketplace: transfer to BNB fee address failed'
    else:
        if not ext_call.success:
            revert with 0, 'NintiaMarketplace: transfer to BNB fee address failed'
    ('bool', 'ext_call.success')
    if not uint256(auction[arg1].field_768):
        revert with 0, 'NintiaMarketplace: given NFT is not for sale'
    require auction[arg1].field_0 == msg.sender
    auction[arg1].field_0 = 0
    uint256(auction[arg1].field_256) = 0
    uint256(auction[arg1].field_512) = 0
    uint256(auction[arg1].field_768) = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), auction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe6a8488: uint256(auction[arg1].field_256), arg1
}

function sub_d93a5f79(?) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.value < stor2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NintiaMarketplace: not enough BNB for fee'
    call sub_035092deAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NintiaMarketplace: transfer to BNB fee address failed'
    else:
        if not ext_call.success:
            revert with 0, 'NintiaMarketplace: transfer to BNB fee address failed'
    ('bool', 'ext_call.success')
    require ext_code.size(nftAddress)
    staticcall nftAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NintiaMarketplace: sender does not own this NFT'
    require ext_code.size(nftAddress)
    call nftAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_8282c7f7 > -2:
        revert with 0, 17
    sub_8282c7f7++
    auction[arg1].field_0 = msg.sender
    uint256(auction[arg1].field_256) = sub_8282c7f7 + 1
    uint256(auction[arg1].field_512) = arg2
    uint256(auction[arg1].field_768) = block.timestamp
    emit 0xab3912cd: arg2, sub_8282c7f7 + 1, arg1, msg.sender
}

function sub_f15916cc(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            _56 = sha3(mem[(32 * idx) + 128], 11)
            _57 = mem[64]
            mem[64] = mem[64] + 128
            mem[_57] = auction[mem[(32 * idx) + 128]].field_0
            mem[_57 + 32] = stor1[_56]
            mem[_57 + 64] = stor2[_56]
            mem[_57 + 96] = stor3[_56]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = bool(stor3[_56])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _54 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = mem[64] + 64
        t = (32 * ('cd', 4).length) + 160
        while idx < _62:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _54 + (32 * _62) + -mem[64] + 64
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 11
        _60 = sha3(mem[(32 * idx) + 128], 11)
        _61 = mem[64]
        mem[64] = mem[64] + 128
        mem[_61] = auction[mem[(32 * idx) + 128]].field_0
        mem[_61 + 32] = stor1[_60]
        mem[_61 + 64] = stor2[_60]
        mem[_61 + 96] = stor3[_60]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = bool(stor3[_60])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _58 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = mem[64] + 64
    t = (32 * ('cd', 4).length) + 160
    while idx < _64:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _58 + (32 * _64) + -mem[64] + 64
}

function sub_f73f6b80(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.value < stor1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NintiaMarketplace: not enough BNB for fee'
    call sub_035092deAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NintiaMarketplace: transfer to BNB fee address failed'
    else:
        if not ext_call.success:
            revert with 0, 'NintiaMarketplace: transfer to BNB fee address failed'
    ('bool', 'ext_call.success')
    if not uint256(auction[arg1].field_768):
        revert with 0, 'NintiaMarketplace: given NFT is not for sale'
    require ext_code.size(sub_1d73112cAddress)
    staticcall sub_1d73112cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(auction[arg1].field_512):
        revert with 0, 'NintiaMarketplace: You do not have enough NINTI balance'
    require ext_code.size(sub_1d73112cAddress)
    staticcall sub_1d73112cAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(auction[arg1].field_512):
        revert with 0, 'NintiaMarketplace: You must increase NINTI allowance'
    auction[arg1].field_0 = 0
    uint256(auction[arg1].field_256) = 0
    uint256(auction[arg1].field_512) = 0
    uint256(auction[arg1].field_768) = 0
    if uint256(auction[arg1].field_512) and sub_25e24977 > -1 / uint256(auction[arg1].field_512):
        revert with 0, 17
    if uint256(auction[arg1].field_512) < uint256(auction[arg1].field_512) * sub_25e24977 / 100:
        revert with 0, 17
    require ext_code.size(sub_1d73112cAddress)
    call sub_1d73112cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, rewardPoolAddress, uint256(auction[arg1].field_512) * sub_25e24977 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1d73112cAddress)
    call sub_1d73112cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, auction[arg1].field_0, uint256(auction[arg1].field_512) - (uint256(auction[arg1].field_512) * sub_25e24977 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nftAddress)
    call nftAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x75085e42: msg.sender, uint256(auction[arg1].field_512), uint256(auction[arg1].field_256), arg1, auction[arg1].field_0
}

function sub_fdee61c6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 11
                        _800 = sha3(mem[(32 * idx) + 128], 11)
                        _801 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_801] = auction[mem[(32 * idx) + 128]].field_0
                        mem[_801 + 32] = stor1[_800]
                        mem[_801 + 64] = stor2[_800]
                        mem[_801 + 96] = stor3[_800]
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_800]
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_800]
                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_800]
                        if idx >= mem[(131 * ('cd', 4).length) + 224]:
                            revert with 0, 50
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_800]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    _878 = mem[(32 * ('cd', 4).length) + 128]
                    mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = mem[64] + 160
                    while idx < _878:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _878) + 160
                    _1134 = mem[(64 * ('cd', 4).length) + 160]
                    mem[mem[64] + (32 * _878) + 160] = mem[(64 * ('cd', 4).length) + 160]
                    mem[mem[64] + (32 * _878) + 192 len 32 * _1134] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1134]
                    var34001 = _1134
                    var34002 = (64 * ('cd', 4).length) + (32 * _1134) + 192
                    mem[mem[64] + 64] = (32 * _878) + (32 * _1134) + 192
                    _1262 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + (32 * _878) + (32 * _1134) + 192] = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + (32 * _878) + (32 * _1134) + 224 len 32 * _1262] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1262]
                    mem[mem[64] + 96] = (32 * _878) + (32 * _1134) + (32 * _1262) + 224
                    _1358 = mem[(131 * ('cd', 4).length) + 224]
                    mem[mem[64] + (32 * _878) + (32 * _1134) + (32 * _1262) + 224] = mem[(131 * ('cd', 4).length) + 224]
                    mem[mem[64] + (32 * _878) + (32 * _1134) + (32 * _1262) + 256 len 32 * _1358] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1358]
                    return 128, 
                           (32 * _878) + 160,
                           (32 * _878) + (32 * _1134) + 192,
                           (32 * _878) + (32 * _1134) + (32 * _1262) + 224,
                           mem[mem[64] + 128 len (32 * _878) + (32 * _1134) + (32 * _1262) + (32 * _1358) + 128]
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 11
                    _805 = sha3(mem[(32 * idx) + 128], 11)
                    _806 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_806] = auction[mem[(32 * idx) + 128]].field_0
                    mem[_806 + 32] = stor1[_805]
                    mem[_806 + 64] = stor2[_805]
                    mem[_806 + 96] = stor3[_805]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_805]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_805]
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_805]
                    if idx >= mem[(131 * ('cd', 4).length) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_805]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                _881 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + 160
                while idx < _881:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _881) + 160
                _1135 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _881) + 160] = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _881) + 192 len 32 * _1135] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1135]
                var35001 = _1135
                mem[mem[64] + 64] = (32 * _881) + (32 * _1135) + 192
                _1263 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _881) + (32 * _1135) + 192] = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _881) + (32 * _1135) + 224 len 32 * _1263] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1263]
                mem[mem[64] + 96] = (32 * _881) + (32 * _1135) + (32 * _1263) + 224
                _1359 = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _881) + (32 * _1135) + (32 * _1263) + 224] = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _881) + (32 * _1135) + (32 * _1263) + 256 len 32 * _1359] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1359]
                return 128, 
                       (32 * _881) + 160,
                       (32 * _881) + (32 * _1135) + 192,
                       (32 * _881) + (32 * _1135) + (32 * _1263) + 224,
                       mem[mem[64] + 128 len (32 * _881) + (32 * _1135) + (32 * _1263) + (32 * _1359) + 128]
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (163 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 11
                    _810 = sha3(mem[(32 * idx) + 128], 11)
                    _811 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_811] = auction[mem[(32 * idx) + 128]].field_0
                    mem[_811 + 32] = stor1[_810]
                    mem[_811 + 64] = stor2[_810]
                    mem[_811 + 96] = stor3[_810]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_810]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_810]
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_810]
                    if idx >= mem[(131 * ('cd', 4).length) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_810]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                _884 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + 160
                while idx < _884:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _884) + 160
                _1136 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _884) + 160] = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _884) + 192 len 32 * _1136] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1136]
                var35001 = _1136
                mem[mem[64] + 64] = (32 * _884) + (32 * _1136) + 192
                _1264 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _884) + (32 * _1136) + 192] = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _884) + (32 * _1136) + 224 len 32 * _1264] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1264]
                mem[mem[64] + 96] = (32 * _884) + (32 * _1136) + (32 * _1264) + 224
                _1360 = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _884) + (32 * _1136) + (32 * _1264) + 224] = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _884) + (32 * _1136) + (32 * _1264) + 256 len 32 * _1360] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1360]
                return 128, 
                       (32 * _884) + 160,
                       (32 * _884) + (32 * _1136) + 192,
                       (32 * _884) + (32 * _1136) + (32 * _1264) + 224,
                       mem[mem[64] + 128 len (32 * _884) + (32 * _1136) + (32 * _1264) + (32 * _1360) + 128]
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _815 = sha3(mem[(32 * idx) + 128], 11)
                _816 = mem[64]
                mem[64] = mem[64] + 128
                mem[_816] = auction[mem[(32 * idx) + 128]].field_0
                mem[_816 + 32] = stor1[_815]
                mem[_816 + 64] = stor2[_815]
                mem[_816 + 96] = stor3[_815]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_815]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_815]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_815]
                if idx >= mem[(131 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_815]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _887 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _887:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _887) + 160
            _1137 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _887) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _887) + 192 len 32 * _1137] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1137]
            var36001 = _1137
            mem[mem[64] + 64] = (32 * _887) + (32 * _1137) + 192
            _1265 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _887) + (32 * _1137) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _887) + (32 * _1137) + 224 len 32 * _1265] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1265]
            mem[mem[64] + 96] = (32 * _887) + (32 * _1137) + (32 * _1265) + 224
            _1361 = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _887) + (32 * _1137) + (32 * _1265) + 224] = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _887) + (32 * _1137) + (32 * _1265) + 256 len 32 * _1361] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1361]
            return 128, 
                   (32 * _887) + 160,
                   (32 * _887) + (32 * _1137) + 192,
                   (32 * _887) + (32 * _1137) + (32 * _1265) + 224,
                   mem[mem[64] + 128 len (32 * _887) + (32 * _1137) + (32 * _1265) + (32 * _1361) + 128]
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[(128 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (163 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 11
                    _820 = sha3(mem[(32 * idx) + 128], 11)
                    _821 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_821] = auction[mem[(32 * idx) + 128]].field_0
                    mem[_821 + 32] = stor1[_820]
                    mem[_821 + 64] = stor2[_820]
                    mem[_821 + 96] = stor3[_820]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_820]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_820]
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_820]
                    if idx >= mem[(128 * ('cd', 4).length) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (128 * ('cd', 4).length) + 256] = stor3[_820]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                _890 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + 160
                while idx < _890:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _890) + 160
                _1138 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _890) + 160] = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _890) + 192 len 32 * _1138] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1138]
                var35001 = _1138
                mem[mem[64] + 64] = (32 * _890) + (32 * _1138) + 192
                _1266 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _890) + (32 * _1138) + 192] = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _890) + (32 * _1138) + 224 len 32 * _1266] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1266]
                mem[mem[64] + 96] = (32 * _890) + (32 * _1138) + (32 * _1266) + 224
                _1362 = mem[(128 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _890) + (32 * _1138) + (32 * _1266) + 224] = mem[(128 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _890) + (32 * _1138) + (32 * _1266) + 256 len 32 * _1362] = mem[(128 * ('cd', 4).length) + 256 len 32 * _1362]
                return 128, 
                       (32 * _890) + 160,
                       (32 * _890) + (32 * _1138) + 192,
                       (32 * _890) + (32 * _1138) + (32 * _1266) + 224,
                       mem[mem[64] + 128 len (32 * _890) + (32 * _1138) + (32 * _1266) + (32 * _1362) + 128]
            mem[(128 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _825 = sha3(mem[(32 * idx) + 128], 11)
                _826 = mem[64]
                mem[64] = mem[64] + 128
                mem[_826] = auction[mem[(32 * idx) + 128]].field_0
                mem[_826 + 32] = stor1[_825]
                mem[_826 + 64] = stor2[_825]
                mem[_826 + 96] = stor3[_825]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_825]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_825]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_825]
                if idx >= mem[(128 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (128 * ('cd', 4).length) + 256] = stor3[_825]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _893 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _893:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _893) + 160
            _1139 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _893) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _893) + 192 len 32 * _1139] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1139]
            var36001 = _1139
            mem[mem[64] + 64] = (32 * _893) + (32 * _1139) + 192
            _1267 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _893) + (32 * _1139) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _893) + (32 * _1139) + 224 len 32 * _1267] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1267]
            mem[mem[64] + 96] = (32 * _893) + (32 * _1139) + (32 * _1267) + 224
            _1363 = mem[(128 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _893) + (32 * _1139) + (32 * _1267) + 224] = mem[(128 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _893) + (32 * _1139) + (32 * _1267) + 256 len 32 * _1363] = mem[(128 * ('cd', 4).length) + 256 len 32 * _1363]
            return 128, 
                   (32 * _893) + 160,
                   (32 * _893) + (32 * _1139) + 192,
                   (32 * _893) + (32 * _1139) + (32 * _1267) + 224,
                   mem[mem[64] + 128 len (32 * _893) + (32 * _1139) + (32 * _1267) + (32 * _1363) + 128]
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(128 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (163 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _830 = sha3(mem[(32 * idx) + 128], 11)
                _831 = mem[64]
                mem[64] = mem[64] + 128
                mem[_831] = auction[mem[(32 * idx) + 128]].field_0
                mem[_831 + 32] = stor1[_830]
                mem[_831 + 64] = stor2[_830]
                mem[_831 + 96] = stor3[_830]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_830]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_830]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_830]
                if idx >= mem[(128 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (128 * ('cd', 4).length) + 256] = stor3[_830]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _896 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _896:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _896) + 160
            _1140 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _896) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _896) + 192 len 32 * _1140] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1140]
            var36001 = _1140
            mem[mem[64] + 64] = (32 * _896) + (32 * _1140) + 192
            _1268 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _896) + (32 * _1140) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _896) + (32 * _1140) + 224 len 32 * _1268] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1268]
            mem[mem[64] + 96] = (32 * _896) + (32 * _1140) + (32 * _1268) + 224
            _1364 = mem[(128 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _896) + (32 * _1140) + (32 * _1268) + 224] = mem[(128 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _896) + (32 * _1140) + (32 * _1268) + 256 len 32 * _1364] = mem[(128 * ('cd', 4).length) + 256 len 32 * _1364]
            return 128, 
                   (32 * _896) + 160,
                   (32 * _896) + (32 * _1140) + 192,
                   (32 * _896) + (32 * _1140) + (32 * _1268) + 224,
                   mem[mem[64] + 128 len (32 * _896) + (32 * _1140) + (32 * _1268) + (32 * _1364) + 128]
        mem[(128 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            _835 = sha3(mem[(32 * idx) + 128], 11)
            _836 = mem[64]
            mem[64] = mem[64] + 128
            mem[_836] = auction[mem[(32 * idx) + 128]].field_0
            mem[_836 + 32] = stor1[_835]
            mem[_836 + 64] = stor2[_835]
            mem[_836 + 96] = stor3[_835]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_835]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_835]
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_835]
            if idx >= mem[(128 * ('cd', 4).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (128 * ('cd', 4).length) + 256] = stor3[_835]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        _899 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 160
        while idx < _899:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _899) + 160
        _1141 = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _899) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _899) + 192 len 32 * _1141] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1141]
        var37001 = _1141
        mem[mem[64] + 64] = (32 * _899) + (32 * _1141) + 192
        _1269 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _899) + (32 * _1141) + 192] = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _899) + (32 * _1141) + 224 len 32 * _1269] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1269]
        mem[mem[64] + 96] = (32 * _899) + (32 * _1141) + (32 * _1269) + 224
        _1365 = mem[(128 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _899) + (32 * _1141) + (32 * _1269) + 224] = mem[(128 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _899) + (32 * _1141) + (32 * _1269) + 256 len 32 * _1365] = mem[(128 * ('cd', 4).length) + 256 len 32 * _1365]
        return 128, 
               (32 * _899) + 160,
               (32 * _899) + (32 * _1141) + 192,
               (32 * _899) + (32 * _1141) + (32 * _1269) + 224,
               mem[mem[64] + 128 len (32 * _899) + (32 * _1141) + (32 * _1269) + (32 * _1365) + 128]
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 11
                    _840 = sha3(mem[(32 * idx) + 128], 11)
                    _841 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_841] = auction[mem[(32 * idx) + 128]].field_0
                    mem[_841 + 32] = stor1[_840]
                    mem[_841 + 64] = stor2[_840]
                    mem[_841 + 96] = stor3[_840]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_840]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_840]
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_840]
                    if idx >= mem[(131 * ('cd', 4).length) + 224]:
                        revert with 0, 50
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_840]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                _902 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + 160
                while idx < _902:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _902) + 160
                _1142 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _902) + 160] = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * _902) + 192 len 32 * _1142] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1142]
                var35001 = _1142
                mem[mem[64] + 64] = (32 * _902) + (32 * _1142) + 192
                _1270 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _902) + (32 * _1142) + 192] = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * _902) + (32 * _1142) + 224 len 32 * _1270] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1270]
                mem[mem[64] + 96] = (32 * _902) + (32 * _1142) + (32 * _1270) + 224
                _1366 = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _902) + (32 * _1142) + (32 * _1270) + 224] = mem[(131 * ('cd', 4).length) + 224]
                mem[mem[64] + (32 * _902) + (32 * _1142) + (32 * _1270) + 256 len 32 * _1366] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1366]
                return 128, 
                       (32 * _902) + 160,
                       (32 * _902) + (32 * _1142) + 192,
                       (32 * _902) + (32 * _1142) + (32 * _1270) + 224,
                       mem[mem[64] + 128 len (32 * _902) + (32 * _1142) + (32 * _1270) + (32 * _1366) + 128]
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _845 = sha3(mem[(32 * idx) + 128], 11)
                _846 = mem[64]
                mem[64] = mem[64] + 128
                mem[_846] = auction[mem[(32 * idx) + 128]].field_0
                mem[_846 + 32] = stor1[_845]
                mem[_846 + 64] = stor2[_845]
                mem[_846 + 96] = stor3[_845]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_845]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_845]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_845]
                if idx >= mem[(131 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_845]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _905 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _905:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _905) + 160
            _1143 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _905) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _905) + 192 len 32 * _1143] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1143]
            var36001 = _1143
            mem[mem[64] + 64] = (32 * _905) + (32 * _1143) + 192
            _1271 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _905) + (32 * _1143) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _905) + (32 * _1143) + 224 len 32 * _1271] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1271]
            mem[mem[64] + 96] = (32 * _905) + (32 * _1143) + (32 * _1271) + 224
            _1367 = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _905) + (32 * _1143) + (32 * _1271) + 224] = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _905) + (32 * _1143) + (32 * _1271) + 256 len 32 * _1367] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1367]
            return 128, 
                   (32 * _905) + 160,
                   (32 * _905) + (32 * _1143) + 192,
                   (32 * _905) + (32 * _1143) + (32 * _1271) + 224,
                   mem[mem[64] + 128 len (32 * _905) + (32 * _1143) + (32 * _1271) + (32 * _1367) + 128]
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _850 = sha3(mem[(32 * idx) + 128], 11)
                _851 = mem[64]
                mem[64] = mem[64] + 128
                mem[_851] = auction[mem[(32 * idx) + 128]].field_0
                mem[_851 + 32] = stor1[_850]
                mem[_851 + 64] = stor2[_850]
                mem[_851 + 96] = stor3[_850]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_850]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_850]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_850]
                if idx >= mem[(131 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_850]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _908 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _908:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _908) + 160
            _1144 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _908) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _908) + 192 len 32 * _1144] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1144]
            var36001 = _1144
            mem[mem[64] + 64] = (32 * _908) + (32 * _1144) + 192
            _1272 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _908) + (32 * _1144) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _908) + (32 * _1144) + 224 len 32 * _1272] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1272]
            mem[mem[64] + 96] = (32 * _908) + (32 * _1144) + (32 * _1272) + 224
            _1368 = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _908) + (32 * _1144) + (32 * _1272) + 224] = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _908) + (32 * _1144) + (32 * _1272) + 256 len 32 * _1368] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1368]
            return 128, 
                   (32 * _908) + 160,
                   (32 * _908) + (32 * _1144) + 192,
                   (32 * _908) + (32 * _1144) + (32 * _1272) + 224,
                   mem[mem[64] + 128 len (32 * _908) + (32 * _1144) + (32 * _1272) + (32 * _1368) + 128]
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            _855 = sha3(mem[(32 * idx) + 128], 11)
            _856 = mem[64]
            mem[64] = mem[64] + 128
            mem[_856] = auction[mem[(32 * idx) + 128]].field_0
            mem[_856 + 32] = stor1[_855]
            mem[_856 + 64] = stor2[_855]
            mem[_856 + 96] = stor3[_855]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_855]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_855]
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_855]
            if idx >= mem[(131 * ('cd', 4).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_855]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        _911 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 160
        while idx < _911:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _911) + 160
        _1145 = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _911) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _911) + 192 len 32 * _1145] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1145]
        var37001 = _1145
        mem[mem[64] + 64] = (32 * _911) + (32 * _1145) + 192
        _1273 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _911) + (32 * _1145) + 192] = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _911) + (32 * _1145) + 224 len 32 * _1273] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1273]
        mem[mem[64] + 96] = (32 * _911) + (32 * _1145) + (32 * _1273) + 224
        _1369 = mem[(131 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _911) + (32 * _1145) + (32 * _1273) + 224] = mem[(131 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _911) + (32 * _1145) + (32 * _1273) + 256 len 32 * _1369] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1369]
        return 128, 
               (32 * _911) + 160,
               (32 * _911) + (32 * _1145) + 192,
               (32 * _911) + (32 * _1145) + (32 * _1273) + 224,
               mem[mem[64] + 128 len (32 * _911) + (32 * _1145) + (32 * _1273) + (32 * _1369) + 128]
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 11
                _860 = sha3(mem[(32 * idx) + 128], 11)
                _861 = mem[64]
                mem[64] = mem[64] + 128
                mem[_861] = auction[mem[(32 * idx) + 128]].field_0
                mem[_861 + 32] = stor1[_860]
                mem[_861 + 64] = stor2[_860]
                mem[_861 + 96] = stor3[_860]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_860]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_860]
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_860]
                if idx >= mem[(131 * ('cd', 4).length) + 224]:
                    revert with 0, 50
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_860]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _914 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + 160
            while idx < _914:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _914) + 160
            _1146 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _914) + 160] = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * _914) + 192 len 32 * _1146] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1146]
            var36001 = _1146
            mem[mem[64] + 64] = (32 * _914) + (32 * _1146) + 192
            _1274 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _914) + (32 * _1146) + 192] = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * _914) + (32 * _1146) + 224 len 32 * _1274] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1274]
            mem[mem[64] + 96] = (32 * _914) + (32 * _1146) + (32 * _1274) + 224
            _1370 = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _914) + (32 * _1146) + (32 * _1274) + 224] = mem[(131 * ('cd', 4).length) + 224]
            mem[mem[64] + (32 * _914) + (32 * _1146) + (32 * _1274) + 256 len 32 * _1370] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1370]
            return 128, 
                   (32 * _914) + 160,
                   (32 * _914) + (32 * _1146) + 192,
                   (32 * _914) + (32 * _1146) + (32 * _1274) + 224,
                   mem[mem[64] + 128 len (32 * _914) + (32 * _1146) + (32 * _1274) + (32 * _1370) + 128]
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            _865 = sha3(mem[(32 * idx) + 128], 11)
            _866 = mem[64]
            mem[64] = mem[64] + 128
            mem[_866] = auction[mem[(32 * idx) + 128]].field_0
            mem[_866 + 32] = stor1[_865]
            mem[_866 + 64] = stor2[_865]
            mem[_866 + 96] = stor3[_865]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_865]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_865]
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_865]
            if idx >= mem[(131 * ('cd', 4).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_865]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        _917 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 160
        while idx < _917:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _917) + 160
        _1147 = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _917) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * _917) + 192 len 32 * _1147] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1147]
        var37001 = _1147
        mem[mem[64] + 64] = (32 * _917) + (32 * _1147) + 192
        _1275 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _917) + (32 * _1147) + 192] = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * _917) + (32 * _1147) + 224 len 32 * _1275] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1275]
        mem[mem[64] + 96] = (32 * _917) + (32 * _1147) + (32 * _1275) + 224
        _1371 = mem[(131 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _917) + (32 * _1147) + (32 * _1275) + 224] = mem[(131 * ('cd', 4).length) + 224]
        mem[mem[64] + (32 * _917) + (32 * _1147) + (32 * _1275) + 256 len 32 * _1371] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1371]
        return 128, 
               (32 * _917) + 160,
               (32 * _917) + (32 * _1147) + 192,
               (32 * _917) + (32 * _1147) + (32 * _1275) + 224,
               mem[mem[64] + 128 len (32 * _917) + (32 * _1147) + (32 * _1275) + (32 * _1371) + 128]
    mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[64] = (164 * ('cd', 4).length) + 256
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            _870 = sha3(mem[(32 * idx) + 128], 11)
            _871 = mem[64]
            mem[64] = mem[64] + 128
            mem[_871] = auction[mem[(32 * idx) + 128]].field_0
            mem[_871 + 32] = stor1[_870]
            mem[_871 + 64] = stor2[_870]
            mem[_871 + 96] = stor3[_870]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_870]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_870]
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_870]
            if idx >= mem[(131 * ('cd', 4).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_870]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _868 = mem[64]
        mem[mem[64]] = 128
        _920 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 160
        while idx < _920:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_868 + 32] = (32 * _920) + 160
        _1148 = mem[(64 * ('cd', 4).length) + 160]
        mem[_868 + (32 * _920) + 160] = mem[(64 * ('cd', 4).length) + 160]
        mem[_868 + (32 * _920) + 192 len 32 * _1148] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1148]
        var37001 = _1148
        mem[_868 + 64] = (32 * _920) + (32 * _1148) + 192
        _1276 = mem[(98 * ('cd', 4).length) + 192]
        mem[_868 + (32 * _920) + (32 * _1148) + 192] = mem[(98 * ('cd', 4).length) + 192]
        mem[_868 + (32 * _920) + (32 * _1148) + 224 len 32 * _1276] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1276]
        mem[_868 + 96] = (32 * _920) + (32 * _1148) + (32 * _1276) + 224
        _1372 = mem[(131 * ('cd', 4).length) + 224]
        mem[_868 + (32 * _920) + (32 * _1148) + (32 * _1276) + 224] = mem[(131 * ('cd', 4).length) + 224]
        mem[_868 + (32 * _920) + (32 * _1148) + (32 * _1276) + 256 len 32 * _1372] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1372]
        return memory
          from mem[64]
           len _868 + (32 * _920) + (32 * _1148) + (32 * _1276) + (32 * _1372) + -mem[64] + 256
    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 11
        _875 = sha3(mem[(32 * idx) + 128], 11)
        _876 = mem[64]
        mem[64] = mem[64] + 128
        mem[_876] = auction[mem[(32 * idx) + 128]].field_0
        mem[_876 + 32] = stor1[_875]
        mem[_876 + 64] = stor2[_875]
        mem[_876 + 96] = stor3[_875]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor[_875]
        if idx >= mem[(64 * ('cd', 4).length) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = stor1[_875]
        if idx >= mem[(98 * ('cd', 4).length) + 192]:
            revert with 0, 50
        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor2[_875]
        if idx >= mem[(131 * ('cd', 4).length) + 224]:
            revert with 0, 50
        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor3[_875]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _873 = mem[64]
    mem[mem[64]] = 128
    _923 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 128] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + 160
    while idx < _923:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_873 + 32] = (32 * _923) + 160
    _1149 = mem[(64 * ('cd', 4).length) + 160]
    mem[_873 + (32 * _923) + 160] = mem[(64 * ('cd', 4).length) + 160]
    mem[_873 + (32 * _923) + 192 len 32 * _1149] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1149]
    mem[_873 + 64] = (32 * _923) + (32 * _1149) + 192
    _1277 = mem[(98 * ('cd', 4).length) + 192]
    mem[_873 + (32 * _923) + (32 * _1149) + 192] = mem[(98 * ('cd', 4).length) + 192]
    mem[_873 + (32 * _923) + (32 * _1149) + 224 len 32 * _1277] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1277]
    mem[_873 + 96] = (32 * _923) + (32 * _1149) + (32 * _1277) + 224
    _1373 = mem[(131 * ('cd', 4).length) + 224]
    mem[_873 + (32 * _923) + (32 * _1149) + (32 * _1277) + 224] = mem[(131 * ('cd', 4).length) + 224]
    mem[_873 + (32 * _923) + (32 * _1149) + (32 * _1277) + 256 len 32 * _1373] = mem[(131 * ('cd', 4).length) + 256 len 32 * _1373]
    return memory
      from mem[64]
       len _873 + (32 * _923) + (32 * _1149) + (32 * _1277) + (32 * _1373) + -mem[64] + 256
}



}
