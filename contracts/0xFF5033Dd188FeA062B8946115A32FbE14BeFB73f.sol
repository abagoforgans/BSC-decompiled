contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1, uint256 arg2, bytes arg3)
#  - initialize(address arg1, address arg2, uint256 arg3)
#  - updateGodChar(uint256 arg1, bytes arg2)
#  - updateHumanChar(uint256 arg1, bytes arg2)
#  - updateChar(uint256 arg1, bytes arg2)
#
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
address taxRecipientAddress;
uint256 marketFee;
address tokenAddress;
address signerAddress;
uint256 stor207;
uint256 stor208;
array of uint256 presaleChar;
uint256 openPresaleTime;
address feeMktWalletAddress;
mapping of uint8 stor212;
uint256 botProtectSec;
mapping of address stor216;
uint256 sub_a0a36f06;
array of uint256 stor46472157311649131651317580928243384587355742660275723744700495089454914805032;
array of uint256 stor46472157311649131651317580928243384587355742660275723744700495089454914805033;
array of uint8 stor46472157311649131651317580928243384587355742660275723744700495089454914805034;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973667;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function marketFee() {
    return marketFee
}

function getChar(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= char.length:
        revert with 0, 50
    return char[arg1].field_0
}

function getTokenAddress() {
    return tokenAddress
}

function totalSupply() {
    return char.length
}

function signer() {
    return signerAddress
}

function botProtectSec() {
    return botProtectSec
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function taxRecipient() {
    return taxRecipientAddress
}

function owner() {
    return owner
}

function sub_a0a36f06(?) {
    return sub_a0a36f06
}

function sub_aea4b245(?) {
    return presaleChar.length
}

function openPresaleTime() {
    return openPresaleTime
}

function tokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price query for nonexistent token'
    if arg1 >= char.length:
        revert with 0, 50
    return char[arg1].field_256
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function presaleChar(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < presaleChar.length
    return presaleChar[arg1]
}

function getPresaleChar() {
    return presaleChar.length
}

function feeMktWallet() {
    return feeMktWalletAddress
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

function sub_4cc8e1d2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a0a36f06 = arg1
}

function setBotProtectSec(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    botProtectSec = arg1
}

function setOpenPresaleTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openPresaleTime = arg1
}

function updateMintPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = arg1
    stor208 = arg2
}

function setSignatureChecker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signerAddress = arg1
}

function setFeeMktWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeMktWalletAddress = arg1
}

function pushTrashChar() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    char.length++
    stor66BE[stor201.length] = 100
    stor66BE[stor201.length] = 0
    stor66BE[stor201.length] = 0
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor212[address(arg1)] = uint8(arg2)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function collectBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function collectFundsRaised() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call feeMktWalletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d2e5abd(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if address(stor216[arg1]) != address(arg2):
        return 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != this.address:
        return 0
    return 1
}

function sub_78f2e576(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if address(stor216[arg1]) != this.address:
        return 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != address(arg2):
        return 0
    return 1
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price set of nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_256 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setTokenSale(uint256 arg1, bool arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Sale set of nonexistent token'
    if arg3 <= 0:
        revert with 0, 'Price <= 0'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_512 = uint8(arg2)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: Price set of nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg1] == msg.sender
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_256 = arg3
}

function sub_e1804f79(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] >= char.length:
            revert with 0, 50
        mem[0] = 201
        char[mem[(32 * idx) + floor32(('cd', 4).length) + 129]].field_0 = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function normalMint(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1:
        _83 = mem[64]
        mem[64] = mem[64] + 96
        mem[_83] = test266151307()
        mem[_83 + 32] = 0
        mem[_83 + 64] = 0
        char.length++
        stor66BE[stor201.length] = test266151307()
        stor66BE[stor201.length] = 0
        stor66BE[stor201.length] = 0
        presaleChar.length++
        stor695F[stor209.length] = char.length
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor201.length]:
            revert with 0, 'ERC721: token already minted'
        if 0 == owner:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(msg.sender)] > sub_a0a36f06:
                revert with 0, 'Cannot transfer NFT'
        if not this.address:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(msg.sender)] > sub_a0a36f06:
                revert with 0, 'Cannot transfer NFT'
        if owner:
            if this.address:
                if owner != msg.sender:
                    if msg.sender != this.address:
                        revert with 0, 'Cannot transfer NFT'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = char.length
        mem[32] = 103
        ownerOf[stor201.length] = msg.sender
        emit Transfer(0, msg.sender, char.length);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = char.length
        continue 
}

function sub_e632843f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= char.length:
            revert with 0, 50
        mem[0] = 201
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(char[mem[(32 * idx) + 128]].field_512)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 32
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 4).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len floor32(('cd', 4).length) + (64 * ('cd', 4).length) + -mem[64] + 193
}

function addListing(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.value != 5 * 10^15:
        revert with 0, 'Not enough BNB'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Wrong owner'
    if arg2 <= 0:
        revert with 0, 'Price >0'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if msg.sender == owner:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(this.address)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == msg.sender:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(this.address)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != msg.sender:
        if msg.sender != this.address:
            if owner != this.address:
                if this.address != this.address:
                    revert with 0, 'Cannot transfer NFT'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(msg.sender)] < 1:
        revert with 0, 17
    balanceOf[address(msg.sender)]--
    if balanceOf[address(this.address)] > -2:
        revert with 0, 17
    balanceOf[address(this.address)]++
    ownerOf[arg1] = this.address
    emit Transfer(msg.sender, this.address, arg1);
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_256 = arg2
    char[arg1].field_512 = 1
    uint256(stor216[arg1]) = msg.sender or Mask(96, 160, uint256(stor216[arg1]))
}

function sub_c66281cd(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if presaleChar.length < 1:
        revert with 0, 17
    if presaleChar.length - 1 >= presaleChar.length:
        revert with 0, 50
    if not presaleChar.length:
        revert with 0, 49
    presaleChar[presaleChar.length] = 0
    presaleChar.length--
    if not ownerOf[stor209[stor209.length]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[stor209[stor209.length]] != owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if owner == owner:
        if not address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == owner:
        if not address(arg2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != owner:
        if owner != this.address:
            if owner != address(arg2):
                if address(arg2) != this.address:
                    revert with 0, 'Cannot transfer NFT'
    approved[stor209[stor209.length]] = 0
    if not ownerOf[stor209[stor209.length]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[stor209[stor209.length]], 0, presaleChar[presaleChar.length]);
    if balanceOf[stor151] < 1:
        revert with 0, 17
    balanceOf[stor151]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[stor209[stor209.length]] = address(arg2)
    emit Transfer(owner, address(arg2), presaleChar[presaleChar.length]);
    if presaleChar[presaleChar.length] >= char.length:
        revert with 0, 50
    char[stor209[stor209.length]].field_0 = arg1
}

function cancelListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= char.length:
        revert with 0, 50
    if not char[arg1].field_512:
        revert with 0, 'Nft not sale'
    if msg.value != 5 * 10^15:
        revert with 0, 'Not enough BNB'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] > sub_a0a36f06:
        revert with 0, 'Max character reach'
    if address(stor216[arg1]) != msg.sender:
        revert with 0, 'Wrong owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if this.address == owner:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != this.address:
        if this.address != this.address:
            if owner != msg.sender:
                if msg.sender != this.address:
                    revert with 0, 'Cannot transfer NFT'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(this.address)] < 1:
        revert with 0, 17
    balanceOf[address(this.address)]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(this.address, msg.sender, arg1);
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_512 = 0
    uint256(stor216[arg1]) = this.address or Mask(96, 160, uint256(stor216[arg1]))
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if arg1 == owner:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != arg1:
        if arg1 != this.address:
            if owner != arg2:
                if arg2 != this.address:
                    revert with 0, 'Cannot transfer NFT'
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1 == owner:
        if not arg2:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == arg1:
        if not arg2:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != arg1:
        if arg1 != this.address:
            if owner != arg2:
                if arg2 != this.address:
                    revert with 0, 'Cannot transfer NFT'
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
        require ext_code.size(arg2)
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

function purchaseListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= char.length:
        revert with 0, 50
    if not char[arg1].field_512:
        revert with 0, 'Nft not sale'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, balanceOf[address(msg.sender)], 13, 0, 0
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] > sub_a0a36f06:
        revert with 0, 'Max character reach'
    if arg1 >= char.length:
        revert with 0, 50
    if char[arg1].field_256 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 5 * char[arg1].field_256 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if char[arg1].field_256 > 0x2b1da46102b1da46102b1da46102b1da46102b1da46102b1da46102b1da4610:
        revert with 0, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor216[arg1]), 95 * char[arg1].field_256 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != this.address:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if this.address == owner:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == this.address:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(msg.sender)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != this.address:
        if this.address != this.address:
            if owner != msg.sender:
                if msg.sender != this.address:
                    revert with 0, 'Cannot transfer NFT'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(this.address)] < 1:
        revert with 0, 17
    balanceOf[address(this.address)]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(this.address, msg.sender, arg1);
    if arg1 >= char.length:
        revert with 0, 50
    char[arg1].field_512 = 0
    uint256(stor216[arg1]) = this.address or Mask(96, 160, uint256(stor216[arg1]))
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1 == owner:
        if not arg2:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if this.address == arg1:
        if not arg2:
            revert with 0, 'ERC721: balance query for the zero address'
        if balanceOf[address(arg2)] > sub_a0a36f06:
            revert with 0, 'Cannot transfer NFT'
    if owner != arg1:
        if arg1 != this.address:
            if owner != arg2:
                if arg2 != this.address:
                    revert with 0, 'Cannot transfer NFT'
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
        require ext_code.size(arg2)
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

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_4d532729(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if presaleChar.length < 1:
            revert with 0, 17
        if presaleChar.length - 1 >= presaleChar.length:
            revert with 0, 50
        if not presaleChar.length:
            revert with 0, 49
        presaleChar[presaleChar.length] = 0
        presaleChar.length--
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if not ownerOf[stor209[stor209.length]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[stor209[stor209.length]] != owner:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
            revert with 0, 'ERC721: transfer to the zero address'
        if owner == owner:
            if not mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(mem[(32 * idx) + floor32(('cd', 4).length) + 129])] > sub_a0a36f06:
                revert with 0, 'Cannot transfer NFT'
        if this.address == owner:
            if not mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(mem[(32 * idx) + floor32(('cd', 4).length) + 129])] > sub_a0a36f06:
                revert with 0, 'Cannot transfer NFT'
        if owner != owner:
            if owner != this.address:
                if owner != mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]:
                    if mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20] != this.address:
                        revert with 0, 'Cannot transfer NFT'
        approved[stor209[stor209.length]] = 0
        if not ownerOf[stor209[stor209.length]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[stor209[stor209.length]], 0, presaleChar[presaleChar.length]);
        if balanceOf[stor151] < 1:
            revert with 0, 17
        balanceOf[stor151]--
        if balanceOf[address(mem[(32 * idx) + floor32(('cd', 4).length) + 129])] > -2:
            revert with 0, 17
        balanceOf[address(mem[(32 * idx) + floor32(('cd', 4).length) + 129])]++
        mem[32] = 103
        ownerOf[stor209[stor209.length]] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        emit Transfer(owner, mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20], presaleChar[presaleChar.length]);
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if presaleChar[presaleChar.length] >= char.length:
            revert with 0, 50
        mem[0] = 201
        char[stor209[stor209.length]].field_0 = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = presaleChar[presaleChar.length]
        continue 
}

function sub_0ab135a4(?) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        if arg2 + -arg1 + 1 > test266151307():
            revert with 0, 65
        mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
        if not arg2 + -arg1 + 1:
            idx = 0
            while idx < arg2 + -arg1 + 1:
                if idx > !arg1:
                    revert with 0, 17
                if idx + arg1 >= char.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(3 * idx) + (3 * arg1) + ('name', 'char', 201)].field_0
                if idx > !arg1:
                    revert with 0, 17
                mem[0] = idx + arg1
                mem[32] = 103
                if not ownerOf[idx + arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if idx >= mem[(32 * arg2 + -arg1 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg2 + -arg1 + 1) + 160] = ownerOf[idx + arg1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(64 * arg2 + -arg1 + 1) + 160] = 64
            mem[(64 * arg2 + -arg1 + 1) + 224] = mem[96]
            mem[(64 * arg2 + -arg1 + 1) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * mem[96]) + 96
            _100 = mem[(32 * arg2 + -arg1 + 1) + 128]
            mem[(64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 256] = mem[(32 * arg2 + -arg1 + 1) + 128]
            idx = 0
            s = (64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 288
            t = (32 * arg2 + -arg1 + 1) + 160
            while idx < _100:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=mem[96], data=mem[(64 * arg2 + -arg1 + 1) + 256 len (32 * mem[96]) + (32 * _100) + 32]), (32 * mem[96]) + 96
        mem[(32 * arg2 + -arg1 + 1) + 160 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if idx > !arg1:
                revert with 0, 17
            if idx + arg1 >= char.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(3 * idx) + (3 * arg1) + ('name', 'char', 201)].field_0
            if idx > !arg1:
                revert with 0, 17
            mem[0] = idx + arg1
            mem[32] = 103
            if not ownerOf[idx + arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if idx >= mem[(32 * arg2 + -arg1 + 1) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg2 + -arg1 + 1) + 160] = ownerOf[idx + arg1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * arg2 + -arg1 + 1) + 160] = 64
        mem[(64 * arg2 + -arg1 + 1) + 224] = mem[96]
        mem[(64 * arg2 + -arg1 + 1) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * mem[96]) + 96
        _102 = mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 256] = mem[(32 * arg2 + -arg1 + 1) + 128]
        idx = 0
        s = (64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 288
        t = (32 * arg2 + -arg1 + 1) + 160
        while idx < _102:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=mem[96], data=mem[(64 * arg2 + -arg1 + 1) + 256 len (32 * mem[96]) + (32 * _102) + 32]), (32 * mem[96]) + 96
    mem[128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[(32 * arg2 + -arg1 + 1) + 128] = arg2 + -arg1 + 1
    if not arg2 + -arg1 + 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if idx > !arg1:
                revert with 0, 17
            if idx + arg1 >= char.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(3 * idx) + (3 * arg1) + ('name', 'char', 201)].field_0
            if idx > !arg1:
                revert with 0, 17
            mem[0] = idx + arg1
            mem[32] = 103
            if not ownerOf[idx + arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if idx >= mem[(32 * arg2 + -arg1 + 1) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg2 + -arg1 + 1) + 160] = ownerOf[idx + arg1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(64 * arg2 + -arg1 + 1) + 160] = 64
        mem[(64 * arg2 + -arg1 + 1) + 224] = mem[96]
        mem[(64 * arg2 + -arg1 + 1) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * mem[96]) + 96
        _104 = mem[(32 * arg2 + -arg1 + 1) + 128]
        mem[(64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 256] = mem[(32 * arg2 + -arg1 + 1) + 128]
        idx = 0
        s = (64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 288
        t = (32 * arg2 + -arg1 + 1) + 160
        while idx < _104:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=mem[96], data=mem[(64 * arg2 + -arg1 + 1) + 256 len (32 * mem[96]) + (32 * _104) + 32]), (32 * mem[96]) + 96
    mem[(32 * arg2 + -arg1 + 1) + 160 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = 0
    while idx < arg2 + -arg1 + 1:
        if idx > !arg1:
            revert with 0, 17
        if idx + arg1 >= char.length:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[(3 * idx) + (3 * arg1) + ('name', 'char', 201)].field_0
        if idx > !arg1:
            revert with 0, 17
        mem[0] = idx + arg1
        mem[32] = 103
        if not ownerOf[idx + arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if idx >= mem[(32 * arg2 + -arg1 + 1) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg2 + -arg1 + 1) + 160] = ownerOf[idx + arg1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg2 + -arg1 + 1) + 160] = 64
    mem[(64 * arg2 + -arg1 + 1) + 224] = mem[96]
    mem[(64 * arg2 + -arg1 + 1) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[(64 * arg2 + -arg1 + 1) + 192] = (32 * mem[96]) + 96
    _106 = mem[(32 * arg2 + -arg1 + 1) + 128]
    mem[(64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 256] = mem[(32 * arg2 + -arg1 + 1) + 128]
    idx = 0
    s = (64 * arg2 + -arg1 + 1) + (32 * mem[96]) + 288
    t = (32 * arg2 + -arg1 + 1) + 160
    while idx < _106:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=mem[96], data=mem[(64 * arg2 + -arg1 + 1) + 256 len (32 * mem[96]) + (32 * _106) + 32]), (32 * mem[96]) + 96
}

function getAllChar(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 + -arg1 + 1
    mem[64] = (32 * arg2 + -arg1 + 1) + 128
    if not arg2 + -arg1 + 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _32 = mem[64]
            mem[64] = mem[64] + 96
            mem[_32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_32 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_32 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _24 = mem[64]
        mem[mem[64]] = 32
        _26 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _26:
            _45 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_45 + 32]
            mem[t + 64] = bool(mem[_45 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _24 + (96 * _26) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 224
    mem[(32 * arg2 + -arg1 + 1) + 128] = 0
    mem[(32 * arg2 + -arg1 + 1) + 160] = 0
    mem[(32 * arg2 + -arg1 + 1) + 192] = 0
    mem[var19002] = var19001
    if not var19003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _80 = mem[64]
            mem[64] = mem[64] + 96
            mem[_80] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_80 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_80 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _80
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _74:
            _94 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_94 + 32]
            mem[t + 64] = bool(mem[_94 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _73 + (96 * _74) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 320
    mem[(32 * arg2 + -arg1 + 1) + 224] = 0
    mem[(32 * arg2 + -arg1 + 1) + 256] = 0
    mem[(32 * arg2 + -arg1 + 1) + 288] = 0
    mem[var23002] = var23001
    if not var23003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _128 = mem[64]
            mem[64] = mem[64] + 96
            mem[_128] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_128 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_128 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _128
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _121 = mem[64]
        mem[mem[64]] = 32
        _122 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _122:
            _142 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_142 + 32]
            mem[t + 64] = bool(mem[_142 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _121 + (96 * _122) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 416
    mem[(32 * arg2 + -arg1 + 1) + 320] = 0
    mem[(32 * arg2 + -arg1 + 1) + 352] = 0
    mem[(32 * arg2 + -arg1 + 1) + 384] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _176 = mem[64]
            mem[64] = mem[64] + 96
            mem[_176] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_176 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_176 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _176
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _169 = mem[64]
        mem[mem[64]] = 32
        _170 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _170:
            _190 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_190 + 32]
            mem[t + 64] = bool(mem[_190 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _169 + (96 * _170) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 512
    mem[(32 * arg2 + -arg1 + 1) + 416] = 0
    mem[(32 * arg2 + -arg1 + 1) + 448] = 0
    mem[(32 * arg2 + -arg1 + 1) + 480] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _224 = mem[64]
            mem[64] = mem[64] + 96
            mem[_224] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_224 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_224 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _224
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _217 = mem[64]
        mem[mem[64]] = 32
        _218 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _218:
            _238 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_238 + 32]
            mem[t + 64] = bool(mem[_238 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _217 + (96 * _218) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 608
    mem[(32 * arg2 + -arg1 + 1) + 512] = 0
    mem[(32 * arg2 + -arg1 + 1) + 544] = 0
    mem[(32 * arg2 + -arg1 + 1) + 576] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _272 = mem[64]
            mem[64] = mem[64] + 96
            mem[_272] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_272 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_272 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _272
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _265 = mem[64]
        mem[mem[64]] = 32
        _266 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _266:
            _286 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_286 + 32]
            mem[t + 64] = bool(mem[_286 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _265 + (96 * _266) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 704
    mem[(32 * arg2 + -arg1 + 1) + 608] = 0
    mem[(32 * arg2 + -arg1 + 1) + 640] = 0
    mem[(32 * arg2 + -arg1 + 1) + 672] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _320 = mem[64]
            mem[64] = mem[64] + 96
            mem[_320] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_320 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_320 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _320
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _313 = mem[64]
        mem[mem[64]] = 32
        _314 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _314:
            _334 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_334 + 32]
            mem[t + 64] = bool(mem[_334 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _313 + (96 * _314) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 800
    mem[(32 * arg2 + -arg1 + 1) + 704] = 0
    mem[(32 * arg2 + -arg1 + 1) + 736] = 0
    mem[(32 * arg2 + -arg1 + 1) + 768] = 0
    mem[var43002] = var43001
    if not var43003 - 1:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _368 = mem[64]
            mem[64] = mem[64] + 96
            mem[_368] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_368 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_368 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _368
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _361 = mem[64]
        mem[mem[64]] = 32
        _362 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _362:
            _382 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_382 + 32]
            mem[t + 64] = bool(mem[_382 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _361 + (96 * _362) + -mem[64] + 64
    mem[64] = (32 * arg2 + -arg1 + 1) + 896
    mem[(32 * arg2 + -arg1 + 1) + 800] = 0
    mem[(32 * arg2 + -arg1 + 1) + 832] = 0
    mem[(32 * arg2 + -arg1 + 1) + 864] = 0
    mem[var47002] = var47001
    if var47003 - 1:
        mem[64] = (32 * arg2 + -arg1 + 1) + 992
        mem[var51002] = var51001
        if not var51003 - 1:
            idx = 0
            while idx < arg2 + -arg1 + 1:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= char.length:
                    revert with 0, 50
                mem[0] = 201
                _464 = mem[64]
                mem[64] = mem[64] + 96
                mem[_464] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
                mem[_464 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
                mem[_464 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _464
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        # nil
    else:
        idx = 0
        while idx < arg2 + -arg1 + 1:
            if arg1 > !idx:
                revert with 0, 17
            if arg1 + idx >= char.length:
                revert with 0, 50
            mem[0] = 201
            _416 = mem[64]
            mem[64] = mem[64] + 96
            mem[_416] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_0
            mem[_416 + 32] = stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_256
            mem[_416 + 64] = bool(stor[(3 * arg1) + (3 * idx) + ('name', 'char', 201)].field_512)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _416
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _409 = mem[64]
        mem[mem[64]] = 32
        _410 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _410:
            _430 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_430 + 32]
            mem[t + 64] = bool(mem[_430 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _409 + (96 * _410) + -mem[64] + 64
}

function claimReward(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not arg1:
        mem[ceil32(ceil32(arg2.length)) + 97] = 1
        mem[ceil32(ceil32(arg2.length)) + 129] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg2.length)) + 161] = 40
        mem[ceil32(ceil32(arg2.length)) + 193 len 40] = call.data[calldata.size len 40]
        idx = 0
        while idx < 20:
            if 19 < idx:
                revert with 0, 17
            if -idx + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 8 * -idx + 19:
                if 8 * -idx + 19 > 255:
                    revert with 0, 17
                if 1 << 8 * -idx + 19 > -1:
                    revert with 0, 17
                if not 1 << 8 * -idx + 19:
                    revert with 0, 18
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * idx >= 40:
                revert with 0, 50
            mem[(2 * idx) + ceil32(ceil32(arg2.length)) + 193 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 1 >= 40:
                revert with 0, 50
            mem[(2 * idx) + ceil32(ceil32(arg2.length)) + 194 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2.length != 65:
            if signerAddress:
                revert with 0, 'Sign error'
        else:
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                if signerAddress:
                    revert with 0, 'Sign error'
            else:
                if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    if signerAddress:
                        revert with 0, 'Sign error'
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(0, 0, mem[ceil32(ceil32(arg2.length)) + 193 len 40], 0 >> 88)), 27, mem[128], mem[160]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if signerAddress != address(signer):
                        revert with 0, 'Sign error'
    else:
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
        mem[ceil32(ceil32(arg2.length)) + 97] = s
        if s:
            mem[ceil32(ceil32(arg2.length)) + 129 len s] = call.data[calldata.size len s]
        if s < 1:
            revert with 0, 17
        t = s - 1
        idx = arg1
        while idx:
            if 48 > !(idx % 10):
                revert with 0, 17
            if t >= s:
                revert with 0, 50
            mem[t + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            if t:
                if t < 1:
                    revert with 0, 17
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 129] = 40
            mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 161 len 40] = call.data[calldata.size len 40]
            idx = 0
            while idx < 20:
                if 19 < idx:
                    revert with 0, 17
                if -idx + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 8 * -idx + 19:
                    if 8 * -idx + 19 > 255:
                        revert with 0, 17
                    if 1 << 8 * -idx + 19 > -1:
                        revert with 0, 17
                    if not 1 << 8 * -idx + 19:
                        revert with 0, 18
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= 40:
                    revert with 0, 50
                mem[(2 * idx) + ceil32(ceil32(arg2.length)) + ceil32(s) + 161 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= 40:
                    revert with 0, 50
                mem[(2 * idx) + ceil32(ceil32(arg2.length)) + ceil32(s) + 162 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            t = 0
            while t < s:
                mem[t + ceil32(ceil32(arg2.length)) + ceil32(s) + 257] = mem[t + ceil32(ceil32(arg2.length)) + 129]
                t = t + 32
                continue 
            mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 257] = 0x3078000000000000000000000000000000000000000000000000000000000000
            idx = 0
            while idx < 40:
                mem[idx + ceil32(ceil32(arg2.length)) + ceil32(s) + s + 259] = mem[idx + ceil32(ceil32(arg2.length)) + ceil32(s) + 161]
                idx = idx + 32
                continue 
            mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 299] = 0
            t = 0
            while t < s + 42:
                mem[t + ceil32(ceil32(arg2.length)) + ceil32(s) + s + 331] = mem[t + ceil32(ceil32(arg2.length)) + ceil32(s) + 257]
                t = t + 32
                continue 
            if floor32(s + 73) > s + 42:
                mem[(2 * s) + ceil32(ceil32(arg2.length)) + ceil32(s) + 373] = 0
            if arg2.length != 65:
                if signerAddress:
                    revert with 0, 'Sign error'
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                    if signerAddress:
                        revert with 0, 'Sign error'
                else:
                    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        if signerAddress:
                            revert with 0, 'Sign error'
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 331 len s + 42])), 27, mem[128], mem[160]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if signerAddress != address(signer):
                            revert with 0, 'Sign error'
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] < 0
            if openPresaleTime:
                revert with 0, 'Disable Function'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 129] = 40
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 161 len 40] = call.data[calldata.size len 40]
        idx = 0
        while idx < 20:
            if 19 < idx:
                revert with 0, 17
            if -idx + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 8 * -idx + 19:
                if 8 * -idx + 19 > 255:
                    revert with 0, 17
                if 1 << 8 * -idx + 19 > -1:
                    revert with 0, 17
                if not 1 << 8 * -idx + 19:
                    revert with 0, 18
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * idx >= 40:
                revert with 0, 50
            mem[(2 * idx) + ceil32(ceil32(arg2.length)) + ceil32(s) + 161 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 1 >= 40:
                revert with 0, 50
            mem[(2 * idx) + ceil32(ceil32(arg2.length)) + ceil32(s) + 162 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 257 len ceil32(s)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(s)]
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 257] = 0x3078000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 259 len 64] = mem[ceil32(ceil32(arg2.length)) + ceil32(s) + 161 len 64]
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 299] = 0
        mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 331 len floor32(s + 73)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(s)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(s)) + 257 len floor32(s + 73) - ceil32(s)]
        if floor32(s + 73) <= s + 42:
            if arg2.length != 65:
                if signerAddress:
                    revert with 0, 'Sign error'
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                    if signerAddress:
                        revert with 0, 'Sign error'
                else:
                    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        if signerAddress:
                            revert with 0, 'Sign error'
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(ceil32(arg2.length)) + ceil32(s) + s + 331 len s + 42])), 27, mem[128], mem[160]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if signerAddress != address(signer):
                            revert with 0, 'Sign error'
        else:
            if arg2.length != 65:
                if signerAddress:
                    revert with 0, 'Sign error'
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
                    if signerAddress:
                        revert with 0, 'Sign error'
                else:
                    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        if signerAddress:
                            revert with 0, 'Sign error'
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(s)], mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(s)) + 257 len s + -ceil32(s) + 42])), 27, mem[128], mem[160]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if signerAddress != address(signer):
                            revert with 0, 'Sign error'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 0
    if openPresaleTime:
        revert with 0, 'Disable Function'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
