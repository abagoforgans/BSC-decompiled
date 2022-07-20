contract main {




// =====================  Runtime code  =====================


const version = 202201131

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor151;
mapping of struct roleAdmin;
array of struct roleMember;
array of address collections;
mapping of uint256 sub_9a1bb8de;
address currencyAddress;
mapping of struct stor354;
mapping of uint256 stor355;
mapping of struct stor357;
array of address stor358;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9a1bb8de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9a1bb8de[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function currency() payable {
    return currencyAddress
}

function collections(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < collections.length
    return address(collections[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCurrency(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    currencyAddress = arg1
}

function sub_1c475723(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function sub_8c672f27(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function sub_ad373582(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function buy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function cancelAskOrder(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function createAskOrder(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function sub_3b91ccb5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    revert with 0, 'System maintenance'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_86795d00(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < collections.length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= collections.length:
            revert with 0, 50
        mem[0] = address(collections[idx])
        mem[32] = 352
        sub_9a1bb8de[address(stor351[idx])] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_704dee6e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    collections.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while collections.length > idx:
            uint256(collections[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(collections[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while collections.length > idx:
            uint256(collections[idx]) = 0
            idx = idx + 1
            continue 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
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

function sub_ffdd75f8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor357[address(arg1)][arg2][address(arg3)].field_0 = 0
    stor357[address(arg1)][arg2][address(arg3)].field_256 = 0
    if uint256(stor358[address(arg1)][arg2][1][address(arg3)]):
        if uint256(stor358[address(arg1)][arg2][1][address(arg3)]) < 1:
            revert with 0, 17
        if uint256(stor358[address(arg1)][arg2]) < 1:
            revert with 0, 17
        if uint256(stor358[address(arg1)][arg2]) - 1 != uint256(stor358[address(arg1)][arg2][1][address(arg3)]) - 1:
            if uint256(stor358[address(arg1)][arg2]) - 1 >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            if uint256(stor358[address(arg1)][arg2][1][address(arg3)]) - 1 >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2][1][address(arg3)])]) = uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])])
            uint256(stor358[address(arg1)][arg2][1][uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])])]) = uint256(stor358[address(arg1)][arg2][1][address(arg3)])
        if not uint256(stor358[address(arg1)][arg2]):
            revert with 0, 49
        uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])]) = 0
        uint256(stor358[address(arg1)][arg2])--
        uint256(stor358[address(arg1)][arg2][1][address(arg3)]) = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
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

function sub_26e3fbb7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint256(stor358[address(arg1)][arg2][1][address(arg3)]):
        revert with 0, 'token that is not buyer'
    mem[128] = stor357[address(arg1)][arg2][address(arg3)].field_256
    mem[196] = address(arg3)
    mem[228] = stor357[address(arg1)][arg2][address(arg3)].field_256
    mem[160] = 68
    mem[196 len 28] = address(arg3) << 64
    mem[192 len 4] = unknown_0xa9059cbb(?????)
    mem[260] = 32
    mem[292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(currencyAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, stor357[address(arg1)][arg2][address(arg3)].field_256, 0
    mem[392] = 0
    call currencyAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, stor357[address(arg1)][arg2][address(arg3)].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, stor357[address(arg1)][arg2][address(arg3)].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if stor357[address(arg1)][arg2][address(arg3)].field_0:
                revert with memory
                  from 128
                   len stor357[address(arg1)][arg2][address(arg3)].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if stor357[address(arg1)][arg2][address(arg3)].field_0:
            require stor357[address(arg1)][arg2][address(arg3)].field_0 >= 32
            require stor357[address(arg1)][arg2][address(arg3)].field_256 == bool(stor357[address(arg1)][arg2][address(arg3)].field_256)
            if not stor357[address(arg1)][arg2][address(arg3)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[356] == bool(mem[356])
            if not mem[356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor357[address(arg1)][arg2][address(arg3)].field_0 = 0
    stor357[address(arg1)][arg2][address(arg3)].field_256 = 0
    if uint256(stor358[address(arg1)][arg2][1][address(arg3)]):
        if uint256(stor358[address(arg1)][arg2][1][address(arg3)]) < 1:
            revert with 0, 17
        if uint256(stor358[address(arg1)][arg2]) < 1:
            revert with 0, 17
        if uint256(stor358[address(arg1)][arg2]) - 1 != uint256(stor358[address(arg1)][arg2][1][address(arg3)]) - 1:
            if uint256(stor358[address(arg1)][arg2]) - 1 >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            if uint256(stor358[address(arg1)][arg2][1][address(arg3)]) - 1 >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2][1][address(arg3)])]) = uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])])
            uint256(stor358[address(arg1)][arg2][1][uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])])]) = uint256(stor358[address(arg1)][arg2][1][address(arg3)])
        if not uint256(stor358[address(arg1)][arg2]):
            revert with 0, 49
        uint256(stor358[address(arg1)][arg2][uint256(stor358[address(arg1)][arg2])]) = 0
        uint256(stor358[address(arg1)][arg2])--
        uint256(stor358[address(arg1)][arg2][1][address(arg3)]) = 0
    emit 0x2adc8a1c: address(arg1), arg2, address(arg3)
}

function sub_b9d52f71(?) payable {
    require calldata.size - 4 >= 96
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
        require cd[s] == address(cd[s])
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
    require cd[68] == address(cd[68])
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor151 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor151 = 1
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if not uint8(stor0.field_8):
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleMember[0][1][address(msg.sender)].field_0:
        roleMember[0].field_0++
        roleMember[0][roleMember[0].field_0].field_0 = msg.sender
        roleMember[0][roleMember[0].field_0].field_160 = 0
        roleMember[0][1][address(msg.sender)].field_0 = roleMember[0].field_0
    collections.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while collections.length > idx:
            uint256(collections[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(collections[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while collections.length > idx:
            uint256(collections[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < collections.length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= collections.length:
            revert with 0, 50
        mem[0] = address(collections[idx])
        mem[32] = 352
        sub_9a1bb8de[address(stor351[idx])] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    currencyAddress = address(cd[68])
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_9c1f107c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 160
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                if not stor355[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]]:
                    mem[(32 * idx) + 128] = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                    mem[32] = sha3(address(cd[4]), 354)
                    _126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_126] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                    mem[_126 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                    if idx >= mem[(32 * ('cd', 36).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _126
                else:
                    mem[(32 * idx) + 128] = 1
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                    mem[32] = sha3(address(cd[4]), 354)
                    _129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_129] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                    mem[_129 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                    if idx >= mem[(32 * ('cd', 36).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _129
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _88 = mem[64]
            mem[mem[64]] = 64
            _94 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _94:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_88 + 32] = (32 * _94) + 96
            _170 = mem[(32 * ('cd', 36).length) + 128]
            mem[_88 + (32 * _94) + 96] = mem[(32 * ('cd', 36).length) + 128]
            idx = 0
            s = _88 + (32 * _94) + 128
            t = (32 * ('cd', 36).length) + 160
            while idx < _170:
                _220 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_220 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _88 + (32 * _94) + (64 * _170) + -mem[64] + 128
        mem[64] = (64 * ('cd', 36).length) + 224
        mem[(64 * ('cd', 36).length) + 160] = 0
        mem[(64 * ('cd', 36).length) + 192] = 0
        mem[(32 * ('cd', 36).length) + 160] = (64 * ('cd', 36).length) + 160
        s = (32 * ('cd', 36).length) + 160
        idx = ('cd', 36).length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(64 * ('cd', 36).length) + 160] = 0
            mem[(64 * ('cd', 36).length) + 192] = 0
            mem[s + 32] = (64 * ('cd', 36).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            if not stor355[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]]:
                mem[(32 * idx) + 128] = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 354)
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_208 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _208
            else:
                mem[(32 * idx) + 128] = 1
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 354)
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_211 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _211
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 64
        _181 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _181:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_171 + 32] = (32 * _181) + 96
        _229 = mem[(32 * ('cd', 36).length) + 128]
        mem[_171 + (32 * _181) + 96] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = _171 + (32 * _181) + 128
        t = (32 * ('cd', 36).length) + 160
        while idx < _229:
            _240 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_240 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _171 + (32 * _181) + (64 * _229) + -mem[64] + 128
    mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            if not stor355[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]]:
                mem[(32 * idx) + 128] = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 354)
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_136 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _136
            else:
                mem[(32 * idx) + 128] = 1
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 354)
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_139 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _139
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 64
        _95 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _95:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_90 + 32] = (32 * _95) + 96
        _173 = mem[(32 * ('cd', 36).length) + 128]
        mem[_90 + (32 * _95) + 96] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = _90 + (32 * _95) + 128
        t = (32 * ('cd', 36).length) + 160
        while idx < _173:
            _224 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_224 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _90 + (32 * _95) + (64 * _173) + -mem[64] + 128
    mem[64] = (64 * ('cd', 36).length) + 224
    mem[(64 * ('cd', 36).length) + 160] = 0
    mem[(64 * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + 160] = (64 * ('cd', 36).length) + 160
    s = (32 * ('cd', 36).length) + 160
    idx = ('cd', 36).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * ('cd', 36).length) + 160] = 0
        mem[(64 * ('cd', 36).length) + 192] = 0
        mem[s + 32] = (64 * ('cd', 36).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not stor355[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]]:
            mem[(32 * idx) + 128] = 0
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = sha3(address(cd[4]), 354)
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
            mem[_215 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _215
        else:
            mem[(32 * idx) + 128] = 1
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = sha3(address(cd[4]), 354)
            _218 = mem[64]
            mem[64] = mem[64] + 64
            mem[_218] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_0
            mem[_218 + 32] = stor354[address(cd[4])][cd[((32 * idx) + cd[36] + 36)]].field_256
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _218
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _174 = mem[64]
    mem[mem[64]] = 64
    _185 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _185:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_174 + 32] = (32 * _185) + 96
    _231 = mem[(32 * ('cd', 36).length) + 128]
    mem[_174 + (32 * _185) + 96] = mem[(32 * ('cd', 36).length) + 128]
    idx = 0
    s = _174 + (32 * _185) + 128
    t = (32 * ('cd', 36).length) + 160
    while idx < _231:
        _243 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_243 + 32]
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _174 + (32 * _185) + (64 * _231) + -mem[64] + 128
}

function sub_8bcbb498(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 358)
    if uint256(stor358[address(arg1)][arg2]) > test266151307():
        revert with 0, 65
    mem[96] = uint256(stor358[address(arg1)][arg2])
    if not uint256(stor358[address(arg1)][arg2]):
        if uint256(stor358[address(arg1)][arg2]) > test266151307():
            revert with 0, 65
        mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128] = uint256(stor358[address(arg1)][arg2])
        mem[64] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
        if not uint256(stor358[address(arg1)][arg2]):
            idx = 0
            while idx < uint256(stor358[address(arg1)][arg2]):
                if idx >= uint256(stor358[address(arg1)][arg2]):
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                if not uint256(stor358[address(arg1)][arg2][1][address(stor358[address(arg1)][arg2][idx])]):
                    mem[(32 * idx) + 128] = 0
                    mem[0] = address(stor358[address(arg1)][arg2][idx])
                    mem[32] = sha3(arg2, sha3(address(arg1), 357))
                    _177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_177] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                    mem[_177 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                    if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _177
                else:
                    mem[(32 * idx) + 128] = 1
                    mem[0] = address(stor358[address(arg1)][arg2][idx])
                    mem[32] = sha3(arg2, sha3(address(arg1), 357))
                    _182 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_182] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                    mem[_182 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                    if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _182
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _118 = mem[64]
            mem[mem[64]] = 64
            _120 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _120:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_118 + 32] = (32 * _120) + 96
            _224 = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
            mem[_118 + (32 * _120) + 96] = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
            idx = 0
            s = _118 + (32 * _120) + 128
            t = (32 * uint256(stor358[address(arg1)][arg2])) + 160
            while idx < _224:
                _282 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_282 + 32]
                idx = idx + 1
                s = s + 64
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _118 + (32 * _120) + (64 * _224) + -mem[64] + 128
        mem[64] = (64 * uint256(stor358[address(arg1)][arg2])) + 224
        mem[(64 * uint256(stor358[address(arg1)][arg2])) + 160] = 0
        mem[(64 * uint256(stor358[address(arg1)][arg2])) + 192] = 0
        mem[(32 * uint256(stor358[address(arg1)][arg2])) + 160] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
        s = (32 * uint256(stor358[address(arg1)][arg2])) + 160
        idx = uint256(stor358[address(arg1)][arg2])
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(64 * uint256(stor358[address(arg1)][arg2])) + 160] = 0
            mem[(64 * uint256(stor358[address(arg1)][arg2])) + 192] = 0
            mem[s + 32] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < uint256(stor358[address(arg1)][arg2]):
            if idx >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if not uint256(stor358[address(arg1)][arg2][1][address(stor358[address(arg1)][arg2][idx])]):
                mem[(32 * idx) + 128] = 0
                mem[0] = address(stor358[address(arg1)][arg2][idx])
                mem[32] = sha3(arg2, sha3(address(arg1), 357))
                _265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_265] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                mem[_265 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _265
            else:
                mem[(32 * idx) + 128] = 1
                mem[0] = address(stor358[address(arg1)][arg2][idx])
                mem[32] = sha3(arg2, sha3(address(arg1), 357))
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                mem[_270 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _270
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _225 = mem[64]
        mem[mem[64]] = 64
        _231 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _231:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_225 + 32] = (32 * _231) + 96
        _291 = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
        mem[_225 + (32 * _231) + 96] = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
        idx = 0
        s = _225 + (32 * _231) + 128
        t = (32 * uint256(stor358[address(arg1)][arg2])) + 160
        while idx < _291:
            _302 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_302 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _225 + (32 * _231) + (64 * _291) + -mem[64] + 128
    mem[128 len 32 * uint256(stor358[address(arg1)][arg2])] = call.data[calldata.size len 32 * uint256(stor358[address(arg1)][arg2])]
    if uint256(stor358[address(arg1)][arg2]) > test266151307():
        revert with 0, 65
    mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128] = uint256(stor358[address(arg1)][arg2])
    mem[64] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
    if not uint256(stor358[address(arg1)][arg2]):
        idx = 0
        while idx < uint256(stor358[address(arg1)][arg2]):
            if idx >= uint256(stor358[address(arg1)][arg2]):
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if not uint256(stor358[address(arg1)][arg2][1][address(stor358[address(arg1)][arg2][idx])]):
                mem[(32 * idx) + 128] = 0
                mem[0] = address(stor358[address(arg1)][arg2][idx])
                mem[32] = sha3(arg2, sha3(address(arg1), 357))
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                mem[_187 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _187
            else:
                mem[(32 * idx) + 128] = 1
                mem[0] = address(stor358[address(arg1)][arg2][idx])
                mem[32] = sha3(arg2, sha3(address(arg1), 357))
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_192] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
                mem[_192 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
                if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _192
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 64
        _124 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _124:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_119 + 32] = (32 * _124) + 96
        _226 = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
        mem[_119 + (32 * _124) + 96] = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
        idx = 0
        s = _119 + (32 * _124) + 128
        t = (32 * uint256(stor358[address(arg1)][arg2])) + 160
        while idx < _226:
            _286 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_286 + 32]
            idx = idx + 1
            s = s + 64
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _119 + (32 * _124) + (64 * _226) + -mem[64] + 128
    mem[64] = (64 * uint256(stor358[address(arg1)][arg2])) + 224
    mem[(64 * uint256(stor358[address(arg1)][arg2])) + 160] = 0
    mem[(64 * uint256(stor358[address(arg1)][arg2])) + 192] = 0
    mem[(32 * uint256(stor358[address(arg1)][arg2])) + 160] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
    s = (32 * uint256(stor358[address(arg1)][arg2])) + 160
    idx = uint256(stor358[address(arg1)][arg2])
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * uint256(stor358[address(arg1)][arg2])) + 160] = 0
        mem[(64 * uint256(stor358[address(arg1)][arg2])) + 192] = 0
        mem[s + 32] = (64 * uint256(stor358[address(arg1)][arg2])) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < uint256(stor358[address(arg1)][arg2]):
        if idx >= uint256(stor358[address(arg1)][arg2]):
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if not uint256(stor358[address(arg1)][arg2][1][address(stor358[address(arg1)][arg2][idx])]):
            mem[(32 * idx) + 128] = 0
            mem[0] = address(stor358[address(arg1)][arg2][idx])
            mem[32] = sha3(arg2, sha3(address(arg1), 357))
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
            mem[_275 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
            if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _275
        else:
            mem[(32 * idx) + 128] = 1
            mem[0] = address(stor358[address(arg1)][arg2][idx])
            mem[32] = sha3(arg2, sha3(address(arg1), 357))
            _280 = mem[64]
            mem[64] = mem[64] + 64
            mem[_280] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_0
            mem[_280 + 32] = stor357[address(arg1)][arg2][address(stor358[address(arg1)][arg2][idx])].field_256
            if idx >= mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * uint256(stor358[address(arg1)][arg2])) + 160] = _280
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _227 = mem[64]
    mem[mem[64]] = 64
    _236 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _236:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_227 + 32] = (32 * _236) + 96
    _293 = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
    mem[_227 + (32 * _236) + 96] = mem[(32 * uint256(stor358[address(arg1)][arg2])) + 128]
    idx = 0
    s = _227 + (32 * _236) + 128
    t = (32 * uint256(stor358[address(arg1)][arg2])) + 160
    while idx < _293:
        _305 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_305 + 32]
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _227 + (32 * _236) + (64 * _293) + -mem[64] + 128
}



}
