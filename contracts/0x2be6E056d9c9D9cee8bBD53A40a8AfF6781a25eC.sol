contract main {




// =====================  Runtime code  =====================


#
#  - typeByIndex(uint256 arg1)
#  - tokenDetails(uint256 arg1)
#
address owner;
array of uint8 stor1;
array of struct stor2;
uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor12;
mapping of uint256 stor14;
address stor15;
mapping of bool sub_397ec488;
mapping of uint8 stor17;
address stor18;
address stor19;
array of uint256 stor20;
uint256 totalTypes;
array of struct stor22;
array of struct coordinates;
array of uint256 stor24;

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'Nonexistent token'
    return approved[arg1]
}

function getCoordinates(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 2 < coordinates[arg1].field_256
    require 3 < coordinates[arg1].field_256
    return coordinates[arg1][1].field_512, coordinates[arg1][1].field_768
}

function totalSupply() payable {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance query for the zero address'
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_397ec488(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(sub_397ec488[arg1])
}

function paused() payable {
    return bool(stor3)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor12[address(arg1)][address(arg2)])
}

function totalTypes() payable {
    return totalTypes
}

function _fallback() payable {
    revert
}

function sub_5abbf89e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if stor3:
        require msg.sender == owner
    stor3 = 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not stor3:
        require msg.sender == owner
    stor3 = 0
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= totalSupply:
        revert with 0, 'Index is out of range'
    return (arg1 + 1)
}

function removeTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    uint8(stor1[address(arg1)]) = 0
}

function sub_344d45cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    require stor15
    stor15 = address(arg1)
}

function addTrusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    uint8(stor1[address(arg1)]) = 1
    stor2.length++
    stor2[stor2.length].field_0 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    owner = arg1
}

function sub_35183e50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    stor18 = address(arg1)
}

function sub_97f8f33b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    stor19 = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3:
        require msg.sender == owner
    if arg1 == msg.sender:
        revert with 0, 'Trying to approve the caller'
    stor12[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3:
        require msg.sender == owner
    if arg1 == ownerOf[arg2]:
        revert with 0, 'Approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor12[stor9[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Approve caller is neither owner nor approved for all'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_02928e52(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor3:
        require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        idx = idx + 1
        continue 
}

function setBaseTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    if arg1.length:
        stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor20.length = 0
        idx = 0
        while stor20.length + 31 / 32 > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getDelegates() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_ad452d39(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor15
    emit Transfer(ownerOf[arg1], stor15, arg1);
    require ownerOf[arg1] == ownerOf[arg1]
    require 1 <= balanceOf[stor9[arg1]]
    balanceOf[stor9[arg1]]--
    ownerOf[arg1] = 0
    require 1 <= tokenOfOwnerByIndex[stor9[arg1]]
    require tokenOfOwnerByIndex[stor9[arg1]] - 1 < tokenOfOwnerByIndex[stor9[arg1]]
    require stor8[arg1] < tokenOfOwnerByIndex[stor9[arg1]]
    tokenOfOwnerByIndex[stor9[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor9[arg1]][tokenOfOwnerByIndex[stor9[arg1]]]
    require tokenOfOwnerByIndex[stor9[arg1]]
    tokenOfOwnerByIndex[stor9[arg1]][tokenOfOwnerByIndex[stor9[arg1]]] = 0
    tokenOfOwnerByIndex[stor9[arg1]]--
    stor8[arg1] = 0
    stor8[stor7[stor9[arg1]][stor7[stor9[arg1]]]] = stor8[arg1]
    require not ownerOf[arg1]
    ownerOf[arg1] = stor15
    require balanceOf[stor15] + 1 >= balanceOf[stor15]
    balanceOf[stor15]++
    tokenOfOwnerByIndex[stor15]++
    tokenOfOwnerByIndex[stor15][tokenOfOwnerByIndex[stor15]] = arg1
    stor8[arg1] = tokenOfOwnerByIndex[stor15]
}

function sub_99cb2e11(?) payable {
    mem[64] = (32 * stor24.length) + 128
    mem[96] = stor24.length
    s = 128
    idx = 0
    while idx < stor24.length:
        mem[0] = 24
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(stor24[idx].length) + 32
        mem[_12] = stor24[idx].length
        mem[0] = sha3(24) + idx
        mem[_12 + 32] = stor24[idx]
        t = _12 + 32
        u = sha3(mem[0])
        while _12 + stor24[idx].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _15:
        mem[u] = t + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _22:
            mem[t + v + 32] = mem[_20 + v + 32]
            v = v + 32
            continue 
        if ceil32(_22) > _22:
            mem[t + _22 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_22) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_38995f8a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if stor19:
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return 1
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return 1
    if not stor17[arg3]:
        if stor18:
            require ext_code.size(stor18)
            staticcall stor18.isBanned(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                return 1
    if bool(sub_397ec488[arg3]) > 0:
        return 1
    else:
        return 0
}

function sub_264838cf(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    if cd[36] <= 0:
        revert with 0, 'Trying to change to nonexistent type of token'
    if cd[36] > totalTypes:
        revert with 0, 'Trying to change to nonexistent type of token'
    coordinates[cd[4]].field_0 = cd[36]
    coordinates[cd[4]].field_256 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while coordinates[cd[4]].field_256 > idx:
            coordinates[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            coordinates[cd[4]][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while coordinates[cd[4]].field_256 > idx:
            coordinates[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_67c7d6ad(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    require ('cd', 4).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        mem[32] = 14
        stor14[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function sub_2d69044f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    if cd[4] <= 0:
        revert with 0, 'Trying to mint nonexistent type of token'
    if cd[4] > totalTypes:
        revert with 0, 'Trying to mint nonexistent type of token'
    if ('cd', 36).length != stor24.length:
        revert with 0, 'Incorrect number of params'
    totalSupply++
    require not ownerOf[stor6]
    ownerOf[stor6] = msg.sender
    require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = totalSupply
    stor8[stor6] = tokenOfOwnerByIndex[address(msg.sender)]
    coordinates[stor6].field_0 = cd[4]
    coordinates[stor6].field_256 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while coordinates[stor6].field_256 > idx:
            coordinates[stor6][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            coordinates[stor6][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while coordinates[stor6].field_256 > idx:
            coordinates[stor6][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    emit Transfer(0, msg.sender, totalSupply);
}

function sub_a3b57324(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 <= test266151307() and ceil32(arg3.length) + 192 >= 160
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 <= test266151307() and ceil32(arg4.length) + 224 >= 192
    require arg4 + arg4.length + 36 <= calldata.size
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    totalTypes++
    if arg1.length:
        stor22[stor21][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor22[stor21].field_0 = 0
        idx = 0
        while stor22[stor21].length + 31 / 32 > idx:
            stor22[stor21][idx].field_0 = 0
            idx = idx + 1
            continue 
    if arg2.length:
        stor22[stor21][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor22[stor21].field_256 = 0
        idx = 0
        while stor22[stor21][1].length + 31 / 32 > idx:
            stor22[stor21][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if arg3.length:
        stor22[stor21][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    else:
        stor22[stor21].field_512 = 0
        idx = 0
        while stor22[stor21][2].length + 31 / 32 > idx:
            stor22[stor21][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    if arg4.length:
        stor22[stor21][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    else:
        stor22[stor21].field_768 = 0
        idx = 0
        while stor22[stor21][3].length + 31 / 32 > idx:
            stor22[stor21][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_3c718709(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        uint256(sub_397ec488[mem[(32 * idx) + 128]]) = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx < ('cd', 4).length
        uint256(sub_397ec488[mem[(32 * idx) + 128]]) = uint256(sub_397ec488[mem[(32 * idx) + 128]]) and !mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 17
        stor17[mem[(32 * idx) + 128]] = 1
        idx = idx + 1
        continue 
}

function sub_bc8def32(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 <= test266151307() and ceil32(arg5.length) + 224 >= 192
    require arg5 + arg5.length + 36 <= calldata.size
    if bool(uint8(stor1[address(msg.sender)])) != 1:
        if owner != msg.sender:
            revert with 0, 'Caller is not trusted'
    if stor3:
        require msg.sender == owner
    if arg2.length:
        stor22[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor22[arg1].field_0 = 0
        idx = 0
        while stor22[arg1].length + 31 / 32 > idx:
            stor22[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    if arg3.length:
        stor22[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    else:
        stor22[arg1].field_256 = 0
        idx = 0
        while stor22[arg1][1].length + 31 / 32 > idx:
            stor22[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if arg4.length:
        stor22[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    else:
        stor22[arg1].field_512 = 0
        idx = 0
        while stor22[arg1][2].length + 31 / 32 > idx:
            stor22[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    if arg5.length:
        stor22[arg1][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    else:
        stor22[arg1].field_768 = 0
        idx = 0
        while stor22[arg1][3].length + 31 / 32 > idx:
            stor22[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    if totalTypes < arg1:
        totalTypes = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'Nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer caller is neither owner nor approved'
    if stor3:
        require msg.sender == owner
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer of token that is not owned'
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    if not stor19:
        if stor17[arg3]:
            if bool(sub_397ec488[arg3]) > 0:
                revert with 0, 'Card is banned'
            if stor3:
                require msg.sender == owner
            if 0 == ownerOf[arg3]:
                revert with 0, 'Approval to current owner'
            if ownerOf[arg3] != msg.sender:
                if not stor12[stor9[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Approve caller is neither owner nor approved for all'
        else:
            if not stor18:
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Approve caller is neither owner nor approved for all'
            else:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0, 'Approve caller is neither owner nor approved for all'
    else:
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        if not stor17[arg3]:
            if stor18:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
        if bool(sub_397ec488[arg3]) > 0:
            revert with 0, 'Card is banned'
        if stor3:
            require msg.sender == owner
        if 0 == ownerOf[arg3]:
            revert with 0, 'Approval to current owner'
        if ownerOf[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0, 'Approve caller is neither owner nor approved for all'
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'Nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer caller is neither owner nor approved'
    if stor3:
        require msg.sender == owner
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer of token that is not owned'
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    if not stor19:
        if stor17[arg3]:
            if bool(sub_397ec488[arg3]) > 0:
                revert with 0, 'Card is banned'
            if stor3:
                require msg.sender == owner
            if 0 == ownerOf[arg3]:
                revert with 0, 'Approval to current owner'
            if ownerOf[arg3] != msg.sender:
                if not stor12[stor9[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Approve caller is neither owner nor approved for all'
        else:
            if not stor18:
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Approve caller is neither owner nor approved for all'
            else:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0, 'Approve caller is neither owner nor approved for all'
    else:
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        if not stor17[arg3]:
            if stor18:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
        if bool(sub_397ec488[arg3]) > 0:
            revert with 0, 'Card is banned'
        if stor3:
            require msg.sender == owner
        if 0 == ownerOf[arg3]:
            revert with 0, 'Approval to current owner'
        if ownerOf[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0, 'Approve caller is neither owner nor approved for all'
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'Nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'Nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer caller is neither owner nor approved'
    if stor3:
        require msg.sender == owner
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer of token that is not owned'
    if not arg2:
        revert with 0, 'Transfer to the zero address'
    if not stor19:
        if stor17[arg3]:
            if bool(sub_397ec488[arg3]) > 0:
                revert with 0, 'Card is banned'
            if stor3:
                require msg.sender == owner
            if 0 == ownerOf[arg3]:
                revert with 0, 'Approval to current owner'
            if ownerOf[arg3] != msg.sender:
                if not stor12[stor9[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Approve caller is neither owner nor approved for all'
        else:
            if not stor18:
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Approve caller is neither owner nor approved for all'
            else:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
                if bool(sub_397ec488[arg3]) > 0:
                    revert with 0, 'Card is banned'
                if stor3:
                    require msg.sender == owner
                if 0 == ownerOf[arg3]:
                    revert with 0, 'Approval to current owner'
                if ownerOf[arg3] != msg.sender:
                    if not stor12[stor9[arg3]][address(msg.sender)]:
                        revert with 0, 'Approve caller is neither owner nor approved for all'
    else:
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        require ext_code.size(stor19)
        staticcall stor19.isBanned(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Card is banned'
        if not stor17[arg3]:
            if stor18:
                require ext_code.size(stor18)
                staticcall stor18.isBanned(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'Card is banned'
        if bool(sub_397ec488[arg3]) > 0:
            revert with 0, 'Card is banned'
        if stor3:
            require msg.sender == owner
        if 0 == ownerOf[arg3]:
            revert with 0, 'Approval to current owner'
        if ownerOf[arg3] != msg.sender:
            if not stor12[stor9[arg3]][address(msg.sender)]:
                revert with 0, 'Approve caller is neither owner nor approved for all'
    approved[arg3] = 0
    emit Approval(ownerOf[arg3], 0, arg3);
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor8[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)]]] = stor8[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor8[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    if not ownerOf[arg1]:
        revert with 0, 'Nonexistent token'
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if not bool(stor20.length):
            mem[192] = Mask(248, 8, stor20.length)
            mem[stor20.length.field_1 + 192] = '0'
            mem[stor20.length.field_1 + 193] = 32
            mem[stor20.length.field_1 + 225] = mem[160]
            mem[stor20.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor20.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor20.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor20.length) != 1:
            mem[64] = 1
            _68 = mem[160]
            mem[33] = mem[160]
            mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_68) > _68:
                mem[_68 + 65] = 0
            return memory
              from mem[64]
               len ceil32(_68) + -mem[64] + 65
        idx = 0
        s = 0
        while idx < stor20.length.field_1:
            mem[idx + 192] = stor20[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor20.length.field_1 + 192] = '0'
        mem[stor20.length.field_1 + 193] = 32
        mem[stor20.length.field_1 + 225] = mem[160]
        mem[stor20.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor20.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor20.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _187 = mem[64]
        if not bool(stor20.length):
            mem[mem[64] + 32] = Mask(248, 8, stor20.length)
            _207 = mem[96]
            mem[mem[64] + stor20.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _301 = mem[64]
                mem[64] = mem[64] + stor20.length.field_1 + mem[96] + 32
                mem[_187 + stor20.length.field_1 + mem[96] + 32] = 32
                _323 = mem[_301]
                mem[_187 + stor20.length.field_1 + _207 + 64] = mem[_301]
                mem[_187 + stor20.length.field_1 + _207 + 96 len ceil32(_323)] = mem[_301 + 32 len ceil32(_323)]
                if ceil32(_323) > _323:
                    mem[_187 + stor20.length.field_1 + _207 + _323 + 96] = 0
                return memory
                  from mem[64]
                   len _187 + stor20.length.field_1 + _207 + ceil32(_323) + -mem[64] + 96
            mem[mem[64] + stor20.length.field_1 + mem[96] + 32] = 0
            _308 = mem[64]
            mem[64] = _187 + stor20.length.field_1 + _207 + 32
            mem[_187 + stor20.length.field_1 + _207 + 32] = 32
            _327 = mem[_308]
            mem[_187 + stor20.length.field_1 + _207 + 64] = mem[_308]
            mem[_187 + stor20.length.field_1 + _207 + 96 len ceil32(_327)] = mem[_308 + 32 len ceil32(_327)]
            if ceil32(_327) > _327:
                mem[_187 + stor20.length.field_1 + _207 + _327 + 96] = 0
            return 32, mem[_187 + stor20.length.field_1 + _207 + 64 len ceil32(_327) + 32]
        if bool(stor20.length) != 1:
            _205 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_205) <= _205:
                _303 = mem[64]
                mem[64] = _205
                mem[_205] = 32
                _324 = mem[_303]
                mem[_205 + 32] = mem[_303]
                mem[_205 + 64 len ceil32(_324)] = mem[_303 + 32 len ceil32(_324)]
                if ceil32(_324) > _324:
                    mem[_205 + _324 + 64] = 0
                return 32, mem[_205 + 32 len ceil32(_324) + 32]
            mem[_205] = 0
            _310 = mem[64]
            mem[64] = _205
            mem[_205] = 32
            _328 = mem[_310]
            mem[_205 + 32] = mem[_310]
            mem[_205 + 64 len ceil32(_328)] = mem[_310 + 32 len ceil32(_328)]
            if ceil32(_328) > _328:
                mem[_205 + _328 + 64] = 0
            return 32, mem[_205 + 32 len ceil32(_328) + 32]
        mem[0] = 20
        idx = 0
        s = 0
        while idx < stor20.length.field_1:
            mem[_187 + idx + 32] = stor20[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _302 = mem[96]
        mem[_187 + stor20.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_302) <= _302:
            _391 = mem[64]
            mem[64] = _187 + stor20.length.field_1 + _302 + 32
            mem[_187 + stor20.length.field_1 + _302 + 32] = 32
            _415 = mem[_391]
            mem[_187 + stor20.length.field_1 + _302 + 64] = mem[_391]
            mem[_187 + stor20.length.field_1 + _302 + 96 len ceil32(_415)] = mem[_391 + 32 len ceil32(_415)]
            if ceil32(_415) > _415:
                mem[_187 + stor20.length.field_1 + _302 + _415 + 96] = 0
            return 32, mem[_187 + stor20.length.field_1 + _302 + 64 len ceil32(_415) + 32]
        mem[_187 + stor20.length.field_1 + _302 + 32] = 0
        _394 = mem[64]
        mem[64] = _187 + stor20.length.field_1 + _302 + 32
        mem[_187 + stor20.length.field_1 + _302 + 32] = 32
        _417 = mem[_394]
        mem[_187 + stor20.length.field_1 + _302 + 64] = mem[_394]
        mem[_187 + stor20.length.field_1 + _302 + 96 len ceil32(_417)] = mem[_394 + 32 len ceil32(_417)]
        if ceil32(_417) > _417:
            mem[_187 + stor20.length.field_1 + _302 + _417 + 96] = 0
        return 32, mem[_187 + stor20.length.field_1 + _302 + 64 len ceil32(_417) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _188 = mem[64]
    if not bool(stor20.length):
        mem[mem[64] + 32] = Mask(248, 8, stor20.length)
        _208 = mem[96]
        mem[mem[64] + stor20.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _304 = mem[64]
            mem[64] = mem[64] + stor20.length.field_1 + mem[96] + 32
            mem[_188 + stor20.length.field_1 + mem[96] + 32] = 32
            _325 = mem[_304]
            mem[_188 + stor20.length.field_1 + _208 + 64] = mem[_304]
            mem[_188 + stor20.length.field_1 + _208 + 96 len ceil32(_325)] = mem[_304 + 32 len ceil32(_325)]
            if ceil32(_325) > _325:
                mem[_188 + stor20.length.field_1 + _208 + _325 + 96] = 0
            return memory
              from mem[64]
               len _188 + stor20.length.field_1 + _208 + ceil32(_325) + -mem[64] + 96
        mem[mem[64] + stor20.length.field_1 + mem[96] + 32] = 0
        _312 = mem[64]
        mem[64] = _188 + stor20.length.field_1 + _208 + 32
        mem[_188 + stor20.length.field_1 + _208 + 32] = 32
        _329 = mem[_312]
        mem[_188 + stor20.length.field_1 + _208 + 64] = mem[_312]
        mem[_188 + stor20.length.field_1 + _208 + 96 len ceil32(_329)] = mem[_312 + 32 len ceil32(_329)]
        if ceil32(_329) > _329:
            mem[_188 + stor20.length.field_1 + _208 + _329 + 96] = 0
        return 32, mem[_188 + stor20.length.field_1 + _208 + 64 len ceil32(_329) + 32]
    if bool(stor20.length) != 1:
        _206 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_206) <= _206:
            _306 = mem[64]
            mem[64] = _206
            mem[_206] = 32
            _326 = mem[_306]
            mem[_206 + 32] = mem[_306]
            mem[_206 + 64 len ceil32(_326)] = mem[_306 + 32 len ceil32(_326)]
            if ceil32(_326) > _326:
                mem[_206 + _326 + 64] = 0
            return 32, mem[_206 + 32 len ceil32(_326) + 32]
        mem[_206] = 0
        _314 = mem[64]
        mem[64] = _206
        mem[_206] = 32
        _330 = mem[_314]
        mem[_206 + 32] = mem[_314]
        mem[_206 + 64 len ceil32(_330)] = mem[_314 + 32 len ceil32(_330)]
        if ceil32(_330) > _330:
            mem[_206 + _330 + 64] = 0
        return 32, mem[_206 + 32 len ceil32(_330) + 32]
    mem[0] = 20
    idx = 0
    s = 0
    while idx < stor20.length.field_1:
        mem[_188 + idx + 32] = stor20[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _305 = mem[96]
    mem[_188 + stor20.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_305) <= _305:
        _392 = mem[64]
        mem[64] = _188 + stor20.length.field_1 + _305 + 32
        mem[_188 + stor20.length.field_1 + _305 + 32] = 32
        _416 = mem[_392]
        mem[_188 + stor20.length.field_1 + _305 + 64] = mem[_392]
        mem[_188 + stor20.length.field_1 + _305 + 96 len ceil32(_416)] = mem[_392 + 32 len ceil32(_416)]
        if ceil32(_416) > _416:
            mem[_188 + stor20.length.field_1 + _305 + _416 + 96] = 0
        return 32, mem[_188 + stor20.length.field_1 + _305 + 64 len ceil32(_416) + 32]
    mem[_188 + stor20.length.field_1 + _305 + 32] = 0
    _396 = mem[64]
    mem[64] = _188 + stor20.length.field_1 + _305 + 32
    mem[_188 + stor20.length.field_1 + _305 + 32] = 32
    _418 = mem[_396]
    mem[_188 + stor20.length.field_1 + _305 + 64] = mem[_396]
    mem[_188 + stor20.length.field_1 + _305 + 96 len ceil32(_418)] = mem[_396 + 32 len ceil32(_418)]
    if ceil32(_418) > _418:
        mem[_188 + stor20.length.field_1 + _305 + _418 + 96] = 0
    return 32, mem[_188 + stor20.length.field_1 + _305 + 64 len ceil32(_418) + 32]
}



}
