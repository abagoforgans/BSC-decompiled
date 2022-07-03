contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2)
#
const GIFT_SUPPLY = 80

const MAX_SUPPLY = 5475


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
uint256 whitelistStart;
uint256 start;
uint256 price;
array of struct stor204;
array of struct stor205;
uint256 stor206;
uint256 stor207;
mapping of uint256 purchased;
uint256 totalSupply;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function purchased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return purchased[arg1]
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

function owner() {
    return owner
}

function whitelistStart() {
    return whitelistStart
}

function price() {
    return price
}

function start() {
    return start
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_dec82425(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor206 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setStart(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    start = arg1
}

function sub_80941f71(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelistStart = arg1
}

function setLimitPerAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = arg1
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xce2a22b4b52fc18e4343cc075e9fd8e6c438286f != msg.sender:
        revert with 0, 'Not deployer'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
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

function mintFirst() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply:
        revert with 0, 'Mint: First already minted'
    totalSupply++
    if not owner:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor209]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[stor151] > -2:
        revert with 0, 17
    balanceOf[stor151]++
    ownerOf[stor209] = owner
    emit Transfer(0, owner, totalSupply);
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

function mintGift(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply < 5475:
        revert with 0, 'Mint: No gifts until all minted'
    if totalSupply >= 5555:
        revert with 0, 'Mint: All minted'
    idx = 0
    while idx < arg2:
        if totalSupply < 5555:
            totalSupply++
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor209]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = totalSupply
            mem[32] = 103
            ownerOf[stor209] = arg1
            emit Transfer(0, arg1, totalSupply);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_de09af62(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor205[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor205.length = 0
            idx = 0
            while (uint255(stor205.length) * 0.5) + 31 / 32 > idx:
                stor205[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor205[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor205.length = 0
            idx = 0
            while stor205.length.field_1 + 31 / 32 > idx:
                stor205[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor204[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor204.length = 0
            idx = 0
            while (uint255(stor204.length) * 0.5) + 31 / 32 > idx:
                stor204[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor204[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor204.length = 0
            idx = 0
            while stor204.length.field_1 + 31 / 32 > idx:
                stor204[idx].field_0 = 0
                idx = idx + 1
                continue 
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

function publicMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if start > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint: Public sale not yet started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint: Can only mint so many at a time fren'
    if arg1 > stor206:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint: Can only mint so many at a time fren'
    if totalSupply >= 5475:
        revert with 0, 'Mint: All tokens minted'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if price * arg1 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Mint: ETH amount is insufficient, don't cheap out on us!'
    if purchased[msg.sender] > !arg1:
        revert with 0, 17
    purchased[msg.sender] += arg1
    if purchased[msg.sender] > stor207:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint: Don't be greedy share the love!'
    idx = 0
    while idx < arg1:
        if totalSupply < 5475:
            totalSupply++
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor209]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalSupply
            mem[32] = 103
            ownerOf[stor209] = msg.sender
            emit Transfer(0, msg.sender, totalSupply);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function sub_cf212620(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor101[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor101.length = 0
            idx = 0
            while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
                stor101[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor101[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor101.length = 0
            idx = 0
            while stor101.length.field_1 + 31 / 32 > idx:
                stor101[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor102[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor102.length = 0
            idx = 0
            while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
                stor102[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor102[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor102.length = 0
            idx = 0
            while stor102.length.field_1 + 31 / 32 > idx:
                stor102[idx].field_0 = 0
                idx = idx + 1
                continue 
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

function sub_7ea685c3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if whitelistStart > block.timestamp:
        revert with 0, 'Mint: Whitelist sale not yet started'
    if totalSupply >= 5475:
        revert with 0, 'Mint: All tokens minted'
    if price and arg2 > -1 / price:
        revert with 0, 17
    if price * arg2 > msg.value:
        revert with 0, 'Mint: ETH amount is insufficient, don't cheap out on us!'
    mem[ceil32(ceil32(arg1.length)) + 129] = msg.sender
    mem[ceil32(ceil32(arg1.length)) + 161] = arg3
    mem[ceil32(ceil32(arg1.length)) + 97] = 64
    hash = sha256hash(msg.sender, arg3) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 65 == arg1.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg1.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(hash, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != owner:
        revert with 0, 'Mint: Invalid Signature, are you whitelisted bud?'
    if purchased[msg.sender] > !arg2:
        revert with 0, 17
    purchased[msg.sender] += arg2
    if arg3 < purchased[msg.sender]:
        revert with 0, 'Mint: Don't be greedy share the love!'
    idx = 0
    while idx < arg2:
        if totalSupply < 5475:
            totalSupply++
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor209]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = totalSupply
            mem[32] = 103
            ownerOf[stor209] = msg.sender
            emit Transfer(0, msg.sender, totalSupply);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
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
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
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

function baseTokenURI() {
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor204.length):
            if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor204.length):
                if 31 < uint255(stor204.length) * 0.5:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor204.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        else:
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        mem[ceil32(uint255(stor204.length) * 0.5) + 192 len ceil32(uint255(stor204.length) * 0.5)] = mem[128 len ceil32(uint255(stor204.length) * 0.5)]
        if ceil32(uint255(stor204.length) * 0.5) > uint255(stor204.length) * 0.5:
            mem[(uint255(stor204.length) * 0.5) + ceil32(uint255(stor204.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)], mem[(2 * ceil32(uint255(stor204.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor204.length) * 0.5)]), 
    if bool(stor204.length) == stor204.length.field_1 < 32:
        revert with 0, 34
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor204.length):
            if 31 < uint255(stor204.length) * 0.5:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while (uint255(stor204.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if stor204.length.field_1:
            if 31 < stor204.length.field_1:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while stor204.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
    if ceil32(stor204.length.field_1) > stor204.length.field_1:
        mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
}

function sub_c5149ca8(?) {
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor205.length):
            if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor205.length):
                if 31 < uint255(stor205.length) * 0.5:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor205.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)])
                mem[128] = 256 * stor205.length.field_8
        else:
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if stor205.length.field_1:
                if 31 < stor205.length.field_1:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while stor205.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)])
                mem[128] = 256 * stor205.length.field_8
        mem[ceil32(uint255(stor205.length) * 0.5) + 192 len ceil32(uint255(stor205.length) * 0.5)] = mem[128 len ceil32(uint255(stor205.length) * 0.5)]
        if ceil32(uint255(stor205.length) * 0.5) > uint255(stor205.length) * 0.5:
            mem[(uint255(stor205.length) * 0.5) + ceil32(uint255(stor205.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)], mem[(2 * ceil32(uint255(stor205.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor205.length) * 0.5)]), 
    if bool(stor205.length) == stor205.length.field_1 < 32:
        revert with 0, 34
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor205.length):
            if 31 < uint255(stor205.length) * 0.5:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while (uint255(stor205.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    else:
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if stor205.length.field_1:
            if 31 < stor205.length.field_1:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while stor205.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    mem[ceil32(stor205.length.field_1) + 192 len ceil32(stor205.length.field_1)] = mem[128 len ceil32(stor205.length.field_1)]
    if ceil32(stor205.length.field_1) > stor205.length.field_1:
        mem[stor205.length.field_1 + ceil32(stor205.length.field_1) + 192] = 0
    return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)], mem[(2 * ceil32(stor205.length.field_1)) + 192 len 2 * ceil32(stor205.length.field_1)]), 
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if not balanceOf[address(arg1)]:
        if var38002 > totalSupply:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not ownerOf[var42001]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if address(var46001) != arg1:
            if var50001 == -1:
                revert with 0, 17
            if var62002 <= totalSupply:
                if not ownerOf[var66001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                # nil
            else:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
        else:
            if var48002 >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * var50001) + 128] = var50003
            if var50005 == -1:
                revert with 0, 17
            if var52001 == -1:
                revert with 0, 17
            if var64002 <= totalSupply:
                # nil
            else:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = mem[128 len 32 * balanceOf[address(arg1)]]
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        if var39002 > totalSupply:
            mem[(32 * balanceOf[address(arg1)]) + 128] = 32
            mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
            mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
            return memory
              from (32 * balanceOf[address(arg1)]) + 128
               len (96 * balanceOf[address(arg1)]) + 64
        if not ownerOf[var43001]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if address(var47001) != arg1:
            if var51001 == -1:
                revert with 0, 17
            if var63002 <= totalSupply:
                if not ownerOf[var67001]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                # nil
            else:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
        else:
            if var49002 >= balanceOf[address(arg1)]:
                revert with 0, 50
            mem[(32 * var51001) + 128] = var51003
            if var51005 == -1:
                revert with 0, 17
            if var53001 == -1:
                revert with 0, 17
            if var65002 <= totalSupply:
                # nil
            else:
                mem[(32 * balanceOf[address(arg1)]) + 128] = 32
                mem[(32 * balanceOf[address(arg1)]) + 160] = balanceOf[address(arg1)]
                mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
                return memory
                  from (32 * balanceOf[address(arg1)]) + 128
                   len (96 * balanceOf[address(arg1)]) + 64
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor205.length) * 0.5 <= 0:
            if bool(stor204.length):
                if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor204.length):
                    if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor204.length):
                        if 31 < uint255(stor204.length) * 0.5:
                            mem[128] = uint256(stor204.field_0)
                            idx = 128
                            s = 0
                            while (uint255(stor204.length) * 0.5) + 96 > idx:
                                mem[idx + 32] = stor204[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                        mem[128] = 256 * stor204.length.field_8
                else:
                    if bool(stor204.length) == stor204.length.field_1 < 32:
                        revert with 0, 34
                    if stor204.length.field_1:
                        if 31 < stor204.length.field_1:
                            mem[128] = uint256(stor204.field_0)
                            idx = 128
                            s = 0
                            while stor204.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor204[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                        mem[128] = 256 * stor204.length.field_8
                mem[ceil32(uint255(stor204.length) * 0.5) + 192 len ceil32(uint255(stor204.length) * 0.5)] = mem[128 len ceil32(uint255(stor204.length) * 0.5)]
                if ceil32(uint255(stor204.length) * 0.5) > uint255(stor204.length) * 0.5:
                    mem[(uint255(stor204.length) * 0.5) + ceil32(uint255(stor204.length) * 0.5) + 192] = 0
                return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)], mem[(2 * ceil32(uint255(stor204.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor204.length) * 0.5)]), 
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if bool(stor204.length):
                if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor204.length):
                    if 31 < uint255(stor204.length) * 0.5:
                        mem[128] = uint256(stor204.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor204.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor204[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
                    mem[128] = 256 * stor204.length.field_8
            else:
                if bool(stor204.length) == stor204.length.field_1 < 32:
                    revert with 0, 34
                if stor204.length.field_1:
                    if 31 < stor204.length.field_1:
                        mem[128] = uint256(stor204.field_0)
                        idx = 128
                        s = 0
                        while stor204.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor204[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
                    mem[128] = 256 * stor204.length.field_8
            mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
            if ceil32(stor204.length.field_1) > stor204.length.field_1:
                mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
            return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor205.length):
                if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor205.length):
                    mem[192] = Mask(248, 8, stor205.length)
                else:
                    if bool(stor205.length) != 1:
                        mem[64] = 1
                        _433 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_433) > _433:
                            mem[_433 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_433) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < uint255(stor205.length) * 0.5:
                        mem[idx + 192] = stor205[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor205.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor205.length) * 0.5) + 193] = 32
                mem[(uint255(stor205.length) * 0.5) + 225] = mem[160]
                mem[(uint255(stor205.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor205.length) * 0.5) + 257] = 0
                return Array(len=mem[160], data=mem[(uint255(stor205.length) * 0.5) + 257 len ceil32(mem[160])])
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor205.length):
                mem[192] = Mask(248, 8, stor205.length)
            else:
                if bool(stor205.length) != 1:
                    mem[64] = 1
                    _437 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_437) > _437:
                        mem[_437 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_437) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor205.length.field_1:
                    mem[idx + 192] = stor205[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor205.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor205.length.field_1 + 193] = 32
            mem[stor205.length.field_1 + 225] = mem[160]
            mem[stor205.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor205.length.field_1 + 257] = 0
            return Array(len=mem[160], data=mem[stor205.length.field_1 + 257 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _942 = mem[64]
            if bool(stor205.length):
                if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor205.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor205.length)
                    _1014 = mem[96]
                    mem[mem[64] + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_1014) <= _1014:
                        _1422 = mem[64]
                        mem[64] = _1014 + _942 + (uint255(stor205.length) * 0.5) + 32
                        mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 32] = 32
                        _1510 = mem[_1422]
                        mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 64] = mem[_1422]
                        mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1510)] = mem[_1422 + 32 len ceil32(_1510)]
                        if ceil32(_1510) > _1510:
                            mem[_1510 + _1014 + _942 + (uint255(stor205.length) * 0.5) + 96] = 0
                        return 32, mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1510) + 32]
                    mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 32] = 0
                    _1423 = mem[64]
                    mem[64] = _1014 + _942 + (uint255(stor205.length) * 0.5) + 32
                    mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 32] = 32
                    _1511 = mem[_1423]
                    mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 64] = mem[_1423]
                    mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1511)] = mem[_1423 + 32 len ceil32(_1511)]
                    if ceil32(_1511) > _1511:
                        mem[_1511 + _1014 + _942 + (uint255(stor205.length) * 0.5) + 96] = 0
                    return 32, mem[_1014 + _942 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1511) + 32]
                if bool(stor205.length) != 1:
                    _1030 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_1030) <= _1030:
                        _1424 = mem[64]
                        mem[64] = _1030
                        mem[_1030] = 32
                        _1512 = mem[_1424]
                        mem[_1030 + 32] = mem[_1424]
                        mem[_1030 + 64 len ceil32(_1512)] = mem[_1424 + 32 len ceil32(_1512)]
                        if ceil32(_1512) > _1512:
                            mem[_1512 + _1030 + 64] = 0
                        return 32, mem[_1030 + 32 len ceil32(_1512) + 32]
                    mem[_1030] = 0
                    _1425 = mem[64]
                    mem[64] = _1030
                    mem[_1030] = 32
                    _1513 = mem[_1425]
                    mem[_1030 + 32] = mem[_1425]
                    mem[_1030 + 64 len ceil32(_1513)] = mem[_1425 + 32 len ceil32(_1513)]
                    if ceil32(_1513) > _1513:
                        mem[_1513 + _1030 + 64] = 0
                    return 32, mem[_1030 + 32 len ceil32(_1513) + 32]
                mem[0] = 205
                idx = 0
                s = 0
                while idx < uint255(stor205.length) * 0.5:
                    mem[idx + _942 + 32] = stor205[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1414 = mem[96]
                mem[_942 + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1414) <= _1414:
                    _1778 = mem[64]
                    mem[64] = _1414 + _942 + (uint255(stor205.length) * 0.5) + 32
                    mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 32] = 32
                    _1870 = mem[_1778]
                    mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 64] = mem[_1778]
                    mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1870)] = mem[_1778 + 32 len ceil32(_1870)]
                    if ceil32(_1870) > _1870:
                        mem[_1870 + _1414 + _942 + (uint255(stor205.length) * 0.5) + 96] = 0
                    return 32, mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1870) + 32]
                mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 32] = 0
                _1779 = mem[64]
                mem[64] = _1414 + _942 + (uint255(stor205.length) * 0.5) + 32
                mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1871 = mem[_1779]
                mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 64] = mem[_1779]
                mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1871)] = mem[_1779 + 32 len ceil32(_1871)]
                if ceil32(_1871) > _1871:
                    mem[_1871 + _1414 + _942 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1414 + _942 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1871) + 32]
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor205.length):
                mem[mem[64] + 32] = Mask(248, 8, stor205.length)
                _1031 = mem[96]
                mem[mem[64] + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _1426 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor205.length.field_1 + 32
                    mem[mem[96] + _942 + stor205.length.field_1 + 32] = 32
                    _1514 = mem[_1426]
                    mem[_1031 + _942 + stor205.length.field_1 + 64] = mem[_1426]
                    mem[_1031 + _942 + stor205.length.field_1 + 96 len ceil32(_1514)] = mem[_1426 + 32 len ceil32(_1514)]
                    if ceil32(_1514) > _1514:
                        mem[_1514 + _1031 + _942 + stor205.length.field_1 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1514) + _1031 + _942 + stor205.length.field_1 + -mem[64] + 96
                mem[mem[96] + mem[64] + stor205.length.field_1 + 32] = 0
                _1427 = mem[64]
                mem[64] = _1031 + _942 + stor205.length.field_1 + 32
                mem[_1031 + _942 + stor205.length.field_1 + 32] = 32
                _1515 = mem[_1427]
                mem[_1031 + _942 + stor205.length.field_1 + 64] = mem[_1427]
                mem[_1031 + _942 + stor205.length.field_1 + 96 len ceil32(_1515)] = mem[_1427 + 32 len ceil32(_1515)]
                if ceil32(_1515) > _1515:
                    mem[_1515 + _1031 + _942 + stor205.length.field_1 + 96] = 0
                return 32, mem[_1031 + _942 + stor205.length.field_1 + 64 len ceil32(_1515) + 32]
            if bool(stor205.length) != 1:
                _1038 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1038) <= _1038:
                    _1428 = mem[64]
                    mem[64] = _1038
                    mem[_1038] = 32
                    _1516 = mem[_1428]
                    mem[_1038 + 32] = mem[_1428]
                    mem[_1038 + 64 len ceil32(_1516)] = mem[_1428 + 32 len ceil32(_1516)]
                    if ceil32(_1516) > _1516:
                        mem[_1516 + _1038 + 64] = 0
                    return 32, mem[_1038 + 32 len ceil32(_1516) + 32]
                mem[_1038] = 0
                _1429 = mem[64]
                mem[64] = _1038
                mem[_1038] = 32
                _1517 = mem[_1429]
                mem[_1038 + 32] = mem[_1429]
                mem[_1038 + 64 len ceil32(_1517)] = mem[_1429 + 32 len ceil32(_1517)]
                if ceil32(_1517) > _1517:
                    mem[_1517 + _1038 + 64] = 0
                return 32, mem[_1038 + 32 len ceil32(_1517) + 32]
            mem[0] = 205
            idx = 0
            s = 0
            while idx < stor205.length.field_1:
                mem[idx + _942 + 32] = stor205[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1415 = mem[96]
            mem[_942 + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1415) <= _1415:
                _1788 = mem[64]
                mem[64] = _1415 + _942 + stor205.length.field_1 + 32
                mem[_1415 + _942 + stor205.length.field_1 + 32] = 32
                _1872 = mem[_1788]
                mem[_1415 + _942 + stor205.length.field_1 + 64] = mem[_1788]
                mem[_1415 + _942 + stor205.length.field_1 + 96 len ceil32(_1872)] = mem[_1788 + 32 len ceil32(_1872)]
                if ceil32(_1872) > _1872:
                    mem[_1872 + _1415 + _942 + stor205.length.field_1 + 96] = 0
                return 32, mem[_1415 + _942 + stor205.length.field_1 + 64 len ceil32(_1872) + 32]
            mem[_1415 + _942 + stor205.length.field_1 + 32] = 0
            _1789 = mem[64]
            mem[64] = _1415 + _942 + stor205.length.field_1 + 32
            mem[_1415 + _942 + stor205.length.field_1 + 32] = 32
            _1873 = mem[_1789]
            mem[_1415 + _942 + stor205.length.field_1 + 64] = mem[_1789]
            mem[_1415 + _942 + stor205.length.field_1 + 96 len ceil32(_1873)] = mem[_1789 + 32 len ceil32(_1873)]
            if ceil32(_1873) > _1873:
                mem[_1873 + _1415 + _942 + stor205.length.field_1 + 96] = 0
            return 32, mem[_1415 + _942 + stor205.length.field_1 + 64 len ceil32(_1873) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _943 = mem[64]
        if bool(stor205.length):
            if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor205.length):
                mem[mem[64] + 32] = Mask(248, 8, stor205.length)
                _1016 = mem[96]
                mem[mem[64] + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1016) <= _1016:
                    _1430 = mem[64]
                    mem[64] = _1016 + _943 + (uint255(stor205.length) * 0.5) + 32
                    mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 32] = 32
                    _1518 = mem[_1430]
                    mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 64] = mem[_1430]
                    mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1518)] = mem[_1430 + 32 len ceil32(_1518)]
                    if ceil32(_1518) > _1518:
                        mem[_1518 + _1016 + _943 + (uint255(stor205.length) * 0.5) + 96] = 0
                    return 32, mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1518) + 32]
                mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 32] = 0
                _1431 = mem[64]
                mem[64] = _1016 + _943 + (uint255(stor205.length) * 0.5) + 32
                mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1519 = mem[_1431]
                mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 64] = mem[_1431]
                mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1519)] = mem[_1431 + 32 len ceil32(_1519)]
                if ceil32(_1519) > _1519:
                    mem[_1519 + _1016 + _943 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1016 + _943 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1519) + 32]
            if bool(stor205.length) != 1:
                _1032 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1032) <= _1032:
                    _1432 = mem[64]
                    mem[64] = _1032
                    mem[_1032] = 32
                    _1520 = mem[_1432]
                    mem[_1032 + 32] = mem[_1432]
                    mem[_1032 + 64 len ceil32(_1520)] = mem[_1432 + 32 len ceil32(_1520)]
                    if ceil32(_1520) > _1520:
                        mem[_1520 + _1032 + 64] = 0
                    return 32, mem[_1032 + 32 len ceil32(_1520) + 32]
                mem[_1032] = 0
                _1433 = mem[64]
                mem[64] = _1032
                mem[_1032] = 32
                _1521 = mem[_1433]
                mem[_1032 + 32] = mem[_1433]
                mem[_1032 + 64 len ceil32(_1521)] = mem[_1433 + 32 len ceil32(_1521)]
                if ceil32(_1521) > _1521:
                    mem[_1521 + _1032 + 64] = 0
                return 32, mem[_1032 + 32 len ceil32(_1521) + 32]
            mem[0] = 205
            idx = 0
            s = 0
            while idx < uint255(stor205.length) * 0.5:
                mem[idx + _943 + 32] = stor205[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1416 = mem[96]
            mem[_943 + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1416) <= _1416:
                _1798 = mem[64]
                mem[64] = _1416 + _943 + (uint255(stor205.length) * 0.5) + 32
                mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1874 = mem[_1798]
                mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 64] = mem[_1798]
                mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1874)] = mem[_1798 + 32 len ceil32(_1874)]
                if ceil32(_1874) > _1874:
                    mem[_1874 + _1416 + _943 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1874) + 32]
            mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 32] = 0
            _1799 = mem[64]
            mem[64] = _1416 + _943 + (uint255(stor205.length) * 0.5) + 32
            mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 32] = 32
            _1875 = mem[_1799]
            mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 64] = mem[_1799]
            mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1875)] = mem[_1799 + 32 len ceil32(_1875)]
            if ceil32(_1875) > _1875:
                mem[_1875 + _1416 + _943 + (uint255(stor205.length) * 0.5) + 96] = 0
            return 32, mem[_1416 + _943 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1875) + 32]
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor205.length):
            mem[mem[64] + 32] = Mask(248, 8, stor205.length)
            _1033 = mem[96]
            mem[mem[64] + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _1434 = mem[64]
                mem[64] = mem[96] + mem[64] + stor205.length.field_1 + 32
                mem[mem[96] + _943 + stor205.length.field_1 + 32] = 32
                _1522 = mem[_1434]
                mem[_1033 + _943 + stor205.length.field_1 + 64] = mem[_1434]
                mem[_1033 + _943 + stor205.length.field_1 + 96 len ceil32(_1522)] = mem[_1434 + 32 len ceil32(_1522)]
                if ceil32(_1522) > _1522:
                    mem[_1522 + _1033 + _943 + stor205.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_1522) + _1033 + _943 + stor205.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor205.length.field_1 + 32] = 0
            _1435 = mem[64]
            mem[64] = _1033 + _943 + stor205.length.field_1 + 32
            mem[_1033 + _943 + stor205.length.field_1 + 32] = 32
            _1523 = mem[_1435]
            mem[_1033 + _943 + stor205.length.field_1 + 64] = mem[_1435]
            mem[_1033 + _943 + stor205.length.field_1 + 96 len ceil32(_1523)] = mem[_1435 + 32 len ceil32(_1523)]
            if ceil32(_1523) > _1523:
                mem[_1523 + _1033 + _943 + stor205.length.field_1 + 96] = 0
            return 32, mem[_1033 + _943 + stor205.length.field_1 + 64 len ceil32(_1523) + 32]
        if bool(stor205.length) != 1:
            _1040 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1040) <= _1040:
                _1436 = mem[64]
                mem[64] = _1040
                mem[_1040] = 32
                _1524 = mem[_1436]
                mem[_1040 + 32] = mem[_1436]
                mem[_1040 + 64 len ceil32(_1524)] = mem[_1436 + 32 len ceil32(_1524)]
                if ceil32(_1524) > _1524:
                    mem[_1524 + _1040 + 64] = 0
                return 32, mem[_1040 + 32 len ceil32(_1524) + 32]
            mem[_1040] = 0
            _1437 = mem[64]
            mem[64] = _1040
            mem[_1040] = 32
            _1525 = mem[_1437]
            mem[_1040 + 32] = mem[_1437]
            mem[_1040 + 64 len ceil32(_1525)] = mem[_1437 + 32 len ceil32(_1525)]
            if ceil32(_1525) > _1525:
                mem[_1525 + _1040 + 64] = 0
            return 32, mem[_1040 + 32 len ceil32(_1525) + 32]
        mem[0] = 205
        idx = 0
        s = 0
        while idx < stor205.length.field_1:
            mem[idx + _943 + 32] = stor205[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1417 = mem[96]
        mem[_943 + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1417) <= _1417:
            _1808 = mem[64]
            mem[64] = _1417 + _943 + stor205.length.field_1 + 32
            mem[_1417 + _943 + stor205.length.field_1 + 32] = 32
            _1876 = mem[_1808]
            mem[_1417 + _943 + stor205.length.field_1 + 64] = mem[_1808]
            mem[_1417 + _943 + stor205.length.field_1 + 96 len ceil32(_1876)] = mem[_1808 + 32 len ceil32(_1876)]
            if ceil32(_1876) > _1876:
                mem[_1876 + _1417 + _943 + stor205.length.field_1 + 96] = 0
            return 32, mem[_1417 + _943 + stor205.length.field_1 + 64 len ceil32(_1876) + 32]
        mem[_1417 + _943 + stor205.length.field_1 + 32] = 0
        _1809 = mem[64]
        mem[64] = _1417 + _943 + stor205.length.field_1 + 32
        mem[_1417 + _943 + stor205.length.field_1 + 32] = 32
        _1877 = mem[_1809]
        mem[_1417 + _943 + stor205.length.field_1 + 64] = mem[_1809]
        mem[_1417 + _943 + stor205.length.field_1 + 96 len ceil32(_1877)] = mem[_1809 + 32 len ceil32(_1877)]
        if ceil32(_1877) > _1877:
            mem[_1877 + _1417 + _943 + stor205.length.field_1 + 96] = 0
        return 32, mem[_1417 + _943 + stor205.length.field_1 + 64 len ceil32(_1877) + 32]
    if bool(stor205.length) == stor205.length.field_1 < 32:
        revert with 0, 34
    if stor205.length.field_1 <= 0:
        if bool(stor204.length):
            if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor204.length):
                if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor204.length):
                    if 31 < uint255(stor204.length) * 0.5:
                        mem[128] = uint256(stor204.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor204.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor204[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                    mem[128] = 256 * stor204.length.field_8
            else:
                if bool(stor204.length) == stor204.length.field_1 < 32:
                    revert with 0, 34
                if stor204.length.field_1:
                    if 31 < stor204.length.field_1:
                        mem[128] = uint256(stor204.field_0)
                        idx = 128
                        s = 0
                        while stor204.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor204[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                    mem[128] = 256 * stor204.length.field_8
            mem[ceil32(uint255(stor204.length) * 0.5) + 192 len ceil32(uint255(stor204.length) * 0.5)] = mem[128 len ceil32(uint255(stor204.length) * 0.5)]
            if ceil32(uint255(stor204.length) * 0.5) > uint255(stor204.length) * 0.5:
                mem[(uint255(stor204.length) * 0.5) + ceil32(uint255(stor204.length) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)], mem[(2 * ceil32(uint255(stor204.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor204.length) * 0.5)]), 
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if bool(stor204.length):
            if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor204.length):
                if 31 < uint255(stor204.length) * 0.5:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor204.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
                mem[128] = 256 * stor204.length.field_8
        else:
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
                mem[128] = 256 * stor204.length.field_8
        mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
        if ceil32(stor204.length.field_1) > stor204.length.field_1:
            mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
        return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor205.length):
            if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor205.length):
                mem[192] = Mask(248, 8, stor205.length)
            else:
                if bool(stor205.length) != 1:
                    mem[64] = 1
                    _441 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_441) > _441:
                        mem[_441 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_441) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < uint255(stor205.length) * 0.5:
                    mem[idx + 192] = stor205[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor205.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor205.length) * 0.5) + 193] = 32
            mem[(uint255(stor205.length) * 0.5) + 225] = mem[160]
            mem[(uint255(stor205.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor205.length) * 0.5) + 257] = 0
            return Array(len=mem[160], data=mem[(uint255(stor205.length) * 0.5) + 257 len ceil32(mem[160])])
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor205.length):
            mem[192] = Mask(248, 8, stor205.length)
        else:
            if bool(stor205.length) != 1:
                mem[64] = 1
                _445 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_445) > _445:
                    mem[_445 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_445) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor205.length.field_1:
                mem[idx + 192] = stor205[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor205.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor205.length.field_1 + 193] = 32
        mem[stor205.length.field_1 + 225] = mem[160]
        mem[stor205.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor205.length.field_1 + 257] = 0
        return Array(len=mem[160], data=mem[stor205.length.field_1 + 257 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _944 = mem[64]
        if bool(stor205.length):
            if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor205.length):
                mem[mem[64] + 32] = Mask(248, 8, stor205.length)
                _1022 = mem[96]
                mem[mem[64] + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1022) <= _1022:
                    _1446 = mem[64]
                    mem[64] = _1022 + _944 + (uint255(stor205.length) * 0.5) + 32
                    mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 32] = 32
                    _1526 = mem[_1446]
                    mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 64] = mem[_1446]
                    mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1526)] = mem[_1446 + 32 len ceil32(_1526)]
                    if ceil32(_1526) > _1526:
                        mem[_1526 + _1022 + _944 + (uint255(stor205.length) * 0.5) + 96] = 0
                    return 32, mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1526) + 32]
                mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 32] = 0
                _1447 = mem[64]
                mem[64] = _1022 + _944 + (uint255(stor205.length) * 0.5) + 32
                mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1527 = mem[_1447]
                mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 64] = mem[_1447]
                mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1527)] = mem[_1447 + 32 len ceil32(_1527)]
                if ceil32(_1527) > _1527:
                    mem[_1527 + _1022 + _944 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1022 + _944 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1527) + 32]
            if bool(stor205.length) != 1:
                _1034 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1034) <= _1034:
                    _1448 = mem[64]
                    mem[64] = _1034
                    mem[_1034] = 32
                    _1528 = mem[_1448]
                    mem[_1034 + 32] = mem[_1448]
                    mem[_1034 + 64 len ceil32(_1528)] = mem[_1448 + 32 len ceil32(_1528)]
                    if ceil32(_1528) > _1528:
                        mem[_1528 + _1034 + 64] = 0
                    return 32, mem[_1034 + 32 len ceil32(_1528) + 32]
                mem[_1034] = 0
                _1449 = mem[64]
                mem[64] = _1034
                mem[_1034] = 32
                _1529 = mem[_1449]
                mem[_1034 + 32] = mem[_1449]
                mem[_1034 + 64 len ceil32(_1529)] = mem[_1449 + 32 len ceil32(_1529)]
                if ceil32(_1529) > _1529:
                    mem[_1529 + _1034 + 64] = 0
                return 32, mem[_1034 + 32 len ceil32(_1529) + 32]
            mem[0] = 205
            idx = 0
            s = 0
            while idx < uint255(stor205.length) * 0.5:
                mem[idx + _944 + 32] = stor205[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1418 = mem[96]
            mem[_944 + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1418) <= _1418:
                _1818 = mem[64]
                mem[64] = _1418 + _944 + (uint255(stor205.length) * 0.5) + 32
                mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1878 = mem[_1818]
                mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 64] = mem[_1818]
                mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1878)] = mem[_1818 + 32 len ceil32(_1878)]
                if ceil32(_1878) > _1878:
                    mem[_1878 + _1418 + _944 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1878) + 32]
            mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 32] = 0
            _1819 = mem[64]
            mem[64] = _1418 + _944 + (uint255(stor205.length) * 0.5) + 32
            mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 32] = 32
            _1879 = mem[_1819]
            mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 64] = mem[_1819]
            mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1879)] = mem[_1819 + 32 len ceil32(_1879)]
            if ceil32(_1879) > _1879:
                mem[_1879 + _1418 + _944 + (uint255(stor205.length) * 0.5) + 96] = 0
            return 32, mem[_1418 + _944 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1879) + 32]
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor205.length):
            mem[mem[64] + 32] = Mask(248, 8, stor205.length)
            _1035 = mem[96]
            mem[mem[64] + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _1450 = mem[64]
                mem[64] = mem[96] + mem[64] + stor205.length.field_1 + 32
                mem[mem[96] + _944 + stor205.length.field_1 + 32] = 32
                _1530 = mem[_1450]
                mem[_1035 + _944 + stor205.length.field_1 + 64] = mem[_1450]
                mem[_1035 + _944 + stor205.length.field_1 + 96 len ceil32(_1530)] = mem[_1450 + 32 len ceil32(_1530)]
                if ceil32(_1530) > _1530:
                    mem[_1530 + _1035 + _944 + stor205.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_1530) + _1035 + _944 + stor205.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor205.length.field_1 + 32] = 0
            _1451 = mem[64]
            mem[64] = _1035 + _944 + stor205.length.field_1 + 32
            mem[_1035 + _944 + stor205.length.field_1 + 32] = 32
            _1531 = mem[_1451]
            mem[_1035 + _944 + stor205.length.field_1 + 64] = mem[_1451]
            mem[_1035 + _944 + stor205.length.field_1 + 96 len ceil32(_1531)] = mem[_1451 + 32 len ceil32(_1531)]
            if ceil32(_1531) > _1531:
                mem[_1531 + _1035 + _944 + stor205.length.field_1 + 96] = 0
            return 32, mem[_1035 + _944 + stor205.length.field_1 + 64 len ceil32(_1531) + 32]
        if bool(stor205.length) != 1:
            _1042 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1042) <= _1042:
                _1452 = mem[64]
                mem[64] = _1042
                mem[_1042] = 32
                _1532 = mem[_1452]
                mem[_1042 + 32] = mem[_1452]
                mem[_1042 + 64 len ceil32(_1532)] = mem[_1452 + 32 len ceil32(_1532)]
                if ceil32(_1532) > _1532:
                    mem[_1532 + _1042 + 64] = 0
                return 32, mem[_1042 + 32 len ceil32(_1532) + 32]
            mem[_1042] = 0
            _1453 = mem[64]
            mem[64] = _1042
            mem[_1042] = 32
            _1533 = mem[_1453]
            mem[_1042 + 32] = mem[_1453]
            mem[_1042 + 64 len ceil32(_1533)] = mem[_1453 + 32 len ceil32(_1533)]
            if ceil32(_1533) > _1533:
                mem[_1533 + _1042 + 64] = 0
            return 32, mem[_1042 + 32 len ceil32(_1533) + 32]
        mem[0] = 205
        idx = 0
        s = 0
        while idx < stor205.length.field_1:
            mem[idx + _944 + 32] = stor205[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1419 = mem[96]
        mem[_944 + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1419) <= _1419:
            _1828 = mem[64]
            mem[64] = _1419 + _944 + stor205.length.field_1 + 32
            mem[_1419 + _944 + stor205.length.field_1 + 32] = 32
            _1880 = mem[_1828]
            mem[_1419 + _944 + stor205.length.field_1 + 64] = mem[_1828]
            mem[_1419 + _944 + stor205.length.field_1 + 96 len ceil32(_1880)] = mem[_1828 + 32 len ceil32(_1880)]
            if ceil32(_1880) > _1880:
                mem[_1880 + _1419 + _944 + stor205.length.field_1 + 96] = 0
            return 32, mem[_1419 + _944 + stor205.length.field_1 + 64 len ceil32(_1880) + 32]
        mem[_1419 + _944 + stor205.length.field_1 + 32] = 0
        _1829 = mem[64]
        mem[64] = _1419 + _944 + stor205.length.field_1 + 32
        mem[_1419 + _944 + stor205.length.field_1 + 32] = 32
        _1881 = mem[_1829]
        mem[_1419 + _944 + stor205.length.field_1 + 64] = mem[_1829]
        mem[_1419 + _944 + stor205.length.field_1 + 96 len ceil32(_1881)] = mem[_1829 + 32 len ceil32(_1881)]
        if ceil32(_1881) > _1881:
            mem[_1881 + _1419 + _944 + stor205.length.field_1 + 96] = 0
        return 32, mem[_1419 + _944 + stor205.length.field_1 + 64 len ceil32(_1881) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _945 = mem[64]
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor205.length):
            mem[mem[64] + 32] = Mask(248, 8, stor205.length)
            _1024 = mem[96]
            mem[mem[64] + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1024) <= _1024:
                _1454 = mem[64]
                mem[64] = _1024 + _945 + (uint255(stor205.length) * 0.5) + 32
                mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 32] = 32
                _1534 = mem[_1454]
                mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 64] = mem[_1454]
                mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1534)] = mem[_1454 + 32 len ceil32(_1534)]
                if ceil32(_1534) > _1534:
                    mem[_1534 + _1024 + _945 + (uint255(stor205.length) * 0.5) + 96] = 0
                return 32, mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1534) + 32]
            mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 32] = 0
            _1455 = mem[64]
            mem[64] = _1024 + _945 + (uint255(stor205.length) * 0.5) + 32
            mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 32] = 32
            _1535 = mem[_1455]
            mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 64] = mem[_1455]
            mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1535)] = mem[_1455 + 32 len ceil32(_1535)]
            if ceil32(_1535) > _1535:
                mem[_1535 + _1024 + _945 + (uint255(stor205.length) * 0.5) + 96] = 0
            return 32, mem[_1024 + _945 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1535) + 32]
        if bool(stor205.length) != 1:
            _1036 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1036) <= _1036:
                _1456 = mem[64]
                mem[64] = _1036
                mem[_1036] = 32
                _1536 = mem[_1456]
                mem[_1036 + 32] = mem[_1456]
                mem[_1036 + 64 len ceil32(_1536)] = mem[_1456 + 32 len ceil32(_1536)]
                if ceil32(_1536) > _1536:
                    mem[_1536 + _1036 + 64] = 0
                return 32, mem[_1036 + 32 len ceil32(_1536) + 32]
            mem[_1036] = 0
            _1457 = mem[64]
            mem[64] = _1036
            mem[_1036] = 32
            _1537 = mem[_1457]
            mem[_1036 + 32] = mem[_1457]
            mem[_1036 + 64 len ceil32(_1537)] = mem[_1457 + 32 len ceil32(_1537)]
            if ceil32(_1537) > _1537:
                mem[_1537 + _1036 + 64] = 0
            return 32, mem[_1036 + 32 len ceil32(_1537) + 32]
        mem[0] = 205
        idx = 0
        s = 0
        while idx < uint255(stor205.length) * 0.5:
            mem[idx + _945 + 32] = stor205[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1420 = mem[96]
        mem[_945 + (uint255(stor205.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1420) <= _1420:
            _1838 = mem[64]
            mem[64] = _1420 + _945 + (uint255(stor205.length) * 0.5) + 32
            mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 32] = 32
            _1882 = mem[_1838]
            mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 64] = mem[_1838]
            mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1882)] = mem[_1838 + 32 len ceil32(_1882)]
            if ceil32(_1882) > _1882:
                mem[_1882 + _1420 + _945 + (uint255(stor205.length) * 0.5) + 96] = 0
            return 32, mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1882) + 32]
        mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 32] = 0
        _1839 = mem[64]
        mem[64] = _1420 + _945 + (uint255(stor205.length) * 0.5) + 32
        mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 32] = 32
        _1883 = mem[_1839]
        mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 64] = mem[_1839]
        mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 96 len ceil32(_1883)] = mem[_1839 + 32 len ceil32(_1883)]
        if ceil32(_1883) > _1883:
            mem[_1883 + _1420 + _945 + (uint255(stor205.length) * 0.5) + 96] = 0
        return 32, mem[_1420 + _945 + (uint255(stor205.length) * 0.5) + 64 len ceil32(_1883) + 32]
    if bool(stor205.length) == stor205.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor205.length):
        mem[mem[64] + 32] = Mask(248, 8, stor205.length)
        _1037 = mem[96]
        mem[mem[64] + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _1458 = mem[64]
            mem[64] = mem[96] + mem[64] + stor205.length.field_1 + 32
            mem[mem[96] + _945 + stor205.length.field_1 + 32] = 32
            _1538 = mem[_1458]
            mem[_1037 + _945 + stor205.length.field_1 + 64] = mem[_1458]
            mem[_1037 + _945 + stor205.length.field_1 + 96 len ceil32(_1538)] = mem[_1458 + 32 len ceil32(_1538)]
            if ceil32(_1538) > _1538:
                mem[_1538 + _1037 + _945 + stor205.length.field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_1538) + _1037 + _945 + stor205.length.field_1 + -mem[64] + 96
        mem[mem[96] + mem[64] + stor205.length.field_1 + 32] = 0
        _1459 = mem[64]
        mem[64] = _1037 + _945 + stor205.length.field_1 + 32
        mem[_1037 + _945 + stor205.length.field_1 + 32] = 32
        _1539 = mem[_1459]
        mem[_1037 + _945 + stor205.length.field_1 + 64] = mem[_1459]
        mem[_1037 + _945 + stor205.length.field_1 + 96 len ceil32(_1539)] = mem[_1459 + 32 len ceil32(_1539)]
        if ceil32(_1539) > _1539:
            mem[_1539 + _1037 + _945 + stor205.length.field_1 + 96] = 0
        return 32, mem[_1037 + _945 + stor205.length.field_1 + 64 len ceil32(_1539) + 32]
    if bool(stor205.length) != 1:
        _1044 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1044) <= _1044:
            _1460 = mem[64]
            mem[64] = _1044
            mem[_1044] = 32
            _1540 = mem[_1460]
            mem[_1044 + 32] = mem[_1460]
            mem[_1044 + 64 len ceil32(_1540)] = mem[_1460 + 32 len ceil32(_1540)]
            if ceil32(_1540) > _1540:
                mem[_1540 + _1044 + 64] = 0
            return 32, mem[_1044 + 32 len ceil32(_1540) + 32]
        mem[_1044] = 0
        _1461 = mem[64]
        mem[64] = _1044
        mem[_1044] = 32
        _1541 = mem[_1461]
        mem[_1044 + 32] = mem[_1461]
        mem[_1044 + 64 len ceil32(_1541)] = mem[_1461 + 32 len ceil32(_1541)]
        if ceil32(_1541) > _1541:
            mem[_1541 + _1044 + 64] = 0
        return 32, mem[_1044 + 32 len ceil32(_1541) + 32]
    mem[0] = 205
    idx = 0
    s = 0
    while idx < stor205.length.field_1:
        mem[idx + _945 + 32] = stor205[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1421 = mem[96]
    mem[_945 + stor205.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_1421) <= _1421:
        _1848 = mem[64]
        mem[64] = _1421 + _945 + stor205.length.field_1 + 32
        mem[_1421 + _945 + stor205.length.field_1 + 32] = 32
        _1884 = mem[_1848]
        mem[_1421 + _945 + stor205.length.field_1 + 64] = mem[_1848]
        mem[_1421 + _945 + stor205.length.field_1 + 96 len ceil32(_1884)] = mem[_1848 + 32 len ceil32(_1884)]
        if ceil32(_1884) > _1884:
            mem[_1884 + _1421 + _945 + stor205.length.field_1 + 96] = 0
        return 32, mem[_1421 + _945 + stor205.length.field_1 + 64 len ceil32(_1884) + 32]
    mem[_1421 + _945 + stor205.length.field_1 + 32] = 0
    _1849 = mem[64]
    mem[64] = _1421 + _945 + stor205.length.field_1 + 32
    mem[_1421 + _945 + stor205.length.field_1 + 32] = 32
    _1885 = mem[_1849]
    mem[_1421 + _945 + stor205.length.field_1 + 64] = mem[_1849]
    mem[_1421 + _945 + stor205.length.field_1 + 96 len ceil32(_1885)] = mem[_1849 + 32 len ceil32(_1885)]
    if ceil32(_1885) > _1885:
        mem[_1885 + _1421 + _945 + stor205.length.field_1 + 96] = 0
    return 32, mem[_1421 + _945 + stor205.length.field_1 + 64 len ceil32(_1885) + 32]
}



}
