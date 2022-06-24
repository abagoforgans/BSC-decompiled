contract main {




// =====================  Runtime code  =====================


const sub_ddd9884a(?) = 2


array of address managers;
array of address owners;
mapping of struct sub_442b34db;
address sub_8a854771Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_15265240Address;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1]
}

function getPool() payable {
    return sub_15265240Address
}

function sub_15265240(?) payable {
    return sub_15265240Address
}

function managers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < managers.length
    return managers[arg1]
}

function sub_442b34db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_442b34db[address(arg1)].field_0
}

function sub_8a854771(?) payable {
    return sub_8a854771Address
}

function sub_ee85e294(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_442b34db[address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function sub_805de293(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(arg2 and sub_442b34db[address(arg1)].field_0)
}

function sub_60f323dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(Mask(1, 1, sub_442b34db[address(arg1)].field_0))
}

function sub_3087ce7f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    return bool(1 << uint8(arg2) and sub_442b34db[address(arg1)].field_0)
}

function sub_b27fb668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_8a854771Address:
        return sub_442b34db[address(arg1)].field_0
    staticcall sub_8a854771Address.0xb27fb668 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (sub_442b34db[address(arg1)].field_0 or ext_call.return_data[0])
}

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    sub_15265240Address = arg1
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_442b34db[address(arg1)].field_0:
        return bool(sub_442b34db[address(arg1)].field_0)
    if not sub_8a854771Address:
        return bool(sub_8a854771Address)
    staticcall sub_8a854771Address.0x2f54bf6e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setStopped(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if Mask(1, 1, sub_442b34db[address(arg1)].field_0):
        return bool(Mask(1, 1, sub_442b34db[address(arg1)].field_0))
    if not sub_8a854771Address:
        return bool(sub_8a854771Address)
    staticcall sub_8a854771Address.0xf3ae2415 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_daad69c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 and sub_442b34db[address(arg1)].field_0:
        return bool(arg2 and sub_442b34db[address(arg1)].field_0)
    if not sub_8a854771Address:
        return bool(sub_8a854771Address)
    staticcall sub_8a854771Address.0xdaad69c2 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_12c9c42b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    sub_442b34db[address(arg1)].field_0 = arg2
    emit 0x9723b615: address(arg1), arg2
}

function hasRole(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 1 << arg2 and sub_442b34db[address(arg1)].field_0:
        return bool(1 << arg2 and sub_442b34db[address(arg1)].field_0)
    if not sub_8a854771Address:
        return bool(sub_8a854771Address)
    staticcall sub_8a854771Address.0x95a8c58d with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require not sub_442b34db[address(arg1)].field_0
    require not sub_442b34db[address(arg1)].field_0
    sub_442b34db[address(arg1)].field_0 = 1
    sub_442b34db[address(arg1)].field_8 = 0
    owners.length++
    owners[owners.length] = arg1
    emit OwnerAdded(arg1);
}

function sub_571c3e60(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if not Mask(1, 1, sub_442b34db[address(msg.sender)].field_0):
        require sub_8a854771Address
        staticcall sub_8a854771Address.0xf3ae2415 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require uint8(arg2)
    require uint8(arg2) != 1
    require not sub_442b34db[address(arg1)].field_0
    sub_442b34db[address(arg1)].field_0 = 1
    if uint8(arg2):
        if uint8(arg2) != 1:
            emit RoleAdded(address(arg1), uint8(arg2));
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require not Mask(1, 1, sub_442b34db[address(arg1)].field_0)
    require not Mask(1, 1, sub_442b34db[address(arg1)].field_0)
    sub_442b34db[address(arg1)].field_0 = 2
    sub_442b34db[address(arg1)].field_8 = 0
    managers.length++
    managers[managers.length] = arg1
    emit ManagerAdded(arg1);
}

function sub_7472bb06(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if not Mask(1, 1, sub_442b34db[address(msg.sender)].field_0):
        require sub_8a854771Address
        staticcall sub_8a854771Address.0xf3ae2415 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require uint8(arg2)
    require uint8(arg2) != 1
    require 1 << uint8(arg2) and sub_442b34db[address(arg1)].field_0
    if -1 xor 1 << uint8(arg2) and sub_442b34db[address(arg1)].field_0:
        sub_442b34db[address(arg1)].field_0 = -1 xor 1 << uint8(arg2) and sub_442b34db[address(arg1)].field_0
    else:
        sub_442b34db[address(arg1)].field_0 = 0
    if uint8(arg2):
        if uint8(arg2) != 1:
            emit RoleRemoved(address(arg1), uint8(arg2));
}

function revokeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require sub_442b34db[address(arg1)].field_0
    if owners.length <= 1:
        require sub_8a854771Address
    require sub_442b34db[address(arg1)].field_0
    if not Mask(255, 1, sub_442b34db[address(arg1)].field_0):
        sub_442b34db[address(arg1)].field_0 = 0
    else:
        sub_442b34db[address(arg1)].field_0 = 0
        sub_442b34db[address(arg1)].field_1 = sub_442b34db[address(arg1)].field_1
    idx = 0
    while idx < owners.length:
        mem[0] = 1
        if owners[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if owners.length < 1:
            revert with 0, 17
        if owners.length - 1 >= owners.length:
            revert with 0, 50
        if idx >= owners.length:
            revert with 0, 50
        owners[idx] = owners[owners.length]
        if not owners.length:
            revert with 0, 49
        owners[owners.length] = 0
        owners.length--
        emit 0x5f8bb425: arg1
    emit 0x5f8bb425: arg1
}

function revokeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require Mask(1, 1, sub_442b34db[address(arg1)].field_0)
    require Mask(1, 1, sub_442b34db[address(arg1)].field_0)
    if not Mask(254, 2, sub_442b34db[address(arg1)].field_0) and not sub_442b34db[address(arg1)].field_0:
        sub_442b34db[address(arg1)].field_0 = 0
    else:
        sub_442b34db[address(arg1)].field_0 = sub_442b34db[address(arg1)].field_0
        sub_442b34db[address(arg1)].field_1 = 0
        sub_442b34db[address(arg1)].field_2 = sub_442b34db[address(arg1)].field_2
    idx = 0
    while idx < managers.length:
        mem[0] = 0
        if managers[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if managers.length < 1:
            revert with 0, 17
        if managers.length - 1 >= managers.length:
            revert with 0, 50
        if idx >= managers.length:
            revert with 0, 50
        managers[idx] = managers[managers.length]
        if not managers.length:
            revert with 0, 49
        managers[managers.length] = 0
        managers.length--
        emit ManagerRevoked(arg1);
    emit ManagerRevoked(arg1);
}

function sub_beb60e20(?) payable {
    if not Mask(1, 8, sub_442b34db[address(msg.sender)].field_0):
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x95a8c58d with:
                gas gas_remaining wei
               args msg.sender, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    require not uint8(stor4.field_160)
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, 14 * 10^18 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 1, 28 * 10^18 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 2, 25 * 10^15 * 3600 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 3, 1250 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 4, 125 * 10^16 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15265240Address)
    call sub_15265240Address.distributeReward(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 5, 11750 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9ca505f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_442b34db[address(msg.sender)].field_0:
        require sub_8a854771Address
        staticcall sub_8a854771Address.0x2f54bf6e with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
    if address(arg1):
        require ext_code.size(arg1)
        staticcall address(arg1).0x2f54bf6e with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall address(arg1).0xf3ae2415 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if owners.length:
            if ext_code.size(arg1):
                staticcall address(arg1).0x2f54bf6e with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall address(arg1).0xf3ae2415 with:
                        gas gas_remaining wei
                       args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require ext_code.size(arg1)
            staticcall address(arg1).0x2f54bf6e with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall address(arg1).0xf3ae2415 with:
                    gas gas_remaining wei
                   args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_8a854771Address = address(arg1)
    emit 0xb021e203: address(arg1)
}



}
