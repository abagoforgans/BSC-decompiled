contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct roleAdmin;
uint256 stor7;
mapping of struct stor8;
array of struct stor9;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(arg1)].field_0:
            roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(arg1)].field_0 = 1
            emit RoleGranted(0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
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
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
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

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9.length = 0
                idx = 0
                while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                    stor9[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9.length = 0
                idx = 0
                while stor9.length.field_1 + 31 / 32 > idx:
                    stor9[idx].field_0 = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
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
    else:
        if roleAdmin[roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_256][address(msg.sender)].field_0:
            if roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(arg1)].field_0:
                roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(arg1)].field_0 = 0
                emit RoleRevoked(0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
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
        s = roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_256
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
        if roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    stor7++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor7] = arg1
    emit Transfer(0, arg1, stor7);
    if not ownerOf[stor7]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if stor8[stor7].field_0:
        if stor8[stor7].field_0 == uint255(stor8[stor7].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while (uint255(stor8[stor7].field_0) * 0.5) + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[stor7].field_0 == stor8[stor7].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor8[stor7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor8[stor7].field_0 = 0
            idx = 0
            while stor8[stor7].field_1 + 31 / 32 > idx:
                stor8[stor7][idx].field_0 = 0
                idx = idx + 1
                continue 
    return stor7
}

function name() payable {
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

function symbol() payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8[arg1].field_0):
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not Mask(256, -1, stor8[arg1].field_0):
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
            else:
                if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor8[arg1].field_8
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor9.length):
                            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor9.length):
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                if 31 >= uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                    if 0 == uint255(stor9.length) * 0.5:
                                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 0 == uint255(stor9.length) * 0.5:
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        else:
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 0, 34
                            if not stor9.length.field_1:
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                if 31 >= stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                    if 0 == uint255(stor9.length) * 0.5:
                                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 0 == uint255(stor9.length) * 0.5:
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                        if not Mask(256, -1, stor8[arg1].field_0):
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                            if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                                return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                            mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                            return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == stor9.length.field_1:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == stor9.length.field_1:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor9.length):
                            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor9.length):
                                if 31 >= uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 0, 34
                            if stor9.length.field_1:
                                if 31 >= stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if 0 == uint255(stor9.length) * 0.5:
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                        if not Mask(256, -1, stor8[arg1].field_0):
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                            if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                                return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                            mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                            return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor9.length):
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if stor9.length.field_1:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    if 0 == stor9.length.field_1:
                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 0, 34
            if not stor8[arg1].field_1:
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not Mask(256, -1, stor8[arg1].field_0):
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
            else:
                if 31 >= stor8[arg1].field_1:
                    mem[128] = 256 * stor8[arg1].field_8
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor9.length):
                            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor9.length):
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                if 31 >= uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                    if 0 == uint255(stor9.length) * 0.5:
                                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 0 == uint255(stor9.length) * 0.5:
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        else:
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 0, 34
                            if not stor9.length.field_1:
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                if 31 >= stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                    if 0 == uint255(stor9.length) * 0.5:
                                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 0 == uint255(stor9.length) * 0.5:
                                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                        if not Mask(256, -1, stor8[arg1].field_0):
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                            if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                                return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                            mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                            return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == stor9.length.field_1:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                if 0 == stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 0
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == stor9.length.field_1:
                                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor9.length):
                            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor9.length):
                                if 31 >= uint255(stor9.length) * 0.5:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 0, 34
                            if stor9.length.field_1:
                                if 31 >= stor9.length.field_1:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                                else:
                                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor9[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        if 0 == uint255(stor9.length) * 0.5:
                            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                        if not Mask(256, -1, stor8[arg1].field_0):
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                            if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                                return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                            mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                            return 32, mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                            mem[(uint255(stor9.length) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) <= mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                        mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                        return 32, mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor9.length) * 0.5) + 160]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor9.length):
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if stor9.length.field_1:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = uint256(stor9.field_0)
                                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    if 0 == stor9.length.field_1:
                        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
        ('iszero', ('eq', 0, ('field', 1, ('stor', ('length', ('name', 'stor9', 9))))))
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor9.length.field_1)]
        if not Mask(256, -1, stor8[arg1].field_0):
            mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 192] = arg1
            mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 224] = 32
            mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 256] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]
            mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])]
            if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]) > mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]:
                mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160] + stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 288] = 0
            return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160], data=mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 288 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])]), 
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[stor9.length.field_1 + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 32
        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]
        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])]
        if ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]) > mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160]:
            mem[mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160] + (uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256] = 0
        return Array(len=mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160], data=mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256 len ceil32(mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor9.length.field_1) + 160])]), 
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 0, 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor8[arg1].field_0):
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == uint255(stor9.length) * 0.5:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == uint255(stor9.length) * 0.5:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                if not stor8[arg1].field_1:
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                    mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor9.length):
                    if 0 == stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                            mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                else:
                    if 31 >= uint255(stor9.length) * 0.5:
                        mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                        idx = ceil32(stor8[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 == stor9.length.field_1:
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            else:
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if not stor9.length.field_1:
                    if 0 == stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                            mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                else:
                    if 31 >= stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                        idx = ceil32(stor8[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 == stor9.length.field_1:
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
        else:
            if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = 256 * stor8[arg1].field_8
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                        mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                        mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not stor8[arg1].field_1:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor9.length):
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if stor9.length.field_1:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    if 0 == uint255(stor9.length) * 0.5:
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not stor8[arg1].field_1:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9.length):
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if stor9.length.field_1:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if 0 == stor9.length.field_1:
                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if not stor8[arg1].field_1:
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == uint255(stor9.length) * 0.5:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == uint255(stor9.length) * 0.5:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                if not stor8[arg1].field_1:
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                    mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                    mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if bool(stor9.length):
                if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor9.length):
                    if 0 == stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                            mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                else:
                    if 31 >= uint255(stor9.length) * 0.5:
                        mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                        idx = ceil32(stor8[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 == stor9.length.field_1:
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            else:
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if not stor9.length.field_1:
                    if 0 == stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                            mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                else:
                    if 31 >= stor9.length.field_1:
                        mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                        idx = ceil32(stor8[arg1].field_1) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if 0 == stor9.length.field_1:
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
        else:
            if 31 >= stor8[arg1].field_1:
                mem[128] = 256 * stor8[arg1].field_8
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor9.length):
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                        mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if not stor9.length.field_1:
                            if 0 == uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                                if 0 == uint255(stor9.length) * 0.5:
                                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                        mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 0
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(uint255(stor9.length) * 0.5) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 0 == uint255(stor9.length) * 0.5:
                                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    ('iszero', ('eq', 0, ('mask_shl', 256, -1, -1, ('stor', ('length', ('name', 'stor9', 9))))))
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not stor8[arg1].field_1:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor9.length):
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if not stor9.length.field_1:
                        if 0 == stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                            if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                            return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                    else:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            if 0 == stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                                if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
                                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 0
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + ceil32(stor9.length.field_1) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 == stor9.length.field_1:
                                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9.length):
                        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor9.length):
                            if 31 >= uint255(stor9.length) * 0.5:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 0, 34
                        if stor9.length.field_1:
                            if 31 >= stor9.length.field_1:
                                mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                            else:
                                mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                                idx = ceil32(stor8[arg1].field_1) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor9[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    if 0 == uint255(stor9.length) * 0.5:
                        return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(uint255(stor9.length) * 0.5)]
                    if not stor8[arg1].field_1:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = arg1
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 224] = 32
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                        if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                            mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + (uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288] = 0
                        return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                    if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
                        mem[(uint255(stor9.length) * 0.5) + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192] = 0
                    mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 32
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]
                    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]
                    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160]:
                        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256] = 0
                    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(uint255(stor9.length) * 0.5) + 160])]), 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9.length):
                        if 31 >= uint255(stor9.length) * 0.5:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + (uint255(stor9.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if stor9.length.field_1:
                        if 31 >= stor9.length.field_1:
                            mem[ceil32(stor8[arg1].field_1) + 160] = 256 * stor9.length.field_8
                        else:
                            mem[ceil32(stor8[arg1].field_1) + 160] = uint256(stor9.field_0)
                            idx = ceil32(stor8[arg1].field_1) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_1) + stor9.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if 0 == stor9.length.field_1:
                    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
    ('iszero', ('eq', 0, ('field', 1, ('stor', ('length', ('name', 'stor9', 9))))))
    mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[ceil32(stor8[arg1].field_1) + 160 len ceil32(stor9.length.field_1)]
    if not stor8[arg1].field_1:
        mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 192] = arg1
        mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 224] = 32
        mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 256] = mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]
        mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]:
            mem[mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160] + stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 288] = 0
        return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160], data=mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 288 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])]), 
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[stor9.length.field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 192] = 0
    mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 32
    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 224] = mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]
    mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])] = mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 192 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])]
    if ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]) > mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160]:
        mem[mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160] + stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256] = 0
    return Array(len=mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160], data=mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + stor9.length.field_1 + 256 len ceil32(mem[ceil32(stor8[arg1].field_1) + ceil32(stor9.length.field_1) + 160])]), 
}



}
