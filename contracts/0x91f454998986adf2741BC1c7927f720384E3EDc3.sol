contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 contractURI;
array of struct tokenURIPrefix;
mapping of struct stor8;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
array of uint256 name;
array of uint256 symbol;
array of struct fees;
mapping of uint8 stor16;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor16[address(arg1)])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenURIPrefix() payable {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function contractURI() payable {
    return contractURI[0 len contractURI.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor16[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor16[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor16[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor16[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenURIPrefix[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function removeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor16[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 15)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        mem[mem[64] + 64 len 32 * _59] = mem[_26 + 32 len 32 * _59]
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_26 + 32 len 32 * _25] = code.data[13133 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    mem[mem[64] + 64 len 32 * _60] = mem[_26 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenURIPrefix.length + stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len tokenURIPrefix.length + stor8[arg1].length] = code.data[13133 len tokenURIPrefix.length + stor8[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor8[arg1].length
        mem[s + ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor8[arg1].length:
        require idx < stor8[arg1].length
        require s < tokenURIPrefix.length + stor8[arg1].length
        mem[s + ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=tokenURIPrefix.length + stor8[arg1].length, data=mem[ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor8[arg1].length + 31)]), 
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 15)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            _47 = mem[96]
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        idx = 0
        s = _26 + 32
        t = mem[64] + 64
        while idx < _59:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _51 + (32 * _59) + -mem[64] + 64
    mem[_26 + 32 len 32 * _25] = code.data[13133 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        _48 = mem[96]
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    idx = 0
    s = _26 + 32
    t = mem[64] + 64
    while idx < _60:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _55 + (32 * _60) + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor10[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor10[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor10[stor9[address(arg1)][stor9[address(arg1)]]] = stor10[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
        if approved[arg1]:
            approved[arg1] = 0
        if 1 > balanceOf[stor2[arg1]]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        balanceOf[stor2[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
        if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]]--
            if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                    tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                    idx = idx + 1
                    continue 
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    var78001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
            require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
            tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
            stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
            tokenOfOwnerByIndex[stor2[arg1]]--
            if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                    tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                    idx = idx + 1
                    continue 
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    var81001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] == msg.sender:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
            if approved[arg1]:
                approved[arg1] = 0
            if 1 > balanceOf[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            balanceOf[stor2[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var84001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
                require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
                tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
                stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var87001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
            if approved[arg1]:
                approved[arg1] = 0
            if 1 > balanceOf[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            balanceOf[stor2[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var86001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
                require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
                tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
                stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var89001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
    ('le', 1, ('stor', ('length', ('name', 'tokenByIndex', 11))))
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor12[arg1] < tokenByIndex.length
    tokenByIndex[stor12[arg1]] = tokenByIndex[tokenByIndex.length]
    stor12[stor11[stor11.length]] = stor12[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    if Mask(255, 1, stor8[arg1].field_0 and (256 * not stor8[arg1].field_0) - 1):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mint(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5, uint256[] arg6, string arg7) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg5.length) + 128 >= 96 and (32 * arg5.length) + 128 <= test266151307()
    mem[64] = (32 * arg5.length) + 128
    mem[96] = arg5.length
    require arg5 + (64 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        require calldata.size - s >= 64
        _230 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_230] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_230 + 32] = cd[(s + 32)]
        mem[t] = _230
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    _231 = mem[64]
    require mem[64] + ceil32(arg6.length) + 32 >= mem[64] and mem[64] + ceil32(arg6.length) + 32 <= test266151307()
    mem[64] = mem[64] + ceil32(arg6.length) + 32
    mem[_231] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[_231 + 32 len arg6.length] = arg6[all]
    mem[arg6.length + _231 + 32] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _232 = mem[64]
    mem[mem[64] + 32] = address(this.address)
    mem[mem[64] + 52] = arg1
    _235 = mem[64]
    mem[mem[64]] = 52
    mem[64] = mem[64] + 84
    _237 = sha3(mem[_235 + 32 len mem[_235]])
    mem[_232 + 84] = 0
    mem[64] = _232 + 116
    mem[_232 + 116] = _237
    mem[_232 + 148] = arg2
    mem[_232 + 180] = arg3
    mem[_232 + 212] = arg4
    signer = erecover(_237, arg2 << 248, arg3, arg4) 
    mem[_232 + 84] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor16[address(signer)]:
        revert with 0, 'signer should sign tokenId'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg1] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, arg1);
    stor10[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    mem[32] = 12
    stor12[arg1] = tokenByIndex.length
    tokenByIndex.length++
    mem[0] = 11
    stor175B[stor11.length] = arg1
    _260 = mem[96]
    mem[_232 + 116] = mem[96]
    if not _260:
        mem[_232 + (32 * _260) + 148] = mem[96]
        mem[64] = _232 + (32 * _260) + (32 * mem[96]) + 180
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 15
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 15)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_232 + 116]
                mem[(32 * idx) + _232 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_232 + (32 * _260) + 148]
                mem[(32 * idx) + _232 + (32 * _260) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _551 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_551, data=mem[_231 + 32 len _551])
            else:
                _470 = _232 + (32 * _260) + (32 * mem[96]) + 180
                mem[_232 + (32 * _260) + (32 * mem[96]) + 180] = arg1
                mem[_232 + (32 * _260) + (32 * mem[96]) + 212] = 96
                _563 = mem[_232 + 116]
                mem[_232 + (32 * _260) + (32 * mem[96]) + 276] = mem[_232 + 116]
                idx = 0
                s = _232 + 148
                t = mem[64] + 128
                while idx < _563:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_470 + 64] = (32 * _563) + 128
                _658 = mem[_232 + (32 * _260) + 148]
                mem[_470 + (32 * _563) + 128] = mem[_232 + (32 * _260) + 148]
                mem[_470 + (32 * _563) + 160 len 32 * _658] = mem[_232 + (32 * _260) + 180 len 32 * _658]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _470 + (32 * _563) + (32 * _658) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _719 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_719, data=mem[_231 + 32 len _719])
        else:
            mem[_232 + (32 * _260) + 180 len 32 * mem[96]] = code.data[13133 len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 15
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 15)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_232 + 116]
                mem[(32 * idx) + _232 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_232 + (32 * _260) + 148]
                mem[(32 * idx) + _232 + (32 * _260) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _554 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_554, data=mem[_231 + 32 len _554])
            else:
                _473 = _232 + (32 * _260) + (32 * mem[96]) + 180
                mem[_232 + (32 * _260) + (32 * mem[96]) + 180] = arg1
                mem[_232 + (32 * _260) + (32 * mem[96]) + 212] = 96
                _569 = mem[_232 + 116]
                mem[_232 + (32 * _260) + (32 * mem[96]) + 276] = mem[_232 + 116]
                idx = 0
                s = _232 + 148
                t = mem[64] + 128
                while idx < _569:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_473 + 64] = (32 * _569) + 128
                _659 = mem[_232 + (32 * _260) + 148]
                mem[_473 + (32 * _569) + 128] = mem[_232 + (32 * _260) + 148]
                mem[_473 + (32 * _569) + 160 len 32 * _659] = mem[_232 + (32 * _260) + 180 len 32 * _659]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _473 + (32 * _569) + (32 * _659) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _721 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_721, data=mem[_231 + 32 len _721])
    else:
        mem[_232 + 148 len 32 * _260] = code.data[13133 len 32 * _260]
        mem[_232 + (32 * _260) + 148] = mem[96]
        mem[64] = _232 + (32 * _260) + (32 * mem[96]) + 180
        if not mem[96]:
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 15
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 15)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_232 + 116]
                mem[(32 * idx) + _232 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_232 + (32 * _260) + 148]
                mem[(32 * idx) + _232 + (32 * _260) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _557 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_557, data=mem[_231 + 32 len _557])
            else:
                _476 = _232 + (32 * _260) + (32 * mem[96]) + 180
                mem[_232 + (32 * _260) + (32 * mem[96]) + 180] = arg1
                mem[_232 + (32 * _260) + (32 * mem[96]) + 212] = 96
                _575 = mem[_232 + 116]
                mem[_232 + (32 * _260) + (32 * mem[96]) + 276] = mem[_232 + 116]
                idx = 0
                s = _232 + 148
                t = mem[64] + 128
                while idx < _575:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_476 + 64] = (32 * _575) + 128
                _660 = mem[_232 + (32 * _260) + 148]
                mem[_476 + (32 * _575) + 128] = mem[_232 + (32 * _260) + 148]
                mem[_476 + (32 * _575) + 160 len 32 * _660] = mem[_232 + (32 * _260) + 180 len 32 * _660]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _476 + (32 * _575) + (32 * _660) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _723 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_723, data=mem[_231 + 32 len _723])
        else:
            mem[_232 + (32 * _260) + 180 len 32 * mem[96]] = code.data[13133 len 32 * mem[96]]
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                if not mem[mem[(32 * idx) + 128] + 12 len 20]:
                    revert with 0, 'Recipient should be present'
                require idx < mem[96]
                if 0 == mem[mem[(32 * idx) + 128] + 32]:
                    revert with 0, 'Fee value should be positive'
                mem[32] = 15
                require idx < mem[96]
                fees[arg1].field_0++
                mem[0] = sha3(arg1, 15)
                fees[arg1][fees[arg1].field_0].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
                fees[arg1][fees[arg1].field_0].field_256 = mem[mem[(32 * idx) + 128] + 32]
                require idx < mem[96]
                require idx < mem[_232 + 116]
                mem[(32 * idx) + _232 + 148] = mem[mem[(32 * idx) + 128] + 12 len 20]
                require idx < mem[96]
                require idx < mem[_232 + (32 * _260) + 148]
                mem[(32 * idx) + _232 + (32 * _260) + 180] = mem[mem[(32 * idx) + 128] + 32]
                idx = idx + 1
                continue 
            if not mem[96]:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _560 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_560, data=mem[_231 + 32 len _560])
            else:
                _479 = _232 + (32 * _260) + (32 * mem[96]) + 180
                mem[_232 + (32 * _260) + (32 * mem[96]) + 180] = arg1
                mem[_232 + (32 * _260) + (32 * mem[96]) + 212] = 96
                _581 = mem[_232 + 116]
                mem[_232 + (32 * _260) + (32 * mem[96]) + 276] = mem[_232 + 116]
                idx = 0
                s = _232 + 148
                t = mem[64] + 128
                while idx < _581:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_479 + 64] = (32 * _581) + 128
                _661 = mem[_232 + (32 * _260) + 148]
                mem[_479 + (32 * _581) + 128] = mem[_232 + (32 * _260) + 148]
                mem[_479 + (32 * _581) + 160 len 32 * _661] = mem[_232 + (32 * _260) + 180 len 32 * _661]
                emit SecondarySaleFees(uint256 rg1, address[] rg2, uint256[] rg3):
                                       mem[mem[64] len _479 + (32 * _581) + (32 * _661) + -mem[64] + 160],
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721Metadata: URI set of nonexistent token'
                mem[0] = arg1
                mem[32] = 8
                _725 = mem[_231]
                stor8[arg1][].field_0 = Array(len=_725, data=mem[_231 + 32 len _725])
}



}
