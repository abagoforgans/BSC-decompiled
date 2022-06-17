contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_d6d0faee(?)
#
const DEFAULT_ADMIN_ROLE = 0

const DESIGNER_ROLE = 0x22c69ab406805e70d07fb1a6502af760601d3b977beadb295a9d76d5852e16a3

const PAUSER_ROLE = 0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86

const OPERATOR_ROLE = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor201;
array of struct stor202;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor206;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor252;
array of uint256 tokenByIndex;
mapping of uint256 stor254;
uint8 paused;
array of struct tokenRequests;
mapping of uint256 tokenDetails;
uint256 stor403;
array of struct stor404;
address sub_f29a4b1cAddress;
address sub_0680a20eAddress;
address designAddress;
mapping of uint256 sub_04634a8a;
mapping of uint256 sub_5580b1da;
uint8 sub_ee788e0a;
array of uint256 stor66614858098014121789659473664084883086973595185068194801876917288425524863616;

function sub_04634a8a(?) payable {
    require calldata.size - 4 >= 32
    return sub_04634a8a[arg1]
}

function sub_0680a20e(?) payable {
    return sub_0680a20eAddress
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5580b1da(?) payable {
    require calldata.size - 4 >= 32
    return sub_5580b1da[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function design() payable {
    return designAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor206[address(arg1)][address(arg2)])
}

function tokenRequests(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < tokenRequests[arg1].field_0
    return tokenRequests[arg1][arg2].field_0, tokenRequests[arg1][arg2].field_256
}

function sub_ee788e0a(?) payable {
    return bool(sub_ee788e0a)
}

function sub_f29a4b1c(?) payable {
    return sub_f29a4b1cAddress
}

function tokenDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenDetails[arg1]
}

function _fallback() payable {
    revert
}

function sub_25472e3b(?) payable {
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: must have default admin role to pause'
    sub_ee788e0a = 1
}

function sub_cff42e1f(?) payable {
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: must have default admin role to unpause'
    sub_ee788e0a = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor206[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not uint8(roleAdmin[0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not uint8(roleAdmin[0xfe65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor206[stor203[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_c697fa74(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 401
    mem[64] = (32 * tokenRequests[address(arg1)].field_0) + 128
    mem[96] = tokenRequests[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < tokenRequests[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 401)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = tokenRequests[address(arg1)][idx].field_0
        mem[_12 + 32] = tokenRequests[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_7d42b7eb(?) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(designAddress)
    staticcall designAddress.0x88cf58cd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0680a20eAddress)
    call sub_0680a20eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_04634a8a[arg1] = block.timestamp
    if sub_5580b1da[arg1] > -2:
        revert with 0, 17
    sub_5580b1da[arg1]++
}

function setDesign(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(roleAdmin[0x22c69ab406805e70d07fb1a6502af760601d3b977beadb295a9d76d5852e16a3][address(msg.sender)].field_0):
        designAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x22c69ab406805e70d07fb1a6502af760601d3b977beadb295a9d76d5852e16a3
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function governanceRecoverUnsupported(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if sub_f29a4b1cAddress == arg1:
        revert with 0, 'Token invalid'
    if sub_0680a20eAddress == arg1:
        revert with 0, 'Token invalid'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor206[stor203[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor203[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor203[arg1]] - 1 != stor252[arg1]:
            tokenOfOwnerByIndex[stor203[arg1]][stor252[arg1]] = tokenOfOwnerByIndex[stor203[arg1]][stor204[stor203[arg1]] - 1]
            stor252[stor251[stor203[arg1]][stor204[stor203[arg1]] - 1]] = stor252[arg1]
        stor252[arg1] = 0
        tokenOfOwnerByIndex[stor203[arg1]][stor204[stor203[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor254[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor254[arg1]] = tokenByIndex[tokenByIndex.length]
    stor254[stor253[stor253.length]] = stor254[arg1]
    stor254[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    require ext_code.size(designAddress)
    staticcall designAddress.0xad54d878 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 'ERC721: balance query for the zero address'
}

function withdraw() payable {
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    require ext_code.size(sub_f29a4b1cAddress)
    staticcall sub_f29a4b1cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f29a4b1cAddress)
    call sub_f29a4b1cAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_0680a20eAddress)
    staticcall sub_0680a20eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0680a20eAddress)
    call sub_0680a20eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setBaseTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if bool(stor404.length):
            if bool(stor404.length) == uint255(stor404.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor404[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor404.length = 0
                idx = 0
                while (uint255(stor404.length) * 0.5) + 31 / 32 > idx:
                    stor404[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor404.length) == stor404.length.field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor404[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor404.length = 0
                idx = 0
                while stor404.length.field_1 % 128 + 31 / 32 > idx:
                    stor404[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(designAddress)
    staticcall designAddress.0x151ddb88 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(designAddress)
    staticcall designAddress.0x9a1ad103 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Amount is not valid'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'Amount is not valid'
    require ext_code.size(designAddress)
    staticcall designAddress.0xc4e8b0e4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokenRequests[msg.sender].field_0 > ext_call.return_data[0]:
        revert with 0, 'Requests reached limit'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    require ext_code.size(designAddress)
    staticcall designAddress.0xad54d878 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] > !ext_call.return_data[0]:
        revert with 0, 17
    if balanceOf[address(msg.sender)] + ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SpaceShip reached limit'
    require ext_code.size(designAddress)
    staticcall designAddress.getMintCost() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_f29a4b1cAddress)
    call sub_f29a4b1cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0] * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 5 > !block.number:
        revert with 0, 17
    tokenRequests[address(msg.sender)].field_0++
    tokenRequests[address(msg.sender)][tokenRequests[address(msg.sender)].field_0].field_0 = block.number + 5
    tokenRequests[address(msg.sender)][tokenRequests[address(msg.sender)].field_0].field_256 = ext_call.return_data[0]
    emit TokenCreateRequested(msg.sender, block.number + 5);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor206[stor203[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor254[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor9346[stor253.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor252[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor252[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1]
                stor252[stor251[address(arg1)][stor204[address(arg1)] - 1]] = stor252[arg3]
            stor252[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor204[address(arg2)]] = arg3
            stor252[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor254[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor254[arg3]] = tokenByIndex[tokenByIndex.length]
        stor254[stor253[stor253.length]] = stor254[arg3]
        stor254[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    require ext_code.size(designAddress)
    staticcall designAddress.0xad54d878 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if 1 > !balanceOf[address(arg2)]:
        revert with 0, 17
    if balanceOf[address(arg2)] + 1 > ext_call.return_data[0]:
        revert with 0, 'Ship limit reached'
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
}

function name() payable {
    if bool(stor201.length):
        if bool(stor201.length) == uint255(stor201.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor201.length):
            if bool(stor201.length) == uint255(stor201.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor201.length):
                if 31 < uint255(stor201.length) * 0.5:
                    mem[128] = uint256(stor201.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor201.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor201[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201.length), data=mem[128 len ceil32(uint255(stor201.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor201.length.field_8)
        else:
            if bool(stor201.length) == stor201.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor201.length.field_1 % 128:
                if 31 < stor201.length.field_1 % 128:
                    mem[128] = uint256(stor201.field_0)
                    idx = 128
                    s = 0
                    while stor201.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor201[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201.length), data=mem[128 len ceil32(uint255(stor201.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor201.length.field_8)
        mem[ceil32(uint255(stor201.length) * 0.5) + 192 len ceil32(uint255(stor201.length) * 0.5)] = mem[128 len ceil32(uint255(stor201.length) * 0.5)]
        if ceil32(uint255(stor201.length) * 0.5) > uint255(stor201.length) * 0.5:
            mem[(uint255(stor201.length) * 0.5) + ceil32(uint255(stor201.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor201.length), data=mem[128 len ceil32(uint255(stor201.length) * 0.5)], mem[(2 * ceil32(uint255(stor201.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor201.length) * 0.5)]), 
    if bool(stor201.length) == stor201.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor201.length):
        if bool(stor201.length) == uint255(stor201.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor201.length):
            if 31 < uint255(stor201.length) * 0.5:
                mem[128] = uint256(stor201.field_0)
                idx = 128
                s = 0
                while (uint255(stor201.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor201[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor201.length.field_8)
    else:
        if bool(stor201.length) == stor201.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor201.length.field_1 % 128:
            if 31 < stor201.length.field_1 % 128:
                mem[128] = uint256(stor201.field_0)
                idx = 128
                s = 0
                while stor201.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor201[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor201.length.field_8)
    mem[ceil32(stor201.length.field_1 % 128) + 192 len ceil32(stor201.length.field_1 % 128)] = mem[128 len ceil32(stor201.length.field_1 % 128)]
    if ceil32(stor201.length.field_1 % 128) > stor201.length.field_1 % 128:
        mem[stor201.length.field_1 % 128 + ceil32(stor201.length.field_1 % 128) + 192] = 0
    return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1 % 128)], mem[(2 * ceil32(stor201.length.field_1 % 128)) + 192 len 2 * ceil32(stor201.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor202.length):
        if bool(stor202.length) == uint255(stor202.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor202.length):
            if bool(stor202.length) == uint255(stor202.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor202.length):
                if 31 < uint255(stor202.length) * 0.5:
                    mem[128] = uint256(stor202.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor202.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor202[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor202.length), data=mem[128 len ceil32(uint255(stor202.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor202.length.field_8)
        else:
            if bool(stor202.length) == stor202.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor202.length.field_1 % 128:
                if 31 < stor202.length.field_1 % 128:
                    mem[128] = uint256(stor202.field_0)
                    idx = 128
                    s = 0
                    while stor202.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor202[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor202.length), data=mem[128 len ceil32(uint255(stor202.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor202.length.field_8)
        mem[ceil32(uint255(stor202.length) * 0.5) + 192 len ceil32(uint255(stor202.length) * 0.5)] = mem[128 len ceil32(uint255(stor202.length) * 0.5)]
        if ceil32(uint255(stor202.length) * 0.5) > uint255(stor202.length) * 0.5:
            mem[(uint255(stor202.length) * 0.5) + ceil32(uint255(stor202.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor202.length), data=mem[128 len ceil32(uint255(stor202.length) * 0.5)], mem[(2 * ceil32(uint255(stor202.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor202.length) * 0.5)]), 
    if bool(stor202.length) == stor202.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor202.length):
        if bool(stor202.length) == uint255(stor202.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor202.length):
            if 31 < uint255(stor202.length) * 0.5:
                mem[128] = uint256(stor202.field_0)
                idx = 128
                s = 0
                while (uint255(stor202.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor202[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor202.length.field_8)
    else:
        if bool(stor202.length) == stor202.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor202.length.field_1 % 128:
            if 31 < stor202.length.field_1 % 128:
                mem[128] = uint256(stor202.field_0)
                idx = 128
                s = 0
                while stor202.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor202[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor202.length.field_8)
    mem[ceil32(stor202.length.field_1 % 128) + 192 len ceil32(stor202.length.field_1 % 128)] = mem[128 len ceil32(stor202.length.field_1 % 128)]
    if ceil32(stor202.length.field_1 % 128) > stor202.length.field_1 % 128:
        mem[stor202.length.field_1 % 128 + ceil32(stor202.length.field_1 % 128) + 192] = 0
    return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1 % 128)], mem[(2 * ceil32(stor202.length.field_1 % 128)) + 192 len 2 * ceil32(stor202.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor206[stor203[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor254[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor9346[stor253.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor252[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor252[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1]
                stor252[stor251[address(arg1)][stor204[address(arg1)] - 1]] = stor252[arg3]
            stor252[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor204[address(arg2)]] = arg3
            stor252[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor254[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor254[arg3]] = tokenByIndex[tokenByIndex.length]
        stor254[stor253[stor253.length]] = stor254[arg3]
        stor254[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    require ext_code.size(designAddress)
    staticcall designAddress.0xad54d878 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if 1 > !balanceOf[address(arg2)]:
        revert with 0, 17
    if balanceOf[address(arg2)] + 1 > ext_call.return_data[0]:
        revert with 0, 'Ship limit reached'
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
            args msg.sender, address(arg1), arg3, 128, 0
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

function sub_1c1c49ff(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    mem[0] = msg.sender
    mem[32] = sha3(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, 101)
    if not uint8(roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if sub_ee788e0a:
        revert with 0, 'Pausing mint'
    if not arg3:
        if block.number < 1:
            revert with 0, 17
        idx = 0
        s = 0
        while idx < 1:
            _191 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number - 1)
            mem[mem[64] + 64] = stor403
            _194 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _196 = sha3(mem[_194 + 32 len mem[_194]])
            mem[_191 + 132] = stor403
            mem[_191 + 164] = 1
            mem[_191 + 196] = arg2
            require ext_code.size(designAddress)
            staticcall designAddress.0x8b5c10f2 with:
                    gas gas_remaining wei
                   args _196, stor403, 1, arg2
            mem[_191 + 96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            stor403++
            tokenDetails[stor403] = ext_call.return_data[32]
            mem[_191 + ceil32(return_data.size) + 96] = 0
            if not address(arg1):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor403]:
                revert with 0, 'ERC721: token already minted'
            stor254[stor403] = tokenByIndex.length
            tokenByIndex.length++
            stor9346[stor253.length] = stor403
            if address(arg1):
                if address(arg1):
                    if not address(arg1):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)]] = stor403
                    stor252[stor403] = balanceOf[address(arg1)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor254[stor403] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                stor254[stor253[stor253.length]] = stor254[stor403]
                stor254[stor403] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            require ext_code.size(designAddress)
            staticcall designAddress.0xad54d878 with:
                    gas gas_remaining wei
            mem[_191 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _191 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if 1 > !balanceOf[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] + 1 > ext_call.return_data[0]:
                revert with 0, 'Ship limit reached'
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = stor403
            mem[32] = 203
            ownerOf[stor403] = address(arg1)
            emit Transfer(0, address(arg1), stor403);
            if not ext_code.size(address(arg1)):
                mem[_191 + (2 * ceil32(return_data.size)) + 128] = address(arg1)
                mem[_191 + (2 * ceil32(return_data.size)) + 160] = stor403
                mem[_191 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                mem[_191 + (2 * ceil32(return_data.size)) + 224] = 1
                mem[_191 + (2 * ceil32(return_data.size)) + 256] = arg2
            else:
                mem[_191 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[_191 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[_191 + (2 * ceil32(return_data.size)) + 164] = 0
                mem[_191 + (2 * ceil32(return_data.size)) + 196] = stor403
                mem[_191 + (2 * ceil32(return_data.size)) + 228] = 128
                mem[_191 + (2 * ceil32(return_data.size)) + 260] = 0
                s = 0
                while s < 0:
                    mem[s + _191 + (2 * ceil32(return_data.size)) + 292] = mem[s + _191 + ceil32(return_data.size) + 128]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor403, 128, 0
                mem[_191 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                mem[64] = _191 + (4 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                mem[_191 + (4 * ceil32(return_data.size)) + 128] = address(arg1)
                mem[_191 + (4 * ceil32(return_data.size)) + 160] = stor403
                mem[_191 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                mem[_191 + (4 * ceil32(return_data.size)) + 224] = 1
                mem[_191 + (4 * ceil32(return_data.size)) + 256] = arg2
            emit 0xcf86602d: address(arg1), stor403, ext_call.return_data[32], 1, arg2
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = ext_call.return_data[32]
            continue 
    else:
        if 5 > !block.number:
            revert with 0, 17
        tokenRequests[address(arg1)].field_0++
        tokenRequests[address(arg1)][tokenRequests[address(arg1)].field_0].field_0 = block.number + 5
        tokenRequests[address(arg1)][tokenRequests[address(arg1)].field_0].field_256 = 1
        emit TokenCreateRequested(address(arg1), block.number + 5);
}

function sub_eebc3987(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 204
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    if not balanceOf[address(arg1)]:
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0xa1fc547200000000000000000000000000000000000000000000000000000000
        require ext_code.size(designAddress)
        staticcall designAddress.0xa1fc5472 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * balanceOf[address(arg1)]) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _9 = mem[(32 * balanceOf[address(arg1)]) + 128]
        require mem[(32 * balanceOf[address(arg1)]) + 128] <= test266151307()
        require (32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 159 < (32 * balanceOf[address(arg1)]) + return_data.size + 128
        _12 = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128]
        if mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128]) + 1 < 0 or (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128]) + 129 > test266151307():
            revert with 0, 65
        mem[64] = (32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + ceil32(32 * mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128]) + 129
        mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128] = mem[(32 * balanceOf[address(arg1)]) + mem[(32 * balanceOf[address(arg1)]) + 128] + 128]
        require _9 + (32 * _12) + 32 <= return_data.size
        mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160 len ceil32(32 * _12)] = mem[(32 * balanceOf[address(arg1)]) + _9 + 160 len ceil32(32 * _12)]
        if balanceOf[address(arg1)] > test266151307():
            revert with 0, 65
        _296 = mem[64]
        mem[mem[64]] = balanceOf[address(arg1)]
        mem[64] = mem[64] + (32 * balanceOf[address(arg1)]) + 32
        if not balanceOf[address(arg1)]:
            idx = 0
            while idx < balanceOf[address(arg1)]:
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                if idx >= balanceOf[address(arg1)]:
                    revert with 0, 'ERC721Enumerable: owner index out of bounds'
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 402
                _622 = mem[64]
                mem[64] = mem[64] + 256
                mem[_622] = 0
                mem[_622 + 32] = 0
                mem[_622 + 64] = 0
                mem[_622 + 96] = 0
                mem[_622 + 128] = 0
                mem[_622 + 160] = 0
                mem[_622 + 192] = 0
                mem[_622 + 224] = 0
                _625 = mem[64]
                mem[64] = mem[64] + 256
                mem[_625] = 0
                mem[_625 + 32] = 0
                mem[_625 + 64] = 0
                mem[_625 + 96] = 0
                mem[_625 + 128] = 0
                mem[_625 + 160] = 0
                mem[_625 + 192] = 0
                mem[_625 + 224] = 0
                if 0 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 0 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160] < 1:
                    revert with 0, 17
                mem[_625] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]
                if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] < 1:
                    revert with 0, 17
                mem[_625 + 32] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]
                if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] < 1:
                    revert with 0, 17
                mem[_625 + 64] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]
                if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] < 1:
                    revert with 0, 17
                mem[_625 + 96] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]
                if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] < 1:
                    revert with 0, 17
                mem[_625 + 128] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]
                if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] < 1:
                    revert with 0, 17
                mem[_625 + 160] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]
                if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if 7 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                    revert with 0, 50
                if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]:
                    revert with 0, 17
                if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] < 1:
                    revert with 0, 17
                mem[_625 + 192] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _625
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 408
                if idx >= mem[96]:
                    revert with 0, 50
                mem[_625 + 224] = sub_04634a8a[stor251[address(arg1)][idx]]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _578 = mem[64]
            mem[mem[64]] = 32
            _580 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _580:
                _858 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_858 + 32]
                mem[t + 64] = mem[_858 + 64]
                mem[t + 96] = mem[_858 + 96]
                mem[t + 128] = mem[_858 + 128]
                mem[t + 160] = mem[_858 + 160]
                mem[t + 192] = mem[_858 + 192]
                mem[t + 224] = mem[_858 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len _578 + (256 * _580) + -mem[64] + 64
        mem[_296 + 32 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 402
            _623 = mem[64]
            mem[64] = mem[64] + 256
            mem[_623] = 0
            mem[_623 + 32] = 0
            mem[_623 + 64] = 0
            mem[_623 + 96] = 0
            mem[_623 + 128] = 0
            mem[_623 + 160] = 0
            mem[_623 + 192] = 0
            mem[_623 + 224] = 0
            _626 = mem[64]
            mem[64] = mem[64] + 256
            mem[_626] = 0
            mem[_626 + 32] = 0
            mem[_626 + 64] = 0
            mem[_626 + 96] = 0
            mem[_626 + 128] = 0
            mem[_626 + 160] = 0
            mem[_626 + 192] = 0
            mem[_626 + 224] = 0
            if 0 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 0 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160] < 1:
                revert with 0, 17
            mem[_626] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 160]
            if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 1 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            mem[_626 + 32] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 192]
            if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 2 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            mem[_626 + 64] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 224]
            if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 3 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256] < 1:
                revert with 0, 17
            mem[_626 + 96] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 256]
            if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 4 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288] < 1:
                revert with 0, 17
            mem[_626 + 128] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 288]
            if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 5 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320] < 1:
                revert with 0, 17
            mem[_626 + 160] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 320]
            if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 6 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if 7 >= mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 128]:
                revert with 0, 50
            if mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] < mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]:
                revert with 0, 17
            if 1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352] < 1:
                revert with 0, 17
            mem[_626 + 192] = (1 << mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 384] - mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]) - 1 and Mask(256, -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352], tokenDetails[stor251[address(arg1)][idx]]) << -mem[(32 * balanceOf[address(arg1)]) + ceil32(return_data.size) + 352]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _626
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 408
            if idx >= mem[96]:
                revert with 0, 50
            mem[_626 + 224] = sub_04634a8a[stor251[address(arg1)][idx]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _579 = mem[64]
        mem[mem[64]] = 32
        _581 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _581:
            _867 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_867 + 32]
            mem[t + 64] = mem[_867 + 64]
            mem[t + 96] = mem[_867 + 96]
            mem[t + 128] = mem[_867 + 128]
            mem[t + 160] = mem[_867 + 160]
            mem[t + 192] = mem[_867 + 192]
            mem[t + 224] = mem[_867 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _579 + (256 * _581) + -mem[64] + 64
    mem[64] = (32 * balanceOf[address(arg1)]) + 384
    mem[(32 * balanceOf[address(arg1)]) + 128] = 0
    mem[(32 * balanceOf[address(arg1)]) + 160] = 0
    mem[(32 * balanceOf[address(arg1)]) + 192] = 0
    mem[(32 * balanceOf[address(arg1)]) + 224] = 0
    mem[(32 * balanceOf[address(arg1)]) + 256] = 0
    mem[(32 * balanceOf[address(arg1)]) + 288] = 0
    mem[(32 * balanceOf[address(arg1)]) + 320] = 0
    mem[(32 * balanceOf[address(arg1)]) + 352] = 0
    mem[var17001] = (32 * balanceOf[address(arg1)]) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * balanceOf[address(arg1)]) + 128] = 0
        mem[(32 * balanceOf[address(arg1)]) + 160] = 0
        mem[(32 * balanceOf[address(arg1)]) + 192] = 0
        mem[(32 * balanceOf[address(arg1)]) + 224] = 0
        mem[(32 * balanceOf[address(arg1)]) + 256] = 0
        mem[(32 * balanceOf[address(arg1)]) + 288] = 0
        mem[(32 * balanceOf[address(arg1)]) + 320] = 0
        mem[(32 * balanceOf[address(arg1)]) + 352] = 0
        mem[s + 32] = (32 * balanceOf[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64]] = 0xa1fc547200000000000000000000000000000000000000000000000000000000
    require ext_code.size(designAddress)
    staticcall designAddress.0xa1fc5472 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _608 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _621 = mem[_608]
    require mem[_608] <= test266151307()
    require _608 + mem[_608] + 31 < _608 + return_data.size
    _624 = mem[_608 + mem[_608]]
    if mem[_608 + mem[_608]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_608 + mem[_608]]) + 1 < 0 or _608 + ceil32(return_data.size) + ceil32(32 * mem[_608 + mem[_608]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _608 + ceil32(return_data.size) + ceil32(32 * mem[_608 + mem[_608]]) + 1
    mem[_608 + ceil32(return_data.size)] = _624
    require _621 + (32 * _624) + 32 <= return_data.size
    mem[_608 + ceil32(return_data.size) + 32 len ceil32(32 * _624)] = mem[_608 + _621 + 32 len ceil32(32 * _624)]
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    _879 = mem[64]
    mem[mem[64]] = balanceOf[address(arg1)]
    mem[64] = mem[64] + (32 * balanceOf[address(arg1)]) + 32
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < balanceOf[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if idx >= balanceOf[address(arg1)]:
                revert with 0, 'ERC721Enumerable: owner index out of bounds'
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 402
            _1056 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1056] = 0
            mem[_1056 + 32] = 0
            mem[_1056 + 64] = 0
            mem[_1056 + 96] = 0
            mem[_1056 + 128] = 0
            mem[_1056 + 160] = 0
            mem[_1056 + 192] = 0
            mem[_1056 + 224] = 0
            _1058 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1058] = 0
            mem[_1058 + 32] = 0
            mem[_1058 + 64] = 0
            mem[_1058 + 96] = 0
            mem[_1058 + 128] = 0
            mem[_1058 + 160] = 0
            mem[_1058 + 192] = 0
            mem[_1058 + 224] = 0
            if 0 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 0 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 1 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 64] < mem[_608 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 64] - mem[_608 + ceil32(return_data.size) + 32] < 1:
                revert with 0, 17
            mem[_1058] = (1 << mem[_608 + ceil32(return_data.size) + 64] - mem[_608 + ceil32(return_data.size) + 32]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 32], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 32]
            if 1 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 1 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 2 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 96] < mem[_608 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 96] - mem[_608 + ceil32(return_data.size) + 64] < 1:
                revert with 0, 17
            mem[_1058 + 32] = (1 << mem[_608 + ceil32(return_data.size) + 96] - mem[_608 + ceil32(return_data.size) + 64]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 64], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 64]
            if 2 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 2 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 3 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 128] < mem[_608 + ceil32(return_data.size) + 96]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 128] - mem[_608 + ceil32(return_data.size) + 96] < 1:
                revert with 0, 17
            mem[_1058 + 64] = (1 << mem[_608 + ceil32(return_data.size) + 128] - mem[_608 + ceil32(return_data.size) + 96]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 96], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 96]
            if 3 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 3 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 4 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 160] < mem[_608 + ceil32(return_data.size) + 128]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 160] - mem[_608 + ceil32(return_data.size) + 128] < 1:
                revert with 0, 17
            mem[_1058 + 96] = (1 << mem[_608 + ceil32(return_data.size) + 160] - mem[_608 + ceil32(return_data.size) + 128]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 128], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 128]
            if 4 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 4 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 5 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 192] < mem[_608 + ceil32(return_data.size) + 160]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 192] - mem[_608 + ceil32(return_data.size) + 160] < 1:
                revert with 0, 17
            mem[_1058 + 128] = (1 << mem[_608 + ceil32(return_data.size) + 192] - mem[_608 + ceil32(return_data.size) + 160]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 160], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 160]
            if 5 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 5 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 6 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 224] < mem[_608 + ceil32(return_data.size) + 192]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 224] - mem[_608 + ceil32(return_data.size) + 192] < 1:
                revert with 0, 17
            mem[_1058 + 160] = (1 << mem[_608 + ceil32(return_data.size) + 224] - mem[_608 + ceil32(return_data.size) + 192]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 192], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 192]
            if 6 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 6 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if 7 >= mem[_608 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[_608 + ceil32(return_data.size) + 256] < mem[_608 + ceil32(return_data.size) + 224]:
                revert with 0, 17
            if 1 << mem[_608 + ceil32(return_data.size) + 256] - mem[_608 + ceil32(return_data.size) + 224] < 1:
                revert with 0, 17
            mem[_1058 + 192] = (1 << mem[_608 + ceil32(return_data.size) + 256] - mem[_608 + ceil32(return_data.size) + 224]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 224], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 224]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1058
            mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
            mem[32] = 408
            if idx >= mem[96]:
                revert with 0, 50
            mem[_1058 + 224] = sub_04634a8a[stor251[address(arg1)][idx]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1016 = mem[64]
        mem[mem[64]] = 32
        _1018 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _1018:
            _1152 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1152 + 32]
            mem[t + 64] = mem[_1152 + 64]
            mem[t + 96] = mem[_1152 + 96]
            mem[t + 128] = mem[_1152 + 128]
            mem[t + 160] = mem[_1152 + 160]
            mem[t + 192] = mem[_1152 + 192]
            mem[t + 224] = mem[_1152 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _1016 + (256 * _1018) + -mem[64] + 64
    mem[_879 + 32 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 402
        _1057 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1057] = 0
        mem[_1057 + 32] = 0
        mem[_1057 + 64] = 0
        mem[_1057 + 96] = 0
        mem[_1057 + 128] = 0
        mem[_1057 + 160] = 0
        mem[_1057 + 192] = 0
        mem[_1057 + 224] = 0
        _1059 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1059] = 0
        mem[_1059 + 32] = 0
        mem[_1059 + 64] = 0
        mem[_1059 + 96] = 0
        mem[_1059 + 128] = 0
        mem[_1059 + 160] = 0
        mem[_1059 + 192] = 0
        mem[_1059 + 224] = 0
        if 0 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 0 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 1 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 64] < mem[_608 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 64] - mem[_608 + ceil32(return_data.size) + 32] < 1:
            revert with 0, 17
        mem[_1059] = (1 << mem[_608 + ceil32(return_data.size) + 64] - mem[_608 + ceil32(return_data.size) + 32]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 32], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 32]
        if 1 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 1 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 2 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 96] < mem[_608 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 96] - mem[_608 + ceil32(return_data.size) + 64] < 1:
            revert with 0, 17
        mem[_1059 + 32] = (1 << mem[_608 + ceil32(return_data.size) + 96] - mem[_608 + ceil32(return_data.size) + 64]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 64], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 64]
        if 2 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 2 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 3 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 128] < mem[_608 + ceil32(return_data.size) + 96]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 128] - mem[_608 + ceil32(return_data.size) + 96] < 1:
            revert with 0, 17
        mem[_1059 + 64] = (1 << mem[_608 + ceil32(return_data.size) + 128] - mem[_608 + ceil32(return_data.size) + 96]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 96], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 96]
        if 3 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 3 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 4 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 160] < mem[_608 + ceil32(return_data.size) + 128]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 160] - mem[_608 + ceil32(return_data.size) + 128] < 1:
            revert with 0, 17
        mem[_1059 + 96] = (1 << mem[_608 + ceil32(return_data.size) + 160] - mem[_608 + ceil32(return_data.size) + 128]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 128], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 128]
        if 4 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 4 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 5 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 192] < mem[_608 + ceil32(return_data.size) + 160]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 192] - mem[_608 + ceil32(return_data.size) + 160] < 1:
            revert with 0, 17
        mem[_1059 + 128] = (1 << mem[_608 + ceil32(return_data.size) + 192] - mem[_608 + ceil32(return_data.size) + 160]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 160], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 160]
        if 5 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 5 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 6 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 224] < mem[_608 + ceil32(return_data.size) + 192]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 224] - mem[_608 + ceil32(return_data.size) + 192] < 1:
            revert with 0, 17
        mem[_1059 + 160] = (1 << mem[_608 + ceil32(return_data.size) + 224] - mem[_608 + ceil32(return_data.size) + 192]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 192], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 192]
        if 6 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 6 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if 7 >= mem[_608 + ceil32(return_data.size)]:
            revert with 0, 50
        if mem[_608 + ceil32(return_data.size) + 256] < mem[_608 + ceil32(return_data.size) + 224]:
            revert with 0, 17
        if 1 << mem[_608 + ceil32(return_data.size) + 256] - mem[_608 + ceil32(return_data.size) + 224] < 1:
            revert with 0, 17
        mem[_1059 + 192] = (1 << mem[_608 + ceil32(return_data.size) + 256] - mem[_608 + ceil32(return_data.size) + 224]) - 1 and Mask(256, -mem[_608 + ceil32(return_data.size) + 224], tokenDetails[stor251[address(arg1)][idx]]) << -mem[_608 + ceil32(return_data.size) + 224]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _1059
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 408
        if idx >= mem[96]:
            revert with 0, 50
        mem[_1059 + 224] = sub_04634a8a[stor251[address(arg1)][idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1017 = mem[64]
    mem[mem[64]] = 32
    _1019 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1019:
        _1161 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1161 + 32]
        mem[t + 64] = mem[_1161 + 64]
        mem[t + 96] = mem[_1161 + 96]
        mem[t + 128] = mem[_1161 + 128]
        mem[t + 160] = mem[_1161 + 160]
        mem[t + 192] = mem[_1161 + 192]
        mem[t + 224] = mem[_1161 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _1017 + (256 * _1019) + -mem[64] + 64
}

function sub_0954ab1a(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require ext_code.size(designAddress)
    staticcall designAddress.0xad54d878 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] >= ext_call.return_data[0]:
        revert with 0, 'Space Ship reached limit'
    if ext_call.return_data[0] < balanceOf[address(msg.sender)]:
        revert with 0, 17
    mem[0] = msg.sender
    mem[32] = 401
    idx = stor[sha3(mem[0 len 64])]
    s = mem[96] - balanceOf[address(msg.sender)]
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= tokenRequests[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 401)
        if block.number <= tokenRequests[address(msg.sender)][idx - 1].field_0:
            revert with 0, 'Target block not arrived'
        if block.hash(tokenRequests[address(msg.sender)][idx - 1].field_0):
            if s < tokenRequests[address(msg.sender)][idx - 1].field_256:
                if tokenRequests[address(msg.sender)][idx - 1].field_256 < s:
                    revert with 0, 17
                tokenRequests[address(msg.sender)][idx - 1].field_256 -= s
                t = 0
                u = 0
                while t < s:
                    _2124 = mem[64]
                    mem[mem[64] + 32] = block.hash(tokenRequests[address(msg.sender)][idx - 1].field_0)
                    mem[mem[64] + 64] = stor403
                    _2134 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2136 = sha3(mem[_2134 + 32 len mem[_2134]])
                    mem[_2124 + 132] = stor403
                    mem[_2124 + 164] = 0
                    mem[_2124 + 196] = 0
                    require ext_code.size(designAddress)
                    staticcall designAddress.0x8b5c10f2 with:
                            gas gas_remaining wei
                           args _2136, stor403, 0, 0
                    mem[_2124 + 96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    stor403++
                    tokenDetails[stor403] = ext_call.return_data[32]
                    mem[_2124 + ceil32(return_data.size) + 96] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor403]:
                        revert with 0, 'ERC721: token already minted'
                    stor254[stor403] = tokenByIndex.length
                    tokenByIndex.length++
                    stor9346[stor253.length] = stor403
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                            stor252[stor403] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor254[stor403] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                        stor254[stor253[stor253.length]] = stor254[stor403]
                        stor254[stor403] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    require ext_code.size(designAddress)
                    staticcall designAddress.0xad54d878 with:
                            gas gas_remaining wei
                    mem[_2124 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2124 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if 1 > !balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                        revert with 0, 'Ship limit reached'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor403
                    mem[32] = 203
                    ownerOf[stor403] = msg.sender
                    emit Transfer(0, msg.sender, stor403);
                    if not ext_code.size(msg.sender):
                        mem[_2124 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2124 + (2 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2124 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2124 + (2 * ceil32(return_data.size)) + 224] = 0
                        mem[_2124 + (2 * ceil32(return_data.size)) + 256] = 0
                    else:
                        mem[_2124 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_2124 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[_2124 + (2 * ceil32(return_data.size)) + 164] = 0
                        mem[_2124 + (2 * ceil32(return_data.size)) + 196] = stor403
                        mem[_2124 + (2 * ceil32(return_data.size)) + 228] = 128
                        mem[_2124 + (2 * ceil32(return_data.size)) + 260] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _2124 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2124 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor403, 128, 0
                        mem[_2124 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                        mem[64] = _2124 + (4 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[_2124 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2124 + (4 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2124 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2124 + (4 * ceil32(return_data.size)) + 224] = 0
                        mem[_2124 + (4 * ceil32(return_data.size)) + 256] = 0
                    emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = ext_call.return_data[32]
                    continue 
            t = 0
            u = 0
            while t < tokenRequests[address(msg.sender)][idx - 1].field_256:
                _2123 = mem[64]
                mem[mem[64] + 32] = block.hash(tokenRequests[address(msg.sender)][idx - 1].field_0)
                mem[mem[64] + 64] = stor403
                _2130 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _2132 = sha3(mem[_2130 + 32 len mem[_2130]])
                mem[_2123 + 132] = stor403
                mem[_2123 + 164] = 0
                mem[_2123 + 196] = 0
                require ext_code.size(designAddress)
                staticcall designAddress.0x8b5c10f2 with:
                        gas gas_remaining wei
                       args _2132, stor403, 0, 0
                mem[_2123 + 96 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                stor403++
                tokenDetails[stor403] = ext_call.return_data[32]
                mem[_2123 + ceil32(return_data.size) + 96] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor403]:
                    revert with 0, 'ERC721: token already minted'
                stor254[stor403] = tokenByIndex.length
                tokenByIndex.length++
                stor9346[stor253.length] = stor403
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                        stor252[stor403] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor254[stor403] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                    stor254[stor253[stor253.length]] = stor254[stor403]
                    stor254[stor403] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                require ext_code.size(designAddress)
                staticcall designAddress.0xad54d878 with:
                        gas gas_remaining wei
                mem[_2123 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2123 + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                    revert with 0, 'Ship limit reached'
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor403
                mem[32] = 203
                ownerOf[stor403] = msg.sender
                emit Transfer(0, msg.sender, stor403);
                if not ext_code.size(msg.sender):
                    mem[_2123 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                    mem[_2123 + (2 * ceil32(return_data.size)) + 160] = stor403
                    mem[_2123 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                    mem[_2123 + (2 * ceil32(return_data.size)) + 224] = 0
                    mem[_2123 + (2 * ceil32(return_data.size)) + 256] = 0
                else:
                    mem[_2123 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_2123 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[_2123 + (2 * ceil32(return_data.size)) + 164] = 0
                    mem[_2123 + (2 * ceil32(return_data.size)) + 196] = stor403
                    mem[_2123 + (2 * ceil32(return_data.size)) + 228] = 128
                    mem[_2123 + (2 * ceil32(return_data.size)) + 260] = 0
                    idx = 0
                    while idx < 0:
                        mem[idx + _2123 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2123 + ceil32(return_data.size) + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor403, 128, 0
                    mem[_2123 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                    mem[64] = _2123 + (4 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    mem[_2123 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                    mem[_2123 + (4 * ceil32(return_data.size)) + 160] = stor403
                    mem[_2123 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                    mem[_2123 + (4 * ceil32(return_data.size)) + 224] = 0
                    mem[_2123 + (4 * ceil32(return_data.size)) + 256] = 0
                emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = ext_call.return_data[32]
                continue 
        else:
            if Mask(248, 8, block.number) > !uint8(tokenRequests[address(msg.sender)][idx - 1].field_0):
                revert with 0, 17
            if Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0) < block.number:
                if s < tokenRequests[address(msg.sender)][idx - 1].field_256:
                    if tokenRequests[address(msg.sender)][idx - 1].field_256 < s:
                        revert with 0, 17
                    tokenRequests[address(msg.sender)][idx - 1].field_256 -= s
                    t = 0
                    u = 0
                    while t < s:
                        _2126 = mem[64]
                        mem[mem[64] + 32] = block.hash(Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0))
                        mem[mem[64] + 64] = stor403
                        _2143 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2145 = sha3(mem[_2143 + 32 len mem[_2143]])
                        mem[_2126 + 132] = stor403
                        mem[_2126 + 164] = 0
                        mem[_2126 + 196] = 0
                        require ext_code.size(designAddress)
                        staticcall designAddress.0x8b5c10f2 with:
                                gas gas_remaining wei
                               args _2145, stor403, 0, 0
                        mem[_2126 + 96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        stor403++
                        tokenDetails[stor403] = ext_call.return_data[32]
                        mem[_2126 + ceil32(return_data.size) + 96] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor403]:
                            revert with 0, 'ERC721: token already minted'
                        stor254[stor403] = tokenByIndex.length
                        tokenByIndex.length++
                        stor9346[stor253.length] = stor403
                        if msg.sender:
                            if msg.sender:
                                if not msg.sender:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                                stor252[stor403] = balanceOf[address(msg.sender)]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor254[stor403] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                            stor254[stor253[stor253.length]] = stor254[stor403]
                            stor254[stor403] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        require ext_code.size(designAddress)
                        staticcall designAddress.0xad54d878 with:
                                gas gas_remaining wei
                        mem[_2126 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2126 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if 1 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                            revert with 0, 'Ship limit reached'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor403
                        mem[32] = 203
                        ownerOf[stor403] = msg.sender
                        emit Transfer(0, msg.sender, stor403);
                        if not ext_code.size(msg.sender):
                            mem[_2126 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                            mem[_2126 + (2 * ceil32(return_data.size)) + 160] = stor403
                            mem[_2126 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                            mem[_2126 + (2 * ceil32(return_data.size)) + 224] = 0
                            mem[_2126 + (2 * ceil32(return_data.size)) + 256] = 0
                        else:
                            mem[_2126 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[_2126 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[_2126 + (2 * ceil32(return_data.size)) + 164] = 0
                            mem[_2126 + (2 * ceil32(return_data.size)) + 196] = stor403
                            mem[_2126 + (2 * ceil32(return_data.size)) + 228] = 128
                            mem[_2126 + (2 * ceil32(return_data.size)) + 260] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2126 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2126 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor403, 128, 0
                            mem[_2126 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                            mem[64] = _2126 + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_2126 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                            mem[_2126 + (4 * ceil32(return_data.size)) + 160] = stor403
                            mem[_2126 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                            mem[_2126 + (4 * ceil32(return_data.size)) + 224] = 0
                            mem[_2126 + (4 * ceil32(return_data.size)) + 256] = 0
                        emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = ext_call.return_data[32]
                        continue 
                t = 0
                u = 0
                while t < tokenRequests[address(msg.sender)][idx - 1].field_256:
                    _2125 = mem[64]
                    mem[mem[64] + 32] = block.hash(Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0))
                    mem[mem[64] + 64] = stor403
                    _2139 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2141 = sha3(mem[_2139 + 32 len mem[_2139]])
                    mem[_2125 + 132] = stor403
                    mem[_2125 + 164] = 0
                    mem[_2125 + 196] = 0
                    require ext_code.size(designAddress)
                    staticcall designAddress.0x8b5c10f2 with:
                            gas gas_remaining wei
                           args _2141, stor403, 0, 0
                    mem[_2125 + 96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    stor403++
                    tokenDetails[stor403] = ext_call.return_data[32]
                    mem[_2125 + ceil32(return_data.size) + 96] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor403]:
                        revert with 0, 'ERC721: token already minted'
                    stor254[stor403] = tokenByIndex.length
                    tokenByIndex.length++
                    stor9346[stor253.length] = stor403
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                            stor252[stor403] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor254[stor403] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                        stor254[stor253[stor253.length]] = stor254[stor403]
                        stor254[stor403] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    require ext_code.size(designAddress)
                    staticcall designAddress.0xad54d878 with:
                            gas gas_remaining wei
                    mem[_2125 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2125 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if 1 > !balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                        revert with 0, 'Ship limit reached'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor403
                    mem[32] = 203
                    ownerOf[stor403] = msg.sender
                    emit Transfer(0, msg.sender, stor403);
                    if not ext_code.size(msg.sender):
                        mem[_2125 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2125 + (2 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2125 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2125 + (2 * ceil32(return_data.size)) + 224] = 0
                        mem[_2125 + (2 * ceil32(return_data.size)) + 256] = 0
                    else:
                        mem[_2125 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_2125 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[_2125 + (2 * ceil32(return_data.size)) + 164] = 0
                        mem[_2125 + (2 * ceil32(return_data.size)) + 196] = stor403
                        mem[_2125 + (2 * ceil32(return_data.size)) + 228] = 128
                        mem[_2125 + (2 * ceil32(return_data.size)) + 260] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _2125 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2125 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor403, 128, 0
                        mem[_2125 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                        mem[64] = _2125 + (4 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[_2125 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2125 + (4 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2125 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2125 + (4 * ceil32(return_data.size)) + 224] = 0
                        mem[_2125 + (4 * ceil32(return_data.size)) + 256] = 0
                    emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = ext_call.return_data[32]
                    continue 
            else:
                if Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0) < 256:
                    revert with 0, 17
                if s < tokenRequests[address(msg.sender)][idx - 1].field_256:
                    if tokenRequests[address(msg.sender)][idx - 1].field_256 < s:
                        revert with 0, 17
                    tokenRequests[address(msg.sender)][idx - 1].field_256 -= s
                    t = 0
                    u = 0
                    while t < s:
                        _2128 = mem[64]
                        mem[mem[64] + 32] = block.hash(Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0) - 256)
                        mem[mem[64] + 64] = stor403
                        _2152 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2154 = sha3(mem[_2152 + 32 len mem[_2152]])
                        mem[_2128 + 132] = stor403
                        mem[_2128 + 164] = 0
                        mem[_2128 + 196] = 0
                        require ext_code.size(designAddress)
                        staticcall designAddress.0x8b5c10f2 with:
                                gas gas_remaining wei
                               args _2154, stor403, 0, 0
                        mem[_2128 + 96 len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        stor403++
                        tokenDetails[stor403] = ext_call.return_data[32]
                        mem[_2128 + ceil32(return_data.size) + 96] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor403]:
                            revert with 0, 'ERC721: token already minted'
                        stor254[stor403] = tokenByIndex.length
                        tokenByIndex.length++
                        stor9346[stor253.length] = stor403
                        if msg.sender:
                            if msg.sender:
                                if not msg.sender:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                                stor252[stor403] = balanceOf[address(msg.sender)]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor254[stor403] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                            stor254[stor253[stor253.length]] = stor254[stor403]
                            stor254[stor403] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        require ext_code.size(designAddress)
                        staticcall designAddress.0xad54d878 with:
                                gas gas_remaining wei
                        mem[_2128 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2128 + (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if 1 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                            revert with 0, 'Ship limit reached'
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor403
                        mem[32] = 203
                        ownerOf[stor403] = msg.sender
                        emit Transfer(0, msg.sender, stor403);
                        if not ext_code.size(msg.sender):
                            mem[_2128 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                            mem[_2128 + (2 * ceil32(return_data.size)) + 160] = stor403
                            mem[_2128 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                            mem[_2128 + (2 * ceil32(return_data.size)) + 224] = 0
                            mem[_2128 + (2 * ceil32(return_data.size)) + 256] = 0
                        else:
                            mem[_2128 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[_2128 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                            mem[_2128 + (2 * ceil32(return_data.size)) + 164] = 0
                            mem[_2128 + (2 * ceil32(return_data.size)) + 196] = stor403
                            mem[_2128 + (2 * ceil32(return_data.size)) + 228] = 128
                            mem[_2128 + (2 * ceil32(return_data.size)) + 260] = 0
                            idx = 0
                            while idx < 0:
                                mem[idx + _2128 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2128 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor403, 128, 0
                            mem[_2128 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                            mem[64] = _2128 + (4 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            mem[_2128 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                            mem[_2128 + (4 * ceil32(return_data.size)) + 160] = stor403
                            mem[_2128 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                            mem[_2128 + (4 * ceil32(return_data.size)) + 224] = 0
                            mem[_2128 + (4 * ceil32(return_data.size)) + 256] = 0
                        emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        u = ext_call.return_data[32]
                        continue 
                t = 0
                u = 0
                while t < tokenRequests[address(msg.sender)][idx - 1].field_256:
                    _2127 = mem[64]
                    mem[mem[64] + 32] = block.hash(Mask(248, 8, block.number) + uint8(tokenRequests[address(msg.sender)][idx - 1].field_0) - 256)
                    mem[mem[64] + 64] = stor403
                    _2148 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2150 = sha3(mem[_2148 + 32 len mem[_2148]])
                    mem[_2127 + 132] = stor403
                    mem[_2127 + 164] = 0
                    mem[_2127 + 196] = 0
                    require ext_code.size(designAddress)
                    staticcall designAddress.0x8b5c10f2 with:
                            gas gas_remaining wei
                           args _2150, stor403, 0, 0
                    mem[_2127 + 96 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    stor403++
                    tokenDetails[stor403] = ext_call.return_data[32]
                    mem[_2127 + ceil32(return_data.size) + 96] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor403]:
                        revert with 0, 'ERC721: token already minted'
                    stor254[stor403] = tokenByIndex.length
                    tokenByIndex.length++
                    stor9346[stor253.length] = stor403
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor204[address(msg.sender)]] = stor403
                            stor252[stor403] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor254[stor403] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor254[stor403]] = tokenByIndex[tokenByIndex.length]
                        stor254[stor253[stor253.length]] = stor254[stor403]
                        stor254[stor403] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    require ext_code.size(designAddress)
                    staticcall designAddress.0xad54d878 with:
                            gas gas_remaining wei
                    mem[_2127 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2127 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if 1 > !balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] + 1 > ext_call.return_data[0]:
                        revert with 0, 'Ship limit reached'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor403
                    mem[32] = 203
                    ownerOf[stor403] = msg.sender
                    emit Transfer(0, msg.sender, stor403);
                    if not ext_code.size(msg.sender):
                        mem[_2127 + (2 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2127 + (2 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2127 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2127 + (2 * ceil32(return_data.size)) + 224] = 0
                        mem[_2127 + (2 * ceil32(return_data.size)) + 256] = 0
                    else:
                        mem[_2127 + (2 * ceil32(return_data.size)) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_2127 + (2 * ceil32(return_data.size)) + 132] = msg.sender
                        mem[_2127 + (2 * ceil32(return_data.size)) + 164] = 0
                        mem[_2127 + (2 * ceil32(return_data.size)) + 196] = stor403
                        mem[_2127 + (2 * ceil32(return_data.size)) + 228] = 128
                        mem[_2127 + (2 * ceil32(return_data.size)) + 260] = 0
                        idx = 0
                        while idx < 0:
                            mem[idx + _2127 + (2 * ceil32(return_data.size)) + 292] = mem[idx + _2127 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor403, 128, 0
                        mem[_2127 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
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
                        mem[64] = _2127 + (4 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        mem[_2127 + (4 * ceil32(return_data.size)) + 128] = msg.sender
                        mem[_2127 + (4 * ceil32(return_data.size)) + 160] = stor403
                        mem[_2127 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
                        mem[_2127 + (4 * ceil32(return_data.size)) + 224] = 0
                        mem[_2127 + (4 * ceil32(return_data.size)) + 256] = 0
                    emit 0xcf86602d: msg.sender, stor403, ext_call.return_data[32], 0, 0
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = ext_call.return_data[32]
                    continue 
        if not tokenRequests[address(msg.sender)].field_0:
            revert with 0, 49
        mem[0] = sha3(address(msg.sender), 401)
        tokenRequests[address(msg.sender)][tokenRequests[address(msg.sender)].field_0 - 1].field_0 = 0
        tokenRequests[address(msg.sender)][tokenRequests[address(msg.sender)].field_0 - 1].field_256 = 0
        tokenRequests[address(msg.sender)].field_0--
        if not s - tokenRequests[address(msg.sender)][idx - 1].field_256:
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = s - tokenRequests[address(msg.sender)][idx - 1].field_256
        continue 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 203
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor404.length):
        if bool(stor404.length) == uint255(stor404.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor404.length):
            if bool(stor404.length) == uint255(stor404.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor404.length):
                if uint255(stor404.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
                    mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
            if 31 >= uint255(stor404.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor404.length.field_8)
                if uint255(stor404.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
                    mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor404.field_0)
            idx = 128
            s = 0
            while (uint255(stor404.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor404[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor404.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
            if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
                mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if bool(stor404.length) == stor404.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor404.length.field_1 % 128:
            if uint255(stor404.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
            if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
                mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if 31 >= stor404.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor404.length.field_8)
            if uint255(stor404.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
                mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
            if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
                mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) + 32], 
        mem[128] = uint256(stor404.field_0)
        idx = 128
        s = 0
        while stor404.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor404[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor404.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
            mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 257] = mem[ceil32(uint255(stor404.length) * 0.5) + 192]
            mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])] = mem[ceil32(uint255(stor404.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192]) > mem[ceil32(uint255(stor404.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor404.length) * 0.5) + 192] + ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + 192], data=mem[ceil32(uint255(stor404.length) * 0.5) + (uint255(stor404.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor404.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor404.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor404.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor404.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor404.length) * 0.5)] = mem[128 len ceil32(uint255(stor404.length) * 0.5)]
        if ceil32(uint255(stor404.length) * 0.5) > uint255(stor404.length) * 0.5:
            mem[(uint255(stor404.length) * 0.5) + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])] = mem[ceil32(uint255(stor404.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 224] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor404.length) * 0.5) + 128] + ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + (uint255(stor404.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor404.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor404.length) == stor404.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor404.length.field_1 % 128
    if bool(stor404.length):
        if bool(stor404.length) == uint255(stor404.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor404.length):
            if stor404.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor404.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
                if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                    mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                        _3718 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3718)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3719)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3719) + 32], 
                mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3720 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3720)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3721)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3722 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3722)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3723)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3723) + 32], 
            mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3724 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3724)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3725)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor404.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor404.length.field_8)
            if stor404.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
                mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor404.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
                if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                    mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                        _3726 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3726)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3727)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3727) + 32], 
                mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3728 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3728)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3729)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3730 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3730)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3731)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3731) + 32], 
            mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3732 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3732)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3733)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3733) + 32], 
        mem[0] = 404
        mem[128] = uint256(stor404.field_0)
        idx = 128
        s = 0
        while (uint255(stor404.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor404[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor404.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor404.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _4422 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4422)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4422) + 32], 
                _4423 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4423)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4423) + 32], 
            mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _4424 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4424)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4424) + 32], 
            _4425 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4425)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
        if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _4426 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4426)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4426) + 32], 
            _4427 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4427)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4427) + 32], 
        mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            _4428 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4428)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4428) + 32], 
        _4429 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4429)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4429) + 32], 
    if bool(stor404.length) == stor404.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor404.length.field_1 % 128:
        if stor404.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor404.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3734 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3734)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3735)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3735) + 32], 
            mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3736 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3736)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3737)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
        if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3738 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3738)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3739)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3739) + 32], 
        mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            _3740 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3740)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3741)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor404.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor404.length.field_8)
        if stor404.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
            mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor404.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
            if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
                mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                    _3742 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3742)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3743)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3743) + 32], 
            mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3744 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3744)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3745)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
        if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _3746 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3746)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3747)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3747) + 32], 
        mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            _3748 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3748)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_3749)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_3749) + 32], 
    mem[0] = 404
    mem[128] = uint256(stor404.field_0)
    idx = 128
    s = 0
    while stor404.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor404[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor404.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
        mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257] = mem[ceil32(stor404.length.field_1 % 128) + 192]
        mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])] = mem[ceil32(stor404.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) <= mem[ceil32(stor404.length.field_1 % 128) + 192]:
            return Array(len=mem[ceil32(stor404.length.field_1 % 128) + 192], data=mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192])]), 
        mem[mem[ceil32(stor404.length.field_1 % 128) + 192] + ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 289] = 0
        return 32, mem[ceil32(stor404.length.field_1 % 128) + stor404.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 192]) + 32], 
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
    mem[ceil32(stor404.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
        if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
            mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
                _4430 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4430)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4430) + 32], 
            _4431 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4431)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4431) + 32], 
        mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            _4432 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4432)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4432) + 32], 
        _4433 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4433)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor404.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor404.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor404.length.field_1 % 128)] = mem[128 len ceil32(stor404.length.field_1 % 128)]
    if ceil32(stor404.length.field_1 % 128) <= stor404.length.field_1 % 128:
        mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
            _4434 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4434)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4434) + 32], 
        _4435 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4435)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4435) + 32], 
    mem[stor404.length.field_1 % 128 + ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])] = mem[ceil32(stor404.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128])]
    mem[64] = mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192
    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 192] = 32
    if ceil32(mem[ceil32(stor404.length.field_1 % 128) + 128]) <= mem[ceil32(stor404.length.field_1 % 128) + 128]:
        _4436 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4436)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4436) + 32], 
    _4437 = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256 len ceil32(_4437)] = mem[ceil32(stor404.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 256] = 0
    return 32, mem[mem[ceil32(stor404.length.field_1 % 128) + 128] + ceil32(stor404.length.field_1 % 128) + ceil32(s) + stor404.length.field_1 % 128 + 224 len ceil32(_4437) + 32], 
}



}
