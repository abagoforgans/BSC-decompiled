contract main {




// =====================  Runtime code  =====================


#
#  - mint(string arg1, address arg2, uint256 arg3)
#
const devAddress = 0xe2282583efd4f6302d9646f49965353327cda1a

const sub_cdecefdf(?) = 0xece6c40f6c97ff5592a7dba7a6a8644094d77d87

const creatorAddress = 0x41b5052db1f7843a52bc035c29d77b7314dfdabd

const MAX_ELEMENTS = 10000

const MAX_BY_MINT = 2


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint8 stor10; offset 160
address owner;
uint256 stor11;
uint256 totalMint;
uint256 PRICE;
uint256 sub_1ea0448f;
uint256 sub_ee6b61ff;
uint256 sub_4a5c7822;
uint256 wager;
array of struct stor18;
uint8 stor19;
array of struct stor20;
array of struct sub_446d5e5f;
uint8 onlyWhitelisted;
uint8 sub_afb11d26; offset 8
uint256 stor22; offset 8
array of address whitelisted;
mapping of uint256 addressMintedBalance;
mapping of uint256 sub_6b58f0dd;
uint256 nftPerAddressLimit;
uint256 sub_f31999c9;
address sub_69d15108Address;
address sub_0a0920ffAddress;
mapping of address idToOwner;
uint256 stor31;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042549;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042550;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042551;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042552;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042553;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042554;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042555;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042556;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042557;
array of uint256 stor38878206584692966203415385907871375197469080758325516314230789535345649042558;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0a0920ff(?) {
    return sub_0a0920ffAddress
}

function totalSupply() {
    return tokenByIndex.length
}

function addressMintedBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressMintedBalance[arg1]
}

function sub_1ea0448f(?) {
    return sub_1ea0448f
}

function sub_213eb8ff(?) {
    return wager
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_446d5e5f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_446d5e5f.length
    return sub_446d5e5f[arg1].field_0, 
           sub_446d5e5f[arg1].field_256,
           sub_446d5e5f[arg1].field_512,
           sub_446d5e5f[arg1].field_768,
           sub_446d5e5f[arg1].field_1024,
           sub_446d5e5f[arg1].field_1280,
           sub_446d5e5f[arg1].field_1536,
           sub_446d5e5f[arg1].field_1792,
           sub_446d5e5f[arg1].field_2048,
           sub_446d5e5f[arg1].field_2304
}

function sub_4a5c7822(?) {
    return sub_4a5c7822
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function totalMint() {
    return totalMint
}

function paused() {
    return bool(stor10)
}

function sub_615d1a25(?) {
    return bool(stor19)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function wager() {
    return wager
}

function sub_69d15108(?) {
    return sub_69d15108Address
}

function sub_6b58f0dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6b58f0dd[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function onlyWhitelisted() {
    return bool(onlyWhitelisted)
}

function getBattlesCount() {
    return sub_446d5e5f.length
}

function sub_afb11d26(?) {
    return bool(sub_afb11d26)
}

function whitelistedAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < whitelisted.length
    return address(whitelisted[arg1])
}

function nftPerAddressLimit() {
    return nftPerAddressLimit
}

function idToOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    return idToOwner[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ee6b61ff(?) {
    return sub_ee6b61ff
}

function sub_f31999c9(?) {
    return sub_f31999c9
}

function _fallback() payable {
    revert
}

function sub_ab89f0bb(?) {
    return sub_1ea0448f, sub_ee6b61ff, sub_4a5c7822
}

function price(uint256 arg1) {
    require calldata.size - 4 >= 32
    if PRICE and arg1 > -1 / PRICE:
        revert with 0, 17
    return (PRICE * arg1)
}

function sub_7665d26f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    wager = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    PRICE = arg1
}

function sub_11ae035a(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if stor19:
        stor19 = 0
    else:
        stor19 = 1
}

function setNftPerAddressLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    nftPerAddressLimit = arg1
}

function sub_afba26b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    stor22 = Mask(248, 0, bool(arg1))
}

function sub_531fe8d0(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    sub_1ea0448f = arg1
    sub_ee6b61ff = arg2
    sub_4a5c7822 = arg3
}

function setOnlyWhitelisted(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    onlyWhitelisted = uint8(arg1)
}

function sub_7f04c2bf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    sub_0a0920ffAddress = address(arg1)
}

function sub_9970053a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    sub_69d15108Address = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < whitelisted.length:
        mem[0] = 23
        if address(whitelisted[idx]) == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if arg1 != 1:
        if not stor10:
            revert with 0, 'Pausable: not paused'
        stor10 = 0
        emit Unpaused(msg.sender);
    else:
        if stor10:
            revert with 0, 'Pausable: paused'
        stor10 = 1
        emit Paused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_ea83480e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    sub_446d5e5f.length = 0
    idx = 0
    while 10 * sub_446d5e5f.length > idx:
        sub_446d5e5f[idx].field_0 = 0
        sub_446d5e5f[idx].field_256 = 0
        sub_446d5e5f[idx].field_512 = 0
        sub_446d5e5f[idx].field_768 = 0
        sub_446d5e5f[idx].field_1024 = 0
        sub_446d5e5f[idx].field_1280 = 0
        sub_446d5e5f[idx].field_1536 = 0
        sub_446d5e5f[idx].field_1792 = 0
        sub_446d5e5f[idx].field_2048 = 0
        sub_446d5e5f[idx].field_2304 = 0
        idx = idx + 10
        continue 
}

function recoverToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if arg1 == arg2:
        revert with 0, 'Invalid address'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Retrieve failed'
    emit RecoverToken(arg1, arg2, arg3);
}

function sub_52595aa9(?) {
    require calldata.size - 4 >= 64
    if arg1 >= stor20.length:
        revert with 0, 50
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of the NFT can put it to rest'
    if stor20[arg1].field_2560:
        revert with 0, 'Your NFT is already resting'
    if arg2 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    stor20[arg1].field_2560 = 1
    if 24 * 3600 * arg2 > !block.timestamp:
        revert with 0, 17
    stor20[arg1].field_2816 = (24 * 3600 * arg2) + block.timestamp
    stor20[arg1].field_3072 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_f731583e(?) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg2 != sub_ee6b61ff:
        revert with 0, 'Not Enough Balance'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    call sub_69d15108Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= stor20.length:
        revert with 0, 50
    if stor20[arg1].field_1536 > -3:
        revert with 0, 17
    stor20[arg1].field_1536 += 2
    stor11 = 1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if eth.balance(this.address) > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
        revert with 0, 17
    if eth.balance(this.address) > 0x5b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b05b0:
        revert with 0, 17
    if eth.balance(this.address) > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    call 0x0e2282583efd4f6302d9646f49965353327cda1a with:
       value 45 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x41b5052db1f7843a52bc035c29d77b7314dfdabd with:
       value 45 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call 0xece6c40f6c97ff5592a7dba7a6a8644094d77d87 with:
       value 10 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
}

function sub_382bd46c(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor20.length:
        revert with 0, 50
    if bool(stor20[arg1].field_2560) != 1:
        revert with 0, 'Your NFT is not resting'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of the NFT can take it out of rest'
    if block.timestamp < stor20[arg1].field_2816:
        revert with 0, 'Tokens are still locked'
    if stor20[arg1].field_3072 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor20[arg1].field_1536 > !(2 * stor20[arg1].field_3072):
        revert with 0, 17
    stor20[arg1].field_1536 += 2 * stor20[arg1].field_3072
    stor20[arg1].field_2560 = 0
    stor20[arg1].field_2816 = 0
    stor20[arg1].field_3072 = 0
}

function whitelistUsers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    whitelisted.length = 0
    idx = 0
    while whitelisted.length > idx:
        uint256(whitelisted[idx]) = 0
        idx = idx + 1
        continue 
    whitelisted.length = arg1.length
    if not arg1.length:
        idx = 0
        while whitelisted.length > idx:
            uint256(whitelisted[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(whitelisted[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while whitelisted.length > idx:
            uint256(whitelisted[idx]) = 0
            idx = idx + 1
            continue 
}

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owne'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_28ef8d48(?) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg2 != sub_4a5c7822:
        revert with 0, 'Not Enough Balance'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    call sub_69d15108Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= stor20.length:
        revert with 0, 50
    if stor20[arg1].field_1536 > -3:
        revert with 0, 17
    stor20[arg1].field_1536 += 2
    if stor20[arg1].field_2048 > -5:
        revert with 0, 17
    stor20[arg1].field_2048 += 4
    if 4 <= stor20[arg1].field_512:
        if stor20[arg1].field_512 < 3:
            revert with 0, 17
        stor20[arg1].field_512 -= 3
    else:
        if stor20[arg1].field_256 > -11:
            revert with 0, 17
        stor20[arg1].field_256 += 10
        stor20[arg1].field_512 = stor20[arg1].field_256
        if stor20[arg1].field_0 > -2:
            revert with 0, 17
        stor20[arg1].field_0++
    stor11 = 1
}

function sub_6826ca88(?) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg2 != sub_4a5c7822:
        revert with 0, 'Not Enough Balance'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    call sub_69d15108Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= stor20.length:
        revert with 0, 50
    if stor20[arg1].field_1536 > -3:
        revert with 0, 17
    stor20[arg1].field_1536 += 2
    if stor20[arg1].field_1792 > -5:
        revert with 0, 17
    stor20[arg1].field_1792 += 4
    if 4 <= stor20[arg1].field_512:
        if stor20[arg1].field_512 < 3:
            revert with 0, 17
        stor20[arg1].field_512 -= 3
    else:
        if stor20[arg1].field_256 > -11:
            revert with 0, 17
        stor20[arg1].field_256 += 10
        stor20[arg1].field_512 = stor20[arg1].field_256
        if stor20[arg1].field_0 > -2:
            revert with 0, 17
        stor20[arg1].field_0++
    stor11 = 1
}

function sub_927b8970(?) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg2 != sub_4a5c7822:
        revert with 0, 'Not Enough Balance'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    call sub_69d15108Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= stor20.length:
        revert with 0, 50
    if stor20[arg1].field_1536 > -3:
        revert with 0, 17
    stor20[arg1].field_1536 += 2
    if stor20[arg1].field_2304 > -5:
        revert with 0, 17
    stor20[arg1].field_2304 += 4
    if 4 <= stor20[arg1].field_512:
        if stor20[arg1].field_512 < 3:
            revert with 0, 17
        stor20[arg1].field_512 -= 3
    else:
        if stor20[arg1].field_256 > -11:
            revert with 0, 17
        stor20[arg1].field_256 += 10
        stor20[arg1].field_512 = stor20[arg1].field_256
        if stor20[arg1].field_0 > -2:
            revert with 0, 17
        stor20[arg1].field_0++
    stor11 = 1
}

function changeNFTName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    if arg1 >= stor20.length:
        revert with 0, 50
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == uint255(stor20[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_768 = 0
            idx = 0
            while (uint255(stor20[arg1].field_768) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor20[arg1].field_768 = 0
            idx = 0
            while stor20[arg1].field_769 + 31 / 32 > idx:
                stor[idx + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    stor11 = 1
}

function createBattle(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg1 >= stor20.length:
        revert with 0, 50
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    if stor20[arg1].field_3328:
        revert with 0, 'Your NFT is playing already'
    if stor20[arg1].field_2560:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your NFT is resting check if you can stop resting in order to battle again'
    if stor20[arg1].field_1536 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your Warrior has zero health, please replenish his health with potions'
    if not stor19:
        call sub_0a0920ffAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, wager
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor20[arg1].field_1792 > !stor20[arg1].field_2304:
        revert with 0, 17
    stor20[arg1].field_3328 = 1
    sub_446d5e5f.length++
    stor55F4[stor21.length] = sub_446d5e5f.length
    stor55F4[stor21.length] = arg1
    stor55F4[stor21.length] = stor20[arg1].field_1792 + stor20[arg1].field_2304
    stor55F4[stor21.length] = 0
    stor55F4[stor21.length] = 0
    stor55F4[stor21.length] = 0
    stor55F4[stor21.length] = arg1
    stor55F4[stor21.length] = block.timestamp
    stor55F4[stor21.length] = wager
    stor55F4[stor21.length] = stor20[arg1].field_0
    stor11 = 1
}

function sub_f269ee8c(?) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg1 >= stor20.length:
        revert with 0, 50
    if arg2 != sub_1ea0448f:
        revert with 0, 'Not Enough Balance'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    call sub_69d15108Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor31 == -1:
        revert with 0, 17
    stor31++
    if stor31 == -1:
        revert with 0, 17
    stor31++
    if 1 == sha3(block.timestamp, msg.sender, stor31) % 3:
        if stor20[arg1].field_2304 > !(sha3(block.timestamp, msg.sender, stor31) % 100):
            revert with 0, 17
        stor20[arg1].field_2304 += sha3(block.timestamp, msg.sender, stor31) % 100
    else:
        if sha3(block.timestamp, msg.sender, stor31) % 3 != 2:
            if stor20[arg1].field_2048 > !(sha3(block.timestamp, msg.sender, stor31) % 100):
                revert with 0, 17
            stor20[arg1].field_2048 += sha3(block.timestamp, msg.sender, stor31) % 100
        else:
            if stor20[arg1].field_1792 > !(sha3(block.timestamp, msg.sender, stor31) % 100):
                revert with 0, 17
            stor20[arg1].field_1792 += sha3(block.timestamp, msg.sender, stor31) % 100
    if stor20[arg1].field_512 > sha3(block.timestamp, msg.sender, stor31) % 100 / 2:
        if stor20[arg1].field_512 < sha3(block.timestamp, msg.sender, stor31) % 100 / 2:
            revert with 0, 17
        stor20[arg1].field_512 -= sha3(block.timestamp, msg.sender, stor31) % 100 / 2
    else:
        if stor20[arg1].field_256 > -11:
            revert with 0, 17
        stor20[arg1].field_256 += 10
        stor20[arg1].field_512 = stor20[arg1].field_256
        if stor20[arg1].field_0 > -2:
            revert with 0, 17
        stor20[arg1].field_0++
    stor11 = 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if owner != msg.sender:
        if stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function acceptBattle(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg1 >= sub_446d5e5f.length:
        revert with 0, 50
    if sub_446d5e5f[arg1].field_1280 != 0:
        revert with 0, 'Error'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg2] == msg.sender
    if sub_446d5e5f[arg1].field_256 == arg2:
        revert with 0, 'Error'
    if not ownerOf[stor21[arg1].field_256]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg2] != ownerOf[stor21[arg1].field_256]
    if arg2 >= stor20.length:
        revert with 0, 50
    if sub_446d5e5f[arg1].field_256 >= stor20.length:
        revert with 0, 50
    if stor20[arg2].field_2560:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your NFT is resting check if you can stop resting in order to battle again'
    if stor20[arg2].field_1536 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your Warrior has zero health, please replenish his health with potions'
    if stor20[arg2].field_0 != sub_446d5e5f[arg1].field_2304:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Your Warrior is not of the same level as the creator'
    if not stor19:
        call sub_0a0920ffAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, sub_446d5e5f[arg1].field_2048
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_446d5e5f[arg1].field_1024 = arg2
    if stor20[arg2].field_2048 > !stor20[arg2].field_2304:
        revert with 0, 17
    sub_446d5e5f[arg1].field_768 = stor20[arg2].field_2048 + stor20[arg2].field_2304
    stor20[stor21[arg1].field_256].field_3328 = 0
    if sub_446d5e5f[arg1].field_768 > sub_446d5e5f[arg1].field_512:
        sub_446d5e5f[arg1].field_1536 = sub_446d5e5f[arg1].field_1024
    else:
        sub_446d5e5f[arg1].field_1536 = sub_446d5e5f[arg1].field_256
    sub_446d5e5f[arg1].field_1280 = 1
    stor11 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if owner != msg.sender:
        if stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if owner != msg.sender:
        if stor10:
            revert with 0, 'ERC721Pausable: token transfer while paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseTokenURI() {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if owner != msg.sender:
        if stor10:
            revert with 0, 'ERC721Pausable: token transfer while paused'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function monsters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor20.length
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == uint255(stor20[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor20[arg1].field_768:
            if stor20[arg1].field_768 == uint255(stor20[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20[arg1].field_768):
                if 31 >= uint255(stor20[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor20[arg1].field_776
                else:
                    mem[128] = stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor20[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
                revert with 0, 34
            if stor20[arg1].field_769:
                if 31 >= stor20[arg1].field_769:
                    mem[128] = 256 * stor20[arg1].field_776
                else:
                    mem[128] = stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor20[arg1].field_0, 
               stor20[arg1].field_256,
               stor20[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor20[arg1].field_768), data=mem[128 len ceil32(uint255(stor20[arg1].field_768) * 0.5)]),
               stor20[arg1].field_1024,
               stor20[arg1].field_1280,
               stor20[arg1].field_1536,
               stor20[arg1].field_1792,
               stor20[arg1].field_2048,
               stor20[arg1].field_2304,
               bool(stor20[arg1].field_2560),
               stor20[arg1].field_2816,
               stor20[arg1].field_3072,
               bool(stor20[arg1].field_3328)
    if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
        revert with 0, 34
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == uint255(stor20[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20[arg1].field_768):
            if 31 >= uint255(stor20[arg1].field_768) * 0.5:
                mem[128] = 256 * stor20[arg1].field_776
            else:
                mem[128] = stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 128
                s = 0
                while (uint255(stor20[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 0, 34
        if stor20[arg1].field_769:
            if 31 >= stor20[arg1].field_769:
                mem[128] = 256 * stor20[arg1].field_776
            else:
                mem[128] = stor[sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((14 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor20[arg1].field_0, 
           stor20[arg1].field_256,
           stor20[arg1].field_512,
           Array(len=stor20[arg1].field_768, data=mem[128 len ceil32(stor20[arg1].field_769)]),
           stor20[arg1].field_1024,
           stor20[arg1].field_1280,
           stor20[arg1].field_1536,
           stor20[arg1].field_1792,
           stor20[arg1].field_2048,
           stor20[arg1].field_2304,
           bool(stor20[arg1].field_2560),
           stor20[arg1].field_2816,
           stor20[arg1].field_3072,
           bool(stor20[arg1].field_3328)
}

function endBattle(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor11 = 2
    if arg1 >= sub_446d5e5f.length:
        revert with 0, 50
    if sub_446d5e5f[arg1].field_1280 != 1:
        revert with 0, 'Error'
    if sub_446d5e5f[arg1].field_2048 and 2 > -1 / sub_446d5e5f[arg1].field_2048:
        revert with 0, 17
    if sub_446d5e5f[arg1].field_768 > sub_446d5e5f[arg1].field_512:
        if not ownerOf[stor21[arg1].field_1024]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        require ownerOf[stor21[arg1].field_1024] == msg.sender
        if sub_446d5e5f[arg1].field_1024 >= stor20.length:
            revert with 0, 50
        if stor20[stor21[arg1].field_1024].field_1024 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_1024].field_1024++
        if stor20[stor21[arg1].field_1024].field_2048 > -6:
            revert with 0, 17
        stor20[stor21[arg1].field_1024].field_2048 += 5
        if stor20[stor21[arg1].field_1024].field_2304 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_1024].field_2304++
        if 6 <= stor20[stor21[arg1].field_1024].field_512:
            if stor20[stor21[arg1].field_1024].field_512 < 5:
                revert with 0, 17
            stor20[stor21[arg1].field_1024].field_512 -= 5
        else:
            if stor20[stor21[arg1].field_1024].field_256 > -11:
                revert with 0, 17
            stor20[stor21[arg1].field_1024].field_256 += 10
            stor20[stor21[arg1].field_1024].field_512 = stor20[stor21[arg1].field_1024].field_256
            if stor20[stor21[arg1].field_1024].field_0 > -2:
                revert with 0, 17
            stor20[stor21[arg1].field_1024].field_0++
        if sub_446d5e5f[arg1].field_256 >= stor20.length:
            revert with 0, 50
        if stor20[stor21[arg1].field_256].field_1280 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_256].field_1280++
        if stor31 == -1:
            revert with 0, 17
        stor31++
        if 1 == sha3(block.timestamp, msg.sender, stor31) % 3:
            if not stor20[stor21[arg1].field_256].field_1792:
                stor20[stor21[arg1].field_256].field_1792 = 0
            else:
                if stor20[stor21[arg1].field_256].field_1792 < 1:
                    revert with 0, 17
                stor20[stor21[arg1].field_256].field_1792--
        else:
            if sha3(block.timestamp, msg.sender, stor31) % 3 != 2:
                if not stor20[stor21[arg1].field_256].field_2304:
                    stor20[stor21[arg1].field_256].field_2304 = 0
                else:
                    if stor20[stor21[arg1].field_256].field_2304 < 1:
                        revert with 0, 17
                    stor20[stor21[arg1].field_256].field_2304--
            else:
                if not stor20[stor21[arg1].field_256].field_2048:
                    stor20[stor21[arg1].field_256].field_2048 = 0
                else:
                    if stor20[stor21[arg1].field_256].field_2048 < 1:
                        revert with 0, 17
                    stor20[stor21[arg1].field_256].field_2048--
        if not stor20[stor21[arg1].field_256].field_1536:
            stor20[stor21[arg1].field_256].field_1536 = 0
        else:
            if stor20[stor21[arg1].field_256].field_1536 < 1:
                revert with 0, 17
            stor20[stor21[arg1].field_256].field_1536--
        if stor20[stor21[arg1].field_256].field_512 > -3:
            revert with 0, 17
        stor20[stor21[arg1].field_256].field_512 += 2
    else:
        if not ownerOf[stor21[arg1].field_256]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        require ownerOf[stor21[arg1].field_256] == msg.sender
        if sub_446d5e5f[arg1].field_256 >= stor20.length:
            revert with 0, 50
        if stor20[stor21[arg1].field_256].field_1024 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_256].field_1024++
        if stor20[stor21[arg1].field_256].field_1792 > -6:
            revert with 0, 17
        stor20[stor21[arg1].field_256].field_1792 += 5
        if stor20[stor21[arg1].field_256].field_2304 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_256].field_2304++
        if 6 <= stor20[stor21[arg1].field_256].field_512:
            if stor20[stor21[arg1].field_256].field_512 < 5:
                revert with 0, 17
            stor20[stor21[arg1].field_256].field_512 -= 5
        else:
            if stor20[stor21[arg1].field_256].field_256 > -11:
                revert with 0, 17
            stor20[stor21[arg1].field_256].field_256 += 10
            stor20[stor21[arg1].field_256].field_512 = stor20[stor21[arg1].field_256].field_256
            if stor20[stor21[arg1].field_256].field_0 > -2:
                revert with 0, 17
            stor20[stor21[arg1].field_256].field_0++
        if sub_446d5e5f[arg1].field_1024 >= stor20.length:
            revert with 0, 50
        if stor20[stor21[arg1].field_1024].field_1280 > -2:
            revert with 0, 17
        stor20[stor21[arg1].field_1024].field_1280++
        if stor31 == -1:
            revert with 0, 17
        stor31++
        if 1 == sha3(block.timestamp, msg.sender, stor31) % 3:
            if not stor20[stor21[arg1].field_1024].field_1792:
                stor20[stor21[arg1].field_1024].field_1792 = 0
            else:
                if stor20[stor21[arg1].field_1024].field_1792 < 1:
                    revert with 0, 17
                stor20[stor21[arg1].field_1024].field_1792--
        else:
            if sha3(block.timestamp, msg.sender, stor31) % 3 != 2:
                if not stor20[stor21[arg1].field_1024].field_2304:
                    stor20[stor21[arg1].field_1024].field_2304 = 0
                else:
                    if stor20[stor21[arg1].field_1024].field_2304 < 1:
                        revert with 0, 17
                    stor20[stor21[arg1].field_1024].field_2304--
            else:
                if not stor20[stor21[arg1].field_1024].field_2048:
                    stor20[stor21[arg1].field_1024].field_2048 = 0
                else:
                    if stor20[stor21[arg1].field_1024].field_2048 < 1:
                        revert with 0, 17
                    stor20[stor21[arg1].field_1024].field_2048--
        if not stor20[stor21[arg1].field_1024].field_1536:
            stor20[stor21[arg1].field_1024].field_1536 = 0
        else:
            if stor20[stor21[arg1].field_1024].field_1536 < 1:
                revert with 0, 17
            stor20[stor21[arg1].field_1024].field_1536--
        if stor20[stor21[arg1].field_1024].field_512 > -3:
            revert with 0, 17
        stor20[stor21[arg1].field_1024].field_512 += 2
    sub_446d5e5f[arg1].field_1280 = 2
    if not stor19:
        call sub_0a0920ffAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 2 * sub_446d5e5f[arg1].field_2048
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require arg1 < sub_446d5e5f.length
    if sub_446d5e5f.length < 1:
        revert with 0, 17
    if sub_446d5e5f.length - 1 >= sub_446d5e5f.length:
        revert with 0, 50
    if arg1 >= sub_446d5e5f.length:
        revert with 0, 50
    sub_446d5e5f[arg1].field_0 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_256 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_512 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_768 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_1024 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_1280 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_1536 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_1792 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_2048 = sub_446d5e5f[sub_446d5e5f.length].field_0
    sub_446d5e5f[arg1].field_2304 = sub_446d5e5f[sub_446d5e5f.length].field_0
    if not sub_446d5e5f.length:
        revert with 0, 49
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f[sub_446d5e5f.length].field_0 = 0
    sub_446d5e5f.length--
    stor11 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor18.length):
                if uint255(stor18.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257] = mem[ceil32(uint255(stor18.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])] = mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) > mem[ceil32(uint255(stor18.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 192] + ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + 192], data=mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor18.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor18.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor18.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
                    mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])] = mem[ceil32(uint255(stor18.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor18.length) * 0.5:
                mem[128] = 256 * stor18.length.field_8
            else:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if not stor18.length.field_1:
                if uint255(stor18.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257] = mem[ceil32(uint255(stor18.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])] = mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) > mem[ceil32(uint255(stor18.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 192] + ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + 192], data=mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor18.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor18.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor18.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
                    mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])] = mem[ceil32(uint255(stor18.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= stor18.length.field_1:
                mem[128] = 256 * stor18.length.field_8
                if uint255(stor18.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257] = mem[ceil32(uint255(stor18.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])] = mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) > mem[ceil32(uint255(stor18.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 192] + ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + 192], data=mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor18.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor18.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor18.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor18.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
                if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
                    mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])] = mem[ceil32(uint255(stor18.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor18.field_0)
            idx = 128
            s = 0
            while stor18.length.field_1 + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if uint255(stor18.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 257] = mem[ceil32(uint255(stor18.length) * 0.5) + 192]
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])] = mem[ceil32(uint255(stor18.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192]) > mem[ceil32(uint255(stor18.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor18.length) * 0.5) + 192] + ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + 192], data=mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor18.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor18.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor18.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor18.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])] = mem[ceil32(uint255(stor18.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 224] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor18.length) * 0.5) + 128] + ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + (uint255(stor18.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor18.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor18.length.field_1
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor18.length):
            if stor18.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor18.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3724 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor18.length) * 0.5:
            mem[128] = 256 * stor18.length.field_8
            if stor18.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
                mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
                mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
                return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor18.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
                if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3732 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 18
        mem[128] = uint256(stor18.field_0)
        idx = 128
        s = 0
        while (uint255(stor18.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor18[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor18.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
            mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor18.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                    _4422 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                _4423 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                _4424 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4425 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) <= stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                _4426 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4427 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4428 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        _4429 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if not stor18.length.field_1:
        if stor18.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
            mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor18.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3736 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) <= stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3738 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
            _3740 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor18.length.field_1:
        mem[128] = 256 * stor18.length.field_8
        if stor18.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
            mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor18.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
            if ceil32(stor18.length.field_1) <= stor18.length.field_1:
                mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3744 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) <= stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                _3746 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
            _3748 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 18
    mem[128] = uint256(stor18.field_0)
    idx = 128
    s = 0
    while stor18.length.field_1 + 96 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor18.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor18.length.field_1) + 224 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 225] = 32
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257] = mem[ceil32(stor18.length.field_1) + 192]
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])] = mem[ceil32(stor18.length.field_1) + 224 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 192]) <= mem[ceil32(stor18.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor18.length.field_1) + 192], data=mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 289 len ceil32(mem[ceil32(stor18.length.field_1) + 192])]), 
        mem[mem[ceil32(stor18.length.field_1) + 192] + ceil32(stor18.length.field_1) + stor18.length.field_1 + 289] = 0
        return 32, mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 257 len ceil32(mem[ceil32(stor18.length.field_1) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor18.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) <= stor18.length.field_1:
            mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
                _4430 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4431 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4432 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        _4433 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor18.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor18.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor18.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) <= stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
            _4434 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        _4435 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192 len ceil32(mem[ceil32(stor18.length.field_1) + 128])] = mem[ceil32(stor18.length.field_1) + 160 len ceil32(mem[ceil32(stor18.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor18.length.field_1) + 128]) <= mem[ceil32(stor18.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
        _4436 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 192] = 32
    _4437 = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor18.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor18.length.field_1) + 128] + ceil32(stor18.length.field_1) + ceil32(s) + stor18.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
