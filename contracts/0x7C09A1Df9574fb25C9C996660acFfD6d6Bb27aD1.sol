contract main {




// =====================  Runtime code  =====================


#
#  - mint()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_d6d0faee(?)
#
const MAX_SUPPLY = 5500


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
uint8 paused;
address owner;
uint256 stor301;
uint256 stor351;
array of struct stor352;
uint256 stor353;
mapping of uint256 sub_ac67f234;
uint256 round;
uint8 isSaleActive;
address sub_c4f40069Address; offset 8
address sub_0ff1cc9dAddress;
array of struct stor358;
mapping of uint8 stor359;
mapping of address originalOwnerOf;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0ff1cc9d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_0ff1cc9dAddress
}

function round() {
    return round
}

function totalSupply() {
    return tokenByIndex.length
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function isSaleActive() {
    return bool(isSaleActive)
}

function paused() {
    return bool(paused)
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

function originalOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return originalOwnerOf[arg1]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor359[arg1])
}

function sub_ac67f234(?) {
    return sub_ac67f234[msg.sender]
}

function sub_c4f40069(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_c4f40069Address
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_c911d837(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    sub_0ff1cc9dAddress = address(arg1)
}

function sub_eacb7484(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    sub_c4f40069Address = address(arg1)
}

function sub_7b5c0fc5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if round >= 3:
        revert with 0, 'Maximum Sale Round already set'
    if round > -2:
        revert with 0, 17
    round++
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function setSaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 == bool(isSaleActive):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale status is already equal to supplied value'
    isSaleActive = uint8(arg1)
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor301 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor301 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) <= stor353:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract only has liability amount'
    if eth.balance(this.address) < stor353:
        revert with 0, 17
    call owner with:
       value eth.balance(this.address) - stor353 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor301 = 1
}

function setWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 359
        stor359[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x596d3746 
}

function removeWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 359
        stor359[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x5a5b9145 
}

function claimReward() {
    if stor301 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor301 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_ac67f234[msg.sender]:
        revert with 0, 'Caller has no reward amount'
    if sub_ac67f234[msg.sender] < 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller Reward less than minimum withdraw limit'
    if stor353 < sub_ac67f234[msg.sender]:
        revert with 0, 17
    stor353 -= sub_ac67f234[msg.sender]
    sub_ac67f234[msg.sender] = 0
    call msg.sender with:
       value sub_ac67f234[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor301 = 1
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function baseURI() {
    if bool(stor358.length):
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if bool(stor358.length):
            if bool(stor358.length) == stor358.length.field_1 < 32:
                revert with 0, 34
            if stor358.length.field_1:
                if 31 < stor358.length.field_1:
                    mem[128] = uint256(stor358.field_0)
                    idx = 128
                    s = 0
                    while stor358.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor358[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor358.length.field_1), data=mem[128 len ceil32(stor358.length.field_1)])
                mem[128] = 256 * stor358.length.field_8
        else:
            if bool(stor358.length) == stor358.length.field_1 < 32:
                revert with 0, 34
            if stor358.length.field_1:
                if 31 < stor358.length.field_1:
                    mem[128] = uint256(stor358.field_0)
                    idx = 128
                    s = 0
                    while stor358.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor358[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor358.length.field_1), data=mem[128 len ceil32(stor358.length.field_1)])
                mem[128] = 256 * stor358.length.field_8
        mem[ceil32(stor358.length.field_1) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) > stor358.length.field_1:
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor358.length.field_1), data=mem[128 len ceil32(stor358.length.field_1)], mem[(2 * ceil32(stor358.length.field_1)) + 192 len 2 * ceil32(stor358.length.field_1)]), 
    if bool(stor358.length) == stor358.length.field_1 < 32:
        revert with 0, 34
    if bool(stor358.length):
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if stor358.length.field_1:
            if 31 < stor358.length.field_1:
                mem[128] = uint256(stor358.field_0)
                idx = 128
                s = 0
                while stor358.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor358[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor358.length % 128, data=mem[128 len ceil32(stor358.length.field_1)])
            mem[128] = 256 * stor358.length.field_8
    else:
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if stor358.length.field_1:
            if 31 < stor358.length.field_1:
                mem[128] = uint256(stor358.field_0)
                idx = 128
                s = 0
                while stor358.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor358[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor358.length % 128, data=mem[128 len ceil32(stor358.length.field_1)])
            mem[128] = 256 * stor358.length.field_8
    mem[ceil32(stor358.length.field_1) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
    if ceil32(stor358.length.field_1) > stor358.length.field_1:
        mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + 192] = 0
    return Array(len=stor358.length % 128, data=mem[128 len ceil32(stor358.length.field_1)], mem[(2 * ceil32(stor358.length.field_1)) + 192 len 2 * ceil32(stor358.length.field_1)]), 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if bool(stor358.length):
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor358.length):
            mem[ceil32(arg1.length) + 128] = Mask(248, 8, stor358.length)
            if sha3(arg1[all]) == sha3(mem[ceil32(arg1.length) + 128 len stor358.length.field_1]):
                revert with 0, 'New URI cannot be same as old URI'
            if bool(stor358.length):
                if bool(stor358.length) == stor358.length.field_1 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor358.length = 0
                    idx = 0
                    while stor358.length.field_1 + 31 / 32 > idx:
                        stor358[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor358.length) == stor358.length.field_1 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor358.length = 0
                    idx = 0
                    while stor358.length.field_1 + 31 / 32 > idx:
                        stor358[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[ceil32(arg1.length) + 128] = 32
            mem[ceil32(arg1.length) + 160] = arg1.length
            emit SetBaseURI(string arg1):
                            Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                            mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32],
        else:
            if bool(stor358.length) == 1:
                idx = 0
                s = 0
                while idx < stor358.length.field_1:
                    mem[idx + ceil32(arg1.length) + 128] = stor358[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[128 len arg1.length]) == sha3(mem[ceil32(arg1.length) + 128 len stor358.length.field_1]):
                    revert with 0, 'New URI cannot be same as old URI'
                if bool(stor358.length):
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=mem[128 len arg1.length])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=mem[128 len arg1.length])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit SetBaseURI(Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]));
            else:
                if sha3(arg1[all]) == sha3(mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]):
                    revert with 0, 'New URI cannot be same as old URI'
                if bool(stor358.length):
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(arg1.length) + 128] = 32
                mem[ceil32(arg1.length) + 160] = arg1.length
                emit SetBaseURI(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32],
    else:
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor358.length):
            mem[ceil32(arg1.length) + 128] = Mask(248, 8, stor358.length)
            if sha3(arg1[all]) == sha3(mem[ceil32(arg1.length) + 128 len stor358.length.field_1]):
                revert with 0, 'New URI cannot be same as old URI'
            if bool(stor358.length):
                if bool(stor358.length) == stor358.length.field_1 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor358.length = 0
                    idx = 0
                    while stor358.length.field_1 + 31 / 32 > idx:
                        stor358[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor358.length) == stor358.length.field_1 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor358.length = 0
                    idx = 0
                    while stor358.length.field_1 + 31 / 32 > idx:
                        stor358[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[ceil32(arg1.length) + 128] = 32
            mem[ceil32(arg1.length) + 160] = arg1.length
            emit SetBaseURI(string arg1):
                            Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                            mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32],
        else:
            if bool(stor358.length) == 1:
                idx = 0
                s = 0
                while idx < stor358.length.field_1:
                    mem[idx + ceil32(arg1.length) + 128] = stor358[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                if sha3(mem[128 len arg1.length]) == sha3(mem[ceil32(arg1.length) + 128 len stor358.length.field_1]):
                    revert with 0, 'New URI cannot be same as old URI'
                if bool(stor358.length):
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=mem[128 len arg1.length])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=mem[128 len arg1.length])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit SetBaseURI(Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]));
            else:
                if sha3(arg1[all]) == sha3(mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]):
                    revert with 0, 'New URI cannot be same as old URI'
                if bool(stor358.length):
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor358.length) == stor358.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor358[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor358.length = 0
                        idx = 0
                        while stor358.length.field_1 + 31 / 32 > idx:
                            stor358[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(arg1.length) + 128] = 32
                mem[ceil32(arg1.length) + 160] = arg1.length
                emit SetBaseURI(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len (4 * ceil32(arg1.length)) + -arg1.length + 32],
}

function airDrop(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    if not isSaleActive:
        revert with 0, 'Sale must be active to mint NFT'
    if tokenByIndex.length >= 5500:
        revert with 0, 'Max supply exceeded'
    if not round:
        if tokenByIndex.length >= 750:
            revert with 0, 'Supply cap exceeded'
        idx = 0
        while idx < arg2:
            _1598 = mem[64]
            mem[mem[64] + 32] = address(msg.sender)
            _1611 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _1613 = sha3(mem[_1611 + 32 len mem[_1611]])
            if not block.timestamp:
                revert with 0, 18
            mem[_1598 + 84] = address(block.coinbase)
            mem[_1598 + 52] = 20
            if block.timestamp > !block.difficulty:
                revert with 0, 17
            if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                revert with 0, 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                revert with 0, 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(_1613 / block.timestamp):
                revert with 0, 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) > !block.number:
                revert with 0, 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number > !stor351:
                revert with 0, 17
            mem[_1598 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351
            mem[_1598 + 104] = 32
            if not stor351:
                revert with 0, 18
            if 1 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351):
                revert with 0, 17
            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                revert with 0, 50
            if stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1):
                revert with 0, 17
            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1 != stor351:
                if stor351 >= stor352.length:
                    revert with 0, 50
                if stor352[stor351].field_0 > !stor351:
                    revert with 0, 17
                if stor352[stor351].field_0 + stor351 < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1:
                    revert with 0, 17
                if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                    revert with 0, 50
                stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 = stor352[stor351].field_0 + stor351 + -(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) - 1
            if not stor351:
                revert with 0, 17
            stor351--
            mem[64] = _1598 + 200
            mem[_1598 + 168] = 0
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1]:
                revert with 0, 'ERC721: token already minted'
            if paused:
                revert with 0, 'Pausable: paused'
            stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = tokenByIndex.length
            tokenByIndex.length++
            stor72A1[stor153.length] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
            if arg1:
                if arg1:
                    if not arg1:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
                    stor152[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1]] = tokenByIndex[tokenByIndex.length]
                stor154[stor153[stor153.length]] = stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1]
                stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
            emit Transfer(0, arg1, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1);
            if not ext_code.size(arg1):
                mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
                mem[32] = 360
                originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                mem[_1598 + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
            else:
                mem[_1598 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_1598 + 204] = msg.sender
                mem[_1598 + 236] = 0
                mem[_1598 + 268] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
                mem[_1598 + 300] = 128
                mem[_1598 + 332] = 0
                s = 0
                while s < 0:
                    mem[s + _1598 + 364] = mem[s + _1598 + 200]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1, 128, 0
                mem[_1598 + 200] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1598 + ceil32(return_data.size) + 200
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
                mem[32] = 360
                originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                mem[_1598 + ceil32(return_data.size) + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1
            emit NewNFT((stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1613 / block.timestamp) + block.number + stor351) % stor351) + 1));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if 1 == round:
            if tokenByIndex.length >= 2750:
                revert with 0, 'Supply cap exceeded'
            idx = 0
            while idx < arg2:
                _1597 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _1608 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1610 = sha3(mem[_1608 + 32 len mem[_1608]])
                if not block.timestamp:
                    revert with 0, 18
                mem[_1597 + 84] = address(block.coinbase)
                mem[_1597 + 52] = 20
                if block.timestamp > !block.difficulty:
                    revert with 0, 17
                if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                    revert with 0, 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                    revert with 0, 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(_1610 / block.timestamp):
                    revert with 0, 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) > !block.number:
                    revert with 0, 17
                if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number > !stor351:
                    revert with 0, 17
                mem[_1597 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351
                mem[_1597 + 104] = 32
                if not stor351:
                    revert with 0, 18
                if 1 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351):
                    revert with 0, 17
                if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                    revert with 0, 50
                if stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1):
                    revert with 0, 17
                if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1 != stor351:
                    if stor351 >= stor352.length:
                        revert with 0, 50
                    if stor352[stor351].field_0 > !stor351:
                        revert with 0, 17
                    if stor352[stor351].field_0 + stor351 < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1:
                        revert with 0, 17
                    if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                        revert with 0, 50
                    stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 = stor352[stor351].field_0 + stor351 + -(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) - 1
                if not stor351:
                    revert with 0, 17
                stor351--
                mem[64] = _1597 + 200
                mem[_1597 + 168] = 0
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1]:
                    revert with 0, 'ERC721: token already minted'
                if paused:
                    revert with 0, 'Pausable: paused'
                stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                if arg1:
                    if arg1:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                        stor152[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = balanceOf[address(arg1)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1]] = tokenByIndex[tokenByIndex.length]
                    stor154[stor153[stor153.length]] = stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1]
                    stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                emit Transfer(0, arg1, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1);
                if not ext_code.size(arg1):
                    mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                    mem[32] = 360
                    originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                    mem[_1597 + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                else:
                    mem[_1597 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1597 + 204] = msg.sender
                    mem[_1597 + 236] = 0
                    mem[_1597 + 268] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                    mem[_1597 + 300] = 128
                    mem[_1597 + 332] = 0
                    s = 0
                    while s < 0:
                        mem[s + _1597 + 364] = mem[s + _1597 + 200]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1, 128, 0
                    mem[_1597 + 200] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1597 + ceil32(return_data.size) + 200
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                    mem[32] = 360
                    originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                    mem[_1597 + ceil32(return_data.size) + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1
                emit NewNFT((stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1610 / block.timestamp) + block.number + stor351) % stor351) + 1));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 2 == round:
                if tokenByIndex.length >= 5000:
                    revert with 0, 'Supply cap exceeded'
                idx = 0
                while idx < arg2:
                    _1596 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    _1605 = mem[64]
                    mem[mem[64]] = 20
                    mem[64] = mem[64] + 52
                    _1607 = sha3(mem[_1605 + 32 len mem[_1605]])
                    if not block.timestamp:
                        revert with 0, 18
                    mem[_1596 + 84] = address(block.coinbase)
                    mem[_1596 + 52] = 20
                    if block.timestamp > !block.difficulty:
                        revert with 0, 17
                    if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                        revert with 0, 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                        revert with 0, 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(_1607 / block.timestamp):
                        revert with 0, 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) > !block.number:
                        revert with 0, 17
                    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number > !stor351:
                        revert with 0, 17
                    mem[_1596 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351
                    mem[_1596 + 104] = 32
                    if not stor351:
                        revert with 0, 18
                    if 1 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351):
                        revert with 0, 17
                    if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                        revert with 0, 50
                    if stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1):
                        revert with 0, 17
                    if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1 != stor351:
                        if stor351 >= stor352.length:
                            revert with 0, 50
                        if stor352[stor351].field_0 > !stor351:
                            revert with 0, 17
                        if stor352[stor351].field_0 + stor351 < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1:
                            revert with 0, 17
                        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                            revert with 0, 50
                        stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 = stor352[stor351].field_0 + stor351 + -(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) - 1
                    if not stor351:
                        revert with 0, 17
                    stor351--
                    mem[64] = _1596 + 200
                    mem[_1596 + 168] = 0
                    if not arg1:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1]:
                        revert with 0, 'ERC721: token already minted'
                    if paused:
                        revert with 0, 'Pausable: paused'
                    stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    stor72A1[stor153.length] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                    if arg1:
                        if arg1:
                            if not arg1:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                            stor152[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = balanceOf[address(arg1)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1]] = tokenByIndex[tokenByIndex.length]
                        stor154[stor153[stor153.length]] = stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1]
                        stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(arg1)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg1)]++
                    ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                    emit Transfer(0, arg1, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1);
                    if not ext_code.size(arg1):
                        mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                        mem[32] = 360
                        originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                        mem[_1596 + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                    else:
                        mem[_1596 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1596 + 204] = msg.sender
                        mem[_1596 + 236] = 0
                        mem[_1596 + 268] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                        mem[_1596 + 300] = 128
                        mem[_1596 + 332] = 0
                        s = 0
                        while s < 0:
                            mem[s + _1596 + 364] = mem[s + _1596 + 200]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1, 128, 0
                        mem[_1596 + 200] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1596 + ceil32(return_data.size) + 200
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                        mem[32] = 360
                        originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                        mem[_1596 + ceil32(return_data.size) + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1
                    emit NewNFT((stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1607 / block.timestamp) + block.number + stor351) % stor351) + 1));
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if round != 3:
                    if tokenByIndex.length >= 0:
                        revert with 0, 'Supply cap exceeded'
                    idx = 0
                    while idx < arg2:
                        _1594 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        _1599 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _1601 = sha3(mem[_1599 + 32 len mem[_1599]])
                        if not block.timestamp:
                            revert with 0, 18
                        mem[_1594 + 84] = address(block.coinbase)
                        mem[_1594 + 52] = 20
                        if block.timestamp > !block.difficulty:
                            revert with 0, 17
                        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(_1601 / block.timestamp):
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) > !block.number:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number > !stor351:
                            revert with 0, 17
                        mem[_1594 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351
                        mem[_1594 + 104] = 32
                        if not stor351:
                            revert with 0, 18
                        if 1 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351):
                            revert with 0, 17
                        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                            revert with 0, 50
                        if stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1):
                            revert with 0, 17
                        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1 != stor351:
                            if stor351 >= stor352.length:
                                revert with 0, 50
                            if stor352[stor351].field_0 > !stor351:
                                revert with 0, 17
                            if stor352[stor351].field_0 + stor351 < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1:
                                revert with 0, 17
                            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                                revert with 0, 50
                            stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 = stor352[stor351].field_0 + stor351 + -(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) - 1
                        if not stor351:
                            revert with 0, 17
                        stor351--
                        mem[64] = _1594 + 200
                        mem[_1594 + 168] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1]:
                            revert with 0, 'ERC721: token already minted'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        stor72A1[stor153.length] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                        if arg1:
                            if arg1:
                                if not arg1:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                                stor152[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = balanceOf[address(arg1)]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1]] = tokenByIndex[tokenByIndex.length]
                            stor154[stor153[stor153.length]] = stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1]
                            stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                        emit Transfer(0, arg1, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1);
                        if not ext_code.size(arg1):
                            mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[32] = 360
                            originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                            mem[_1594 + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                        else:
                            mem[_1594 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[_1594 + 204] = msg.sender
                            mem[_1594 + 236] = 0
                            mem[_1594 + 268] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[_1594 + 300] = 128
                            mem[_1594 + 332] = 0
                            s = 0
                            while s < 0:
                                mem[s + _1594 + 364] = mem[s + _1594 + 200]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1, 128, 0
                            mem[_1594 + 200] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1594 + ceil32(return_data.size) + 200
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[32] = 360
                            originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                            mem[_1594 + ceil32(return_data.size) + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1
                        emit NewNFT((stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1601 / block.timestamp) + block.number + stor351) % stor351) + 1));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if tokenByIndex.length >= 5500:
                        revert with 0, 'Supply cap exceeded'
                    idx = 0
                    while idx < arg2:
                        _1595 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        _1602 = mem[64]
                        mem[mem[64]] = 20
                        mem[64] = mem[64] + 52
                        _1604 = sha3(mem[_1602 + 32 len mem[_1602]])
                        if not block.timestamp:
                            revert with 0, 18
                        mem[_1595 + 84] = address(block.coinbase)
                        mem[_1595 + 52] = 20
                        if block.timestamp > !block.difficulty:
                            revert with 0, 17
                        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(_1604 / block.timestamp):
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) > !block.number:
                            revert with 0, 17
                        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number > !stor351:
                            revert with 0, 17
                        mem[_1595 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351
                        mem[_1595 + 104] = 32
                        if not stor351:
                            revert with 0, 18
                        if 1 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351):
                            revert with 0, 17
                        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                            revert with 0, 50
                        if stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1):
                            revert with 0, 17
                        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1 != stor351:
                            if stor351 >= stor352.length:
                                revert with 0, 50
                            if stor352[stor351].field_0 > !stor351:
                                revert with 0, 17
                            if stor352[stor351].field_0 + stor351 < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1:
                                revert with 0, 17
                            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1 >= stor352.length:
                                revert with 0, 50
                            stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 = stor352[stor351].field_0 + stor351 + -(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) - 1
                        if not stor351:
                            revert with 0, 17
                        stor351--
                        mem[64] = _1595 + 200
                        mem[_1595 + 168] = 0
                        if not arg1:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1]:
                            revert with 0, 'ERC721: token already minted'
                        if paused:
                            revert with 0, 'Pausable: paused'
                        stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        stor72A1[stor153.length] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                        if arg1:
                            if arg1:
                                if not arg1:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                                stor152[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = balanceOf[address(arg1)]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1]] = tokenByIndex[tokenByIndex.length]
                            stor154[stor153[stor153.length]] = stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1]
                            stor154[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        ownerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                        emit Transfer(0, arg1, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1);
                        if not ext_code.size(arg1):
                            mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[32] = 360
                            originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                            mem[_1595 + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                        else:
                            mem[_1595 + 200] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[_1595 + 204] = msg.sender
                            mem[_1595 + 236] = 0
                            mem[_1595 + 268] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[_1595 + 300] = 128
                            mem[_1595 + 332] = 0
                            s = 0
                            while s < 0:
                                mem[s + _1595 + 364] = mem[s + _1595 + 200]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1, 128, 0
                            mem[_1595 + 200] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1595 + ceil32(return_data.size) + 200
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[0] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                            mem[32] = 360
                            originalOwnerOf[stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1] = arg1
                            mem[_1595 + ceil32(return_data.size) + 200] = stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1
                        emit NewNFT((stor352[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351].field_256 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_1604 / block.timestamp) + block.number + stor351) % stor351) + 1));
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 103
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor358.length):
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if bool(stor358.length):
            if bool(stor358.length) == stor358.length.field_1 < 32:
                revert with 0, 34
            if not stor358.length.field_1:
                if stor358.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor358.length.field_1) + 192]) <= mem[ceil32(stor358.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257 len ceil32(mem[ceil32(stor358.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor358.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) > stor358.length.field_1:
                    mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor358.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor358.length.field_1:
                mem[128] = 256 * stor358.length.field_8
                if stor358.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor358.length.field_1) + 192]) <= mem[ceil32(stor358.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257 len ceil32(mem[ceil32(stor358.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor358.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) > stor358.length.field_1:
                    mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor358.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor358.field_0)
            idx = 128
            s = 0
            while stor358.length.field_1 + 96 > idx:
                mem[idx + 32] = stor358[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor358.length) == stor358.length.field_1 < 32:
                revert with 0, 34
            if not stor358.length.field_1:
                if stor358.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor358.length.field_1) + 192]) <= mem[ceil32(stor358.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257 len ceil32(mem[ceil32(stor358.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor358.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) > stor358.length.field_1:
                    mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor358.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor358.length.field_1:
                mem[128] = 256 * stor358.length.field_8
                if stor358.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                    mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor358.length.field_1) + 192]) <= mem[ceil32(stor358.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                    return 32, mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257 len ceil32(mem[ceil32(stor358.length.field_1) + 192]) + 32], 
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
                mem[ceil32(stor358.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) > stor358.length.field_1:
                    mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor358.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor358.field_0)
            idx = 128
            s = 0
            while stor358.length.field_1 + 96 > idx:
                mem[idx + 32] = stor358[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if stor358.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 192]) <= mem[ceil32(stor358.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
            mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
            return 32, mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257 len ceil32(mem[ceil32(stor358.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor358.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) > stor358.length.field_1:
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor358.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor358.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor358.length) == stor358.length.field_1 < 32:
        revert with 0, 34
    mem[96] = stor358.length.field_1
    if bool(stor358.length):
        if bool(stor358.length) == stor358.length.field_1 < 32:
            revert with 0, 34
        if not stor358.length.field_1:
            if stor358.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
            mem[ceil32(stor358.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                    mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                        _3718 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3718)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3719)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3719) + 32], 
                mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3720 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3720)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3721)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3722 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3722)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3723)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3723) + 32], 
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3724 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3724)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3725)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3725) + 32], 
        if 31 >= stor358.length.field_1:
            mem[128] = 256 * stor358.length.field_8
            if stor358.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
                mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
                    mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
                return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
            mem[ceil32(stor358.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
                if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                    mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                    mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                        _3726 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3726)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3727)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3727) + 32], 
                mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3728 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3728)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3729)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3730 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3730)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3731)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3731) + 32], 
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3732 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3732)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3733)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3733) + 32], 
        mem[0] = 358
        mem[128] = uint256(stor358.field_0)
        idx = 128
        s = 0
        while stor358.length.field_1 + 96 > idx:
            mem[idx + 32] = stor358[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor358.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
                mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
        mem[ceil32(stor358.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                    _4422 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4422)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                _4423 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4423)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4423) + 32], 
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                _4424 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4424)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4425 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4425)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) <= stor358.length.field_1:
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                _4426 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4426)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4427 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4427)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4427) + 32], 
        mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4428 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4428)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        _4429 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4429)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4429) + 32], 
    if bool(stor358.length) == stor358.length.field_1 < 32:
        revert with 0, 34
    if not stor358.length.field_1:
        if stor358.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
                mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
        mem[ceil32(stor358.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3734 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3734)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3735)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3735) + 32], 
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3736 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3736)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3737)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) <= stor358.length.field_1:
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3738 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3738)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3739)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3739) + 32], 
        mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
            _3740 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3740)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3741)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor358.length.field_1:
        mem[128] = 256 * stor358.length.field_8
        if stor358.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
            mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
                mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
            return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
        mem[ceil32(stor358.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
            if ceil32(stor358.length.field_1) <= stor358.length.field_1:
                mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                    _3742 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3742)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3743)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3743) + 32], 
            mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3744 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3744)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3745)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) <= stor358.length.field_1:
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                _3746 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3746)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3747)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3747) + 32], 
        mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
            _3748 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3748)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_3749)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_3749) + 32], 
    mem[0] = 358
    mem[128] = uint256(stor358.field_0)
    idx = 128
    s = 0
    while stor358.length.field_1 + 96 > idx:
        mem[idx + 32] = stor358[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor358.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor358.length.field_1) + 224 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 224] = '0'
        mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 225] = 32
        mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 257] = mem[ceil32(stor358.length.field_1) + 192]
        mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])] = mem[ceil32(stor358.length.field_1) + 224 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor358.length.field_1) + 192]) > mem[ceil32(stor358.length.field_1) + 192]:
            mem[mem[ceil32(stor358.length.field_1) + 192] + ceil32(stor358.length.field_1) + stor358.length.field_1 + 289] = 0
        return Array(len=mem[ceil32(stor358.length.field_1) + 192], data=mem[ceil32(stor358.length.field_1) + stor358.length.field_1 + 289 len ceil32(mem[ceil32(stor358.length.field_1) + 192])]), 
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
    mem[ceil32(stor358.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
        if ceil32(stor358.length.field_1) <= stor358.length.field_1:
            mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
                mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
                _4430 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4430)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
                return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4431 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4431)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4431) + 32], 
        mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4432 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4432)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        _4433 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4433)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor358.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor358.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor358.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(stor358.length.field_1)] = mem[128 len ceil32(stor358.length.field_1)]
    if ceil32(stor358.length.field_1) <= stor358.length.field_1:
        mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
            mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
            _4434 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
            mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4434)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
            return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        _4435 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4435)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4435) + 32], 
    mem[stor358.length.field_1 + ceil32(stor358.length.field_1) + ceil32(s) + 192] = 0
    mem[ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192 len ceil32(mem[ceil32(stor358.length.field_1) + 128])] = mem[ceil32(stor358.length.field_1) + 160 len ceil32(mem[ceil32(stor358.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor358.length.field_1) + 128]) <= mem[ceil32(stor358.length.field_1) + 128]:
        mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
        _4436 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4436)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 0
    mem[64] = mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192
    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 192] = 32
    _4437 = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256 len ceil32(_4437)] = mem[ceil32(stor358.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 256] = 0
    return 32, mem[mem[ceil32(stor358.length.field_1) + 128] + ceil32(stor358.length.field_1) + ceil32(s) + stor358.length.field_1 + 224 len ceil32(_4437) + 32], 
}



}
